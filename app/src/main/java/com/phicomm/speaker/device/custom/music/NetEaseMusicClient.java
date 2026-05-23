package com.phicomm.speaker.device.custom.music;

import android.util.Log;
import com.unisound.vui.util.LogMgr;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 歌曲宝 (gequbao.com) 音乐 API 客户端
 * 
 * Android 5.1 兼容版本，使用 HttpURLConnection
 * 参考 r1-iot-java-master 的 GequBaoMusicImpl 实现
 * 
 * API 流程:
 * 1. GET /s/{keyword} -> HTML 页面，解析歌曲 ID
 * 2. GET /music/{id} -> HTML 页面，提取 play_id
 * 3. POST /api/play-url -> JSON，获取真实播放 URL
 */
public class NetEaseMusicClient {
    private static final String TAG = "MusicClient";
    
    // 默认 API 地址
    private static final String BASE_URL = "https://www.gequbao.com";
    
    // API 端点
    private static final String SEARCH_PATH = "/s/";
    private static final String MUSIC_PATH = "/music/";
    private static final String PLAY_URL_PATH = "/api/play-url";
    
    // 超时设置（Android 5.1 兼容）
    private static final int CONNECT_TIMEOUT = 8000;
    private static final int READ_TIMEOUT = 15000;
    
    // 正则表达式
    // 匹配歌曲链接: <a href="/music/39466" title="园游会 - 周杰伦">
    private static final Pattern MUSIC_LINK_PATTERN = Pattern.compile(
        "href=\"/music/(\\d+)\"[^>]*title=\"([^\"]+)\""
    );
    
    // 匹配 play_id: 页面HTML中 play_id\u0022:\u0022(base64)\u0022
    // 注意：gequbao.com 页面中字面存储的是 \u0022（6个字符），不是双引号
    // Java字符串中需要4个反斜杠来匹配字面的 \u0022
    private static final Pattern PLAY_ID_PATTERN = Pattern.compile(
        "play_id\\\\u0022:\\\\u0022([A-Za-z0-9+/=]+)\\\\u0022"
    );
    
    private String baseUrl;
    
    public NetEaseMusicClient() {
        this(BASE_URL);
    }
    
    public NetEaseMusicClient(String baseUrl) {
        this.baseUrl = baseUrl.endsWith("/") ? baseUrl.substring(0, baseUrl.length() - 1) : baseUrl;
    }
    
    /**
     * 搜索歌曲（解析 HTML）
     * @param keyword 搜索关键词（歌曲名、歌手名等）
     * @return 歌曲列表
     */
    public List<MusicSearchResult> search(String keyword) {
        List<MusicSearchResult> results = new ArrayList<>();
        
        try {
            String urlStr = baseUrl + SEARCH_PATH + URLEncoder.encode(keyword, "UTF-8");
            LogMgr.d(TAG, "search url: " + urlStr);
            
            String html = httpGet(urlStr);
            if (html == null || html.isEmpty()) {
                LogMgr.e(TAG, "search failed: empty response");
                return results;
            }
            
            // 解析 HTML 提取歌曲列表
            Matcher matcher = MUSIC_LINK_PATTERN.matcher(html);
            while (matcher.find()) {
                String id = matcher.group(1);
                String title = matcher.group(2);
                
                MusicSearchResult item = new MusicSearchResult();
                item.id = id;
                
                // 解析标题："园游会 - 周杰伦" -> name="园游会", artist="周杰伦"
                String[] parts = title.split(" - ");
                if (parts.length > 0) {
                    item.name = parts[0].trim();
                }
                if (parts.length > 1) {
                    item.artist = parts[1].trim();
                } else {
                    item.artist = "";
                }
                
                results.add(item);
                LogMgr.d(TAG, "found: " + item.name + " - " + item.artist + " (id=" + item.id + ")");
                
                // 限制最多返回 10 首
                if (results.size() >= 10) break;
            }
            
        } catch (Exception e) {
            LogMgr.e(TAG, "search error: " + e);
        }
        
        return results;
    }
    
