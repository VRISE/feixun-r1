package com.phicomm.speaker.device.custom.handler;

import com.unisound.vui.engine.ANTHandlerContext;
import com.unisound.vui.handler.SessionRegister;
import com.unisound.vui.handler.SimpleUserEventInboundHandler;
import com.unisound.vui.util.ExoConstants;
import com.unisound.vui.util.LogMgr;
import com.unisound.vui.util.ThreadUtils;

import nluparser.scheme.NLU;
import nluparser.scheme.Result;
import nluparser.scheme.SName;
import nluparser.scheme.WeatherIntent;
import nluparser.scheme.WeatherResult;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

/**
 * 自定义天气 Handler:
 * - 拦截 service == WEATHER 的 NLU 事件
 * - 在 ANT pipeline 工作线程里再异步调 wttr.in 拿真实天气
 * - 调 ctx.playTTS(text) 主动播报
 *
 * 注册位置:必须在 DefaultWeatherHandler 之前 addLast,优先级数值更高(更高优先级先到)
 * 优先级:DefaultWeatherHandler = 300,我们设 310
 */
public class PhicommWeatherHandler extends SimpleUserEventInboundHandler<NLU<WeatherIntent, WeatherResult>> {
    private static final String TAG = "PhicommWeatherHandler";

    /** 默认城市,当 NLU 没给城市时用 */
    private static final String DEFAULT_CITY = "杭州";

    private String content;

    public PhicommWeatherHandler() {
        this.sessionName = SessionRegister.SESSION_WEATHER;
    }

    @Override
    public void initPriority() {
        // 比 DefaultWeatherHandler(300) 高
        setPriority(310);
    }

    @Override
    public boolean acceptInboundEvent0(NLU<WeatherIntent, WeatherResult> evt) throws Exception {
        return evt != null && SName.WEATHER.equals(evt.getService());
    }

    @Override
    public boolean onASREventEngineInitDone(ANTHandlerContext ctx) {
        this.ctx = ctx;
        return super.onASREventEngineInitDone(ctx);
    }

    @Override
    public void eventReceived(final NLU<WeatherIntent, WeatherResult> evt, final ANTHandlerContext ctx) throws Exception {
        super.eventReceived(evt, ctx);

        // 拿城市:从 result.cityName 取,拿不到就用默认
        // 注意 Data.getResult() 实际返回 Result 基类,这里要强转
        String city = DEFAULT_CITY;
        try {
            if (evt.getData() != null) {
                Result raw = evt.getData().getResult();
                if (raw instanceof WeatherResult) {
                    WeatherResult result = (WeatherResult) raw;
                    if (result.getCityName() != null && !result.getCityName().isEmpty()) {
                        city = result.getCityName();
                    }
                }
            }
        } catch (Throwable t) {
            LogMgr.e(TAG, "parse city failed: " + t);
        }

        final String finalCity = city;
        LogMgr.d(TAG, "intercept WEATHER, city=" + finalCity);

        // 异步调 HTTP — pipeline 工作线程不能直接卡,放线程池
        ThreadUtils.execute(new Runnable() {
            @Override
            public void run() {
                String text = fetchWeatherText(finalCity);
                LogMgr.d(TAG, "weather TTS: " + text);
                content = text;
                try {
                    ctx.stopWakeup();
                    ctx.stopASR();
                    ctx.playTTS(text);
                    sendFullLogToDeviceCenter(evt, text);
                } catch (Throwable t) {
                    LogMgr.e(TAG, "playTTS failed: " + t);
                }
            }
        });
    }

    /**
     * 用 wttr.in 拿天气文本
     * 例如:杭州: 多云 +23°C
     */
    private String fetchWeatherText(String city) {
        HttpURLConnection conn = null;
        BufferedReader br = null;
        try {
            // 注意：不能用 URLEncoder.encode()，因为 % 会被编码为 %25
            // 也不能用 URL 类，因为它会自动编码查询字符串中的 % 字符
            // 正确做法：使用 HTTP（端口 80）而不是 HTTPS，绕过 SSL 证书问题
            String encodedCity = city.trim().replace(" ", "+");
            String host = "wttr.in";
            int port = 80;
            String path = "/" + encodedCity + "?format=%l:+%C+%t&lang=zh";
            
            LogMgr.d(TAG, "fetch: http://" + host + path);
            
            // 使用普通 Socket 发送 HTTP 请求
            java.net.InetSocketAddress addr = new java.net.InetSocketAddress(host, port);
            java.net.Socket socket = new java.net.Socket();
            socket.connect(addr, 4000);
            
            java.io.OutputStream out = socket.getOutputStream();
            String request = "GET " + path + " HTTP/1.1\r\n"
                + "Host: " + host + "\r\n"
                + "User-Agent: curl/7.64.1\r\n"
                + "Accept: */*\r\n"
                + "Connection: close\r\n"
                + "\r\n";
            out.write(request.getBytes("UTF-8"));
            out.flush();
            
            java.io.BufferedReader reader = new java.io.BufferedReader(
                new java.io.InputStreamReader(socket.getInputStream(), "UTF-8"));
            
            // 跳过 HTTP 响应头
            String line;
            while ((line = reader.readLine()) != null) {
                if (line.isEmpty()) break; // 空行表示响应头结束
            }
            
            // 读取响应体
            StringBuilder sb = new StringBuilder();
            while ((line = reader.readLine()) != null) {
                sb.append(line).append("\n");
            }
            
            socket.close();
            
            String raw = sb.toString().trim();
            // wttr.in 返回 "杭州: 多云 +23°C" 之类,把 + 号去掉,°C 改成"度"
            String spoken = raw.replace("+", "").replace("°C", "摄氏度");
            return spoken;
        } catch (Throwable t) {
            LogMgr.e(TAG, "fetchWeatherText failed: " + t);
            return "抱歉,获取" + city + "天气时出错了";
        } finally {
            try { if (br != null) br.close(); } catch (Throwable ignored) {}
            if (conn != null) try { conn.disconnect(); } catch (Throwable ignored) {}
        }
    }

    @Override
    public boolean onTTSEventPlayingEnd(ANTHandlerContext ctx) {
        if (!this.eventReceived) {
            return super.onTTSEventPlayingEnd(ctx);
        }
        exit();
        return true;
    }

    @Override
    public void doInterrupt(ANTHandlerContext ctx, String interruptType) {
        if (this.eventReceived) {
            ctx.cancelTTS();
            if (!ExoConstants.DO_ONE_SHOT_INTERRUPT.equals(interruptType)) {
                ctx.enterWakeup(false);
            }
            reset();
        }
    }

    private void exit() {
        try {
            this.ctx.cancelTTS();
            // 注意：不要调用 cancelEngine()，它会取消整个 ANT 引擎导致无法唤醒
            // 只需调用 reset() 清空会话状态即可
            // this.ctx.cancelEngine();  // ❌ 会导致无法再次唤醒
        } catch (Throwable ignored) {}
        reset();
    }
}
