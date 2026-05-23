#!/bin/bash
# 自动扫描 ENERGY_THRESHOLD 测试脚本
# 每轮: 改阈值 → 编译部署 → 等设备启动 + 10s 启动延迟 → 采集 5 分钟 → 统计文件数

set -e

PROJECT="/Users/fang/Desktop/R1_DEVICE-main"
VAD_FILE="${PROJECT}/app/src/main/java/com/phicomm/speaker/device/custom/engine/VadAudioDetector.java"
RESULT="${PROJECT}/scan_result.txt"

# 测试阈值序列(从 v70 起点 5 开始 ±2 扫描,然后扩大范围)
THRESHOLDS=(5 7 3 9 11 13 15 17 19 21 23 25 27 30 35 40 45 50 8 6)

# 起始版本号
VERSION_START=79

echo "========================================" | tee -a "${RESULT}"
echo "Scan started at $(date)" | tee -a "${RESULT}"
echo "" | tee -a "${RESULT}"

i=0
for t in "${THRESHOLDS[@]}"; do
  v=$((VERSION_START + i))
  i=$((i + 1))
  echo ""
  echo "========== Round $i/20: v${v} threshold=${t} =========="

  # 1. 修改阈值
  sed -i '' "s/private static final int ENERGY_THRESHOLD = .*/private static final int ENERGY_THRESHOLD = ${t};         \/\/ SCAN round ${i}\/20/" "${VAD_FILE}"

  # 2. 清空旧 PCM
  adb shell "rm -f /sdcard/eavesdrop_*.pcm" 2>/dev/null

  # 3. 编译部署(build_and_deploy.sh 会自动 push、安装、reboot)
  echo "[$(date +%H:%M:%S)] Building v${v}..."
  if ! "${PROJECT}/build_and_deploy.sh" "${v}" > /tmp/build_v${v}.log 2>&1; then
    echo "BUILD FAILED v${v}" | tee -a "${RESULT}"
    tail -20 /tmp/build_v${v}.log | tee -a "${RESULT}"
    continue
  fi

  # 4. 等设备启动: reboot 大约 50-60s, 加 10s 启动延迟,留余量等 90s
  echo "[$(date +%H:%M:%S)] Waiting 90s for boot..."
  sleep 90
  adb wait-for-device 2>/dev/null

  # 5. 采集 5 分钟
  echo "[$(date +%H:%M:%S)] Collecting 5 min..."
  sleep 300

  # 6. 统计 PCM 文件数 + UNI_4MIC 日志
  PCM_COUNT=$(adb shell "ls /sdcard/eavesdrop_*.pcm 2>/dev/null" | grep -c "eavesdrop_" || echo 0)
  UNI4MIC=$(adb shell "logcat -d 2>/dev/null | grep -c UNI_4MIC" 2>/dev/null | tr -d '\r' || echo 0)

  # 7. 抓能量诊断日志样本
  adb shell "logcat -d > /sdcard/scan_v${v}.log; grep ENERGY /sdcard/scan_v${v}.log > /sdcard/scan_v${v}_e.log" 2>/dev/null
  adb pull /sdcard/scan_v${v}_e.log /tmp/scan_v${v}_e.log 2>/dev/null
  ENERGY_LINES=$(wc -l < /tmp/scan_v${v}_e.log 2>/dev/null || echo 0)
  TRIGGER_COUNT=$(adb shell "grep -c 'Speech TRIGGERED' /sdcard/scan_v${v}.log" 2>/dev/null | tr -d '\r' || echo 0)

  # 8. 记录结果
  echo "Round $i v${v} threshold=${t}: pcm_files=${PCM_COUNT} trigger=${TRIGGER_COUNT} uni4mic_lines=${UNI4MIC} energy_lines=${ENERGY_LINES}" | tee -a "${RESULT}"

  if [ "${UNI4MIC}" = "0" ]; then
    echo "  ⚠️  WARNING: no UNI_4MIC logs!" | tee -a "${RESULT}"
  fi
done

echo "" | tee -a "${RESULT}"
echo "Scan finished at $(date)" | tee -a "${RESULT}"
echo "========================================" | tee -a "${RESULT}"
