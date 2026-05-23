package com.phicomm.speaker.device.custom.handler;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;

import com.phicomm.speaker.device.custom.ai.ConversationHistory;
import com.phicomm.speaker.device.custom.ai.OpenAIClient;
import com.phicomm.speaker.device.custom.ai.PersonaConversationManager;
import com.phicomm.speaker.device.custom.config.AIConfig;
import com.phicomm.speaker.device.custom.persona.PersonaConfig;
import com.phicomm.speaker.device.custom.persona.PersonaManager;
import com.unisound.vui.engine.ANTHandlerContext;
import com.unisound.vui.handler.SessionRegister;
import com.unisound.vui.handler.SimpleUserEventInboundHandler;
import com.unisound.vui.util.LogMgr;
import com.unisound.vui.util.ThreadUtils;

import nluparser.scheme.NLU;

import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * 大模型 Chat Handler
 * 
 * 拦截 service == cn.yunzhisheng.chat 的 NLU 事件
 * 优先级 315,高于 PhicommMusicSearchHandler(310) 和 PhicommWeatherHandler(310)
 * 
 * 职责:
 * 1. 快速判断是否音乐/天气意图,如果是则放行
 * 2. 成语接龙游戏(最高优先级)
 * 3. 其他闲聊/问答意图,调用大模型 API 生成回复
 * 4. TTS 播报大模型回复
 * 
 * 工作流程:
 * acceptInboundEvent0: 关键词快速判断 → 决定是否消费
 * eventReceived: 异步调用大模型 → ctx.playTTS(回复)
 * onTTSEventPlayingEnd: TTS 结束后 → 根据模式决定进入 ASR 或 Wakeup
 */
public class PhicommChatHandler extends SimpleUserEventInboundHandler<NLU> {
    private static final String TAG = "PhicommChat";
    private static final String LOG_FILE = "/sdcard/eav_event.log";
    
    /**
     * 写入日志到文件
     */
    private static void writeLog(String message) {
        try {
            FileWriter fw = new FileWriter(LOG_FILE, true);
            String timestamp = new SimpleDateFormat("HH:mm:ss.SSS", Locale.US).format(new Date());
            fw.append(timestamp).append(" [").append(TAG).append("] ").append(message).append("\n");
            fw.close();
        } catch (Exception e) {
            LogMgr.e(TAG, "写入日志失败: " + e);
        }
    }
    
    // 音乐关键词(如果包含这些词,放行给 PhicommMusicSearchHandler)
    private static final String[] MUSIC_KEYWORDS = {
        "播放", "放一首", "来一首", "来一个", "我想听", "唱一", "听音乐", "听歌",
        "放歌", "放音乐", "来点音乐", "放个歌", "给我唱", "唱首"
    };
    
    // 天气关键词(如果包含这些词,放行给 PhicommWeatherHandler)
    private static final String[] WEATHER_KEYWORDS = {
        "天气", "温度", "下雨", "晴天", "阴天", "多云", "几度", "摄氏度",
        "刮风", "下雪", "雾霾", "空气质量", "天气预报", "今天天气", "明天天气"
    };
    
    // AI 客户端
    private OpenAIClient openAIClient;
    
    // 当前大模型回复(用于打断处理)
    private String currentResponse;
    
    // 上下文
    private ANTHandlerContext ctx;
    
    // 成语接龙游戏状态
    private boolean isIdiomGameMode = false;  // 是否在成语接龙模式
    private int idiomGameTurn = 0;  // 当前轮数
    private String lastUserIdiom = null;  // 用户说的最后一个成语
    // 多轮对话(成语接龙/捣蛋鬼/英语陪练师等)静音超时: 15 秒后退出, 让出 MIC 给唤醒/插嘴
    private static final int MAX_IDLE_TIMEOUT = 15000;
    
    // 超时处理器
    private Handler timeoutHandler = new Handler(Looper.getMainLooper());
    private Runnable timeoutRunnable;
    
    // 多轮对话状态(仅大模型场景)
    private boolean isMultiTurnMode = false;  // 是否在多轮对话模式
    private ConversationHistory conversationHistory;  // 对话历史管理器(内置10分钟惰性清理)
    
