#!/bin/bash
# ========================================
# R1_DEVICE 一键编译打包安装脚本
# 用法: ./build_and_deploy.sh [版本号]
# 示例: ./build_and_deploy.sh 62
# ========================================

set -e  # 遇到错误立即退出

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# 配置
PROJECT_DIR="/Users/fang/Desktop/R1_DEVICE-main"
JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"
DX_TOOL="/Users/fang/Library/Android/sdk/build-tools/29.0.3/dx"
BAKSMALI_JAR="${PROJECT_DIR}/baksmali.jar"
SMALI_JAR="${PROJECT_DIR}/smali.jar"
BUILD_SCRIPT="${PROJECT_DIR}/build_janus_v2.py"
DEVICE_APK="${PROJECT_DIR}/device_original.apk"

# 版本号
VERSION=${1:-""}
if [ -z "$VERSION" ]; then
    echo -e "${RED}❌ 错误: 请提供版本号${NC}"
    echo -e "用法: $0 <版本号>"
    echo -e "示例: $0 62"
    exit 1
fi

echo -e "${BLUE}========================================${NC}"
echo -e "${BLUE}  R1_DEVICE 一键编译打包脚本 v${VERSION}${NC}"
echo -e "${BLUE}========================================${NC}"
echo ""

# 进入项目目录
cd "${PROJECT_DIR}"

# ========================================
# 第1步：清理并重新编译
# ========================================
echo -e "${YELLOW}[1/9] 清理并编译...${NC}"
export JAVA_HOME="${JAVA_HOME}"
./gradlew clean :app:assembleRelease

if [ $? -ne 0 ]; then
    echo -e "${RED}❌ 编译失败！${NC}"
    exit 1
fi
echo -e "${GREEN}✅ 编译成功${NC}"
echo ""

# ========================================
# 第2步：提取所有自定义类的 .class 文件
# ========================================
echo -e "${YELLOW}[2/9] 提取类文件...${NC}"
CLASSES_DIR="/tmp/v${VERSION}_classes"
rm -rf "${CLASSES_DIR}"
mkdir -p "${CLASSES_DIR}/com/phicomm/speaker/device"
mkdir -p "${CLASSES_DIR}/com/phicomm/speaker/device/ui"
mkdir -p "${CLASSES_DIR}/com/unisound/vui/handler/filter"

# 复制整个 custom 目录（包含所有子目录）
cp -r app/build/intermediates/javac/release/classes/com/phicomm/speaker/device/custom \
    "${CLASSES_DIR}/com/phicomm/speaker/device/"

# 复制关键修改的文件
cp app/build/intermediates/javac/release/classes/com/phicomm/speaker/device/ui/ExampleANTEngineInitializer.class \
    "${CLASSES_DIR}/com/phicomm/speaker/device/ui/"

cp app/build/intermediates/javac/release/classes/com/unisound/vui/handler/filter/NLUDispatcher*.class \
    "${CLASSES_DIR}/com/unisound/vui/handler/filter/"

# ⭐ 复制 MQTT 修复文件
mkdir -p "${CLASSES_DIR}/com/unisound/ant/device/mqtt"
cp app/build/intermediates/javac/release/classes/com/unisound/ant/device/mqtt/MqttTransportChannel*.class \
    "${CLASSES_DIR}/com/unisound/ant/device/mqtt/" 2>/dev/null || true

# 统计
CLASS_COUNT=$(find "${CLASSES_DIR}" -name "*.class" | wc -l | tr -d ' ')
echo -e "${GREEN}✅ 提取了 ${CLASS_COUNT} 个类文件${NC}"
echo ""

# ========================================
# 第3步：编译成 DEX
# ========================================
echo -e "${YELLOW}[3/9] 编译 DEX...${NC}"
DEX_DIR="/tmp/v${VERSION}_dex"
rm -rf "${DEX_DIR}"
mkdir -p "${DEX_DIR}"

${DX_TOOL} --dex --output="${DEX_DIR}/classes.dex" "${CLASSES_DIR}"

if [ ! -f "${DEX_DIR}/classes.dex" ]; then
    echo -e "${RED}❌ DEX 编译失败！${NC}"
    exit 1
fi

DEX_SIZE=$(ls -lh "${DEX_DIR}/classes.dex" | awk '{print $5}')
echo -e "${GREEN}✅ DEX 编译成功 (${DEX_SIZE})${NC}"
echo ""

# ========================================
# 第4步：转成 smali
# ========================================
echo -e "${YELLOW}[4/9] 转换为 smali...${NC}"
SMALI_DIR="/tmp/v${VERSION}_smali"
rm -rf "${SMALI_DIR}"

java -jar "${BAKSMALI_JAR}" d "${DEX_DIR}/classes.dex" -o "${SMALI_DIR}"

if [ $? -ne 0 ]; then
    echo -e "${RED}❌ smali 转换失败！${NC}"
    exit 1
fi
echo -e "${GREEN}✅ smali 转换成功${NC}"
echo ""

# ========================================
# 第5步：注入 smali 到 original_v2
# ========================================
echo -e "${YELLOW}[5/9] 注入 smali 到 original_v2...${NC}"

# 清空旧的自定义 smali
rm -rf original_v2/smali/com/phicomm/speaker/device/custom

# 注入新的 smali（整个 custom 目录）
cp -r "${SMALI_DIR}/com/phicomm/speaker/device/custom" \
    original_v2/smali/com/phicomm/speaker/device/

