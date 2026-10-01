package com.phicomm.speaker.device.custom.music;

import com.unisound.vui.util.LogMgr;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 歌曲宝 (gequbao.com) 音乐 API 客户端
 *
 * Android 5.1 兼容版本，使用 HttpURLConnection，不依赖 Gson / java.util.Base64。
 *
 * 2026-10 重写：对齐 karaoke 项目里已验证可用的新版协议（sources.py / gequbao）。
 * 旧版之所以全线失败，是 gequbao 把取直链的接口换掉了：
 *   旧: POST /api/play-url          传 JSON {"id": play_id}
 *   新: POST /member/common-play-url 传表单，且必须带 purpose=play + X-Requested-With
 * 另外新版返回体以 code 判定成功（code==1），code==2 表示要人机验证。
 *
 * API 流程:
 * 1. GET /s/{keyword}                  -> HTML，解析歌曲 ID
 * 2. GET /music/{id}                   -> HTML，提取 play_id
 * 3. POST /member/common-play-url      -> JSON，取真实播放直链（酷我 CDN）
 */
public class NetEaseMusicClient {
    private static final String TAG = "MusicClient";

    // 默认 API 地址
    private static final String BASE_URL = "https://www.gequbao.com";

    // API 端点
    private static final String SEARCH_PATH = "/s/";
    private static final String MUSIC_PATH = "/music/";
    /** 新版取直链接口（旧版 /api/play-url 已失效） */
    private static final String PLAY_URL_PATH = "/member/common-play-url";

    // 超时设置（Android 5.1 兼容）
    private static final int CONNECT_TIMEOUT = 8000;
    private static final int READ_TIMEOUT = 15000;

    // 网络抖动重试：酷我直链偶发失败，单次失败整首歌就播不了，必须重试
    private static final int MAX_RETRY = 3;

    // 直链缓存 30 分钟（酷我签名有时效，但不能每次都重新解链）
    private static final long URL_CACHE_TTL_MS = 30 * 60 * 1000L;

    // 取直链时最多尝试几首候选（部分歌要人机验证，得跳到下一首）
    private static final int MAX_CANDIDATES = 5;

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

    // 返回体里的 code 字段：1=成功，2=需要人机验证
    private static final Pattern CODE_PATTERN = Pattern.compile("\"code\"\\s*:\\s*(-?\\d+)");

    private static final String UA =
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36";

    private String baseUrl;

    // songId -> (过期时间戳, 直链)
    private final Map<String, CacheEntry> urlCache = new HashMap<String, CacheEntry>();

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
        List<MusicSearchResult> results = new ArrayList<MusicSearchResult>();