    // ⭐ 异步任务追踪标志,用于人格切换时等待任务完成
    private volatile boolean isProcessingRequest = false;
    
    public PhicommChatHandler() {
        this.sessionName = SessionRegister.SESSION_CHAT;
    }
    
    @Override
    public void initPriority() {
        // 优先级 315,高于 MusicSearchHandler(310) 和 WeatherHandler(310)
        setPriority(315);
    }
    
    @Override
    public boolean onASREventEngineInitDone(ANTHandlerContext ctx) {
        // 保存上下文
        this.ctx = ctx;
        
        // 在 ASR 引擎初始化完成时,初始化 AIConfig 和 OpenAIClient
        Context context = ctx.androidContext();
        AIConfig config = AIConfig.load(context);
        this.openAIClient = new OpenAIClient(config);
        
        LogMgr.d(TAG, "PhicommChatHandler initialized with model: " + config.getModel());
        return super.onASREventEngineInitDone(ctx);
    }
    
    @Override
    public boolean acceptInboundEvent0(NLU evt) {
        // 只拦截 chat 意图
        if (evt == null) {
            LogMgr.d(TAG, "acceptInboundEvent0: evt is null, return false");
            return false;
        }
        
        String service = evt.getService();
        String text = evt.getText();
        LogMgr.d(TAG, "========================================");
        LogMgr.d(TAG, "acceptInboundEvent0 被调用!");
        LogMgr.d(TAG, "service=" + service);
        LogMgr.d(TAG, "text=" + text);
        LogMgr.d(TAG, "isIdiomGameMode=" + isIdiomGameMode);
        LogMgr.d(TAG, "========================================");
        
        // 注意:这里只处理 chat 意图
        // 如果是 music 或其他 service,需要其他 Handler 处理
        if (!"cn.yunzhisheng.chat".equals(service)) {
            LogMgr.d(TAG, "service 不是 chat, 放行");
            return false;
        }
        
        // 快速判断:是否应该放行给其他 Handler?
        if (text != null && !text.isEmpty()) {
            // 成语接龙模式下,不拦截任何输入(全部消费) ✅ 最高优先级
            if (isIdiomGameMode) {
                LogMgr.d(TAG, "成语接龙模式,拦截所有输入: " + text);
                return true;
            }
            
            // 检查是否是成语接龙启动指令(最高优先级) ✅
            if (text.contains("成语接龙") || text.contains("开始成语") || text.contains("成语游戏")) {
                LogMgr.d(TAG, "检测到成语接龙启动指令,拦截: " + text);
                return true;
            }
            
            // ⚠️ 重要: 先检查音乐/天气关键词,即使在多轮模式下也要放行
            // 包含音乐关键词 → 放行给 PhicommMusicSearchHandler(不保存记忆)
            if (containsAny(text, MUSIC_KEYWORDS)) {
                LogMgr.d(TAG, "包含音乐关键词,放行: " + text);
                return false;
            }
            
            // 包含天气关键词 → 放行给 PhicommWeatherHandler(不保存记忆)
            if (containsAny(text, WEATHER_KEYWORDS)) {
                LogMgr.d(TAG, "包含天气关键词,放行: " + text);
                return false;
            }
            
            // 多轮对话模式下,拦截所有输入(仅大模型场景)
            // 注意: 这个判断必须在音乐/天气之后,确保音乐/天气能正确放行
            if (isMultiTurnMode) {
                LogMgr.d(TAG, "多轮对话模式,拦截所有输入: " + text);
                return true;
            }
        }
        
        // 其他情况 → 消费,走大模型
        LogMgr.d(TAG, "拦截 chat 意图,走大模型: " + text);
        return true;
    }
    
