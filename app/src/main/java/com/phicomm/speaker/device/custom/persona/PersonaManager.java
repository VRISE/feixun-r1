package com.phicomm.speaker.device.custom.persona;

import android.content.Context;
import com.unisound.vui.util.LogMgr;
import com.unisound.vui.util.SharedPreferencesHelper;
import java.util.concurrent.atomic.AtomicReference;

/**
 * 人格管理器
 * 维护当前激活的人格状态
 */
public class PersonaManager {
    
    private static final String SP_NAME = "persona_manager";
    private static final String KEY_CURRENT_PERSONA = "current_persona";
    private static final String KEY_PERSONA_MODE = "persona_mode";
    private static final String KEY_LAST_INTERACTION_TIME = "last_interaction_time";
    
    /** 当前人格 */
    private static final AtomicReference<String> currentPersonaId = 
        new AtomicReference<>(PersonaConfig.DEFAULT);
    
    /** 当前工作模式 */
    private static volatile PersonaMode currentMode = PersonaMode.PASSIVE;
    
    /** 最后交互时间 */
    private static volatile long lastInteractionTime = System.currentTimeMillis();
    
    /** 是否正在监听中(主动模式) */
    private static volatile boolean isListening = false;
    
    /** 闭嘴禁用结束时间戳 */
    private static volatile long shutUpEndTime = 0;
    
    /** Context引用(需要在应用初始化时设置) */
    private static Context context;
    
    /** 状态锁,保护多变量的原子更新 */
    private static final Object stateLock = new Object();
    
    /**
     * 设置Context(在应用初始化时调用)
     */
    public static void setContext(Context ctx) {
        context = ctx;
    }
    
    /**
     * 激活人格(被动模式)
     */
    public static void activatePersona(String personaId) {
        PersonaConfig config = PersonaConfig.findByPersonaId(personaId);
        if (config == null) {
            LogMgr.e("PersonaManager", "Persona not found: " + personaId);
            return;
        }
        
        synchronized (stateLock) {
            currentPersonaId.set(personaId);
            currentMode = config.getMode();
            lastInteractionTime = System.currentTimeMillis();
            
            // 如果是主动人格,不切换到主动模式(需要单独启动监听)
            if (config.getMode() == PersonaMode.ACTIVE) {
                LogMgr.w("PersonaManager", "Active persona cannot be activated directly");
                return;
            }
        }
        
        LogMgr.d("PersonaManager", "Activated persona: " + config.getPersonaName());
        
        // 持久化(在锁外执行)
        savePersonaState(personaId, PersonaMode.PASSIVE);
    }
    
    /**
     * 启动主动监听模式
     */
    public static void startActiveListening(Context context) {
        PersonaConfig activeConfig = PersonaConfig.getActivePersona();
        if (activeConfig == null) {
            LogMgr.e("PersonaManager", "No active persona configured");
            return;
        }
        
        synchronized (stateLock) {
            // 检查是否满足触发条件
            long idleTime = System.currentTimeMillis() - lastInteractionTime;
            if (idleTime < activeConfig.getIdleTriggerThresholdMs()) {
                LogMgr.d("PersonaManager", "Not idle enough yet, idleTime=" + idleTime);
                return;
            }
            
            // 切换到主动人格
            currentPersonaId.set(PersonaConfig.EAVESDROPPER);
            currentMode = PersonaMode.ACTIVE;
            isListening = true;
        }
        
        LogMgr.d("PersonaManager", "Started active listening mode");
    }
    
    /**
     * 停止主动监听
     */
    public static void stopActiveListening() {
        synchronized (stateLock) {
            stopActiveListeningLocked();
        }
        
        LogMgr.d("PersonaManager", "Stopped active listening mode");
    }
    
    /** 内部无锁版本,必须在持有 stateLock 时调用 */
    private static void stopActiveListeningLocked() {
        currentPersonaId.set(PersonaConfig.DEFAULT);
        currentMode = PersonaMode.PASSIVE;
        isListening = false;
    }
    
    /**
     * 记录交互时间
     */
    public static void recordInteraction() {
        synchronized (stateLock) {
            lastInteractionTime = System.currentTimeMillis();
            
            // 如果正在监听中,停止监听(使用无锁版本避免死锁)
            if (isListening) {
                stopActiveListeningLocked();
                LogMgr.d("PersonaManager", "Stopped active listening mode");
            }
        }
    }
    
    /**
     * 检查是否应该触发主动监听
     */
    public static boolean shouldTriggerActiveListening(Context context) {
        // ⭐ 检查是否在"闭嘴"禁用期内
        if (isShutUpDisabled()) {
            long remainingTime = shutUpEndTime - System.currentTimeMillis();
            LogMgr.d("PersonaManager", "Shut-up mode active, remaining: " + (remainingTime/1000) + "s");
            return false;
        }
        
        synchronized (stateLock) {
            // 检查当前是否在被动对话中
            if (currentMode == PersonaMode.PASSIVE) {
                long idleTime = System.currentTimeMillis() - lastInteractionTime;
                PersonaConfig activeConfig = PersonaConfig.getActivePersona();
                
                if (idleTime >= activeConfig.getIdleTriggerThresholdMs()) {
                    LogMgr.d("PersonaManager", "Idle threshold reached, can trigger active listening");
                    return true;
                }
            }
        }
        
        return false;
    }
    
