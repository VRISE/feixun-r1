package com.phicomm.speaker.device.ui;

import android.content.Context;
import com.phicomm.speaker.device.custom.api.CustomApiManager;
import com.phicomm.speaker.device.custom.handler.PhicommAlarmHandler;
import com.phicomm.speaker.device.custom.handler.PhicommBindStatusHandler;
import com.phicomm.speaker.device.custom.handler.PhicommChatHandler;
import com.phicomm.speaker.device.custom.handler.PhicommDataStatisticHandler;
import com.phicomm.speaker.device.custom.handler.PersonaRouterHandler;
import com.phicomm.speaker.device.custom.handler.EavesdropperHandler;
import com.phicomm.speaker.device.custom.handler.PhicommExternalMusicHandler;
import com.phicomm.speaker.device.custom.handler.PhicommInitializeHandler;
import com.phicomm.speaker.device.custom.handler.PhicommInterceptHandler;
import com.phicomm.speaker.device.custom.handler.PhicommMusicHandler;
import com.phicomm.speaker.device.custom.handler.PhicommMusicSearchHandler;
import com.phicomm.speaker.device.custom.handler.PhicommMusicScheduleHandler;
import com.phicomm.speaker.device.custom.handler.PhicommReminderHandler;
import com.phicomm.speaker.device.custom.handler.PhicommStatusHandler;
import com.phicomm.speaker.device.custom.handler.PhicommTTSHandler;
import com.phicomm.speaker.device.custom.handler.PhicommWakeupWordChangedHandler;
import com.phicomm.speaker.device.custom.handler.PhicommWeatherHandler;
import com.phicomm.speaker.device.custom.lights.PhicommLightListener;
import com.phicomm.speaker.device.custom.music.PhicommExternalPlayer;
import com.phicomm.speaker.device.custom.music.PhicommPlayer;
import com.phicomm.speaker.device.custom.ringing.CustomRingingProcessor;
import com.phicomm.speaker.device.custom.ringing.RingingEventProcessor;
import com.phicomm.speaker.device.custom.setting.PhicommSettingHandler;
import com.unisound.ant.device.DeviceCenterHandler;
import com.unisound.ant.platform.illeagechat.DefaultIlleageChatHandler;
import com.unisound.ant.platform.smarthome.DefaultSmartHomeHandler;
import com.unisound.vui.engine.ANTEngine;
import com.unisound.vui.engine.ANTEngineInitializer;
import com.unisound.vui.engine.ANTEngineOption;
import com.unisound.vui.engine.ANTPipeline;
import com.unisound.vui.handler.SimpleSessionManager;
import com.unisound.vui.handler.filter.NLUDispatcher;
import com.unisound.vui.handler.launch.DefaultANTLaunchHandler;
import com.unisound.vui.handler.session.DefaultGuideHandler;
import com.unisound.vui.handler.session.DefaultUnSupportHandler;
import com.unisound.vui.handler.session.chat.DefaultChatHandler;
import com.unisound.vui.handler.session.light.DefaultLightsHandler;
import com.unisound.vui.handler.session.memo.DefaultMemoRingingHandler;
import com.unisound.vui.handler.session.memo.DefaultNoteHandler;
import com.unisound.vui.handler.session.setting.DefaultSettingHandler;
import com.unisound.vui.handler.session.stock.DefaultStockHandler;
import com.unisound.vui.handler.session.weather.DefaultWeatherHandler;
import nluparser.MixtureProcessor;

public final class ExampleANTEngineInitializer extends ANTEngineInitializer {
    /* access modifiers changed from: protected */
    @Override // com.unisound.vui.engine.ANTEngineInitializer
    public void onEngineInitDone(ANTEngine engine) {
        Context context = engine.androidContext();
        ANTPipeline pipeline = engine.pipeline();
        MixtureProcessor mixtureProcessor = new MixtureProcessor.Builder().build();
        DeviceCenterHandler deviceCenterMgr = DeviceCenterHandler.getDeviceCenterMgr();
        pipeline.addLast(new NLUDispatcher(mixtureProcessor));
        pipeline.addLast(new PhicommDataStatisticHandler(context, mixtureProcessor));
        pipeline.addLast(new PhicommReminderHandler(context));
        pipeline.addLast(new PhicommAlarmHandler(context));
        DefaultMemoRingingHandler ringingHandler = new DefaultMemoRingingHandler();
        ringingHandler.setOnRingingListener(new RingingEventProcessor(engine, context));
        pipeline.addLast(ringingHandler);
        PhicommLightListener lightListener = new PhicommLightListener(context);
        pipeline.addLast(new PhicommInterceptHandler(lightListener));
        pipeline.addLast(new DefaultLightsHandler(lightListener, context));
        pipeline.addLast(new PhicommTTSHandler());
        pipeline.addLast(new SimpleSessionManager());
        pipeline.addLast(deviceCenterMgr.associateEngine(engine, mixtureProcessor));
        pipeline.addLast(new PhicommWakeupWordChangedHandler());
        pipeline.addLast(new PhicommBindStatusHandler(context, engine));
        pipeline.addLast(new DefaultANTLaunchHandler(context));
        // 自定义天气拦截:优先级 310 > DefaultWeatherHandler 300,会先抢到事件并消费
        pipeline.addLast(new PhicommWeatherHandler());
        pipeline.addLast(new DefaultWeatherHandler());
        pipeline.addLast(new DefaultStockHandler());
        // 自定义音乐搜索拦截:优先级 310 > DefaultMusicHandler 300
        // 拦截"播放xxx"意图,调用网易云音乐 API 搜索并播放
        pipeline.addLast(new PhicommMusicSearchHandler());
        pipeline.addLast(new PhicommExternalMusicHandler(new PhicommExternalPlayer(context), context));
        PhicommPlayer phicommPlayer = new PhicommPlayer(context, (String) engine.config().getOption(ANTEngineOption.GENERAL_UDID), engine);
        pipeline.addLast(new PhicommMusicHandler(phicommPlayer));
        pipeline.addLast(new PhicommMusicScheduleHandler());
        pipeline.addLast(new DefaultNoteHandler());
        pipeline.addLast(new DefaultSettingHandler(new PhicommSettingHandler(context, engine)));
        // 自定义大模型 Chat 拦截:优先级 315 > DefaultChatHandler 300
        // 拦截闲聊意图,调用 OpenAI 兼容 API(智谱 GLM)生成回复
        // 人格路由: 消费 PersonaActivationEvent (捣蛋鬼/英语陪练师/成语接龙等),
        // 播放激活提示音并切换人格. priority=400, 必须在 EavesdropperHandler(350)之前
        pipeline.addLast(new PersonaRouterHandler());
        pipeline.addLast(new PhicommChatHandler());
        // 插嘴 Handler: 消费 EavesdropperTriggerEvent, 调用大模型回复
        pipeline.addLast(new EavesdropperHandler());
        pipeline.addLast(new DefaultChatHandler());
        pipeline.addLast(new DefaultGuideHandler());
        pipeline.addLast(new DefaultIlleageChatHandler());
        pipeline.addLast(new DefaultSmartHomeHandler());
        pipeline.addLast(new DefaultUnSupportHandler(context));
        pipeline.addLast(new PhicommInitializeHandler());
        pipeline.addLast(new PhicommStatusHandler());
        new CustomApiManager(context, engine, phicommPlayer).addListener(0, new CustomRingingProcessor(ringingHandler));
    }
}
