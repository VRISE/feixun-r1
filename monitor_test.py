#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Feixun R1 监听(插嘴)效果自动化验证脚本
=====================================
思路: Mac 用 TTS 放一句已知中文 -> 音箱监听引擎(休眠模式下 active)应检测到并识别 ->
通过 adb logcat 抓关键标记判定"是否监听到/识别成什么/有没有回应", 循环几百次并随音量调参。

判定标记(来自源码, 已核对):
  - 最终命中:  EventLog/... Fire EavesdropperTriggerEvent: "文本"   (兜底 VAD 路径)
  - 工厂路径:  EavesdropperHandler activatePersona EAVESDROPPER / generate eavesdrop response
  - VAD 触发:  VadAudioDetector Speech TRIGGERED  /  EavesdropperSession Speech triggered
  - 识别文本:  EavesdropperASR ASR OK: "..."   /  parseASRResult asr_recongize="..."
  - 休眠激活:  EavesdropperEngine Eavesdropper engine started (dormant mode) / [GO] dormant session restart
  - 被取消:    EavesdropperEngine Wakeup detected, cancelling ... / Interaction detected, cancelling ...
  - 回应失败:  Failed to generate eavesdrop response / GLM / open.bigmodel

注意: 必须先把设备双击进入"休眠/监听模式", 否则 EavesdropperEngine 不会 start(), 本脚本会告警。

