#!/bin/bash
# ========================================
# 把本地 AI 配置推送到音箱（Key 只进设备，不进仓库）
#
# 用法:
#   cp ai_config.example.ini ai_config.local.ini   # 首次
#   vi ai_config.local.ini                          # 填入你自己的 api_key
#   ./push_ai_config.sh [音箱IP]                    # 默认 192.168.5.9
#
# 说明:
#   - ai_config.local.ini 已被 .gitignore 忽略，你的 Key 永远不会提交到 git。
#   - 推送后自动重启音箱 App，配置即生效。
#   - 查看设备当前配置:
#     adb shell "run-as com.phicomm.speaker.device cat files/ai_config.ini"
# ========================================
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'; NC='\033[0m'

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOCAL_INI="${PROJECT_DIR}/ai_config.local.ini"
DEVICE_IP="${1:-192.168.5.9}"
PKG="com.phicomm.speaker.device"

[ -f "${LOCAL_INI}" ] || { echo -e "${RED}❌ 未找到 ${LOCAL_INI}${NC}"; \
  echo -e "先执行: ${YELLOW}cp ai_config.example.ini ai_config.local.ini${NC} 并填入你的 Key"; exit 1; }

grep -q "api_key *= *你的" "${LOCAL_INI}" && { echo -e "${RED}❌ api_key 还是模板占位符，请先填入真实 Key${NC}"; exit 1; }

echo -e "${BLUE:-}" 2>/dev/null
echo -e "${YELLOW}[1/3] 连接音箱 ${DEVICE_IP}:5555 ...${NC}"
adb connect "${DEVICE_IP}:5555"

echo -e "${YELLOW}[2/3] 推送 ai_config.ini 到设备 ...${NC}"
adb -s "${DEVICE_IP}:5555" shell "run-as ${PKG} sh -c 'cat > files/ai_config.ini'" < "${LOCAL_INI}"

# 校验（只显示前几个字符，避免 Key 完整出现在终端记录里）
echo -e "${YELLOW}[3/3] 重启 App 使配置生效 ...${NC}"
adb -s "${DEVICE_IP}:5555" shell "am force-stop ${PKG}" || true
sleep 2
adb -s "${DEVICE_IP}:5555" shell "am start -n ${PKG}/.ui.MainActivity" 2>/dev/null \
  || adb -s "${DEVICE_IP}:5555" shell "monkey -p ${PKG} -c android.intent.category.LAUNCHER 1" || true

echo -e "${GREEN}✅ 配置已推送。重启 App 后对音箱说句话即可验证（logcat 过滤 AIConfig/OpenAIClient 看调用详情）。${NC}"