# 注入关键修改的文件
cp "${SMALI_DIR}/com/phicomm/speaker/device/ui/ExampleANTEngineInitializer.smali" \
    original_v2/smali/com/phicomm/speaker/device/ui/

cp "${SMALI_DIR}/com/unisound/vui/handler/filter/NLUDispatcher"*.smali \
    original_v2/smali/com/unisound/vui/handler/filter/

# ⭐ 注入 MQTT 修复文件
cp "${SMALI_DIR}/com/unisound/ant/device/mqtt/MqttTransportChannel"*.smali \
    original_v2/smali/com/unisound/ant/device/mqtt/ 2>/dev/null || true

# 验证注入
SMALI_COUNT=$(find original_v2/smali/com/phicomm/speaker/device/custom -name "*.smali" | wc -l | tr -d ' ')
echo -e "${GREEN}✅ 注入了 ${SMALI_COUNT} 个 smali 文件${NC}"
echo ""

# ========================================
# 第6步：检查关键 Handler 是否都注册了
# ========================================
echo -e "${YELLOW}[6/9] 检查 Handler 注册...${NC}"

INITIALIZER_SMALI="original_v2/smali/com/phicomm/speaker/device/ui/ExampleANTEngineInitializer.smali"

check_handler() {
    local handler=$1
    if grep -q "${handler}" "${INITIALIZER_SMALI}"; then
        echo -e "  ${GREEN}✅${NC} ${handler}"
    else
        echo -e "  ${RED}❌${NC} ${handler} (未找到)"
    fi
}

check_handler "PersonaRouterHandler"
check_handler "EavesdropperHandler"
check_handler "PhicommWeatherHandler"
check_handler "PhicommMusicSearchHandler"
check_handler "PhicommChatHandler"

# 检查讯飞 TTS 客户端
if [ -d "original_v2/smali/com/phicomm/speaker/device/custom/tts" ]; then
    TTS_SMALI_COUNT=$(find original_v2/smali/com/phicomm/speaker/device/custom/tts -name "*.smali" 2>/dev/null | wc -l | tr -d ' ')
    echo -e "  ${GREEN}✅${NC} XfyunTtsClient (${TTS_SMALI_COUNT} smali files)"
else
    echo -e "  ${YELLOW}⚠️${NC} XfyunTtsClient (未找到，将使用原厂 TTS)"
fi
echo ""

# ========================================
# 第7步：编译 DEX
# ========================================
echo -e "${YELLOW}[7/9] 编译最终 DEX...${NC}"
cd original_v2
java -jar "${SMALI_JAR}" a -o "../classes_new_v${VERSION}.dex" smali

if [ $? -ne 0 ]; then
    echo -e "${RED}❌ DEX 编译失败！${NC}"
    exit 1
fi

cd ..
DEX_FINAL_SIZE=$(ls -lh "classes_new_v${VERSION}.dex" | awk '{print $5}')
echo -e "${GREEN}✅ DEX 编译成功 (${DEX_FINAL_SIZE})${NC}"
echo ""

# ========================================
# 第8步：构造 Janus APK
# ========================================
echo -e "${YELLOW}[8/9] 构造 Janus APK...${NC}"
OUTPUT_APK="janus_unisound_v${VERSION}.apk"

python3 "${BUILD_SCRIPT}" "${DEVICE_APK}" "classes_new_v${VERSION}.dex" "${OUTPUT_APK}"

if [ ! -f "${OUTPUT_APK}" ]; then
    echo -e "${RED}❌ APK 构造失败！${NC}"
    exit 1
fi

APK_SIZE=$(ls -lh "${OUTPUT_APK}" | awk '{print $5}')
echo -e "${GREEN}✅ APK 构造成功: ${OUTPUT_APK} (${APK_SIZE})${NC}"
echo ""

# ========================================
# 第9步：安装到设备
# ========================================
echo -e "${YELLOW}[9/9] 安装到设备...${NC}"

# ⭐ 清理设备上的旧文件
echo "  清理旧文件..."
adb shell "rm -f /sdcard/*.apk; rm -f /sdcard/eavesdrop_*.pcm; rm -f /sdcard/scan_v*.log; rm -f /sdcard/now*.log; rm -f /sdcard/v*.log; rm -f /sdcard/eav_event.log"

echo "  推送 APK 到设备..."
adb push "${OUTPUT_APK}" "/sdcard/janus_v${VERSION}.apk"

echo "  安装 APK..."
adb shell "CLASSPATH=/system/framework/pm.jar app_process /system/bin com.android.commands.pm.Pm install -r /sdcard/janus_v${VERSION}.apk"

echo "  清除 dalvik-cache..."
adb shell "rm -rf /data/dalvik-cache/arm/* /data/dalvik-cache/arm64/* && sync"

echo "  重启设备..."
adb reboot

echo ""
echo -e "${BLUE}========================================${NC}"
echo -e "${GREEN}✅ v${VERSION} 打包安装完成！${NC}"
echo -e "${BLUE}========================================${NC}"
echo ""
echo -e "${YELLOW}📱 设备正在重启，请等待 1-2 分钟${NC}"
echo -e "${YELLOW}🔍 查看日志: adb logcat | grep -E 'NLUDispatcher|PersonaRouterHandler|DEBUG'${NC}"
echo ""
