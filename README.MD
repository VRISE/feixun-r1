# 斐讯 R1 智能音箱改造（R1 Speaker Revive）

原厂云服务（云知声 NLU / 斐讯后端）已下线的斐讯 R1 音箱复活项目：**保留原厂唤醒与语音识别**，
通过 smali 注入接管语义处理层 —— 天气、音乐、大模型闲聊、成语接龙、多人格、对话后调侃等能力全部在本地 APK 内实现，不依赖任何原厂服务器。

> 开源说明：本项目对外开源，任何人可自行打包使用。
> **代码里不含任何 API Key**，你需要自己申请（免费，见下方「大模型配置」）。

---

## 功能一览

| 功能 | 说明 | 实现位置（`custom/`） |
|---|---|---|
| 原厂唤醒 / ASR | 保留云知声本地唤醒词引擎，不改动 | — |
| 天气查询 | 「杭州天气」→ wttr.in 真实播报 | `handler/PhicommWeatherHandler` |
| 音乐搜索播放 | 「播放七里香」→ gequbao 搜索 → 原厂播放器 | `handler/PhicommMusicSearchHandler`、`music/NetEaseMusicClient` |
| 大模型闲聊 | 对话接入 OpenAI 兼容 API（默认智谱 GLM-4.5-Flash 免费） | `handler/PhicommChatHandler`、`ai/OpenAIClient` |
| 成语接龙 / 多轮对话 | 大模型驱动的多轮游戏，对话历史管理 | `ai/ConversationHistory` |
| 对话后调侃 | 大模型问答结束后，基于本轮对话播一句嘴贱点评（传统指令不触发） | `teaser/PostDialogueTeaser` |
| 多人格唤醒 | 「小孩同学」等自定义唤醒词切换人格 | `persona/PersonaManager`、`handler/PersonaRouterHandler` |
| 提醒 / 闹钟 | 本地化处理 | `handler/PhicommReminderHandler` 等 |

## 架构原理（为什么这样做）

原厂 `ApiHelper.interceptTTS` 是 TTS 回调线程，**任何同步等待都会持有 audio 管线锁导致整机卡死**（本项目早期版本踩过的坑）。
因此所有功能改走云知声 ANT SDK 的 Netty 风格 pipeline 扩展点：

```
原厂: 唤醒 → ASR → 云端 NLU → pipeline 分发
                                  │
   ┌──────────────────────────────┴──────────────────────────────┐
   │ 自定义 Handler（优先级 310 > 默认 300，acceptInboundEvent0 抢占消费）│
   │ 命中意图后: 异步线程取数据 → ctx.playTTS() 播报 → reset() 释放   │
   └──────────────────────────────────────────────────────────────┘
```

工作线程上允许同步 HTTP，与 audio/TTS 锁完全隔离，多次验证连续交互不卡死。
注：NLU 云端偶尔不可用时会降级为 chat 意图，由大模型兜底回答。

---

## 一、环境准备（只需一次）

| 依赖 | 要求 |
|---|---|
| JDK | **11**（Gradle 6.5 + AGP 4.1.1 不支持 21；`gradle.properties` 已锁定） |
| Android SDK | `platforms;android-30` + `build-tools;29.0.3` |
| `local.properties | `sdk.dir=` 指向你自己的 SDK 路径（仓库里那份是示例，必须改） |
| Apple Silicon | 需要 Rosetta 2：`softwareupdate --install-rosetta --agree-to-license`（aapt2 只有 x86_64 版） |

签名：`key.jks` 不在仓库（含私钥）。用 alias/密码 `echo` / `123456` 自建一个即可。

## 二、打包安装

```bash
# 1. 连接音箱（换成你的 IP；音箱空闲会休眠，连不上先 ping 唤醒它）
adb connect 192.168.5.9:5555