    @Override
    public void eventReceived(final NLU evt, final ANTHandlerContext ctx) throws Exception {
        super.eventReceived(evt, ctx);
        
        final String userInput = evt.getText();
        LogMgr.d(TAG, "chat intent: " + userInput + ", isIdiomGameMode=" + isIdiomGameMode);
        
        // 取消超时定时器(用户说话了)
        if ((isIdiomGameMode || isMultiTurnMode) && timeoutRunnable != null) {
            timeoutHandler.removeCallbacks(timeoutRunnable);
        }
        
        // 异步调用大模型
        ThreadUtils.execute(new Runnable() {
            @Override
            public void run() {
                isProcessingRequest = true;  // ⭐ 标记任务开始
                try {
                    String response;
                    
                    // 检查是否是成语接龙启动指令
                    if (!isIdiomGameMode && (userInput.contains("成语接龙") || 
                                            userInput.contains("开始成语") || 
                                            userInput.contains("成语游戏"))) {
                        // 启动成语接龙游戏
                        isIdiomGameMode = true;
                        idiomGameTurn = 0;
                        lastUserIdiom = null;
                        
                        LogMgr.d(TAG, "成语接龙游戏启动");
                        
                        // 第一次:AI 先出词
                        String prompt = "本次开始成语接龙游戏,你先出一个成语。" +
                                       "要求:\n" +
                                       "1. 第一个成语难度别太高,用常见的成语\n" +
                                       "2. 只回复成语本身,不要解释,不要其他内容\n" +
                                       "3. 必须是四字成语\n" +
                                       "4. 只回复一个成语,不要回复多个";
                        
                        LogMgr.d(TAG, "=== 调用大模型(成语接龙启动) ===");
                        LogMgr.d(TAG, "Prompt: " + prompt);
                        
                        response = openAIClient.chat(prompt, null);
                        
                        LogMgr.d(TAG, "大模型返回: " + response);
                        
                        // 如果返回了多个成语,截取第一个
                        if (response != null && !response.isEmpty()) {
                            response = extractFirstIdiom(response);
                            LogMgr.d(TAG, "截取后第一个成语: " + response);
                        }
                        
                        if (response == null || response.isEmpty()) {
                            response = "一马当先";  // 默认词
                        }
                        
                        response = "好的,我们开始成语接龙!我先开始:" + response;
                        
                    } else if (isIdiomGameMode) {
                        // 检查退出指令
                        if (userInput.contains("退出") || userInput.contains("结束") || 
                            userInput.contains("停止") || userInput.contains("不玩了")) {
                            LogMgr.d(TAG, "用户请求退出成语接龙");
                            isIdiomGameMode = false;
                            idiomGameTurn = 0;
                            response = "好的,成语接龙游戏结束!你一共完成了 " + idiomGameTurn + " 轮对话,非常棒!";
                            
                            // 播报后退出游戏模式
                            ctx.stopWakeup();
                            ctx.stopASR();
                            currentResponse = response;
                            ctx.playTTS(response);
                            return;
                        }
                        
                        // 游戏中:用户接词,AI 继续
                        idiomGameTurn++;
                        lastUserIdiom = userInput;
                        
                        LogMgr.d(TAG, "成语接龙第 " + idiomGameTurn + " 轮,用户说: " + userInput);
                        
                        // 构建提示词:告诉 AI 用户说了什么,让 AI 接词
                        String prompt = "成语接龙游戏中。\n" +
                                       "用户说了:「" + userInput + "」\n" +
                                       "请你根据成语接龙规则(最后一个字作为下一个成语的第一个字)接一个成语。\n" +
                                       "要求:\n" +
                                       "1. 只回复成语本身,不要解释,不要其他内容\n" +
                                       "2. 必须是四字成语\n" +
                                       "3. 不能重复使用已经说过的成语\n" +
                                       "4. 只回复一个成语,不要回复多个";
                        
                        LogMgr.d(TAG, "=== 调用大模型(成语接龙第 " + idiomGameTurn + " 轮) ===");
                        LogMgr.d(TAG, "用户输入: " + userInput);
                        LogMgr.d(TAG, "Prompt: " + prompt);
                        
                        response = openAIClient.chat(prompt, null);
                        
                        LogMgr.d(TAG, "大模型返回: " + response);
                        
                        // 如果返回了多个成语,截取第一个
                        if (response != null && !response.isEmpty()) {
                            response = extractFirstIdiom(response);
                            LogMgr.d(TAG, "截取后成语: " + response);
                        }
                        
                        if (response == null || response.isEmpty()) {
                            response = "我想想...这个有点难,你赢了!";
                            isIdiomGameMode = false;
                        }
                        
                    } else {
                        // 普通对话模式 - 只有这里才会保存记忆
                        LogMgr.d(TAG, "=== 调用大模型(普通对话) ===");
                        LogMgr.d(TAG, "用户输入: " + userInput);
                        
                        // 检查是否是多轮对话的第一轮
                        if (!isMultiTurnMode) {
                            // 第一次大模型对话,初始化历史
                            isMultiTurnMode = true;
                            conversationHistory = new ConversationHistory();
                            LogMgr.d(TAG, "多轮对话模式启动(仅大模型场景)");
                        }
                        
                        // 检查清空记忆指令 - 清空当前 active persona 的历史
                        if (userInput.contains("清空记忆") || userInput.contains("清空对话")) {
                            String pid = PersonaManager.getCurrentPersonaId();
                            LogMgr.d(TAG, "用户请求清空 persona[" + pid + "] 对话记忆");
                            PersonaConversationManager.clear(pid);

                            // 退出多轮对话模式
                            isMultiTurnMode = false;
                            conversationHistory = null;
                            LogMgr.d(TAG, "已退出多轮对话模式");
                            
                            // 不调用大模型,直接返回
                            response = "成功清理";
                            
                            // 停止唤醒和 ASR
                            ctx.stopWakeup();
                            ctx.stopASR();
                            
                            // TTS 播报 - 使用原厂 TTS
                            currentResponse = response;
                            ctx.playTTS(response);
                            
                            LogMgr.d(TAG, "=== 记忆清空完成,退出多轮模式 ===");
                            return;
                        }
                        
                        // 检查 OpenAIClient 是否已初始化
                        if (openAIClient == null) {
                            LogMgr.e(TAG, "openAIClient is null! 尝试重新初始化...");
                            try {
                                Context context = ctx.androidContext();
                                AIConfig config = AIConfig.load(context);
                                openAIClient = new OpenAIClient(config);
                                LogMgr.d(TAG, "重新初始化成功, model=" + config.getModel() + ", url=" + config.getBaseUrl());
                            } catch (Exception ex) {
                                LogMgr.e(TAG, "重新初始化失败: " + ex);
                            }
                        }
                        
                        if (openAIClient != null) {
                            // ⭐ 按当前 active persona 取独立对话历史 + 对应 systemPrompt
                            String activePersonaId = PersonaManager.getCurrentPersonaId();
                            PersonaConfig activeCfg = PersonaManager.getCurrentPersonaConfig();
                            String activeSysPrompt = activeCfg != null ? activeCfg.getSystemPrompt() : null;
                            ConversationHistory personaHistory = PersonaConversationManager.getHistory(activePersonaId);
                            String historyText = personaHistory.getFormattedHistory();

                            LogMgr.d(TAG, "Active persona=" + activePersonaId
                                    + " hist_turns=" + personaHistory.size());

                            // 调用带 persona systemPrompt + 该 persona 历史
                            response = openAIClient.chatWithHistory(userInput, historyText, activeSysPrompt);

                            LogMgr.d(TAG, "大模型返回: " + response);

                            // 保存到该 persona 的历史
                            if (response != null && !response.isEmpty()) {
                                personaHistory.addTurn(userInput, response);
                                LogMgr.d(TAG, "保存到 persona[" + activePersonaId + "] 历史,轮数: "
                                        + personaHistory.size());
                            }
                        } else {
                            LogMgr.e(TAG, "openAIClient 仍为 null, 无法调用大模型");
                            response = null;
                        }
                        
                        LogMgr.d(TAG, "大模型返回: " + response);
                    }
                    
                    if (response != null && !response.isEmpty()) {
                        // 停止唤醒和 ASR
                        ctx.stopWakeup();
                        ctx.stopASR();
                        
                        writeLog("=== 调用原厂 TTS === " + response);
                        currentResponse = response;
                        ctx.playTTS(response);
                    } else {
                        // API 调用失败 - 统一回复
                        LogMgr.e(TAG, "=== API 返回 null, openAIClient=" + openAIClient + " ===");
                        ctx.playTTS("模型调用失败");
                        if (isIdiomGameMode) {
                            isIdiomGameMode = false;
                        }
                    }
                } catch (Exception e) {
                    LogMgr.e(TAG, "chat failed: " + e);
                    e.printStackTrace();
                    ctx.playTTS("模型调用失败");
                    if (isIdiomGameMode) {
                        isIdiomGameMode = false;
                    }
                } finally {
                    isProcessingRequest = false;  // ⭐ 标记任务结束
                }
            }
        });
    }
    