日志来源(重要): 默认自己开一个 adb logcat; 但如果有多个 adb logcat 同时跑, 第二个往往抓不到数据。
因此推荐由监视脚本先开唯一一个 `adb logcat -v time > /tmp/janus_orch.log`,
再用 --logfile /tmp/janus_orch.log 让本脚本直接读那个文件(tail -F 实现), 避免冲突。
"""

import subprocess
import threading
import time
import re
import os
import sys
import csv
import argparse
from collections import deque
from datetime import datetime

DEVICE = "192.168.5.9:5555"
ADB = "adb"

# 只保留感兴趣的日志行, 避免 UNI_4MIC 每秒几千行刷屏把内存/CPU 拖死
INTEREST_RE = re.compile(
    r"Eavesdropper|VadAudioDetector|Speech TRIGGERED|Fire EavesdropperTriggerEvent|"
    r"eavesdrop|PersonaRouterHandler|NLUDispatcher|EventLog|PlaybackStateMonitor|"
    r"PhicommInitializeHandler|DormantOutputEvent|onFactoryAsrHandled|intercept|"
    r"EavesdropperHandler|ASR OK|asr_recongize|OpenAIClient|playTTS",
    re.I,
)

FIRE_RE = re.compile(r"Fire EavesdropperTriggerEvent:\s*\"(.*?)\"")
TRIG_RE = re.compile(r"Speech (?:TRIGGERED|triggered)")
ASROK_RE = re.compile(r"ASR OK:\s*\"(.*?)\"")
ASRRAW_RE = re.compile(r'asr_recongize="([^"]*)"')
DORMANT_START_RE = re.compile(r"Eavesdropper engine started \(dormant mode\)|\[GO\] dormant session restart")
CANCEL_RE = re.compile(r"cancelling eavesdropper session")
RESP_FAIL_RE = re.compile(r"Failed to generate eavesdrop response|open\.bigmodel|GLM|连接|timeout|error", re.I)

# 中性测试句(不含唤醒词 小讯小讯 / 你好小迪 / 人格词)
PHRASES = [
    "今天的阳光真好，我们一起去公园散步吧",
    "你有没有听过那首老歌，旋律特别好听",
    "我刚泡了一杯咖啡，香气扑鼻",
    "外面的风有点大，记得多穿一件衣服",
    "这本书讲的是一个关于勇气的小故事",
    "晚饭想吃什么，我有点拿不定主意",
]


def adb_connect():
    try:
        subprocess.run([ADB, "connect", DEVICE], capture_output=True, timeout=15)
    except Exception:
        pass


def set_volume(v):
    try:
        subprocess.run(
            ["osascript", "-e", f"set volume output volume {v}"],
            capture_output=True, timeout=10,
        )
    except Exception as e:
        print(f"[warn] set_volume {v} failed: {e}")


def say(phrase, voice):
    try:
        subprocess.run(["say", "-v", voice, phrase], capture_output=True, timeout=30)
    except Exception as e:
        print(f"[warn] say failed: {e}")


def get_volume():
    try:
        out = subprocess.run(
            ["osascript", "-e", "output volume of (get volume settings)"],
            capture_output=True, text=True, timeout=10,
        ).stdout.strip()
        return out
    except Exception:
        return "?"


class LogcatCapture:
    """自己开一个 adb logcat 实时抓取(无 --logfile 时回退用)。"""

    def __init__(self):
        self.buf = deque(maxlen=200000)
        self.seq = 0
        self.lock = threading.Lock()
        self.proc = None
        self.running = True
        self.thread = threading.Thread(target=self._pump, daemon=True)
        self.thread.start()

    def _start_proc(self):
        adb_connect()
        self.proc = subprocess.Popen(
            [ADB, "-s", DEVICE, "logcat", "-v", "time"],
            stdout=subprocess.PIPE, stderr=subprocess.DEVNULL,
            text=True, bufsize=1,
        )

    def _pump(self):
        while self.running:
            try:
                if self.proc is None or self.proc.poll() is not None:
                    if self.proc is not None:
                        try:
                            self.proc.stdout.close()
                        except Exception:
                            pass
                    self._start_proc()
                for line in self.proc.stdout:
                    if INTEREST_RE.search(line):
                        with self.lock:
                            self.seq += 1
                            self.buf.append((self.seq, line.rstrip("\n")))
            except Exception:
                time.sleep(1)
                try:
                    if self.proc:
                        self.proc.kill()
                except Exception:
                    pass
                self.proc = None

    def snapshot(self):
        with self.lock:
            return self.seq

    def since(self, base_seq):
        with self.lock:
            return [line for (s, line) in self.buf if s > base_seq]

    def recent_has(self, pat, last_n=2000):
        with self.lock:
            tail = [line for (_, line) in list(self.buf)[-last_n:]]
        return any(re.search(pat, l) for l in tail)


class FileTailer:
    """tail -F 一个已存在的日志文件(监视脚本唯一一个 adb logcat 的输出)。
    与 LogcatCapture 接口一致: snapshot / since / recent_has。"""

    def __init__(self, path, poll=0.2):
        self.path = path
        self.buf = deque(maxlen=200000)
        self.seq = 0
        self.lock = threading.Lock()
        self.running = True
        self._partial = b""
        self._offset = 0
        # 等文件存在
        for _ in range(50):
            try:
                self._offset = os.path.getsize(path)
                break
            except Exception:
                time.sleep(0.2)
        self.thread = threading.Thread(target=self._pump, daemon=True)
        self.thread.start()

    def _pump(self):
        while self.running:
            try:
                size = os.path.getsize(self.path)
                if size < self._offset:
                    # 文件被截断/轮转
                    self._offset = 0
                    self._partial = b""
                if size > self._offset:
                    with open(self.path, "rb") as f:
                        f.seek(self._offset)
                        data = f.read(size - self._offset)
                    self._offset = size
                    self._partial += data
                    while b"\n" in self._partial:
                        line, self._partial = self._partial.split(b"\n", 1)
                        text = line.decode("utf-8", "ignore").rstrip("\r")
                        if INTEREST_RE.search(text):
                            with self.lock:
                                self.seq += 1
                                self.buf.append((self.seq, text))
                time.sleep(0.2)
            except Exception:
                time.sleep(0.5)

    def snapshot(self):
        with self.lock:
            return self.seq

    def since(self, base_seq):
        with self.lock:
            return [line for (s, line) in self.buf if s > base_seq]

    def recent_has(self, pat, last_n=2000):
        with self.lock:
            tail = [line for (_, line) in list(self.buf)[-last_n:]]
        return any(re.search(pat, l) for l in tail)


def parse_window(lines):
    """从一组日志行提取本轮判定结果"""
    fired_text = None
    triggered = False
    asr_text = None
    cancelled = False
    resp_fail = False
    for l in lines:
        m = FIRE_RE.search(l)
        if m:
            fired_text = m.group(1)
        if TRIG_RE.search(l):
            triggered = True
        m = ASROK_RE.search(l)
        if m and asr_text is None:
            asr_text = m.group(1)
        if not asr_text:
            m = ASRRAW_RE.search(l)
            if m and m.group(1):
                asr_text = m.group(1)
        if CANCEL_RE.search(l):
            cancelled = True
        if RESP_FAIL_RE.search(l):
            resp_fail = True
    detected = bool(fired_text) or triggered or (asr_text is not None and asr_text not in ("", "[听不清的声音]"))
    return {
        "detected": detected,
        "fired_text": fired_text or "",
        "triggered": triggered,
        "asr_text": asr_text or "",
        "cancelled": cancelled,
        "resp_fail": resp_fail,
    }


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--rounds", type=int, default=120, help="总轮数(每轮一句)")
    ap.add_argument("--volumes", default="40,60,80,100", help="逗号分隔的音量档位, 轮流使用")
    ap.add_argument("--voice", default="Rocko (中文（中国大陆）)", help="Mac TTS 嗓音")
    ap.add_argument("--wait", type=int, default=16, help="每轮放音后等待秒数")
    ap.add_argument("--out", default="/Users/kaixin/coding/feixun-r1/monitor_results.csv")
    ap.add_argument("--silent-rounds", type=int, default=2, help="每多少轮插一个静默对照(测误触发)")
    ap.add_argument("--logfile", default=None, help="直接读这个日志文件(tail -F), 不再自己开 adb logcat")
    args = ap.parse_args()

    volumes = [int(x) for x in args.volumes.split(",") if x.strip()]

    if args.logfile:
        cap = FileTailer(args.logfile)
        time.sleep(1)
        # 武装检查: 扫一遍整个文件看是否含 dormant 启动标记
        armed = False
        try:
            with open(args.logfile, "r", encoding="utf-8", errors="ignore") as f:
                for line in f:
                    if DORMANT_START_RE.search(line):
                        armed = True
                        break
        except Exception:
            pass
        if not armed:
            print("[!] 注意: 日志文件未找到 'Eavesdropper engine started (dormant mode)'。")
            print("    可能监听在开抓日志之前就已开始(标记不在文件里)。继续运行;")
            print("    若持续未检测到, 先去双击设备进入休眠/监听模式。")
    else:
        cap = LogcatCapture()
        time.sleep(2)
        if not cap.recent_has(DORMANT_START_RE, last_n=5000):
            print("[!] 警告: 未发现 'Eavesdropper engine started (dormant mode)'。")
            print("    请先把音箱双击进入【休眠/监听模式】, 否则监听不会生效, 本轮可能全为未检测到。")
            print("    继续运行但结果可能无效; 若持续未检测到, 先去双击设备。")

    csvf = open(args.out, "w", newline="", encoding="utf-8")
    w = csv.writer(csvf)
    w.writerow(["idx", "volume", "phrase", "detected", "triggered",
                "fired_text", "asr_text", "cancelled", "resp_fail", "ts"])
    csvf.flush()

    # 原始命中行存盘, 便于事后复盘重判(启发式不准也不怕)
    dbg = open("/Users/kaixin/coding/feixun-r1/monitor_debug.log", "w", encoding="utf-8")

    print(f"开始监听验证: rounds={args.rounds} volumes={volumes} voice='{args.voice}' wait={args.wait}s "
          f"logsource={'file:'+args.logfile if args.logfile else 'adb'}")
    print(f"当前 Mac 音量={get_volume()}")

    stats = {}
    for i in range(args.rounds):
        vol = volumes[i % len(volumes)]
        is_silent = (args.silent_rounds > 0 and (i % (args.silent_rounds * len(volumes) + 1) == 0))
        phrase = "" if is_silent else PHRASES[i % len(PHRASES)]

        set_volume(vol)
        time.sleep(0.3)
        base = cap.snapshot()
        t0 = datetime.now().strftime("%H:%M:%S")

        if is_silent:
            print(f"[#{i:03d}] vol={vol} [静默对照, 等{args.wait}s]")
            time.sleep(args.wait)
        else:
            say(phrase, args.voice)
            time.sleep(args.wait)

        lines = cap.since(base)
        res = parse_window(lines)
        w.writerow([i, vol, phrase, int(res["detected"]), int(res["triggered"]),
                    res["fired_text"], res["asr_text"], int(res["cancelled"]),
                    int(res["resp_fail"]), t0])
        csvf.flush()

        dbg.write(f"\n##### round {i} vol={vol} silent={int(is_silent)} t0={t0}\n")
        for l in lines:
            dbg.write(l + "\n")
        dbg.flush()

        tag = "OK " if res["detected"] else "NO "
        print(f"[#{i:03d}] vol={vol} {tag} fire='{res['fired_text']}' asr='{res['asr_text']}' "
              f"cancelled={int(res['cancelled'])} respFail={int(res['resp_fail'])}")

        key = vol
        s = stats.setdefault(key, {"n": 0, "det": 0, "cancel": 0, "respfail": 0})
        s["n"] += 1
        if res["detected"]:
            s["det"] += 1
        if res["cancelled"]:
            s["cancel"] += 1
        if res["resp_fail"]:
            s["respfail"] += 1

    print("\n==== 分音量统计 ====")
    for v in volumes:
        s = stats.get(v)
        if not s:
            continue
        rate = 100.0 * s["det"] / s["n"] if s["n"] else 0
        print(f"  vol={v:3d}: 检测率 {rate:5.1f}%  ({s['det']}/{s['n']})  cancel={s['cancel']} respFail={s['respfail']}")
    print(f"\n结果已写入: {args.out}")
    print(f"原始命中行: /Users/kaixin/coding/feixun-r1/monitor_debug.log")
    csvf.close()
    dbg.close()


if __name__ == "__main__":
    main()