# 2. 一键打包 + 注入 + 安装 + 重启（数字为版本号，递增即可，全程约 3-5 分钟）
./build_and_deploy.sh 85
```

产物为 `janus_unisound_<版本号>.apk`。脚本会把编译产物转成 smali 注入 `original_v2/` 再重新组包，
**只有以下代码会真正进包**：`custom/` 整个目录、`ExampleANTEngineInitializer`、`NLUDispatcher*`、`MqttTransportChannel*`。
改了 `custom/` 之外的 Java 文件要手动把对应类加进 `build_and_deploy.sh` 的注入清单。

安装成功标志：`adb shell "ps | grep speaker.device"` 有进程；`adb logcat -s ExampleApp` 看到 `APP START` / `INIT DONE`。

## 三、大模型配置（申请账号 + 填 Key）

### 1. 申请 API Key（免费）

- **智谱 GLM-4.5-Flash（默认方案，免费）**：到 <https://bigmodel.cn> 注册 → 「API Keys」生成
  Key 形如 `xxxxxxxx.yyyyyyyy`（两段都要复制）。
  ⚠️ 别换成 GLM-4.7-Flash：实测同一条问题 4.5 只要 0.5~1 秒，4.7 要 27~68 秒，直接超时表现为「调用失败」。
- **火山方舟豆包（可选，速度快）**：到 <https://console.volcengine.com/ark> 开通 → API Key 管理 → 生成
  Key（UUID 形式）。模型 ID 用 `doubao-seed-2-0-lite-260215`。
- 其它任意 OpenAI 兼容端点（DeepSeek / Kimi / 本地 Ollama 等）均可。

### 2. 填 Key 到音箱（Key 不进代码、不进 git）

```bash
cp ai_config.example.ini ai_config.local.ini   # 复制模板
vi ai_config.local.ini                          # 填 api_key，选一组 base_url/model
./push_ai_config.sh                             # 推送到音箱并重启 App（默认 IP 192.168.5.9，可传参换 IP）
```

`ai_config.local.ini` 已被 `.gitignore` 忽略，你的 Key **永远不会**被提交。
没有电脑操作条件时，也可以直接改设备上的
`/data/data/com.phicomm.speaker.device/files/ai_config.ini`（`adb shell run-as com.phicomm.speaker.device ...`）。

### 3. 配置生效规则（改代码默认值时看这里）

取值优先级：**`FORCE_*` 开关打开的字段 > 设备 ini 里的值 > 代码 `DEFAULT_*` 默认值**。

| 场景 | 做法 |
|---|---|
| 个人使用（推荐） | 只改设备 ini，代码不动 |
| 换默认模型并随升级下发 | 改 `AIConfig` 的 `DEFAULT_*`，并把 `CURRENT_CONFIG_VERSION` +1（迁移只刷模型参数，不会冲掉用户已填的 Key） |
| 强制覆盖用户配置 | 把对应 `FORCE_*` 改 `true`（想把 Key 打进包分发也走这里，但**千万别提交到公开仓库**） |

关键字段说明：`thinking = disabled` 关闭深度思考（语音交互追求秒回，智谱与豆包都支持；非智谱端点填 `auto` 表示不发送该字段）；`max_tokens = 1024` 对 TTS 播报足够。

## 四、项目结构

```
├── app/src/main/java/com/phicomm/speaker/device/
│   ├── custom/                    # 全部自定义功能（进包）
│   │   ├── handler/               # 各意图的 Pipeline Handler
│   │   ├── ai/                    # OpenAIClient / AIConfig / 对话历史
│   │   ├── config/                # AIConfig 配置加载与迁移
│   │   ├── teaser/                # 对话后调侃
│   │   ├── persona/               # 多人格管理
│   │   ├── music/  tts/  engine/  # 音乐客户端 / 讯飞 TTS / 播放状态监控
│   │   └── ...
│   └── ui/ExampleANTEngineInitializer.java   # pipeline 注册入口
├── original_v2/smali/             # smali 注入目标（打包时被脚本重写）
├── build_and_deploy.sh            # 一键打包脚本（编译→dex→smali→注入→签名→安装）
├── build_janus_v2.py              # Janus 套壳：device_original.apk 外壳 + 注入 dex
├── ai_config.example.ini          # AI 配置模板（提交）
├── ai_config.local.ini            # 你的私人配置（gitignore，含 Key）
└── push_ai_config.sh              # 推送配置到音箱
```

## 五、常见问题

| 现象 | 原因 / 解决 |
|---|---|
| adb 连不上音箱 | 音箱休眠了：先 `ping` 唤醒，`adb kill-server && adb start-server` 后重连 |
| 安装后启动崩溃 `Resources$NotFoundException` | 用了 gradle 直接编译套壳，资源 ID 冲突。必须走 `build_and_deploy.sh` 的 smali 注入流程，保留原厂资源表 |
| `INSTALL_FAILED_UPDATE_INCOMPATIBLE` | 外壳必须是 `device_original.apk`（原厂签名），脚本已处理 |
| 说「调用失败」 | ① ini 里没填有效 Key；② 换了慢模型（见上文 GLM-4.7 教训）；③ `logcat -s OpenAIClient` 看具体 HTTP 错误（401=Key 错，429=限流） |
| 说话没反应 / 唤醒失效 | `adb logcat | grep -E "AIConfig|OpenAIClient|NLUDispatcher"` 抓日志定位 |
| git status 一堆 original_v2 的 M | 每次打包都会重写 smali，属正常，提交前按需取舍 |

## License

见 [LICENSE](LICENSE)。