    @Override
    public boolean onTTSEventPlayingEnd(ANTHandlerContext ctx) {
        LogMgr.d(TAG, "TTS playing end (原厂), isIdiomGameMode=" + isIdiomGameMode + 
                 ", isMultiTurnMode=" + isMultiTurnMode);
        
        // 注意: 使用讯飞 TTS 时,不会触发这个回调
        // 只有使用 ctx.playTTS() 时才会触发
        return handleTtsPlayingEnd();
    }
    
    /**
     * 处理 TTS 播放完成后的逻辑(讯飞 TTS 和原厂 TTS 共用)
     */
    private boolean handleTtsPlayingEnd() {
        LogMgr.d(TAG, "handleTtsPlayingEnd, isIdiomGameMode=" + isIdiomGameMode + 
                 ", isMultiTurnMode=" + isMultiTurnMode);
        
        if (isIdiomGameMode) {
            // 成语接龙模式:直接进入 ASR,继续聆听
            LogMgr.d(TAG, "成语接龙模式:进入 ASR 继续聆听");
            reset();  // 重置会话状态
            
            // 启动 15 秒静音超时定时器
            timeoutRunnable = new Runnable() {
                @Override
                public void run() {
                    if (isIdiomGameMode) {
                        LogMgr.d(TAG, "成语接龙超时,自动退出");
                        isIdiomGameMode = false;
                        idiomGameTurn = 0;
                        lastUserIdiom = null;
                        ctx.playTTS("超时未检测到语音,成语接龙游戏结束");
                        ctx.enterWakeup(false);
                    }
                }
            };
            timeoutHandler.postDelayed(timeoutRunnable, MAX_IDLE_TIMEOUT);
            
            // 延迟 500ms 再进入 ASR,确保 TTS 完全停止
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                @Override
                public void run() {
                    ctx.enterASR();
                }
            }, 500);
            
