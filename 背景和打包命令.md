# R1 智能音箱天气意图改造 — 卡死根因与方案对比

> 目标:语音说"杭州天气"时拦截原厂回复,改为播报真实天气 API 的内容。  
> 设备:斐讯 R1(Android 5.1,精简版 adb )。  
> **代码源**: `/Users/fang/Desktop/R1_DEVICE-main`（唯一代码修改和编译位置）

---

## 零、需求总览(当前用户需求)

### 0.1 业务背景
- 原厂 R1 服务器已下线,NLU/TTS 反馈不可用或内容错误。
- 要求设备能**正常唤醒**(依然依赖原厂 wakeup/ASR/NLU)、能**拦截错误回复**、能**接入自己的内容提供者**。
- 拒绝刷机、拒绝静态反馈。必须走**覆盖安装 + 原厂联动**的路线。

### 0.2 明确需求清单
| # | 需求 | 优先级 | 验收标准 |
|---|---|---|---|
| R1 | 保留原厂唤醒 / ASR / NLU 能力 | P0 | 说唤醒词有应答声,后续指令可用 |
| R2 | 拦截原厂天气回复,换成真实天气 | P0 | 说"杭州天气"听到 wttr.in 的真实反馈 |
| R3 | 单 APK 设计(成本考虑) | P0 | 不要双 APK,一个 janus 包覆盖原厂即可 |
| R4 | 不能卡死(必须遵守这条铁律) | P0 | 连续说 5 次不出现老问题 |
| R5 | 可拓展到其他意图(音乐/提醒/天气/闲聊) | P1 | Handler 可复用模板,新增意图 < 50 行代码 |
| R6 | 可靠的外部服务接入 | P1 | **优先 APK 直连外网 HTTP**;APK 搞不定的(key/限流/被墙/LLM)才走**局域网电脑后端**(192.168.5.10:PORT 兜底) |
| R7 | 路线上保留可诊断性 | P2 | logcat 能看到 "拦截 / HTTP / 播报" 三段日志 |

### 0.3 明确不做的东西(Out of Scope)
- 不去碰"重写原厂服务器"这条线、也不刷ROM。
- 不动原厂 ApiHelper / wakeup / audio 任何一个字节(避免带出意外 bug)。
- 不依赖云知声后端的任何账号 / token(人家服务器已下)。

### 0.4 项目结构说明

**代码修改位置（唯一）**：
```
/Users/fang/Desktop/R1_DEVICE-main/    ← 唯一代码源
├── app/src/main/java/                 ← Java 源码
├── app/build/                         ← 编译输出
├── original_v2/smali/                 ← smali 注入目录（从 R1_DEVICE 复制）
├── device_original.apk                ← 原厂 APK 外壳（从 R1_DEVICE 复制）
├── build_janus_v2.py                  ← Janus 打包脚本（从 R1_DEVICE 复制）
├── baksmali.jar                       ← DEX → smali 工具（从 R1_DEVICE 复制）
└── smali.jar                          ← smali → DEX 工具（从 R1_DEVICE 复制）
```

**打包依赖来源**：
首次使用时，需要从 `/Users/fang/Downloads/R1_DEVICE` 复制以下文件到 `R1_DEVICE-main`：
```bash
cd /Users/fang/Desktop/R1_DEVICE-main
cp /Users/fang/Downloads/R1_DEVICE/device_original.apk .
cp /Users/fang/Downloads/R1_DEVICE/build_janus_v2.py .
cp /Users/fang/Downloads/R1_DEVICE/baksmali.jar .
cp /Users/fang/Downloads/R1_DEVICE/smali.jar .
cp -r /Users/fang/Downloads/R1_DEVICE/original_v2 .
```

---

## 一、问题背景:我们曾经的方案为什么卡死

### 1.1 我们之前的实现路线
直接 hook `com/unisound/vui/engine/ApiHelper.interceptTTS(String)`,在这个方法里同步发 HTTP 拿到天气文本然后 return 替换掉原 TTS 文本。

```
原厂 TTS 文本 → ApiHelper.interceptTTS(text)  ← 我们 hook 这里
                          │
                          ├─ 同线程 HttpURLConnection 请求 wttr.in / 192.168.5.10:3003
                          │
                          └─ return 真实天气文本 → 原厂继续 playTTS
```

### 1.2 卡死现象
- v25/v26/v27 多个版本一致:**只要在 `interceptTTS` 内部发起任何 HTTP 请求(无论公网/内网、HTTP/HTTPS、是否子线程 join 主线程),整个语音流就阻塞,设备卡死,直到看门狗杀进程**。

### 1.3 根因(已通过 v27 实验证实)
1. `ApiHelper.interceptTTS` 是**TTS 回调线程**(实际为 unisound ANT 内部的同步串行回调)上执行的。
2. 在该线程里:
   - 主线程 HTTP → `NetworkOnMainThreadException`(显然不行);
   - 子线程 HTTP + `Thread.join()` → 主线程仍然被 join 阻塞,看门狗杀进程;
   - 子线程 HTTP + 主线程轮询/Latch → **依然卡死**:这一线程持有 ANT/Audio/TTS 的临界锁,只要它被任何同步等待挂住,整个 audio 管线、wakeup、ASR 全部停摆;
   - 即使把请求放到独立 ExecutorService 跑、主线程立即 return,**只要 return 的内容是 HTTP 异步结果都会卡** — 因为 `interceptTTS` 是"同步替换语义",必须**当场返回最终字符串**。
3. 结论:**`interceptTTS` 注入点本质上不允许做任何耗时操作,这条路径死路一条。**

> 详见 `任务总结经验:Android 5.1 TTS线程HTTP调用限制验证与结论`。

---

## 二、外部成功案例的原理分析

我们手上有三个**已经被验证可用**的成功 APK:

| 案例 | 项目 | APK | 包结构 | Janus? |
|---|---|---|---|---|
| A | r1-dummy-main | `new_echo.apk` (4 MB) | 外壳 = 原厂 EchoService.apk | ✅ |
| A | r1-dummy-main | `new_uni.apk` (29 MB) | 外壳 = 原厂 Unisound.apk | ✅ |
| B | Unisound_v1.6.13 | 单 APK(33 MB) | 外壳 = 原厂 Unisound.apk | ✅ |

三个 APK 反编译后都看到**同一种核心机制**:

### 2.1 关键发现:他们根本不 hook `interceptTTS`
对比反编译 DEX,**没有人改 `ApiHelper.interceptTTS`**。这是我们走错路的最大铁证。

### 2.2 他们用的是 Unisound ANT SDK 的"公开 pipeline 扩展点"
Unisound ANT SDK 是 Netty 风格架构:

```
ANTEngine
  └─ pipeline (ANTPipeline,本质是 ChannelPipeline)
        ├─ Handler1 (优先级 X)
        ├─ Handler2 (优先级 Y)
        └─ ...
```