    /**
     * 获取歌曲播放 URL
     * @param songId 歌曲 ID
     * @return 播放 URL，如果获取失败返回 null
     */
    public String getPlayUrl(String songId) {
        try {
            // 第1步：访问 /music/{id} 页面获取 play_id
            String musicUrl = baseUrl + MUSIC_PATH + songId;
            LogMgr.d(TAG, "getPlayUrl music page: " + musicUrl);
            
            String musicHtml = httpGet(musicUrl);
            if (musicHtml == null || musicHtml.isEmpty()) {
                LogMgr.e(TAG, "getPlayUrl failed: empty music page");
                return null;
            }
            
            // 提取 play_id
            Matcher playIdMatcher = PLAY_ID_PATTERN.matcher(musicHtml);
            if (!playIdMatcher.find()) {
                LogMgr.e(TAG, "getPlayUrl failed: no play_id found");
                return null;
            }
            String playId = playIdMatcher.group(1);
            LogMgr.d(TAG, "play_id: " + playId);
            
            // 第2步：POST /api/play-url 获取真实 URL
            // 注意：必须用 JSON 格式，不是表单格式（参考 r1-iot-java-master）
            String apiUrl = baseUrl + PLAY_URL_PATH;
            String jsonBody = "{\"id\":\"" + playId + "\"}";
            LogMgr.d(TAG, "play-url request: " + apiUrl + " body: " + jsonBody);
            
            String json = httpPostJson(apiUrl, jsonBody);
            if (json == null || json.isEmpty()) {
                LogMgr.e(TAG, "getPlayUrl failed: empty API response");
                return null;
            }
            
            // 解析 JSON: {"code":0,"data":{"url":"..."}}
            // Android 5.1 手动解析（不用 Gson）
            int urlStart = json.indexOf("\"url\":\"");
            if (urlStart == -1) {
                LogMgr.e(TAG, "getPlayUrl failed: no url in response");
                return null;
            }
            
            urlStart += 7; // 跳过 "url":"
            int urlEnd = json.indexOf("\"", urlStart);
            if (urlEnd == -1) {
                LogMgr.e(TAG, "getPlayUrl failed: invalid url");
                return null;
            }
            
            String playUrl = json.substring(urlStart, urlEnd);
            // JSON 中 URL 可能包含转义字符：\u0026 -> &, \/ -> /
            playUrl = playUrl.replace("\\/", "/").replace("\\u0026", "&").replace("\\u003d", "=");
            // 设备端 HTTPS 证书不可信，降级为 HTTP
            if (playUrl.startsWith("https://")) {
                playUrl = "http://" + playUrl.substring(8);
            }
            LogMgr.d(TAG, "playUrl: " + playUrl);
            return playUrl;
            
        } catch (Exception e) {
            LogMgr.e(TAG, "getPlayUrl error: " + e);
            return null;
        }
    }
    
    /**
     * 搜索并获取第一首歌的播放 URL
     * @param keyword 搜索关键词
     * @return 包含 (歌曲名, 歌手, 播放URL) 的结果，失败返回 null
     */
    public MusicPlayResult searchAndGetFirst(String keyword) {
        List<MusicSearchResult> results = search(keyword);
        if (results == null || results.isEmpty()) {
            LogMgr.e(TAG, "searchAndGetFirst: no results");
            return null;
        }
        
        MusicSearchResult first = results.get(0);
        String playUrl = getPlayUrl(first.id);
        if (playUrl == null) {
            LogMgr.e(TAG, "searchAndGetFirst: failed to get play url for " + first.name);
            return null;
        }
        
        MusicPlayResult result = new MusicPlayResult();
        result.name = first.name;
        result.artist = first.artist;
        result.album = first.album;
        result.playUrl = playUrl;
        result.duration = first.duration;
        result.picUrl = first.picUrl;
        
        return result;
    }
    
    /**
     * HTTP GET 请求（Android 5.1 兼容）
     */
    private String httpGet(String urlStr) {
        HttpURLConnection conn = null;
        BufferedReader reader = null;
        
        try {
            URL url = new URL(urlStr);
            conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36");
            conn.setRequestProperty("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8");
            conn.setConnectTimeout(CONNECT_TIMEOUT);
            conn.setReadTimeout(READ_TIMEOUT);
            conn.setDoInput(true);
            
            int responseCode = conn.getResponseCode();
            if (responseCode != HttpURLConnection.HTTP_OK) {
                LogMgr.e(TAG, "httpGet failed: " + responseCode);
                return null;
            }
            
            StringBuilder response = new StringBuilder();
            reader = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
            String line;
            while ((line = reader.readLine()) != null) {
                response.append(line);
            }
            
            return response.toString();
            
        } catch (Exception e) {
            LogMgr.e(TAG, "httpGet error: " + e);
            return null;
        } finally {
            try {
                if (reader != null) reader.close();
                if (conn != null) conn.disconnect();
            } catch (Exception ignored) {}
        }
    }
    
