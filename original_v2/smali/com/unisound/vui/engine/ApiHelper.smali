.class public Lcom/unisound/vui/engine/ApiHelper;
.super Ljava/lang/Object;
.source "ApiHelper.java"


# static fields
.field private static final MUSIC_API:Ljava/lang/String; = "http://192.168.5.10:3003"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callMusicApi(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "\u597d\u7684\uff0c\u5df2\u4e3a\u60a8\u64ad\u653e"

    const-string v1, "music title: "

    const-string v2, "music response: "

    const-string v3, "music url: "

    const-string v4, "http://192.168.5.10:3003/search?keyword="

    .line 171
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "callMusicApi called: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unisound/vui/engine/ApiHelper;->writeLog(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 173
    :try_start_1d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "UTF-8"

    invoke-static {p0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unisound/vui/engine/ApiHelper;->writeLog(Ljava/lang/String;)V

    .line 175
    invoke-static {p0}, Lcom/unisound/vui/engine/ApiHelper;->httpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unisound/vui/engine/ApiHelper;->writeLog(Ljava/lang/String;)V

    .line 177
    const-string v2, "title"

    invoke-static {p0, v2}, Lcom/unisound/vui/engine/ApiHelper;->extractJsonValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/vui/engine/ApiHelper;->writeLog(Ljava/lang/String;)V

    if-eqz p0, :cond_7a

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_79} :catch_7b

    return-object p0

    :cond_7a
    return-object v5

    :catch_7b
    move-exception p0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callMusicApi error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/engine/ApiHelper;->writeLog(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v5
.end method

.method public static callWeatherApi(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "Baidu success! Length: "

    const-string v1, "Is daemon: "

    const-string v2, "Thread ID: "

    const-string v3, "Thread name: "

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "callWeatherApi called: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/unisound/vui/engine/ApiHelper;->writeLog(Ljava/lang/String;)V

    .line 31
    :try_start_1a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unisound/vui/engine/ApiHelper;->writeLog(Ljava/lang/String;)V

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unisound/vui/engine/ApiHelper;->writeLog(Ljava/lang/String;)V

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->isDaemon()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/unisound/vui/engine/ApiHelper;->writeLog(Ljava/lang/String;)V

    .line 37
    const-string p0, "https://www.baidu.com/"

    .line 38
    const-string v1, "Testing baidu: https://www.baidu.com/"

    invoke-static {v1}, Lcom/unisound/vui/engine/ApiHelper;->writeLog(Ljava/lang/String;)V

    .line 40
    invoke-static {p0}, Lcom/unisound/vui/engine/ApiHelper;->httpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7c

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/unisound/vui/engine/ApiHelper;->writeLog(Ljava/lang/String;)V

    goto :goto_81

    .line 45
    :cond_7c
    const-string p0, "Baidu returned null"

    invoke-static {p0}, Lcom/unisound/vui/engine/ApiHelper;->writeLog(Ljava/lang/String;)V

    .line 49
    :goto_81
    const-string p0, "/sdcard/weather_cache.txt"

    .line 50
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_fe

    .line 52
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    :goto_9d
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a7

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9d

    .line 59
    :cond_a7
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_fe

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache test OK: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " chars"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/engine/ApiHelper;->writeLog(Ljava/lang/String;)V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_d4} :catch_d5

    return-object p0

    :catch_d5
    move-exception p0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/unisound/vui/engine/ApiHelper;->writeLog(Ljava/lang/String;)V

    :cond_fe
    const/4 p0, 0x0

    return-object p0
.end method

.method private static extractCityFromNLU(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 121
    const-string v0, "cityName"

    invoke-static {p0, v0}, Lcom/unisound/vui/engine/ApiHelper;->extractJsonValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 123
    :cond_9
    const-string v0, "city"

    invoke-static {p0, v0}, Lcom/unisound/vui/engine/ApiHelper;->extractJsonValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static extractCityName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 271
    const-string v0, "\u5929\u6c14"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_30

    const/4 v2, 0x0

    .line 273
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    .line 274
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 275
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 276
    const-string v0, "(\u4eca\u5929|\u660e\u5929|\u540e\u5929|\u7684|\u60c5\u51b5|\u662f)"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 277
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    return-object v1

    :cond_2f
    return-object p0

    :cond_30
    return-object v1
.end method

.method private static extractJsonValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "extractJsonValue key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/engine/ApiHelper;->writeLog(Ljava/lang/String;)V

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\":\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 285
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_30

    return-object v2

    .line 287
    :cond_30
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    .line 288
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_3c

    return-object v2

    .line 290
    :cond_3c
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLocalWeatherData(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 130
    :try_start_0
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/sdcard/weather_cache.txt"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    :goto_18
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 138
    :cond_22
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 140
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_30

    if-nez v0, :cond_47

    return-object p0

    :catch_30
    move-exception p0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getLocalWeatherData error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/unisound/vui/engine/ApiHelper;->writeLog(Ljava/lang/String;)V

    :cond_47
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hookNLUWeather(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 81
    const-string v0, "hookNLUWeather called"

    invoke-static {v0}, Lcom/unisound/vui/engine/ApiHelper;->writeLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_58

    .line 84
    const-string v1, "\"service\":\"cn.yunzhisheng.weather\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_58

    .line 89
    :cond_11
    const-string v1, "hookNLUWeather: weather service detected"

    invoke-static {v1}, Lcom/unisound/vui/engine/ApiHelper;->writeLog(Ljava/lang/String;)V

    .line 92
    invoke-static {p0}, Lcom/unisound/vui/engine/ApiHelper;->extractCityFromNLU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 94
    const-string v1, "\u676d\u5dde"

    .line 96
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hookNLUWeather city: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unisound/vui/engine/ApiHelper;->writeLog(Ljava/lang/String;)V

    .line 104
    invoke-static {v1}, Lcom/unisound/vui/engine/ApiHelper;->getLocalWeatherData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hookNLUWeather text: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unisound/vui/engine/ApiHelper;->writeLog(Ljava/lang/String;)V

    if-nez v1, :cond_4e

    .line 108
    const-string p0, "hookNLUWeather: no cached data, use original"

    invoke-static {p0}, Lcom/unisound/vui/engine/ApiHelper;->writeLog(Ljava/lang/String;)V

    return-object v0

    .line 113
    :cond_4e
    invoke-static {p0, v1}, Lcom/unisound/vui/engine/ApiHelper;->replaceWeatherText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 114
    const-string v0, "hookNLUWeather: modified NLU"

    invoke-static {v0}, Lcom/unisound/vui/engine/ApiHelper;->writeLog(Ljava/lang/String;)V

    return-object p0

    .line 85
    :cond_58
    :goto_58
    const-string p0, "hookNLUWeather: not weather service"

    invoke-static {p0}, Lcom/unisound/vui/engine/ApiHelper;->writeLog(Ljava/lang/String;)V

    return-object v0
.end method

.method private static httpGet(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 191
    new-array v1, v0, [Ljava/lang/String;

    .line 192
    new-array v2, v0, [Ljava/lang/Exception;

    .line 193
    new-array v3, v0, [Z

    .line 195
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/unisound/vui/engine/ApiHelper$1;

    invoke-direct {v5, p0, v1, v2, v3}, Lcom/unisound/vui/engine/ApiHelper$1;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Exception;[Z)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 225
    invoke-virtual {v4, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 226
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :goto_1b
    const/4 p0, 0x0

    .line 230
    aget-boolean v0, v3, p0

    const/4 v7, 0x0

    if-nez v0, :cond_3c

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v5

    const-wide/16 v10, 0x3e8

    cmp-long v0, v8, v10

    if-lez v0, :cond_35

    .line 234
    :try_start_2c
    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_2f

    .line 236
    :catch_2f
    const-string p0, "httpGet timeout"

    invoke-static {p0}, Lcom/unisound/vui/engine/ApiHelper;->writeLog(Ljava/lang/String;)V

    return-object v7

    :cond_35
    const-wide/16 v8, 0x32

    .line 240
    :try_start_37
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_1b

    :catch_3b
    nop

    .line 246
    :cond_3c
    aget-object v0, v2, p0

    if-eqz v0, :cond_59

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "httpGet error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p0, v2, p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/unisound/vui/engine/ApiHelper;->writeLog(Ljava/lang/String;)V

    return-object v7

    .line 251
    :cond_59
    aget-object v0, v1, p0

    if-eqz v0, :cond_7b

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "httpGet success: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v1, p0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/engine/ApiHelper;->writeLog(Ljava/lang/String;)V

    .line 255
    :cond_7b
    aget-object p0, v1, p0

    return-object p0
.end method

.method private static mapCityToEnglish(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 260
    const-string v0, "\u676d\u5dde"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "Hangzhou"

    return-object p0

    .line 261
    :cond_b
    const-string v0, "\u5317\u4eac"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "Beijing"

    return-object p0

    .line 262
    :cond_16
    const-string v0, "\u4e0a\u6d77"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p0, "Shanghai"

    return-object p0

    .line 263
    :cond_21
    const-string v0, "\u5e7f\u5dde"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string p0, "Guangzhou"

    return-object p0

    .line 264
    :cond_2c
    const-string v0, "\u6df1\u5733"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string p0, "Shenzhen"

    :cond_36
    return-object p0
.end method

.method private static replaceWeatherText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 152
    const-string v0, "\"general\":{\"text\":\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    .line 156
    const-string v0, "\"general\": {\"text\": \""

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :cond_f
    const/4 v3, 0x0

    if-ne v1, v2, :cond_13

    return-object v3

    .line 160
    :cond_13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    .line 161
    const-string v0, "\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_21

    return-object v3

    :cond_21
    const/4 v2, 0x0

    .line 164
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static writeLog(Ljava/lang/String;)V
    .registers 5

    const-string v0, "["

    .line 18
    :try_start_2
    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/sdcard/voice_log.txt"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 19
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [ApiHelper] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3d} :catch_3d

    :catch_3d
    return-void
.end method
