package com.phicomm.speaker.device.custom.engine;

import com.unisound.vui.engine.ANTEngine;
import com.unisound.vui.util.LogMgr;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

/**
 * 用反射从主引擎里把 USC ASR 登录凭证摸出来
 *
 * 反射链(基于 v2 smali, 字段名 ProGuard 混淆后的单字母):
 *   NativeANTEngine.j  : Lcom/unisound/vui/a;
 *     → vui.a.b        : Lcom/unisound/client/SpeechUnderstander; (extends bg)
 *       → bg.o         : Lcom/unisound/sdk/ao;
 *         → ao.j       : Lcom/unisound/sdk/as;
 *           → as.aZ()  : String appkey
 *           → as.bu()  : String udid
 *
 * 静态字段(公开 public static):
 *   com.unisound.c.a.q : String imei
 *   com.unisound.c.a.a(appkey) : String userId
 */
public final class USCCredentialExtractor {

    private static final String TAG = "USCCredentialExtractor";

    private USCCredentialExtractor() {}

    public static class Credentials {
        public String appkey;
        public String udid;
        public String imei;
        public String userId;
        /** 主引擎内部的 com.unisound.sdk.an 实例,用于反射调用 b/c/d 配置 client */
        public Object anInstance;
        /** 真实 server hostname(不一定是默认 117.121.55.35) */
        public String serverHost;
        /** 真实 server port */
        public int serverPort = -1;
        /** 备用: SDK 内部已 DNS 解析的 IP */
        public String serverIp;

        @Override
        public String toString() {
            return "appkey=" + appkey + " udid=" + udid + " imei=" + imei + " userId=" + userId;
        }

        public boolean isComplete() {
            return notEmpty(appkey) && notEmpty(imei);
        }

        private static boolean notEmpty(String s) {
            return s != null && !s.isEmpty();
        }
    }

    /**
     * 从 ANTEngine 反射出 USC ASR 登录所需的全部凭证
     */
    public static Credentials extract(ANTEngine engine) {
        Credentials c = new Credentials();
        try {
            // 步骤1: NativeANTEngine.j (Lcom/unisound/vui/a;)
            Object vuiA = readField(engine, "j");
            if (vuiA == null) {
                LogMgr.e(TAG, "NativeANTEngine.j is null");
                return c;
            }
            LogMgr.d(TAG, "step1 vui.a = " + vuiA.getClass().getName());

            // 步骤2: vui.a.b (SpeechUnderstander, extends bg)
            Object speechUnderstander = readField(vuiA, "b");
            if (speechUnderstander == null) {
                LogMgr.e(TAG, "vui.a.b is null");
                return c;
            }
            LogMgr.d(TAG, "step2 SpeechUnderstander = " + speechUnderstander.getClass().getName());

            // 步骤3: bg.o (ao) — 从 SpeechUnderstander 的父类 bg 读字段 o
            Object ao = readFieldFromSuper(speechUnderstander, "com.unisound.sdk.bg", "o");
            if (ao == null) {
                LogMgr.e(TAG, "bg.o is null");
                return c;
            }
            LogMgr.d(TAG, "step3 ao = " + ao.getClass().getName());

            // 步骤4: ao.j (as)
            Object as = readField(ao, "j");
            if (as == null) {
                LogMgr.e(TAG, "ao.j is null");
                return c;
            }
            LogMgr.d(TAG, "step4 as = " + as.getClass().getName());

            // 步骤4b: ao.g (an) — 用于反射调用 SDK 内部 b/c/d 配置方法
            try {
                c.anInstance = readField(ao, "g");
                if (c.anInstance != null) {
                    LogMgr.d(TAG, "step4b an = " + c.anInstance.getClass().getName());
                }
            } catch (Throwable e) {
                LogMgr.w(TAG, "ao.g (an) extract failed: " + e);
            }

            // 步骤4c: as.bb() 拿真实的 server config (com.unisound.common.a 实例)
            try {
                Object aInst = invoke(as, "bb"); // returns com.unisound.common.a
                if (aInst != null) {
                    LogMgr.d(TAG, "step4c a = " + aInst.getClass().getName());
                    c.serverHost = (String) invoke(aInst, "b");  // hostname
                    Object portObj = invoke(aInst, "c");          // port
                    if (portObj instanceof Integer) {
                        c.serverPort = (Integer) portObj;
                    }
                    c.serverIp = (String) invoke(aInst, "a");    // resolved IP
                    LogMgr.d(TAG, "step4c host=" + c.serverHost + " port=" + c.serverPort
                            + " ip=" + c.serverIp);
                }
            } catch (Throwable e) {
                LogMgr.w(TAG, "as.bb() server extract failed: " + e);
            }

            // 步骤5: as.aZ() / as.bu()
            c.appkey = (String) invoke(as, "aZ");
            c.udid = (String) invoke(as, "bu");
            LogMgr.d(TAG, "step5 appkey=" + c.appkey + " udid=" + c.udid);

            // 步骤6: 读静态字段 com.unisound.c.a.q (imei)
            try {
                Class<?> cACls = Class.forName("com.unisound.c.a");
                Field qField = cACls.getField("q");
                c.imei = (String) qField.get(null);
                LogMgr.d(TAG, "step6 imei=" + c.imei);

                // 步骤7: 调用 c.a.a(appkey) → userId
                if (c.appkey != null) {
                    Method aMethod = cACls.getDeclaredMethod("a", String.class);
                    aMethod.setAccessible(true);
                    c.userId = (String) aMethod.invoke(null, c.appkey);
                    LogMgr.d(TAG, "step7 userId=" + c.userId);
                }
            } catch (Throwable e) {
                LogMgr.e(TAG, "Failed to read static c.a.q / call c.a.a()", e);
            }

        } catch (Throwable e) {
            LogMgr.e(TAG, "extract failed", e);
        }

        LogMgr.d(TAG, "extracted: " + c);
        return c;
    }

    private static Object readField(Object obj, String name) throws Exception {
        Class<?> cls = obj.getClass();
        while (cls != null) {
            try {
                Field f = cls.getDeclaredField(name);
                f.setAccessible(true);
                return f.get(obj);
            } catch (NoSuchFieldException ignored) {
                cls = cls.getSuperclass();
            }
        }
        throw new NoSuchFieldException(name + " not found in " + obj.getClass());
    }

    private static Object readFieldFromSuper(Object obj, String fqcn, String name) throws Exception {
        Class<?> cls = obj.getClass();
        while (cls != null) {
            if (cls.getName().equals(fqcn)) {
                Field f = cls.getDeclaredField(name);
                f.setAccessible(true);
                return f.get(obj);
            }
            cls = cls.getSuperclass();
        }
        throw new NoSuchFieldException("class " + fqcn + " not in hierarchy of " + obj.getClass());
    }

    private static Object invoke(Object obj, String methodName) throws Exception {
        Class<?> cls = obj.getClass();
        while (cls != null) {
            try {
                Method m = cls.getDeclaredMethod(methodName);
                m.setAccessible(true);
                return m.invoke(obj);
            } catch (NoSuchMethodException ignored) {
                cls = cls.getSuperclass();
            }
        }
        throw new NoSuchMethodException(methodName);
    }
}
