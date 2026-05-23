package com.phicomm.speaker.device.custom.util;

import com.unisound.vui.util.LogMgr;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * 关键事件持久化日志: 写到 /sdcard/eav_event.log,绕过 logcat ring buffer
 *
 * 设备 logcat 被 D/UNI_4MIC DEBUG 每秒几千行刷屏,EavesdropperASR/Handler 关键链路日志
 * 几秒就被覆盖。这个 file logger 直接写到 sdcard,用 adb pull 能看完整链路。
 */
public final class EventLog {

    private static final String TAG = "EventLog";
    private static final String LOG_FILE = "/sdcard/eav_event.log";
    private static final SimpleDateFormat FMT = new SimpleDateFormat("HH:mm:ss.SSS", Locale.US);
    private static final Object LOCK = new Object();

    private EventLog() {}

    public static void log(String tag, String msg) {
        String line = FMT.format(new Date()) + " [" + tag + "] " + msg + "\n";
        synchronized (LOCK) {
            BufferedWriter w = null;
            try {
                w = new BufferedWriter(new FileWriter(LOG_FILE, true));
                w.write(line);
                w.flush();
            } catch (Throwable t) {
                LogMgr.e(TAG, "write fail: " + t);
            } finally {
                if (w != null) try { w.close(); } catch (Throwable ignored) {}
            }
        }
        // 同时打 logcat 方便实时看
        LogMgr.d(tag, msg);
    }
}