            return true;
        } else if (isMultiTurnMode) {
            // 多轮对话模式:直接进入 ASR,继续聆听
            LogMgr.d(TAG, "多轮对话模式:进入 ASR 继续聆听");
            reset();

            // 启动 15 秒静音超时: 无人说话则退出多轮, 让出给唤醒/插嘴模式
            timeoutRunnable = new Runnable() {
                @Override
                public void run() {
                    if (isMultiTurnMode) {
                        LogMgr.d(TAG, "多轮对话超时 " + MAX_IDLE_TIMEOUT + "ms,退出多轮模式");
                        isMultiTurnMode = false;
                        conversationHistory = null;
                        ctx.enterWakeup(false);
                        // 重置交互时间, 让插嘴引擎在空闲阈值后接管
                        PersonaManager.recordInteraction();
                    }
                }
            };
            timeoutHandler.postDelayed(timeoutRunnable, MAX_IDLE_TIMEOUT);

            // 延迟 500ms 进入 ASR
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                @Override
                public void run() {
                    ctx.enterASR();
                }
            }, 500);

            return true;
        } else {
            // 普通模式:正常退出,回到唤醒状态
            LogMgr.d(TAG, "普通模式:退出到唤醒状态");
            exit();
            return true;
        }
    }
    
    private void exit() {
        try {
            this.ctx.cancelTTS();
            // 注意:不要调用 cancelEngine(),它会取消整个 ANT 引擎导致无法唤醒
            // 只需调用 reset() 清空会话状态即可
        } catch (Throwable ignored) {}
        
        // 取消超时定时器
        timeoutHandler.removeCallbacks(timeoutRunnable);
        
        // ⭐ 等待异步大模型任务完成(最多等待2秒)
        int waitCount = 0;
        while (isProcessingRequest && waitCount < 20) {
            try {
                Thread.sleep(100);
                waitCount++;
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                break;
            }
        }
        
        // 重置成语接龙状态
        isIdiomGameMode = false;
        idiomGameTurn = 0;
        lastUserIdiom = null;
        
        // 重置多轮对话状态
        isMultiTurnMode = false;
        conversationHistory = null;
        
        reset();
    }
    
    @Override
    public void doInterrupt(ANTHandlerContext ctx, String interruptType) {
        // 打断处理
        if (eventReceived) {
            LogMgr.d(TAG, "doInterrupt, isIdiomGameMode=" + isIdiomGameMode + 
                     ", isMultiTurnMode=" + isMultiTurnMode);
            ctx.cancelTTS();
            
            // 取消超时定时器
            timeoutHandler.removeCallbacks(timeoutRunnable);
            
            // ⭐ 等待异步大模型任务完成(最多等待2秒)
            int waitCount = 0;
            while (isProcessingRequest && waitCount < 20) {
                try {
                    Thread.sleep(100);
                    waitCount++;
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    break;
                }
            }
            
            // 中断时退出成语接龙模式
            isIdiomGameMode = false;
            idiomGameTurn = 0;
            lastUserIdiom = null;
            
            // 中断时退出多轮对话模式
            isMultiTurnMode = false;
            conversationHistory = null;
            
            reset();
        }
    }
    
    @Override
    public void reset() {
        currentResponse = null;
        // 注意:不要在这里重置 isIdiomGameMode,因为多轮对话需要保持状态
        super.reset();
    }
    
    /**
     * 判断文本是否包含任意关键词
     */
    private boolean containsAny(String text, String[] keywords) {
        for (String keyword : keywords) {
            if (text.contains(keyword)) {
                return true;
            }
        }
        return false;
    }
    
    /**
     * 从 AI 返回的文本中提取第一个成语
     * 如果 AI 返回了多个成语(如"一马当先，先见之明，明察秋毫")，只取第一个
     * 
     * @param text AI 返回的文本
     * @return 第一个四字成语
     */
    private String extractFirstIdiom(String text) {
        if (text == null || text.isEmpty()) {
            return text;
        }
        
        // 去除前后空白
        text = text.trim();
        
        // 如果文本长度 <= 4,直接返回
        if (text.length() <= 4) {
            return text;
        }
        
        // 查找第一个四字成语
        // 策略1: 如果包含中文逗号、顿号,截取第一个
        String[] separators = {"，", ",", "、", "。", ".", "！", "!", "？", "?"};
        int firstSeparatorIndex = text.length();
        
        for (String sep : separators) {
            int index = text.indexOf(sep);
            if (index != -1 && index < firstSeparatorIndex) {
                firstSeparatorIndex = index;
            }
        }
        
        // 如果找到了分隔符,截取前面的内容
        if (firstSeparatorIndex < text.length()) {
            String firstPart = text.substring(0, firstSeparatorIndex).trim();
            
            // 如果第一部分 <= 8 字(可能包含解释),直接返回
            if (firstPart.length() <= 8) {
                // 尝试提取其中的四字成语
                return extractFourCharIdiom(firstPart);
            }
        }
        
        // 如果没有分隔符,尝试直接提取四字成语
        return extractFourCharIdiom(text);
    }
    
    /**
     * 从文本中提取四字成语
     * 策略: 查找连续 4 个中文字符
     */
    private String extractFourCharIdiom(String text) {
        if (text == null || text.isEmpty()) {
            return text;
        }
        
        // 去除标点符号和空白
        StringBuilder chineseOnly = new StringBuilder();
        for (int i = 0; i < text.length(); i++) {
            char c = text.charAt(i);
            // 中文字符范围: \u4e00-\u9fa5
            if (c >= '\u4e00' && c <= '\u9fa5') {
                chineseOnly.append(c);
            }
        }
        
        String cleaned = chineseOnly.toString();
        
        // 如果清理后 <= 4 字,直接返回
        if (cleaned.length() <= 4) {
            return cleaned.isEmpty() ? text : cleaned;
        }
        
        // 返回前 4 个字(假设第一个成语在最前面)
        return cleaned.substring(0, 4);
    }
}
