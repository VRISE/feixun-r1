#!/bin/bash
# v3 扫描: PCM 文件名带版本标签,不再 rm,文件天然分类
# 用法: ./scan_thresholds_v3.sh [thresholds...]

set -e

PROJECT="/Users/fang/Desktop/R1_DEVICE-main"
VAD_FILE="${PROJECT}/app/src/main/java/com/phicomm/speaker/device/custom/engine/VadAudioDetector.java"
ASR_FILE="${PROJECT}/app/src/main/java/com/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer.java"
RESULT="${PROJECT}/scan_v3_result.txt"
PCM_ROOT="/tmp/scan_pcm"
mkdir -p "${PCM_ROOT}"

if [ $# -gt 0 ]; then
  THRESHOLDS=("$@")
else
  THRESHOLDS=(5 7 9 11 13 15 17 19 21 23 25 27 30 35 40 45 50 6 8 3)
fi

NEXT_V=103

echo "========================================" | tee -a "${RESULT}"
echo "Scan v3 started at $(date)" | tee -a "${RESULT}"
echo "Thresholds: ${THRESHOLDS[*]}" | tee -a "${RESULT}"
echo "" | tee -a "${RESULT}"

i=0
TOTAL=${#THRESHOLDS[@]}
for t in "${THRESHOLDS[@]}"; do
  v=$((NEXT_V + i))
  i=$((i + 1))
  TAG="v${v}_t${t}"
  TARGET="${PCM_ROOT}/${TAG}"
  mkdir -p "${TARGET}"

  echo ""
  echo "========== Round $i/$TOTAL: ${TAG} =========="

  # 0a. 每轮开始前先把设备上所有 eavesdrop_*.pcm 拉回本地 (按文件名 TAG 分类)
  #     防止 build 期间设备继续 dump 后累积爆 sdcard, 也确保历史样本不丢
  echo "[$(date +%H:%M:%S)] Pulling all leftover PCM (sync before push)..."
  adb shell "ls /sdcard/eavesdrop_*.pcm 2>/dev/null" > /tmp/leftover_pcm.txt
  LEFTOVER=$(wc -l < /tmp/leftover_pcm.txt | tr -d ' ')
  if [ "${LEFTOVER}" -gt 0 ]; then
    while read pcm; do
      pcm=$(echo "${pcm}" | tr -d '\r')
      [ -z "${pcm}" ] && continue
      # 从文件名提取 TAG: eavesdrop_v103_t9_xxx.pcm → v103_t9
      base=$(basename "${pcm}")
      tag=$(echo "${base}" | sed 's/^eavesdrop_\(v[0-9]*_t[0-9]*\)_.*/\1/')
      if [ -z "${tag}" ] || [ "${tag}" = "${base}" ]; then
        # 老格式无 TAG,放 untagged 目录
        dest="${PCM_ROOT}/untagged"
      else
        dest="${PCM_ROOT}/${tag}"
      fi
      mkdir -p "${dest}"
      adb pull "${pcm}" "${dest}/" > /dev/null 2>&1
      # 转 WAV
      local_pcm="${dest}/${base}"
      if [ -f "${local_pcm}" ]; then
        local_wav="${local_pcm%.pcm}.wav"
        ffmpeg -y -f s16le -ar 16000 -ac 1 -i "${local_pcm}" "${local_wav}" 2>/dev/null
      fi
    done < /tmp/leftover_pcm.txt
    echo "  pulled ${LEFTOVER} leftover PCMs, removing from device..."
    adb shell "rm -f /sdcard/eavesdrop_*.pcm" 2>/dev/null
  fi

  # 0b. 清空设备上旧的 apk(节省 sdcard 空间)
  adb shell "rm -f /sdcard/janus_*.apk" 2>/dev/null

  # 1. 改 ENERGY_THRESHOLD 和 VARIANT_TAG
  sed -i '' "s/private static final int ENERGY_THRESHOLD = .*/private static final int ENERGY_THRESHOLD = ${t};         \/\/ SCAN v${v}/" "${VAD_FILE}"
  sed -i '' "s|public static final String VARIANT_TAG = .*|public static final String VARIANT_TAG = \"${TAG}\";|" "${ASR_FILE}"

  # 验证 sed 生效
  ACTUAL_T=$(grep "ENERGY_THRESHOLD =" "${VAD_FILE}" | head -1)
  ACTUAL_TAG=$(grep "VARIANT_TAG =" "${ASR_FILE}" | head -1)
  echo "  ${ACTUAL_T}"
  echo "  ${ACTUAL_TAG}"

  # 2. 编译部署
  echo "[$(date +%H:%M:%S)] Building v${v}..."
  if ! "${PROJECT}/build_and_deploy.sh" "${v}" > /tmp/build_v${v}.log 2>&1; then
    echo "BUILD FAILED v${v}" | tee -a "${RESULT}"
    continue
  fi

  # 3. 等设备启动
  echo "[$(date +%H:%M:%S)] Waiting 90s for boot..."
  sleep 90
  adb wait-for-device 2>/dev/null

  # 4. 采集 5 分钟 (不 rm 任何旧 PCM,本轮的会带新 TAG)
  COLLECT_START_EPOCH_MS=$(($(date +%s)*1000))
  COLLECT_START_HUMAN=$(date '+%Y-%m-%d %H:%M:%S')
  echo "[${COLLECT_START_HUMAN}] Collecting 5 min (start_ms=${COLLECT_START_EPOCH_MS})..."
  sleep 300
  COLLECT_END_EPOCH_MS=$(($(date +%s)*1000))
  COLLECT_END_HUMAN=$(date '+%Y-%m-%d %H:%M:%S')
  echo "[${COLLECT_END_HUMAN}] Collect end (end_ms=${COLLECT_END_EPOCH_MS})"

  # 5. 拉取本轮 PCM (按 TAG 过滤)
  echo "[$(date +%H:%M:%S)] Pulling PCMs matching ${TAG}..."
  adb shell "ls /sdcard/eavesdrop_${TAG}_*.pcm 2>/dev/null" > /tmp/pcm_list_${TAG}.txt
  PCM_COUNT=$(wc -l < /tmp/pcm_list_${TAG}.txt | tr -d ' ')

  while read pcm; do
    pcm=$(echo "${pcm}" | tr -d '\r')
    [ -n "${pcm}" ] && adb pull "${pcm}" "${TARGET}/" > /dev/null 2>&1
  done < /tmp/pcm_list_${TAG}.txt

  LOCAL_PCM=$(ls "${TARGET}"/*.pcm 2>/dev/null | wc -l | tr -d ' ')

  # 6. 转换 PCM → WAV
  echo "[$(date +%H:%M:%S)] Converting ${LOCAL_PCM} PCMs to WAV..."
  for pcm in "${TARGET}"/*.pcm; do
    [ -f "${pcm}" ] || continue
    wav="${pcm%.pcm}.wav"
    ffmpeg -y -f s16le -ar 16000 -ac 1 -i "${pcm}" "${wav}" 2>/dev/null
  done

  # 7. 写参数说明
  cat > "${TARGET}/PARAMS.txt" << EOF
版本: v${v}
TAG: ${TAG}
ENERGY_THRESHOLD: ${t}
轮次: ${i}/${TOTAL}
采集开始: ${COLLECT_START_HUMAN}  (epoch_ms=${COLLECT_START_EPOCH_MS})
采集结束: ${COLLECT_END_HUMAN}  (epoch_ms=${COLLECT_END_EPOCH_MS})
采集时长: 5 分钟
PCM 文件名前缀: eavesdrop_${TAG}_
PCM 数量: ${LOCAL_PCM}
EOF

  # 8. 统计
  TRIGGER_COUNT=$(adb shell "logcat -d 2>/dev/null | grep -c 'Speech TRIGGERED'" 2>/dev/null | tr -d '\r')
  UNI4MIC=$(adb shell "logcat -d 2>/dev/null | grep -c UNI_4MIC" 2>/dev/null | tr -d '\r')

  echo "Round $i ${TAG}: pcm=${LOCAL_PCM} trigger=${TRIGGER_COUNT} uni4mic=${UNI4MIC} start=${COLLECT_START_HUMAN} end=${COLLECT_END_HUMAN} → ${TARGET}" | tee -a "${RESULT}"
done

echo "" | tee -a "${RESULT}"
echo "Scan v3 finished at $(date)" | tee -a "${RESULT}"
echo "========================================" | tee -a "${RESULT}"
echo ""
echo "目录结构:"
ls -d "${PCM_ROOT}"/v* 2>/dev/null
echo ""
echo "设备上各版本 PCM 累积:"
adb shell "ls /sdcard/eavesdrop_v*_t*_*.pcm 2>/dev/null | wc -l" | tr -d '\r' | awk '{print "  Total:", $0}'