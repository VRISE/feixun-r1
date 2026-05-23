package com.phicomm.speaker.device.custom.handler;

import com.phicomm.speaker.device.custom.event.IdiomGameInitEvent;
import com.phicomm.speaker.device.custom.event.PersonaActivationEvent;
import com.phicomm.speaker.device.custom.persona.PersonaConfig;
import com.phicomm.speaker.device.custom.persona.PersonaManager;
import com.unisound.vui.engine.ANTHandlerContext;
import com.unisound.vui.handler.SimpleUserEventInboundHandler;
import com.unisound.vui.util.LogMgr;

/**
 * 人格路由器
 * 监听人格激活事件,切换当前人格
 */
public class PersonaRouterHandler extends SimpleUserEventInboundHandler<PersonaActivationEvent> {
    
    private static final String TAG = PersonaRouterHandler.class.getSimpleName();
    
    @Override
    public boolean acceptInboundEvent0(PersonaActivationEvent evt) throws Exception {
        return evt != null && evt.getPersonaId() != null;
    }
    
    @Override
    public void eventReceived(PersonaActivationEvent evt, ANTHandlerContext ctx) throws Exception {
        String personaId = evt.getPersonaId();
        String wakeupWord = evt.getWakeupWord();
        
        LogMgr.d(TAG, "[DEBUG] Received persona activation: '" + wakeupWord + "' → '" + personaId + "'");
        
        // 1. 激活人格
        PersonaManager.activatePersona(personaId);
        LogMgr.d(TAG, "[DEBUG] PersonaManager.activatePersona called");
        
        // 2. 获取人格配置
        PersonaConfig config = PersonaConfig.findByPersonaId(personaId);
        if (config == null) {
            LogMgr.e(TAG, "Persona config not found: " + personaId);
            return;
        }
        
        LogMgr.d(TAG, "[DEBUG] Found persona config: " + config.getPersonaName());
        
        // 3. 播放人格激活提示音
        if (config.getActivationTTS() != null && !config.getActivationTTS().isEmpty()) {
            LogMgr.d(TAG, "[DEBUG] Playing activation TTS: " + config.getActivationTTS());
            ctx.playTTS(config.getActivationTTS());
        } else {
            LogMgr.w(TAG, "[DEBUG] No activation TTS configured for: " + personaId);
        }
        
        // 4. 播放专属提示音(可选) - 暂时禁用,API不存在
        // if (config.getActivationSoundResId() != -1) {
        //     ctx.playBeep(config.getActivationSoundResId());
        // }
        
        // 5. 设置TTS音色(可选) - 暂时禁用,API不存在
        // if (config.getTtsVoiceType() != null) {
        //     ctx.setTTSVoice(config.getTtsVoiceType());
        // }
        
        LogMgr.d(TAG, "Persona activated successfully: " + config.getPersonaName());
        
        // 6. 记录交互时间
        PersonaManager.recordInteraction();
        
        // ⭐ 7. 检查是否需要自动初始化(成语接龙等游戏模式)
        if (config.isAutoInit()) {
            LogMgr.d(TAG, "Auto-init triggered for persona: " + personaId);
            ctx.pipeline().fireUserEventTriggered(new IdiomGameInitEvent());
        }
    }
    
    @Override
    public void initPriority() {
        // 最高优先级,在业务Handler之前执行
        setPriority(400);
    }
}
