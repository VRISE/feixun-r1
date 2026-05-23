#!/bin/bash
# 改进版扫描: 每个阈值的 PCM 保留到对应目录 + 转换为 WAV + 写参数说明
# 用法: ./scan_thresholds_v2.sh [thresholds...]
#   例: ./scan_thresholds_v2.sh 9 13 17 21      # 只跑这几个阈值
#   例: ./scan_thresholds_v2.sh                 # 默认序列 (20 轮)

set -e

PROJECT="/Users/fang/Desktop/R1_DEVICE-main"
VAD_FILE="${PROJECT}/app/src/main/java/com/phicomm/speaker/device/custom/engine/VadAudioDetector.java"
RESULT="${PROJECT}/scan_v2_result.txt"
PCM_ROOT="/tmp/scan_pcm"
mkdir -p "${PCM_ROOT}"

# 阈值序列: 命令行参数 或 默认 20 个
if [ $# -gt 0 ]; then
  THRESHOLDS=("$@")
else
  THRESHOLDS=(5 7 9 11 13 15 17 19 21 23 25 27 30 35 40 45 50 6 8 3)
fi

# 起始版本号(找下一个可用)
NEXT_V=99

echo "========================================" | tee -a "${RESULT}"
echo "Scan v2 started at $(date)" | tee -a "${RESULT}"
echo "Thresholds: ${THRESHOLDS[*]}" | tee -a "${RESULT}"
echo "" | tee -a "${RESULT}"

i=0
TOTAL=${#THRESHOLDS[@]}
for t in "${THRESHOLDS[@]}"; do
  v=$((NEXT_V + i))
  i=$((i + 1))
  TARGET="${PCM_ROOT}/v${v}_threshold_${t}"
  mkdir -p "${TARGET}"

  echo ""
  echo "========== Round $i/$TOTAL: v${v} threshold=${t} =========="

  # 1. 修改阈值
  sed -i '' "s/private static final int ENERGY_THRESHOLD = .*/private static final int ENERGY_THRESHOLD = ${t};         \/\/ SCAN v${v}/" "${VAD_FILE}"

  # 2. 清空设备 PCM
  adb shell "rm -f /sdcard/eavesdrop_*.pcm" 2>/dev/null

  # 3. 编译部署
  echo "[$(date +%H:%M:%S)] Building v${v}..."
  if ! "${PROJECT}/build_and_deploy.sh" "${v}" > /tmp/build_v${v}.log 2>&1; then
    echo "BUILD FAILED v${v}" | tee -a "${RESULT}"
    continue
  fi

  # 4. 等设备启动
  echo "[$(date +%H:%M:%S)] Waiting 90s for boot..."
  sleep 90
  adb wait-for-device 2>/dev/null

  # 5. 采集 5 分钟
  echo "[$(date +%H:%M:%S)] Collecting 5 min..."
  sleep 300

  # 6. 拉取 PCM 到本地目录
  echo "[$(date +%H:%M:%S)] Pulling PCMs to ${TARGET}..."
  adb shell "ls /sdcard/eavesdrop_*.pcm 2>/dev/null" > /tmp/pcm_list_v${v}.txt
  PCM_COUNT=$(wc -l < /tmp/pcm_list_v${v}.txt | tr -d ' ')

  while read pcm; do
    pcm=$(echo "${pcm}" | tr -d '\r')
    [ -n "${pcm}" ] && adb pull "${pcm}" "${TARGET}/" > /dev/null 2>&1
  done < /tmp/pcm_list_v${v}.txt

  LOCAL_PCM=$(ls "${TARGET}"/*.pcm 2>/dev/null | wc -l | tr -d ' ')

  # 7. 转换 PCM 为 WAV
  echo "[$(date +%H:%M:%S)] Converting ${LOCAL_PCM} PCMs to WAV..."
  for pcm in "${TARGET}"/*.pcm; do
    [ -f "${pcm}" ] || continue
    wav="${pcm%.pcm}.wav"
    ffmpeg -y -f s16le -ar 16000 -ac 1 -i "${pcm}" "${wav}" 2>/dev/null
  done

  # 8. 写参数说明
  cat > "${TARGET}/PARAMS.txt" << EOF
版本: v${v}
ENERGY_THRESHOLD: ${t}
轮次: ${i}/${TOTAL}
采集时间: 5 分钟
启动延迟: 10s
SESSION_COOLDOWN_MS: 0 (测试模式)
PersonaManager 检查: 禁用 (测试模式)
notifyWakeup/Interaction: no-op (测试模式)
isAnyPlaying: always false (测试模式)
EavesdropperHandler: 不调 LLM (测试模式)
PCM 数量: ${LOCAL_PCM}
EOF

  # 9. 统计
  TRIGGER_COUNT=$(adb shell "logcat -d 2>/dev/null | grep -c 'Speech TRIGGERED'" 2>/dev/null | tr -d '\r')
  UNI4MIC=$(adb shell "logcat -d 2>/dev/null | grep -c UNI_4MIC" 2>/dev/null | tr -d '\r')

  echo "Round $i v${v} threshold=${t}: pcm_files=${LOCAL_PCM} trigger=${TRIGGER_COUNT} uni4mic=${UNI4MIC} → ${TARGET}" | tee -a "${RESULT}"
done

echo "" | tee -a "${RESULT}"
echo "Scan v2 finished at $(date)" | tee -a "${RESULT}"
echo "========================================" | tee -a "${RESULT}"
echo ""
echo "目录结构:"
ls -d "${PCM_ROOT}"/v* 2>/dev/null