NLU 事件(语音转文本+语义分析后的结果)走 inbound 链路依次喂给每个 Handler。每个 Handler:
- `acceptInboundEvent0(evt)` 返回 true → 表示"我消费了"
- `eventReceived(evt, ctx)` 在 **ANT 工作线程** 上被回调

关键差异:
| 维度 | 我们卡死的方式 | 三个成功案例 |
|---|---|---|
| 注入点 | `ApiHelper.interceptTTS` (TTS 回调线程) | `pipeline.addLast(new XxxHandler())` (NLU 工作线程) |
| 语义 | 必须**当场 return** 替换字符串 | 可以**异步**,处理完后调 `ctx.playTTS(text)` 主动播报 |
| 线程 | 持 audio 管线锁,任何阻塞 = 卡死 | 独立工作线程,完全允许同步阻塞 HTTP |
| 是否能调网络 | ❌ | ✅ 直接同步 HTTP 都行,作者甚至放线程池更稳妥 |
| 是否能取消原回复 | 无法,只能替换文本 | `ctx.cancelTTS()` + `ctx.cancelEngine()` 完整接管会话 |

### 2.3 Unisound_v1.6.13 注入 DEX 中的关键证据
反编译该 DEX 看到:

```
com/phicomm/speaker/device/custom/handler/PhicommInterceptHandler.smali
com/phicomm/speaker/device/custom/handler/PhicommTTSHandler.smali
ExampleANTEngineInitializer.smali  ← 入口
   └─ pipeline.addLast(各种自定义 Handler)
```

并且 DEX 里集成了 `okhttp3` / `retrofit2` / `cn.kuwo.*`(酷我音乐 SDK)等需要发 HTTP 的库 — **作者就是在 ANT 工作线程里直接同步 HTTP 拉酷我接口、拉 NLU 二次解析,完全没有任何卡死问题**,反过来印证了"工作线程发 HTTP 是安全的"。

### 2.4 r1-dummy-main 的双 APK 方案
- `new_echo.apk` 走 `EchoService` 外壳 → 注入了 `mhdInterface/MhdMusicApi`,调用 `dev-openapi.dmhmusic.com` 拉音乐 → 同样跑在 ANT 工作线程。
- `new_uni.apk` 是 Unisound 主体 → 同样的 pipeline 注入。
- 双 APK 只是为了"音乐放在轻量 echo 里、语音整套塞进重 unisound 里"做职责分离,**与卡死与否无关**。

---

## 三、设计方案:照搬成功案例的 pipeline 扩展点
 cd /Users/fang/Desktop/R1_DEVICE-main
export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"

# 1. 编译
./gradlew :app:assembleRelease

# 2. 提取 class
rm -rf /tmp/v58_classes && \
mkdir -p /tmp/v58_classes/com/phicomm/speaker/device/custom/ai && \
mkdir -p /tmp/v58_classes/com/phicomm/speaker/device/custom/handler && \
mkdir -p /tmp/v58_classes/com/phicomm/speaker/device/custom/config && \
cp app/build/intermediates/javac/release/classes/com/phicomm/speaker/device/custom/ai/ConversationHistory*.class /tmp/v58_classes/com/phicomm/speaker/device/custom/ai/ && \
cp app/build/intermediates/javac/release/classes/com/phicomm/speaker/device/custom/ai/OpenAIClient*.class /tmp/v58_classes/com/phicomm/speaker/device/custom/ai/ && \
cp app/build/intermediates/javac/release/classes/com/phicomm/speaker/device/custom/handler/PhicommChatHandler*.class /tmp/v58_classes/com/phicomm/speaker/device/custom/handler/ && \
cp app/build/intermediates/javac/release/classes/com/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler*.class /tmp/v58_classes/com/phicomm/speaker/device/custom/handler/ && \
cp app/build/intermediates/javac/release/classes/com/phicomm/speaker/device/custom/config/AIConfig*.class /tmp/v58_classes/com/phicomm/speaker/device/custom/config/