    /**
     * 启用"闭嘴"模式 - 禁用主动监听1小时
     */
    public static void enableShutUpMode() {
        synchronized (stateLock) {
            shutUpEndTime = System.currentTimeMillis() + PersonaConfig.SHUT_UP_DURATION_MS;
            
            // 如果正在监听，立即停止(使用无锁版本)
            if (isListening) {
                stopActiveListeningLocked();
                LogMgr.d("PersonaManager", "Stopped active listening mode");
            }
        }
        
        // 持久化(在锁外执行)
        if (context != null) {
            SharedPreferencesHelper.getInstance(context, SP_NAME)
                .saveLongValue("shut_up_end_time", shutUpEndTime);
        }
        
        LogMgr.d("PersonaManager", "Shut-up mode enabled for 1 hour");
    }
    
    /**
     * ⭐ 禁用"闭嘴"模式 - 立即恢复主动监听
     */
    public static void disableShutUpMode() {
        shutUpEndTime = 0;  // 清除禁用时间戳
        
        // 清除持久化
        if (context != null) {
            SharedPreferencesHelper.getInstance(context, SP_NAME)
                .saveLongValue("shut_up_end_time", 0);
        }
        
        LogMgr.d("PersonaManager", "Shut-up mode disabled, eavesdropping resumed");
    }
    
    /**
     * 检查是否在"闭嘴"禁用期
     */
    public static boolean isShutUpDisabled() {
        // ⭐ 重启后默认开启(shutUpEndTime=0表示未禁用)
        return shutUpEndTime > 0 && System.currentTimeMillis() < shutUpEndTime;
    }
    
    /**
     * 获取闭嘴剩余时间(毫秒)
     */
    public static long getShutUpRemainingTime() {
        if (!isShutUpDisabled()) {
            return 0;
        }
        return shutUpEndTime - System.currentTimeMillis();
    }
    
    /**
     * 获取当前人格配置
     */
    public static PersonaConfig getCurrentPersonaConfig() {
        return PersonaConfig.findByPersonaId(currentPersonaId.get());
    }
    
    /**
     * 获取当前人格ID
     */
    public static String getCurrentPersonaId() {
        return currentPersonaId.get();
    }
    
    /**
     * 获取当前工作模式
     */
    public static PersonaMode getCurrentMode() {
        return currentMode;
    }
    
    /**
     * 是否正在监听
     */
    public static boolean isListening() {
        return isListening;
    }
    
    /**
     * 获取最后交互时间
     */
    public static long getLastInteractionTime() {
        return lastInteractionTime;
    }
    
    /**
     * 持久化人格状态
     */
    private static void savePersonaState(String personaId, PersonaMode mode) {
        if (context == null) {
            LogMgr.w("PersonaManager", "Context is null, cannot save state");
            return;
        }
        
        SharedPreferencesHelper.getInstance(context, SP_NAME)
            .saveStringValue(KEY_CURRENT_PERSONA, personaId);
        SharedPreferencesHelper.getInstance(context, SP_NAME)
            .saveStringValue(KEY_PERSONA_MODE, mode.name());
        SharedPreferencesHelper.getInstance(context, SP_NAME)
            .saveLongValue(KEY_LAST_INTERACTION_TIME, System.currentTimeMillis());
    }
    
    /**
     * 恢复人格状态
     */
    public static void restorePersonaState(Context context) {
        String personaId = SharedPreferencesHelper.getInstance(context, SP_NAME)
            .getStringValue(KEY_CURRENT_PERSONA, PersonaConfig.DEFAULT);
        String modeStr = SharedPreferencesHelper.getInstance(context, SP_NAME)
            .getStringValue(KEY_PERSONA_MODE, PersonaMode.PASSIVE.name());
        
        SharedPreferencesHelper prefs = SharedPreferencesHelper.getInstance(context, SP_NAME);
        long lastTime = prefs.getLongValue(KEY_LAST_INTERACTION_TIME);
        if (lastTime == 0) {
            lastTime = System.currentTimeMillis();
        }
        
        long shutUpTime = prefs.getLongValue("shut_up_end_time");
        
        currentPersonaId.set(personaId);
        currentMode = PersonaMode.valueOf(modeStr);
        lastInteractionTime = lastTime;
        
        // ⭐ 重启后检查闭嘴状态是否过期
        if (shutUpTime > 0 && System.currentTimeMillis() < shutUpTime) {
            // 未过期,恢复闭嘴状态
            shutUpEndTime = shutUpTime;
            long remainingMin = (shutUpEndTime - System.currentTimeMillis()) / 60000;
            LogMgr.d("PersonaManager", "Restored shut-up mode, remaining: " + remainingMin + "min");
        } else {
            // 已过期或从未设置,默认开启插嘴
            shutUpEndTime = 0;
            LogMgr.d("PersonaManager", "Eavesdropping enabled by default after reboot");
        }
    }
}
