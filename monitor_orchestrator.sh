#!/bin/bash
# 看守脚本: 等用户双击进入 休眠/监听模式 -> 手动确认 -> 启动长循环
# 关键修复: 只开【唯一一个】持久 adb logcat 写到 $ORCH, monitor_test.py 用 --logfile 读它,
# 避免两个 adb logcat 抢读导致监控脚本抓不到日志(之前就是这原因全显示 NO)。
DEVICE=192.168.5.9:5555
ADB=adb
ORCH=/tmp/janus_orch.log
PY=/Users/kaixin/.workbuddy/binaries/python/versions/3.13.12/bin/python3
HARNESS=/Users/kaixin/coding/feixun-r1/monitor_test.py
CSV=/Users/kaixin/coding/feixun-r1/monitor_results.csv

adb connect $DEVICE >/dev/null 2>&1

# 是否已经在监听态(无需等双击) —— 用瞬时 dump 检查一下
ALREADY=0
if adb -s $DEVICE logcat -d -v time -t 400 2>/dev/null | grep -q "Eavesdropper engine started (dormant mode)"; then
  ALREADY=1
  echo "[orch $(date '+%H:%M:%S')] 设备已在监听态, 跳过等待"
fi

# 启动唯一一个持久 logcat 抓取(先杀掉其它 logcat, 避免冲突)
pkill -f "logcat -v time" 2>/dev/null; sleep 1
: > "$ORCH"
nohup adb -s $DEVICE logcat -v time > "$ORCH" 2>&1 &
LOGPID=$!
sleep 2

if [ "$ALREADY" != "1" ]; then
  echo "[orch $(date '+%H:%M:%S')] 尝试用 am broadcast 远程激活监听(免物理双击)..."
  adb connect $DEVICE >/dev/null 2>&1
  adb -s $DEVICE shell am broadcast -a com.phicomm.action.ENTER_DORMANT 2>&1 | head -2
  FOUND=0
  for i in $(seq 1 24); do
    if grep -q "Eavesdropper engine started (dormant mode)" "$ORCH"; then
      FOUND=1; echo "[orch $(date '+%H:%M:%S')] 广播激活成功, 检测到休眠启动"; break
    fi
    adb connect $DEVICE >/dev/null 2>&1
    sleep 5
  done
  if [ "$FOUND" != "1" ]; then
    echo "[orch] 广播未在 2 分钟内激活, 回退: 请【物理双击设备】进入休眠/监听模式 (最多 30 分钟)..."
    for i in $(seq 1 360); do
      if grep -q "Eavesdropper engine started (dormant mode)" "$ORCH"; then
        FOUND=1; echo "[orch $(date '+%H:%M:%S')] 检测到休眠启动(双击)"; break
      fi
      adb connect $DEVICE >/dev/null 2>&1
      sleep 5
    done
  fi
  if [ "$FOUND" != "1" ]; then
    echo "[orch] TIMEOUT: 未检测到进入监听模式(广播+双击均失败)。请检查设备状态后重试。"
    kill $LOGPID 2>/dev/null
    exit 2
  fi
else
  # 已在监听态: 但上面清空了文件, dormant 标记没了。确认当前日志里仍有活跃会话
  sleep 3
  if ! grep -qE "\[GO\] dormant session restart|VadAudioDetector Starting|Eavesdropper session started" "$ORCH"; then
    echo "[orch] 警告: 早先检测过 dormant, 但当前日志无活跃会话, 可能已退出监听。尝试广播重新激活..."
    adb -s $DEVICE shell am broadcast -a com.phicomm.action.ENTER_DORMANT 2>&1 | head -1
    sleep 5
    if ! grep -qE "Eavesdropper engine started \(dormant mode\)|\[GO\] dormant session restart" "$ORCH"; then
      echo "[orch] 重新激活失败, 请双击设备重新进入。"
      kill $LOGPID 2>/dev/null
      exit 4
    fi
  fi
fi

# 手动确认
echo "[orch] 手动确认: 放一句中性话, 看是否真的监听到..."
osascript -e "set volume output volume 75" 2>/dev/null
adb connect $DEVICE >/dev/null 2>&1
say -v 'Rocko (中文（中国大陆）)' '今天的阳光真好，我们一起去公园散步吧'
sleep 16
echo "[orch] === 手动确认关键标记 ==="
CONFIRM=$(grep -E 'Fire EavesdropperTriggerEvent|Speech (TRIGGERED|triggered)|ASR OK|EavesdropperHandler|activatePersona|playTTS|LLM response' "$ORCH" | tail -12)
echo "$CONFIRM"
echo ""

if [ -z "$CONFIRM" ]; then
  echo "[orch] ⚠️ 手动确认未检测到监听标记。不启动长循环(避免空跑一小时)。"
  echo "[orch] 请确认: (1) 双击确实进入休眠(日志应有 'Eavesdropper engine started (dormant mode)');"
  echo "[orch]        (2) Mac 音量已调高; (3) 音箱离 Mac 扬声器足够近。然后重跑本脚本。"
  kill $LOGPID 2>/dev/null
  exit 3
fi

# 短验证: 先跑 15 轮, 确认修复(连续应答)生效, 再上长循环
echo "[orch $(date '+%H:%M:%S')] 跑短验证 15 轮, 确认可连续监听..."
$PY "$HARNESS" --logfile "$ORCH" --rounds 15 --volumes 60,80,100 --voice 'Rocko (中文（中国大陆）)' --wait 14 --out /tmp/monitor_short.csv
SHORT_HITS=$($PY - "/tmp/monitor_short.csv" <<'PY'
import csv, sys
p = sys.argv[1]
try:
    with open(p, newline='', encoding='utf-8') as f:
        rows = list(csv.DictReader(f))
    # 第4列 detected 写成 1/0
    hits = sum(1 for r in rows if str(r.get('detected','0')).strip() in ('1','True','true'))
    print(hits)
except Exception as e:
    print(0)
PY
)
echo "[orch] 短验证命中: $SHORT_HITS / 15"
if [ "$SHORT_HITS" -lt 2 ]; then
  echo "[orch] ⚠️ 短验证仅命中 $SHORT_HITS 次, 修复可能未生效或环境未调好。不启动长循环(避免白跑一小时)。"
  echo "[orch] 建议: 检查 Mac 音量/音箱距离, 或确认双击确实进入监听态。手动跑: $PY $HARNESS --logfile $ORCH --rounds 15 ..."
  kill $LOGPID 2>/dev/null
  exit 5
fi

# 启动长循环(读同一个日志文件, 不再另开 adb logcat)
echo "[orch $(date '+%H:%M:%S')] 短验证通过, 启动自动化长循环 rounds=160 volumes=40,60,80,100 ..."
adb connect $DEVICE >/dev/null 2>&1
$PY "$HARNESS" --logfile "$ORCH" --rounds 160 --volumes 40,60,80,100 --voice 'Rocko (中文（中国大陆）)' --wait 16 --out "$CSV"
echo "[orch $(date '+%H:%M:%S')] 长循环结束。结果: $CSV"
kill $LOGPID 2>/dev/null