        try {
            String urlStr = baseUrl + SEARCH_PATH + URLEncoder.encode(keyword, "UTF-8");
            LogMgr.d(TAG, "search url: " + urlStr);

            String html = httpGet(urlStr);
            if (html == null || html.isEmpty()) {
                LogMgr.e(TAG, "search failed: empty response");
                return results;
            }

            Matcher matcher = MUSIC_LINK_PATTERN.matcher(html);
            // 同一首歌在页面里连排占两个链接（id 两两相邻重复），不去重会占两行
            List<String> seenIds = new ArrayList<String>();
            while (matcher.find()) {
                String id = matcher.group(1);
                String title = matcher.group(2);
                if (seenIds.contains(id)) {
                    continue;
                }
                seenIds.add(id);

                MusicSearchResult item = new MusicSearchResult();
                item.id = id;

                // 标题来自 HTML，实测出现过 "M&amp;Y" 这种未解码实体
                title = htmlUnescape(title);
                // 只按第一个 " - " 切，歌名里本身带 "-" 的情况不能被切碎
                int sep = title.indexOf(" - ");
                if (sep >= 0) {
                    item.name = title.substring(0, sep).trim();
                    item.artist = title.substring(sep + 3).trim();
                } else {
                    item.name = title.trim();
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
        PlayUrlResult r = resolvePlayUrl(songId);
        return (r != null) ? r.url : null;
    }

    /**
     * 取直链，带状态（区分「失败」和「要人机验证」）。
     * 音箱没有屏幕，没法让人输验证码，所以遇到 code==2 要跳到下一首候选。
     */
    public PlayUrlResult resolvePlayUrl(String songId) {
        // 命中缓存直接返回
        synchronized (urlCache) {
            CacheEntry hit = urlCache.get(songId);
            if (hit != null && hit.expireAt > System.currentTimeMillis()) {
                LogMgr.d(TAG, "play url cache hit: " + songId);
                PlayUrlResult cached = new PlayUrlResult();
                cached.url = hit.url;
                cached.captchaRequired = false;
                return cached;
            }
        }

        try {
            // 第1步：访问 /music/{id} 页面获取 play_id
            String musicUrl = baseUrl + MUSIC_PATH + songId;
            LogMgr.d(TAG, "getPlayUrl music page: " + musicUrl);

            String musicHtml = httpGet(musicUrl);
            if (musicHtml == null || musicHtml.isEmpty()) {
                LogMgr.e(TAG, "getPlayUrl failed: empty music page");
                return null;
            }

            Matcher playIdMatcher = PLAY_ID_PATTERN.matcher(musicHtml);
            if (!playIdMatcher.find()) {
                LogMgr.e(TAG, "getPlayUrl failed: no play_id found");
                return null;
            }
            String playId = playIdMatcher.group(1);
            LogMgr.d(TAG, "play_id: " + playId);

            // 第2步：POST /member/common-play-url 取直链
            // 接口改版频繁，按时间倒序试规则：新规则优先，旧规则兜底。
            // 规则1（2026-09-14 起必填）：id + purpose=play
            // 规则2（旧）：只要 id
            String[][] rules = new String[][]{
                new String[]{"purpose", "play"},
                new String[0]
            };

            String apiUrl = baseUrl + PLAY_URL_PATH;
            for (String[] rule : rules) {
                StringBuilder form = new StringBuilder();
                form.append("id=").append(urlEncode(playId));
                for (int i = 0; i + 1 < rule.length; i += 2) {
                    form.append("&").append(urlEncode(rule[i]))
                        .append("=").append(urlEncode(rule[i + 1]));
                }

                // 4xx 是「请求体形状不对」，重试没意义，所以每条规则只打一次
                String json = httpPostForm(apiUrl, form.toString(), musicUrl, 1);
                if (json == null || json.isEmpty()) {
                    LogMgr.d(TAG, "play-url rule failed (empty), next rule");
                    continue;
                }

                Matcher codeMatcher = CODE_PATTERN.matcher(json);
                if (!codeMatcher.find()) {
                    LogMgr.e(TAG, "play-url: no code in response: " + json);
                    continue;
                }
                int code = Integer.parseInt(codeMatcher.group(1));

                if (code == 2) {
                    // 多为版权敏感的歌曲，强制人机验证。音箱无屏，交给上层换一首
                    LogMgr.d(TAG, "play-url: captcha required for " + songId);
                    PlayUrlResult cr = new PlayUrlResult();
                    cr.url = null;
                    cr.captchaRequired = true;
                    return cr;
                }
                if (code != 1) {
                    LogMgr.d(TAG, "play-url: code=" + code + ", next rule");
                    continue;
                }

                String playUrl = extractJsonUrl(json);
                if (playUrl == null) {
                    LogMgr.e(TAG, "play-url: code=1 but no url");
                    continue;
                }

                synchronized (urlCache) {
                    urlCache.put(songId,
                        new CacheEntry(playUrl, System.currentTimeMillis() + URL_CACHE_TTL_MS));
                }

                PlayUrlResult ok = new PlayUrlResult();
                ok.url = playUrl;
                ok.captchaRequired = false;
                return ok;
            }

            LogMgr.e(TAG, "getPlayUrl failed: all rules exhausted");
            return null;

        } catch (Exception e) {
            LogMgr.e(TAG, "getPlayUrl error: " + e);
            return null;
        }
    }

    /**
     * 搜索并获取第一首「能播」的歌曲。
     *
     * 老实现只试第一首，第一首要是撞上人机验证就直接播不了。
     * 这里按顺序试前 MAX_CANDIDATES 首，跳过要验证码的，取第一个拿到直链的。
     *
     * @param keyword 搜索关键词
     * @return 包含 (歌曲名, 歌手, 播放URL) 的结果，失败返回 null
     */
    public MusicPlayResult searchAndGetFirst(String keyword) {
        List<MusicSearchResult> results = search(keyword);
        if (results == null || results.isEmpty()) {
            LogMgr.e(TAG, "searchAndGetFirst: no results");
            return null;
        }

        int limit = Math.min(MAX_CANDIDATES, results.size());
        for (int i = 0; i < limit; i++) {
            MusicSearchResult candidate = results.get(i);
            PlayUrlResult pr = resolvePlayUrl(candidate.id);

            if (pr == null) {
                LogMgr.d(TAG, "searchAndGetFirst: resolve failed for " + candidate.name);
                continue;
            }
            if (pr.captchaRequired || pr.url == null) {
                LogMgr.d(TAG, "searchAndGetFirst: captcha needed, try next: " + candidate.name);
                continue;
            }

            MusicPlayResult result = new MusicPlayResult();
            result.name = candidate.name;
            result.artist = candidate.artist;
            result.album = candidate.album;
            result.playUrl = pr.url;
            result.duration = candidate.duration;
            result.picUrl = candidate.picUrl;
            LogMgr.d(TAG, "searchAndGetFirst ok: " + result.name + " - " + result.artist);
            return result;
        }

        LogMgr.e(TAG, "searchAndGetFirst: no playable candidate");
        return null;
    }

    /**
     * 从返回体里抠 "url":"..."，并还原转义。
     */
    private String extractJsonUrl(String json) {
        int urlStart = json.indexOf("\"url\":\"");
        if (urlStart == -1) {
            return null;
        }
        urlStart += 7; // 跳过 "url":"
        int urlEnd = json.indexOf("\"", urlStart);
        if (urlEnd == -1) {
            return null;
        }
        String playUrl = json.substring(urlStart, urlEnd);
        // JSON 中 URL 可能包含转义字符：\u0026 -> &, \/ -> /, \u003d -> =
        playUrl = playUrl.replace("\\/", "/").replace("\\u0026", "&").replace("\\u003d", "=");
        // 设备端（Android 5.1）信任库老旧，直链 https 可能验不过证书，降级为 http。
        // 酷我 CDN 两种都放行，实测 http 同样返回 206。
        if (playUrl.startsWith("https://")) {
            playUrl = "http://" + playUrl.substring(8);
        }
        LogMgr.d(TAG, "playUrl: " + playUrl);
        return playUrl;
    }

    private String urlEncode(String s) {
        try {
            return URLEncoder.encode(s, "UTF-8");
        } catch (Exception e) {
            return s;
        }
    }

    /**
     * 最小 HTML 实体解码（Android 5.1 上不用 Apache 的 StringEscapeUtils）
     */
    private String htmlUnescape(String s) {
        if (s == null) return "";
        return s.replace("&amp;", "&")
                .replace("&lt;", "<")
                .replace("&gt;", ">")
                .replace("&quot;", "\"")
                .replace("&#39;", "'")
                .replace("&nbsp;", " ");
    }

    /** HTTP GET，带退避重试。 */
    private String httpGet(String urlStr) {
        return httpGet(urlStr, MAX_RETRY);
    }

    private String httpGet(String urlStr, int retries) {
        for (int attempt = 0; attempt < retries; attempt++) {
            String r = httpGetOnce(urlStr);
            if (r != null) {
                return r;
            }
            if (attempt < retries - 1) {
                sleepQuietly(600L * (attempt + 1));
            }
        }
        LogMgr.d(TAG, "httpGet exhausted: " + urlStr);
        return null;
    }

    private String httpGetOnce(String urlStr) {
        HttpURLConnection conn = null;
        BufferedReader reader = null;

        try {
            URL url = new URL(urlStr);
            conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("User-Agent", UA);
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
            closeQuietly(reader);
            if (conn != null) {
                try {
                    conn.disconnect();
                } catch (Exception ignored) {}
            }
        }
    }

    /**
     * HTTP POST 表单请求。
     * gequbao 前端用 jQuery $.ajax 发表单（不是 JSON），
     * 且缺 X-Requested-With 会被直接拒掉 —— 这是旧版失败的另一个原因。
     */
    private String httpPostForm(String urlStr, String formBody, String referer, int retries) {
        for (int attempt = 0; attempt < retries; attempt++) {
            String r = httpPostFormOnce(urlStr, formBody, referer);
            if (r != null) {
                return r;
            }
            if (attempt < retries - 1) {
                sleepQuietly(600L * (attempt + 1));
            }
        }
        return null;
    }

    private String httpPostFormOnce(String urlStr, String formBody, String referer) {
        HttpURLConnection conn = null;
        BufferedReader reader = null;
        OutputStream os = null;

        try {
            URL url = new URL(urlStr);
            conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("POST");
            conn.setRequestProperty("User-Agent", UA);
            conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
            conn.setRequestProperty("X-Requested-With", "XMLHttpRequest");
            conn.setRequestProperty("Accept", "application/json, text/javascript, */*; q=0.01");
            if (referer != null) {
                conn.setRequestProperty("Referer", referer);
            }
            conn.setConnectTimeout(CONNECT_TIMEOUT);
            conn.setReadTimeout(READ_TIMEOUT);
            conn.setDoInput(true);
            conn.setDoOutput(true);

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
            if (os != null) {
                try {
                    os.close();
                } catch (Exception ignored) {}
            }
            closeQuietly(reader);
            if (conn != null) {
                try {
                    conn.disconnect();
                } catch (Exception ignored) {}
            }
        }
    }

    private void sleepQuietly(long ms) {
        try {
            Thread.sleep(ms);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }

    private void closeQuietly(BufferedReader reader) {
        if (reader != null) {
            try {
                reader.close();
            } catch (Exception ignored) {}
        }
    }

    // ========== 内部类 ==========

    /** 直链缓存项 */
    private static class CacheEntry {
        final String url;
        final long expireAt;

        CacheEntry(String url, long expireAt) {
            this.url = url;
            this.expireAt = expireAt;
        }
    }

    /** 取直链的结果（带状态） */
    public static class PlayUrlResult {
        /** 播放直链，失败时为 null */
        public String url;
        /** true 表示 gequbao 要求人机验证（code==2），音箱端只能换一首 */
        public boolean captchaRequired;
    }

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