# 3. class → DEX → smali → 注入 → 编译 → 打包
rm -rf /tmp/v58_dex && mkdir -p /tmp/v58_dex && \
/Users/fang/Library/Android/sdk/build-tools/29.0.3/dx --dex --output=/tmp/v58_dex/classes.dex /tmp/v58_classes && \
java -jar baksmali.jar d /tmp/v58_dex/classes.dex -o /tmp/v58_smali && \
rm -rf original_v2/smali/com/phicomm/speaker/device/custom/ai/*.smali && \
cp /tmp/v58_smali/com/phicomm/speaker/device/custom/ai/*.smali original_v2/smali/com/phicomm/speaker/device/custom/ai/ && \
cp /tmp/v58_smali/com/phicomm/speaker/device/custom/handler/Phicomm*.smali original_v2/smali/com/phicomm/speaker/device/custom/handler/ && \
cp /tmp/v58_smali/com/phicomm/speaker/device/custom/config/*.smali original_v2/smali/com/phicomm/speaker/device/custom/config/ && \
cd original_v2 && java -jar ../smali.jar a -o ../classes_new_v58.dex smali && \
cd .. && python3 build_janus_v2.py device_original.apk classes_new_v58.dex janus_unisound_v58.apk

# 4. 安装
adb push janus_unisound_v58.apk /sdcard/janus_v58.apk && \
adb shell "CLASSPATH=/system/framework/pm.jar app_process /system/bin com.android.commands.pm.Pm install -r /sdcard/janus_v58.apk" && \
adb shell "rm -rf /data/dalvik-cache/arm/* /data/dalvik-cache/arm64/* && sync" && \
adb reboot
 
### 3.5 打包链路(✅ v28 已验证成功的正确流程)

**⚠️ 核心原则：必须使用 smali 注入方式，绝对不能用 gradle 直接编译 NewPackage！**

```bash
# 第1步：从 R1_DEVICE 的 app 模块提取已编译的 .class 文件
cp app/build/intermediates/javac/release/classes/com/phicomm/speaker/device/custom/handler/PhicommWeatherHandler*.class /tmp/weather_classes/

# 第2步：用 d8 把 .class 编译成 .dex
mkdir -p /tmp/weather_dex
/Users/fang/Library/Android/sdk/build-tools/34.0.0/d8 --release --min-api 22 /tmp/weather_classes/*.class --output /tmp/weather_dex/

# 第3步：用 baksmali 把 .dex 转成 .smali
java -jar /System/Volumes/Data/private/tmp/baksmali-2.5.2.jar d /tmp/weather_dex/classes.dex -o /tmp/weather_smali

# 第4步：注入 smali 到 original_v2/smali 中
cp /tmp/weather_smali/com/phicomm/speaker/device/custom/handler/PhicommWeatherHandler*.smali \
   original_v2/smali/com/phicomm/speaker/device/custom/handler/

# 第5步：修改 ExampleANTEngineInitializer.smali
# 在 DefaultWeatherHandler 之前添加 PhicommWeatherHandler 的注册（见下方 smali 代码示例）

# 第6步：用 smali 工具重新编译成 classes_new.dex
cd original_v2 && java -jar /System/Volumes/Data/private/tmp/smali-2.5.2.jar a -o ../classes_new_v28.dex smali

# 第7步：用 build_janus_v2.py 构造 Janus APK（必须用 device_original.apk 作为外壳）
cd /Users/fang/Downloads/R1_DEVICE
python3 build_janus_v2.py device_original.apk classes_new_v28.dex janus_unisound_v28.apk

# 第8步：推送到设备并安装（设备重新连接后执行）
adb connect 192.168.5.9:5555
adb push janus_unisound_v28.apk /sdcard/janus_v28.apk
adb shell "CLASSPATH=/system/framework/pm.jar app_process /system/bin com.android.commands.pm.Pm install -r /sdcard/janus_v28.apk"
adb shell "rm -rf /data/dalvik-cache/arm/* /data/dalvik-cache/profiles/* && sync"
adb reboot
```

**为什么这个方案不会卡死（资源 ID 冲突问题）**：
1. ✅ 使用 `device_original.apk`（原厂 APK）作为外壳 → 保留原厂 `resources.arsc` 资源表
2. ✅ 只替换 `classes.dex` → 注入我们的新代码
3. ✅ 原厂资源表不变 → 所有 R.string.xxx 的 ID 都能正确映射
4. ❌ **错误做法**：用 gradle 编译 NewPackage → 生成新资源表 → Janus 套壳后资源 ID 不匹配 → `Resources$NotFoundException: String resource ID #0x7f0d00b3` → 启动崩溃

**smali 注入示例（ExampleANTEngineInitializer.smali 修改）**：
```smali
# 在 DefaultWeatherHandler 之前添加这段代码
.line 77
const/4 v10, 0x1

new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

const/4 v11, 0x0

new-instance v12, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;

invoke-direct {v12}, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;-><init>()V

aput-object v12, v10, v11

invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;
```

---

## 四、当前进度 / 验证清单

- [x] PhicommWeatherHandler.java 实现完成(196 行，v43 最终版)
- [x] ExampleANTEngineInitializer.java 注册新 Handler(优先级 310)
- [x] app 模块从 application 改回 library(解决 NewPackage 编译时 "Dependent features no package ID" 错误)
- [x] **v43 打包成功**：使用 smali 注入方式（非 gradle 编译），保留原厂资源表
- [x] janus_unisound_v43.apk 已生成（31MB，device_original.apk 外壳）
- [x] **设备已验证**：天气播报正常（`杭州: Mist 22摄氏度`），音乐播放正常

---

## 五、可能的进一步优化(待验证后再考虑)

1. **超时兜底**:wttr.in 失败时 fallback 到本地缓存 / 简短播报
2. **缓存层**:同一城市 5 分钟内复用,减少外网请求
3. **多意图扩展**:同样模式可拓展到股票、新闻、智能家居等所有 NLU 意图
4. **把 wttr.in 换成稳定国内源**(高德/和风),避免被墙或限流

---

## 六、完整设计蓝图(接着做的需求 + 分阶段设计)

### 6.1 三层架构
```
┌─────────────────────────────────────────────────────────────────┐
│  L1 语音输入层(原厂)                                                  │
│  wakeup 唤醒 → ASR 识别 → NLU 语义分析  →  service / intent  │
└─────────────────────────────────────────────────────────────────┘
                                  │
                                  ▼
┌─────────────────────────────────────────────────────────────────┐
│  L2 拦截路由层(我们负责,Pipeline Handlers)                            │
│    PhicommWeatherHandler  (⋆ 已完成)   intent=cn.yunzhisheng.weather  │
│    PhicommMusicHandler*   (待做)         intent=cn.yunzhisheng.music    │
│    PhicommNewsHandler*    (待做)         intent=cn.yunzhisheng.news     │
│    PhicommChatHandler*    (待做)         intent=cn.yunzhisheng.chat     │
│    PhicommUnSupportHandler* (待做)       fallback 接管原厂 unsupport    │
└─────────────────────────────────────────────────────────────────┘
                                  │
                                  ▼
┌─────────────────────────────────────────────────────────────────┐
│  L3 内容提供层(局域网电脑后端,统一一个服务,默认 http://192.168.5.10:8787) │
│    /weather/{city}    →  电脑端代理 wttr.in / 高德 / 和风                       │
│    /music/{keyword}   →  电脑端聚合 酷我 / dmhmusic / 网易云                       │
│    /news/{topic}      →  电脑端聚合 联播 / RSS                                  │
│    /chat/{q}          →  电脑端转发 LLM(本地 LMStudio / Ollama / 远端 API)      │
│  说明:设备直连**同一台电脑**的 HTTP 服务,无任何公网/Cloudflare 依赖          │
└─────────────────────────────────────────────────────────────────┘
```

### 6.2 Handler 负责人模板(强制统一套路)
所有新增 Handler 都遵守同一套骨架,以 PhicommWeatherHandler 为样本:

```
class Phicomm{XX}Handler extends SimpleUserEventInboundHandler<NLU<I, R>> {
    initPriority()           → setPriority(310)  // 总是高于 Default 300
    acceptInboundEvent0(evt) → 只返回 SName.{XX}.equals(evt.getService())
    eventReceived(evt, ctx)  → ThreadUtils.execute(() -> {
                                   String text = fetchFromBackend(args);
                                   ctx.stopWakeup(); ctx.stopASR();
                                   ctx.playTTS(text);
                                   sendFullLogToDeviceCenter(evt, text);
                               });
    onTTSEventPlayingEnd     → exit() 释放会话
    doInterrupt              → cancelTTS + reset()
}
```

### 6.3 后端服务接入(局域网电脑部署,不上 Cloudflare Worker)
- **部署形态**:在家里那台始终在线的电脑上跑一个 HTTP 服务(Flask / FastAPI / Node 任选),监听 `0.0.0.0:8787`,设备直连 `http://192.168.5.10:8787`。
- **复用代码源**:沿用 [r1-py-main2](file:///Users/fang/Downloads/r1-py-main2) 现有 Python 业务逻辑,只是把 Cloudflare Worker 入口改成本地 Flask/FastAPI 入口(`uvicorn` / `flask run --host 0.0.0.0`)。
- **不走公网理由**:
  - 设备只在内网,公网链路反而是多余跳数 + DNS 风险;
  - 已经验证过 Cloudflare 在 Android 5.1 上偶发 TLS 失败,内网 HTTP 更可靠;
  - 高德/和风/LLM 的 key 留在电脑上,不需要上云;
  - 不依赖外网账号 / 不付费 / 不限流。
- **统一出口**:`http://192.168.5.10:8787/{intent}/{args}`,纯文本响应。
- **调用约定**:`HTTP 200 返回纯文本 → 直接丢给 ctx.playTTS()`;非 200 / 超时 / 内网不通 → fallback 本地“抱歉服务暂时不可用”。
- **保活**:电脑上用 `systemd`(Linux)、`launchd`(macOS)、`nssm`/任务计划(Windows)做开机自启 + 崩溃重拉,服务就当作家庭网关跑。

### 6.4 分阶段交付计划
| 阶段 | 交付物 | 状态 |
|---|---|---|
| **P0-MVP**(当前) | PhicommWeatherHandler + Janus 覆盖安装,wttr.in 直连 | ✅ 已验收 |
| **P0-音乐播放** | PhicommMusicSearchHandler + NetEaseMusicClient + UniMediaPlayer | ✅ 已验收(v43) |
| **P1-本地后端起服** | 电脑上跑 Flask/FastAPI,监听 0.0.0.0:8787,提供 `/weather/{city}` | 可选(当前直连可用) |
| **P1-平台化** | 设备侧抽象 `BackendClient`,baseUrl = `http://192.168.5.10:8787` | 可选(当前直连可用) |
| **P2-Chat 兜底** | PhicommChatHandler 接电脑上的 LLM(LMStudio/Ollama)生成闲聊 | 可选 |
| **P2-缓存** | 后端进程内 LRU + 设备端超时兜底 | 可选 |
| **P3-Hook 其他** | Phicomm{Reminder/Alarm/Smarthome}Handler 同模板增量 | 可选 |
| **P3-音乐控制** | 暂停/下一首/上一首/音量控制 | 可扩展 UniMediaPlayer 接口 |

### 6.5 风险与应对
| 风险 | 影响 | 应对 |
|---|---|---|
| 电脑关机/睡眠 | 设备无后端可用 | 电脑做开机自启 + 禁用睡眠;设备端 fallback 短语 |
| 电脑 IP 变化(DHCP) | 设备硬编码失效 | 路由器给电脑做 MAC 绑定固定 IP `192.168.5.10`;后续可加 mDNS |
| 电脑被防火墙拦端口 | 设备 connect refused | 放行 8787/TCP(macOS:系统设置-防火墙;Win:入站规则) |
| HTTP 超时过长 | 用户等待体验差 | connect/read 各 4s,本地内网通常 < 200ms |
| 上游(wttr.in/酷我)被限流 | 后端拿不到数据 | 后端层多源 + 缓存,不向设备透传错误 |
| 原厂后续重启干扰 pipeline | Handler 丢事件 | onDestroy 中重新 reset(),addLast 幂等 |
| Janus 包超 35MB 推送慢 | 升级耗时 | 仅增量编译 + 仅 release(不带 debug 符号) |

### 6.6 下一步 TODO(语音验证通过后)
1. **电脑上起本地后端**:在 [r1-py-main2](file:///Users/fang/Downloads/r1-py-main2) 基础上加 Flask/FastAPI 入口,监听 `0.0.0.0:8787`,先实现 `/weather/{city}` 沿用 wttr.in + 进程内 5 分钟缓存
2. **设备侧抽象 `BackendClient`**:统一 baseUrl = `http://192.168.5.10:8787`,GET 纯文本,4s 超时,失败兜底文案
3. **PhicommWeatherHandler 切到 BackendClient**(去掉直连 wttr.in,全部走电脑)
4. 重复 6.2 模板交付 PhicommMusicHandler(公用 Backend `/music/{kw}`)
5. 后端统一返回结构(电脑上的 Flask 直接拼好 tts 文本,**设备端只关心 body 文本,不解析 JSON**):
   ```
   GET http://192.168.5.10:8787/weather/杭州
   200 OK
   text/plain; charset=utf-8
   杭州多云 23摄氏度
   ```
6. 给电脑后端配开机自启(macOS launchd / Linux systemd / Win 任务计划),验证断电重启后设备指令仍能命中
7. 增加诊断命令(例如说"诊断服务")→ 设备端 ping `http://192.168.5.10:8787/health`,报响应时延/状态码

---

## 附录 A、关联设计文件
- 代码源: `/Users/fang/Desktop/R1_DEVICE-main`
- 天气 Handler: [PhicommWeatherHandler.java](file:///Users/fang/Desktop/R1_DEVICE-main/app/src/main/java/com/phicomm/speaker/device/custom/handler/PhicommWeatherHandler.java)
- 音乐 Handler: [PhicommMusicSearchHandler.java](file:///Users/fang/Desktop/R1_DEVICE-main/app/src/main/java/com/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler.java)
- 音乐客户端: [NetEaseMusicClient.java](file:///Users/fang/Desktop/R1_DEVICE-main/app/src/main/java/com/phicomm/speaker/device/custom/music/NetEaseMusicClient.java)
- 注册入口: [ExampleANTEngineInitializer.java](file:///Users/fang/Desktop/R1_DEVICE-main/app/src/main/java/com/phicomm/speaker/device/ui/ExampleANTEngineInitializer.java)
- 打包脚本: [build_janus_v2.py](file:///Users/fang/Desktop/R1_DEVICE-main/build_janus_v2.py)
- 原厂外壳: [device_original.apk](file:///Users/fang/Desktop/R1_DEVICE-main/device_original.apk)
- smali 目录: [original_v2/smali/](file:///Users/fang/Desktop/R1_DEVICE-main/original_v2/smali/)
- 上游开源 Worker: [r1-py-main2](file:///Users/fang/Downloads/r1-py-main2)

## 附录 B、历史事实与论据索引
- v17 调试版唤醒失效总结 → `任务总结经验:v17调试版唤醒失效根因分析与修复总结`
- 主线程阻塞轮询代替 join 方案 → `任务总结经验:ApiHelper.httpGet主线程卡死修复：轮询替代join方案`
- TTS 线程 HTTP 验证结论 → `任务总结经验:Android 5.1 TTS线程HTTP调用限制验证与结论`
- Janus 构造全流程 → `任务执行流程:R1_DEVICE项目Janus漏洞APK构造完整流程`

---

## 附录 C、v28 打包完整经验总结（下次直接抄这个流程）

### C.1 核心原则（铁律，必须遵守）

1. **✅ 必须使用 `device_original.apk` 作为 Janus 外壳**
   - 这是从设备 `/system/app/Unisound/Unisound.apk` pull 下来的原厂 APK
   - 包含原厂的 `resources.arsc` 资源表（资源 ID 映射正确）
   - 包含原厂的签名（避免 INSTALL_FAILED_UPDATE_INCOMPATIBLE）

2. **✅ 必须使用 smali 注入方式，绝对不能用 gradle 直接编译 NewPackage**
   - ❌ 错误做法：`./gradlew :NewPackage:assembleRelease` → 生成新资源表 → 资源 ID 冲突 → 启动崩溃
   - ✅ 正确做法：修改 `original_v2/smali/` → 编译成 DEX → Janus 套壳

3. **✅ 只替换 DEX，不替换资源表**
   - 原厂资源表中的 R.string.xxx ID（如 `0x7f0d00b3`）必须能正确映射
   - 如果资源表变了，NativeANTEngine 初始化时就会崩溃

### C.2 完整打包流程（8 步）

**⚠️ 核心铁律：所有代码修改和编译都在 `/Users/fang/Desktop/R1_DEVICE-main` 中进行！**

**前置条件**：
- R1_DEVICE-main 项目已包含打包依赖（首次需从 R1_DEVICE 复制）：
  - `device_original.apk`（原厂 APK 外壳）
  - `original_v2/smali/`（smali 源码目录）
  - `build_janus_v2.py`（Janus APK 构造脚本）
  - `baksmali.jar`、`smali.jar`（DEX/smali 转换工具）
- 工具链就绪：`dx`（Android SDK build-tools）

```bash
# ========================================
# 第 1 步：在 R1_DEVICE-main 中编译 app 模块
# ========================================
cd /Users/fang/Desktop/R1_DEVICE-main
export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"
./gradlew :app:assembleRelease
# 输出：app/build/intermediates/javac/release/classes/*.class

# ========================================
# 第 2 步：提取已编译的 .class 文件
# ========================================
mkdir -p /tmp/v33_classes
# 提取天气 Handler（v31 修复：URL 编码 + 移除 cancelEngine）
cp app/build/intermediates/javac/release/classes/com/phicomm/speaker/device/custom/handler/PhicommWeatherHandler*.class /tmp/v33_classes/
# 提取音乐 Handler（v30 修复：拦截 setting.mp）
cp app/build/intermediates/javac/release/classes/com/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler*.class /tmp/v33_classes/
# 提取音乐客户端（gequbao.com API）
cp app/build/intermediates/javac/release/classes/com/phicomm/speaker/device/custom/music/NetEaseMusicClient*.class /tmp/v33_classes/

# ========================================
# 第 3 步：用 dx 把 .class 编译成 .dex
# ========================================
mkdir -p /tmp/v33_dex
# 注意：使用 dx 工具（不是 d8），因为 original_v2 是用 smali-2.5.2 编译的
/Users/fang/Library/Android/sdk/build-tools/29.0.3/dx --dex --output=/tmp/v33_dex/classes.dex /tmp/v33_classes/*.class
# 输出：/tmp/v33_dex/classes.dex

# ========================================
# 第 4 步：用 baksmali 把 .dex 转成 .smali
# ========================================
java -jar baksmali.jar d /tmp/v33_dex/classes.dex -o /tmp/v33_smali
# 输出：/tmp/v33_smali/com/phicomm/speaker/device/custom/handler/PhicommWeatherHandler*.smali
#       /tmp/v33_smali/com/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler*.smali
#       /tmp/v33_smali/com/phicomm/speaker/device/custom/music/NetEaseMusicClient*.smali

# ========================================
# 第 5 步：注入 smali 到 original_v2/smali 中
# ========================================
cp /tmp/v33_smali/com/phicomm/speaker/device/custom/handler/PhicommWeatherHandler*.smali original_v2/smali/com/phicomm/speaker/device/custom/handler/
cp /tmp/v33_smali/com/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler*.smali original_v2/smali/com/phicomm/speaker/device/custom/handler/
cp /tmp/v33_smali/com/phicomm/speaker/device/custom/music/*.smali original_v2/smali/com/phicomm/speaker/device/custom/music/

# ========================================
# 第 6 步：用 smali 工具重新编译成 classes_new.dex
# ========================================
cd original_v2
java -jar ../smali.jar a -o ../classes_new_v33.dex smali
# 输出：classes_new_v33.dex （约 5.8MB）

# ========================================
# 第 7 步：用 build_janus_v2.py 构造 Janus APK
# ========================================
cd /Users/fang/Desktop/R1_DEVICE-main
python3 build_janus_v2.py device_original.apk classes_new_v33.dex janus_unisound_v33.apk
# 输出：janus_unisound_v33.apk （约 31MB）

# ========================================
# 第 8 步：推送到设备并安装
# ========================================
adb connect 192.168.5.9:5555
adb push janus_unisound_v33.apk /sdcard/janus_v33.apk
adb shell "CLASSPATH=/system/framework/pm.jar app_process /system/bin com.android.commands.pm.Pm install -r /sdcard/janus_v33.apk"
adb shell "rm -rf /data/dalvik-cache/arm/* /data/dalvik-cache/arm64/* /data/dalvik-cache/profiles/* && sync"
adb reboot
```

### C.3 smali 注入代码示例

**文件**：`original_v2/smali/com/phicomm/speaker/device/ui/ExampleANTEngineInitializer.smali`

**修改位置**：在 `DefaultWeatherHandler` 注册之前（约第 269 行）
 
### C.4 常见错误与排查

| 错误现象 | 根因 | 解决方案 |
|---|---|---|
| `Resources$NotFoundException: String resource ID #0x7f0d00b3` | 用 gradle 编译 NewPackage，资源 ID 冲突 | 改用 smali 注入方式，保留原厂资源表 |
| `INSTALL_FAILED_UPDATE_INCOMPATIBLE` | APK 签名与设备上的原厂 APK 不匹配 | 必须用 `device_original.apk` 作为外壳 |
| `ClassNotFoundException: PhicommWeatherHandler` | smali 文件未正确注入或编译 | 检查 original_v2/smali 中是否有对应的 .smali 文件 |
| `Bad checksum` / dex2oat 编译失败 | dalvik-cache 中有旧版本缓存 | 执行 `rm -rf /data/dalvik-cache/arm/*` 后 reboot |
| d8 编译警告 "Type was not found" | 缺少 ANT SDK 的类（正常，不影响运行） | 忽略警告，只要 classes.dex 生成成功即可 |

### C.5 如何添加新的 Handler（如 PhicommMusicHandler）

**步骤完全相同**：

1. 在 R1_DEVICE-main 的 app 模块中编写 `PhicommMusicHandler.java`
2. 编译 app 模块：`./gradlew :app:assembleRelease`
3. 提取 `.class` 文件：`cp app/build/intermediates/javac/release/classes/.../PhicommMusicHandler*.class /tmp/music_classes/`
4. 编译成 DEX：`d8 --release --min-api 22 /tmp/music_classes/*.class --output /tmp/music_dex/`
5. 转成 smali：`baksmali d /tmp/music_dex/classes.dex -o /tmp/music_smali`
6. 注入到 original_v2：`cp /tmp/music_smali/.../PhicommMusicHandler*.smali original_v2/smali/.../`
7. 修改 ExampleANTEngineInitializer.smali 添加注册
8. 重新编译 DEX：`cd original_v2 && smali a -o ../classes_new_v29.dex smali`
9. 构造 Janus APK：`python3 build_janus_v2.py device_original.apk classes_new_v29.dex janus_unisound_v29.apk`
10. 安装到设备

### C.6 关键文件清单

| 文件 | 用途 | 位置 |
|---|---|---|
| `device_original.apk` | 原厂 APK 外壳（必须用这个） | `/Users/fang/Desktop/R1_DEVICE-main/` |
| `original_v2/smali/` | smali 源码目录（在这里修改） | `/Users/fang/Desktop/R1_DEVICE-main/original_v2/` |
| `build_janus_v2.py` | Janus APK 构造脚本 | `/Users/fang/Desktop/R1_DEVICE-main/` |
| `baksmali.jar` | DEX → smali 反编译工具 | `/Users/fang/Desktop/R1_DEVICE-main/` |
| `smali.jar` | smali → DEX 编译工具 | `/Users/fang/Desktop/R1_DEVICE-main/` |
| `dx` | .class → .dex 编译工具 | `/Users/fang/Library/Android/sdk/build-tools/29.0.3/` |
| `app/build/.../classes/` | Java 编译输出 | `/Users/fang/Desktop/R1_DEVICE-main/app/build/intermediates/javac/release/classes/` |

### C.7 验证安装成功的标志

```bash
# 1. 查看进程是否在运行
adb shell "ps | grep speaker.device"
# 预期输出：u0_a8  PID  ...  S com.phicomm.speaker.device

# 2. 查看启动日志
adb logcat -s ExampleApp WindowsService
# 预期输出：
#   =====================1212============= APP START =====================1212=============
#   ExampleApp onCreate | versionCode=12 | versionName=1.2.1
#   WindowsService started
#   =====================1212============= INIT DONE =====================1212=============

# 3. 验证没有崩溃
adb logcat -d | grep -E "FATAL|NotFoundException"
# 预期输出：无匹配（空）

# 4. 语音测试
# 对设备说"杭州天气"，应该听到 wttr.in 的真实天气播报
```

--- 
 

**总结一句话**：
> 参考 r1-iot-java-master 的 `NetEaseMusicImpl`，在 Android 上实现 `NetEaseMusicClient`，通过 Pipeline Handler 拦截音乐意图，实现设备端直连网易云音乐 API 搜索和播放。

---

## 附录 E、音乐搜索功能实现总结（v29 打包）

### E.1 实现方案概述

将 r1-iot-java-master 的音乐搜索功能移植到 Android APK，使用 **gequbao.com API** 实现歌曲搜索和播放 URL 获取。

**技术选型**：
- API 源：`https://www.gequbao.com`（替代原计划的网易云音乐 API）
- HTTP 客户端：`HttpURLConnection`（Android 5.1 兼容）
- HTML 解析：正则表达式（避免引入 Jsoup 增加 APK 体积）
- 播放器：复用原厂 `PhicommPlayer` + `ExoPlayer 2.7.1`

### E.2 核心文件清单

| 文件 | 行数 | 说明 |
|------|------|------|
| `NetEaseMusicClient.java` | 338 | gequbao.com API 客户端，HTML 解析 + JSON 手动解析 |
| `PhicommMusicSearchHandler.java` | 293 | Pipeline Handler，优先级 310，拦截音乐意图 |
| `ExampleANTEngineInitializer.java` | +4 | 注册 PhicommMusicSearchHandler |

### E.3 NetEaseMusicClient 实现细节（v43 最终版本）

#### E.3.1 API 流程
```
1. GET /s/{keyword} → HTML 页面，正则解析歌曲 ID
2. GET /music/{id} → HTML 页面，提取 play_id
3. POST /api/play-url → JSON 格式，获取真实播放 URL
4. 处理 JSON 转义字符：\u0026 → &, \/ → /
5. HTTPS 降级为 HTTP（绕过 Android 5.1 SSL 问题）
```

#### E.3.2 关键正则表达式
```java
// 匹配歌曲链接: <a href="/music/39466" title="园游会 - 周杰伦">
Pattern MUSIC_LINK_PATTERN = Pattern.compile(
    "href=\"/music/(\\d+)\"[^>]*title=\"([^\"]+)\""
);

// 匹配 play_id: play_id\u0022:\u0022(base64)\u0022
// 注意：页面中字面存储的是 \u0022（6个字符），不是双引号
// Java 字符串中需要4个反斜杠来匹配字面的 \u0022
Pattern PLAY_ID_PATTERN = Pattern.compile(
    "play_id\\\\u0022:\\\\u0022([A-Za-z0-9+/=]+)\\\\u0022"
);
```

#### E.3.3 Android 5.1 兼容性处理
- ✅ 使用 `HttpURLConnection`（不用 OkHttp）
- ✅ 手动解析 JSON（不用 Gson，减少依赖）
- ✅ 设置 User-Agent 模拟浏览器
- ✅ 连接超时 8s，读取超时 15s
- ✅ 网络操作在独立线程中执行（new Thread / ThreadUtils）
- ✅ wttr.in 使用 HTTP（端口 80）代替 HTTPS（端口 443）
- ✅ 音乐播放 URL 降级为 HTTP，绕过 SSL 证书问题
- ✅ JSON URL 转义字符处理（`\/` → `/`，`\u0026` → `&`）

#### E.3.4 数据结构 
**关键实现细节**：
- ✅ **播放时机**：TTS 播报结束后触发（避免 TTS 和音乐同时播放）
- ✅ **播放器选择**：使用原厂 `UniMediaPlayer` 单例，封装了 Android MediaPlayer
- ✅ **URL 处理**：JSON 转义还原 + HTTPS 降级为 HTTP
- ✅ **状态管理**：`isPlaying` 标志 + `stopMusic()` 完整控制
- ✅ **打断处理**：`doInterrupt` 中调用 `stopMusic()` + `cancelTTS()` + `reset()`

### E.5 已知问题与 TODO

| 问题 | 状态 | 解决方案 |
|------|------|----------|
| gequbao.com 搜索 API 不稳定 | ⚠️ 已验证可用 | 使用 gequbao.com 稳定运行，支持正则解析 HTML |
| NLU 将"播放xxx"识别为 chat/setting.mp | ✅ v43 已修复 | 同时拦截 MUSIC、SETTING_MP、CHAT 三种意图 |
| interceptTTS HTTP 调用导致卡死 | ✅ v28 已修复 | 改用 Pipeline Handler + ThreadUtils 异步 |
| play_id 正则匹配失败 | ✅ v41 已修复 | 使用 `\\\\u0022` 匹配字面 `\u0022` |
| POST 格式错误导致获取播放 URL 失败 | ✅ v41 已修复 | 改用 JSON 格式 `{"id":"xxx"}` |
| 播放 URL 中 `\u0026`、`\/` 等 JSON 转义未还原 | ✅ v43 已修复 | replace 处理转义字符 |
| HTTPS 播放 URL 在 Android 5.1 上 SSL 失败 | ✅ v43 已修复 | 降级为 HTTP |
| 音乐播放器未实现 | ✅ v42 已实现 | 使用原厂 `UniMediaPlayer.getInstance().playUrl()` |
| APK 崩溃/唤醒失效 | ✅ v39 已修复 | exit() 不调用 cancelEngine()，只调用 reset() |
| TTS 播报后未触发音乐播放 | ✅ v42 已实现 | onTTSEventPlayingEnd 回调中触发 UniMediaPlayer |
| 音乐播放控制（暂停/下一首） | 🔴 未完成 | 可扩展 UniMediaPlayer 控制接口 |
| 播放状态管理 | ✅ 已完成 | isPlaying 标志 + stopMusic() 完整状态管理 |

### E.6 打包流程（v33）

**⚠️ 核心铁律：代码只能在 `/Users/fang/Desktop/R1_DEVICE-main` 中修改和编译！**

**完整流程**（与天气功能打包流程相同，只是提取的 .class 文件不同）：

```bash
# 第1步：编译 R1_DEVICE-main 的 app 模块
cd /Users/fang/Desktop/R1_DEVICE-main
export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"
./gradlew :app:assembleRelease

# 第2步：提取 .class 文件
mkdir -p /tmp/v33_classes
# 提取天气 Handler
cp app/build/intermediates/javac/release/classes/com/phicomm/speaker/device/custom/handler/PhicommWeatherHandler*.class /tmp/v33_classes/
# 提取音乐 Handler 和客户端
cp app/build/intermediates/javac/release/classes/com/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler*.class /tmp/v33_classes/
cp app/build/intermediates/javac/release/classes/com/phicomm/speaker/device/custom/music/NetEaseMusicClient*.class /tmp/v33_classes/

# 第3步：编译成 DEX
mkdir -p /tmp/v33_dex
/Users/fang/Library/Android/sdk/build-tools/29.0.3/dx --dex --output=/tmp/v33_dex/classes.dex /tmp/v33_classes/*.class

# 第4步：转成 smali
java -jar baksmali.jar d /tmp/v33_dex/classes.dex -o /tmp/v33_smali

# 第5步：注入到 original_v2
cp /tmp/v33_smali/com/phicomm/speaker/device/custom/handler/PhicommWeatherHandler*.smali original_v2/smali/com/phicomm/speaker/device/custom/handler/
cp /tmp/v33_smali/com/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler*.smali original_v2/smali/com/phicomm/speaker/device/custom/handler/
cp /tmp/v33_smali/com/phicomm/speaker/device/custom/music/*.smali original_v2/smali/com/phicomm/speaker/device/custom/music/

# 第6步：编译 DEX
cd original_v2
java -jar ../smali.jar a -o ../classes_new_v33.dex smali

# 第7步：构造 Janus APK
cd /Users/fang/Desktop/R1_DEVICE-main
python3 build_janus_v2.py device_original.apk classes_new_v33.dex janus_unisound_v33.apk

# 第8步：安装到设备
adb connect 192.168.5.9:5555
adb push janus_unisound_v33.apk /sdcard/janus_v33.apk
adb shell "CLASSPATH=/system/framework/pm.jar app_process /system/bin com.android.commands.pm.Pm install -r /sdcard/janus_v33.apk"
adb shell "rm -rf /data/dalvik-cache/arm/* /data/dalvik-cache/arm64/* /data/dalvik-cache/profiles/* && sync"
adb reboot
```

### E.7 smali 注入示例（ExampleANTEngineInitializer.smali）

**修改位置**：在 `PhicommExternalMusicHandler` 注册之前
 

## 附录 F、v43 最终实现总结（天气 + 音乐双功能验收版）
 
### F.2 核心架构

```
┌─────────────────────────────────────────────────────────────┐
│  L1 语音输入层(原厂)                                              │
│  wakeup 唤醒 → ASR 识别 → NLU 语义分析 → service / intent│
└─────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────┐
│  L2 拦截路由层(Pipeline Handlers)                                 │
│    PhicommWeatherHandler (优先级 310)                             │
│      intent=cn.yunzhisheng.weather                              │
│      API: http://wttr.in/{city}?format=%l:+%C+%t&lang=zh     │
│                                                                 │
│    PhicommMusicSearchHandler (优先级 310)                         │
│      intent=cn.yunzhisheng.music / setting.mp / chat            │
│      API: https://www.gequbao.com/s/{keyword}                 │
│           → /music/{id} → /api/play-url → 播放 URL             │
│      Player: UniMediaPlayer.getInstance().playUrl()           │
└─────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────┐
│  L3 外部服务(直连)                                                  │
│    wttr.in:80          → 天气数据(中文)                          │
│    gequbao.com:443     → 音乐搜索 + 播放 URL 获取                │
│    kuwo.cn:80          → 音乐流媒体(HTTP 降级)                    │
└─────────────────────────────────────────────────────────────┘
```

### F.3 关键技术决策

| 决策点 | 选择 | 理由 |
|--------|------|------|
| 注入方式 | Pipeline Handler | 不持 audio/TTS 锁，允许异步 HTTP |
| 天气 API | wttr.in (HTTP:80) | 绕过 Android 5.1 SSL 证书问题 |
| 音乐 API | gequbao.com | 免费，无需 key，正则解析 HTML |
| 播放器 | UniMediaPlayer (原厂) | 已集成，无需额外依赖 |
| 线程模型 | ThreadUtils / new Thread | 不阻塞 ANT 工作线程 |
| 错误处理 | fallback TTS + reset() | 用户体验友好，不影响唤醒 |
| 取消操作 | reset() 代替 cancelEngine() | 避免杀死整个 ANT 引擎 |
| URL 处理 | JSON 转义还原 + HTTPS→HTTP | 适配 Android 5.1 环境 |

### F.4 历史版本修复记录

| 版本 | 修复内容 | 问题描述 |
|------|----------|----------|
| v28 | Pipeline Handler 注入 | 替代 interceptTTS，解决卡死问题 |
| v30 | 拦截 setting.mp 意图 | NLU 将"播放xxx"识别为 setting.mp |
| v37 | wttr.in HTTPS→HTTP | Android 5.1 缺少 SSL 证书 |
| v38 | 拦截 chat 意图 | NLU 服务不可用时降级为 chat |
| v39 | 去掉 cancelEngine() | 修复音乐失败后 APK 崩溃/无法唤醒 |
| v40 | play_id 正则修复 | smali 中 `\u0022` 被解释为双引号 |
| v41 | POST 改用 JSON 格式 | gequbao.com 要求 JSON 而非表单 |
| v42 | UniMediaPlayer 播放 | TTS 播报后在 onTTSEventPlayingEnd 触发播放 |
| v43 | URL 转义还原 + HTTPS→HTTP | JSON 中 `\u0026` `\/` 未还原，SSL 失败 |
| **v44** | **添加"小孩同学"唤醒词** | **设备启动时自动设置自定义唤醒词** |

### F.5 代码文件清单

| 文件 | 行数 | 说明 |
|------|------|------|
| `PhicommWeatherHandler.java` | 196 | 天气 Handler，优先级 310，wttr.in HTTP 直连 |
| `PhicommMusicSearchHandler.java` | 276 | 音乐 Handler，优先级 310，拦截 3 种意图 |
| `NetEaseMusicClient.java` | 401 | gequbao.com API 客户端，HTML 解析 + JSON 手动解析 |
| `ExampleANTEngineInitializer.java` | 93 | 注册 Weather + Music Handler |
| **`PhicommInitializeHandler.java`** | **233** | **设备初始化 + 自定义唤醒词 "小孩同学"** |

### F.6 验收测试用例

```bash
# 测试 1：天气查询
语音："杭州天气"
预期：听到 "杭州: Mist 22摄氏度" 或类似真实天气播报

# 测试 2：音乐搜索播放
语音："播放七里香"
预期：
  1. 听到 TTS "即将播放 七里香，周杰伦 演唱"
  2. TTS 结束后听到真实音乐播放

# 测试 3：连续唤醒
操作：连续说 5 次"杭州天气"
预期：每次都能正常唤醒，无卡死

# 测试 4：打断处理
操作：播放音乐时说"杭州天气"
预期：音乐停止，切换播报天气

# 测试 5：错误处理
操作：说一个不存在的歌曲名
预期：听到 "抱歉，未找到相关歌曲"，唤醒正常

# 测试 6：自定义唤醒词(v44 新增)
语音："小孩同学"
预期：
  1. 设备应答，听到唤醒提示音
  2. 后续指令正常处理
  3. 日志输出: "Custom wakeup word set successfully: [小孩同学, 小讯小讯, 交接手续]"

# 测试 7：多唤醒词共存(v44 新增)
语音："小讯小讯"
预期：原有唤醒词仍然有效

语音："交接手续"
预期：原有唤醒词仍然有效
```

### F.7 打包命令（v43 标准流程）

```bash
# 工作目录
cd /Users/fang/Desktop/R1_DEVICE-main

# 1. 编译
export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"
./gradlew :app:assembleRelease

# 2. 提取 class → DEX → smali
mkdir -p /tmp/v43_classes /tmp/v43_dex
cp app/build/intermediates/javac/release/classes/com/phicomm/speaker/device/custom/handler/PhicommWeatherHandler*.class /tmp/v43_classes/
cp app/build/intermediates/javac/release/classes/com/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler*.class /tmp/v43_classes/
cp app/build/intermediates/javac/release/classes/com/phicomm/speaker/device/custom/music/NetEaseMusicClient*.class /tmp/v43_classes/

/Users/fang/Library/Android/sdk/build-tools/29.0.3/dx --dex --output=/tmp/v43_dex/classes.dex /tmp/v43_classes/*.class
java -jar baksmali.jar d /tmp/v43_dex/classes.dex -o /tmp/v43_smali

# 3. 注入 smali
cp /tmp/v43_smali/com/phicomm/speaker/device/custom/handler/Phicomm*.smali original_v2/smali/com/phicomm/speaker/device/custom/handler/
cp /tmp/v43_smali/com/phicomm/speaker/device/custom/music/*.smali original_v2/smali/com/phicomm/speaker/device/custom/music/

# 4. 编译 DEX
cd original_v2
java -jar ../smali.jar a -o ../classes_new_v43.dex smali

# 5. 构造 Janus APK
cd ..
python3 build_janus_v2.py device_original.apk classes_new_v43.dex janus_unisound_v43.apk

# 6. 安装
adb connect 192.168.5.9:5555
adb push janus_unisound_v43.apk /sdcard/janus_v43.apk
adb shell "CLASSPATH=/system/framework/pm.jar app_process /system/bin com.android.commands.pm.Pm install -r /sdcard/janus_v43.apk"
adb shell "rm -rf /data/dalvik-cache/arm/* /data/dalvik-cache/arm64/* && sync"
adb reboot
```

### F.7.1 打包命令（v44 唤醒词版本）

```bash
# 工作目录
cd /Users/fang/Desktop/R1_DEVICE-main

# 1. 编译
export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"
./gradlew :app:assembleRelease

# 2. 用 dx 编译成 DEX(使用完整 classes 目录)
mkdir -p /tmp/v44_dex
/Users/fang/Library/Android/sdk/build-tools/29.0.3/dx --dex --output=/tmp/v44_dex/classes.dex app/build/intermediates/javac/release/classes

# 3. 用 baksmali 转成 smali
java -jar baksmali.jar d /tmp/v44_dex/classes.dex -o /tmp/v44_smali

# 4. 注入 smali 到 original_v2
cp /tmp/v44_smali/com/phicomm/speaker/device/custom/handler/PhicommInitializeHandler*.smali \
   original_v2/smali/com/phicomm/speaker/device/custom/handler/

# 5. 重新编译 DEX
cd original_v2
java -jar ../smali.jar a -o ../classes_new_v44.dex smali

# 6. 构造 Janus APK
cd ..
python3 build_janus_v2.py device_original.apk classes_new_v44.dex janus_unisound_v44.apk

# 7. 推送到设备并安装
adb connect 192.168.5.9:5555
adb push janus_unisound_v44.apk /sdcard/janus_v44.apk
adb shell "CLASSPATH=/system/framework/pm.jar app_process /system/bin com.android.commands.pm.Pm install -r /sdcard/janus_v44.apk"
adb shell "rm -rf /data/dalvik-cache/arm/* /data/dalvik-cache/arm64/* && sync"
adb reboot
```

### F.8 日志验证

```bash 
# 稳定性验证
adb logcat -d | grep -E "FATAL|NotFoundException|cancelEngine"
# 预期：无匹配（空）
```

--- 


adb shell "CLASSPATH=/system/framework/pm.jar app_process /system/bin com.android.commands.pm.Pm install -r /sdcard/janus_v59.apk" && \
adb shell "rm -rf /data/dalvik-cache/arm/* /data/dalvik-cache/arm64/* && sync" && \
echo "安装完成，重启中..." && adb reboot