    /**
     * HTTP POST JSON 请求（Android 5.1 兼容）
     */
    private String httpPostJson(String urlStr, String jsonBody) {
        HttpURLConnection conn = null;
        BufferedReader reader = null;
        OutputStream os = null;
        
        try {
            URL url = new URL(urlStr);
            conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("POST");
            conn.setRequestProperty("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36");
            conn.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
            conn.setRequestProperty("Accept", "application/json");
            conn.setConnectTimeout(CONNECT_TIMEOUT);
            conn.setReadTimeout(READ_TIMEOUT);
            conn.setDoInput(true);
            conn.setDoOutput(true);
            
            // 写入请求体
            os = conn.getOutputStream();
            os.write(jsonBody.getBytes("UTF-8"));
            os.flush();
            
            int responseCode = conn.getResponseCode();
            if (responseCode != HttpURLConnection.HTTP_OK) {
                LogMgr.e(TAG, "httpPostJson failed: " + responseCode);
                return null;
            }
            
            StringBuilder response = new StringBuilder();
            reader = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
            String line;
            while ((line = reader.readLine()) != null) {
                response.append(line);
            }
            
            return response.toString();
            
        } catch (Exception e) {
            LogMgr.e(TAG, "httpPostJson error: " + e);
            return null;
        } finally {
            try {
                if (os != null) os.close();
                if (reader != null) reader.close();
                if (conn != null) conn.disconnect();
            } catch (Exception ignored) {}
        }
    }
    
    /**
     * HTTP POST 表单请求（application/x-www-form-urlencoded）
     * 用于 gequbao.com 的 /api/play-url 接口
     */
    private String httpPostForm(String urlStr, String formBody) {
        HttpURLConnection conn = null;
        BufferedReader reader = null;
        OutputStream os = null;
        
        try {
            URL url = new URL(urlStr);
            conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("POST");
            conn.setRequestProperty("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36");
            conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            conn.setRequestProperty("Accept", "application/json");
            conn.setConnectTimeout(CONNECT_TIMEOUT);
            conn.setReadTimeout(READ_TIMEOUT);
            conn.setDoInput(true);
            conn.setDoOutput(true);
            
            // 写入请求体
            os = conn.getOutputStream();
            os.write(formBody.getBytes("UTF-8"));
            os.flush();
            
            int responseCode = conn.getResponseCode();
            if (responseCode != HttpURLConnection.HTTP_OK) {
                LogMgr.e(TAG, "httpPostForm failed: " + responseCode);
                return null;
            }
            
            StringBuilder response = new StringBuilder();
            reader = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
            String line;
            while ((line = reader.readLine()) != null) {
                response.append(line);
            }
            
            return response.toString();
            
        } catch (Exception e) {
            LogMgr.e(TAG, "httpPostForm error: " + e);
            return null;
        } finally {
            try {
                if (os != null) os.close();
                if (reader != null) reader.close();
                if (conn != null) conn.disconnect();
            } catch (Exception ignored) {}
        }
    }
    
    // ========== 内部类 ==========
    
    /**
     * 搜索结果（不含播放 URL）
     */
    public static class MusicSearchResult {
        public String id;         // 歌曲 ID（字符串）
        public String name;       // 歌曲名
        public String artist;     // 歌手
        public String album;      // 专辑
        public String picUrl;     // 封面图 URL
        public long duration;     // 秒
        
        @Override
        public String toString() {
            return "MusicSearchResult{id=" + id + ", name='" + name + "', artist='" + artist + "'}";
        }
    }
    
    /**
     * 播放结果（包含所有播放所需信息）
     */
    public static class MusicPlayResult {
        public String name;       // 歌曲名
        public String artist;     // 歌手
        public String album;      // 专辑
        public String playUrl;    // 播放 URL
        public long duration;     // 时长（秒）
        public String picUrl;     // 封面图 URL
        
        @Override
        public String toString() {
            return "MusicPlayResult{name='" + name + "', artist='" + artist + "', url='" + playUrl + "'}";
        }
    }
}
