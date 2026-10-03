#!/bin/bash
# 音箱装机 + 推 AI 配置（一次性做完，重启音箱后跑这个）
#
#   ./install_and_config.sh                 # 默认装最新版到 192.168.5.9
#   ./install_and_config.sh 192.168.5.9:5555 88
#
# 做的事情：
#   1. adb install -r 指定版本的 janus_unisound_v<版本号>.apk
#   2. 把本地 ai_config.local.ini 推进设备（Key 只在设备 + 本地，不进 git）
#   3. 重启音箱 App 让它重新加载配置
#
# ⚠️ ai_config.local.ini 默认指向局域网里的豆包链（门 :7790），
#    那台机器必须开着，否则音箱会说"模型调用失败"。
set -e

R="$(cd "$(dirname "$0")" && pwd)"
DEV="${1:-192.168.5.9:5555}"
VER="${2:-88}"
APK="$R/janus_unisound_v${VER}.apk"
CFG="$R/ai_config.local.ini"

if [ ! -f "$APK" ]; then
  echo "找不到 $APK（先跑 ./build_and_deploy.sh $VER 打包）"
  exit 1
fi
if [ ! -f "$CFG" ]; then
  echo "找不到 $CFG（复制 ai_config.example.ini 改一份）"
  exit 1
fi

echo "== 连接 $DEV =="
adb connect "$DEV"
adb -s "$DEV" get-state

echo "== 安装 $APK =="
adb -s "$DEV" install -r "$APK"

echo "== 推 AI 配置 =="
adb -s "$DEV" shell "run-as com.phicomm.speaker.device sh -c 'cat > files/ai_config.ini'" < "$CFG"
adb -s "$DEV" shell "run-as com.phicomm.speaker.device grep -E 'base_url|model|tts|user' files/ai_config.ini"

echo "== 重启 App =="
adb -s "$DEV" shell am force-stop com.phicomm.speaker.device
sleep 2
adb -s "$DEV" shell monkey -p com.phicomm.speaker.device -c android.intent.category.LAUNCHER 1 >/dev/null 2>&1 || true
sleep 8

echo "== 启动日志 =="
adb -s "$DEV" shell "logcat -d" | grep -aE "AIConfig|OpenAIClient" | tail -8

echo "== 完成 =="
