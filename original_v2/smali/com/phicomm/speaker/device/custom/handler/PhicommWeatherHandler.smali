.class public Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;
.super Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;
.source "PhicommWeatherHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler",
        "<",
        "Lnluparser/scheme/NLU",
        "<",
        "Lnluparser/scheme/WeatherIntent;",
        "Lnluparser/scheme/WeatherResult;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CITY:Ljava/lang/String; = "\u676d\u5dde"

.field private static final TAG:Ljava/lang/String; = "PhicommWeatherHandler"


# instance fields
.field private content:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;-><init>()V

    .line 40
    const-string v0, "session_weather"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;->sessionName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;->fetchWeatherText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;->content:Ljava/lang/String;

    return-object p1
.end method

.method private exit()V
    .registers 2

    .prologue
    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_9

    .line 193
    :goto_5
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;->reset()V

    .line 194
    return-void

    .line 192
    :catch_9
    move-exception v0

    goto :goto_5
.end method

.method private fetchWeatherText(Ljava/lang/String;)Ljava/lang/String;
    .registers 23
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 108
    const/4 v4, 0x0

    .line 109
    .local v4, "conn":Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 114
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    const-string v19, " "

    const-string v20, "+"

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, "encodedCity":Ljava/lang/String;
    const-string v6, "wttr.in"

    .line 116
    .local v6, "host":Ljava/lang/String;
    const/16 v10, 0x50

    .line 117
    .local v10, "port":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "?format=%l:+%C+%t&lang=zh"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 119
    .local v9, "path":Ljava/lang/String;
    const-string v18, "PhicommWeatherHandler"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "fetch: http://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v6, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 123
    .local v2, "addr":Ljava/net/InetSocketAddress;
    new-instance v15, Ljava/net/Socket;

    invoke-direct {v15}, Ljava/net/Socket;-><init>()V

    .line 124
    .local v15, "socket":Ljava/net/Socket;
    const/16 v18, 0xfa0

    move/from16 v0, v18

    invoke-virtual {v15, v2, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 126
    invoke-virtual {v15}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 127
    .local v8, "out":Ljava/io/OutputStream;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "GET "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " HTTP/1.1\r\nHost: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\r\nUser-Agent: curl/7.64.1\r\nAccept: */*\r\nConnection: close\r\n\r\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 133
    .local v13, "request":Ljava/lang/String;
    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/OutputStream;->write([B)V

    .line 134
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 136
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    .line 137
    invoke-virtual {v15}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    const-string v20, "UTF-8"

    invoke-direct/range {v18 .. v20}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 141
    .local v12, "reader":Ljava/io/BufferedReader;
    :cond_ab
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_b7

    .line 142
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_ab

    .line 146
    :cond_b7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v14, "sb":Ljava/lang/StringBuilder;
    :goto_bc
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_111

    .line 148
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_cb
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_cb} :catch_cc
    .catchall {:try_start_2 .. :try_end_cb} :catchall_13d

    goto :goto_bc

    .line 157
    .end local v2    # "addr":Ljava/net/InetSocketAddress;
    .end local v5    # "encodedCity":Ljava/lang/String;
    .end local v6    # "host":Ljava/lang/String;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "out":Ljava/io/OutputStream;
    .end local v9    # "path":Ljava/lang/String;
    .end local v10    # "port":I
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .end local v13    # "request":Ljava/lang/String;
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .end local v15    # "socket":Ljava/net/Socket;
    :catch_cc
    move-exception v17

    .line 158
    .local v17, "t":Ljava/lang/Throwable;
    :try_start_cd
    const-string v18, "PhicommWeatherHandler"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "fetchWeatherText failed: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "\u62b1\u6b49,\u83b7\u53d6"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\u5929\u6c14\u65f6\u51fa\u9519\u4e86"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_105
    .catchall {:try_start_cd .. :try_end_105} :catchall_13d

    move-result-object v16

    .line 161
    if-eqz v3, :cond_10b

    :try_start_108
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_10b
    .catch Ljava/lang/Throwable; {:try_start_108 .. :try_end_10b} :catch_14b

    .line 162
    :cond_10b
    :goto_10b
    if-eqz v4, :cond_110

    :try_start_10d
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_110
    .catch Ljava/lang/Throwable; {:try_start_10d .. :try_end_110} :catch_14d

    .line 159
    .end local v17    # "t":Ljava/lang/Throwable;
    :cond_110
    :goto_110
    return-object v16

    .line 151
    .restart local v2    # "addr":Ljava/net/InetSocketAddress;
    .restart local v5    # "encodedCity":Ljava/lang/String;
    .restart local v6    # "host":Ljava/lang/String;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "out":Ljava/io/OutputStream;
    .restart local v9    # "path":Ljava/lang/String;
    .restart local v10    # "port":I
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "request":Ljava/lang/String;
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    .restart local v15    # "socket":Ljava/net/Socket;
    :cond_111
    :try_start_111
    invoke-virtual {v15}, Ljava/net/Socket;->close()V

    .line 153
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 155
    .local v11, "raw":Ljava/lang/String;
    const-string v18, "+"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "\u00b0C"

    const-string v20, "\u6444\u6c0f\u5ea6"

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_12f
    .catch Ljava/lang/Throwable; {:try_start_111 .. :try_end_12f} :catch_cc
    .catchall {:try_start_111 .. :try_end_12f} :catchall_13d

    move-result-object v16

    .line 161
    .local v16, "spoken":Ljava/lang/String;
    if-eqz v3, :cond_135

    :try_start_132
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_135
    .catch Ljava/lang/Throwable; {:try_start_132 .. :try_end_135} :catch_149

    .line 162
    :cond_135
    :goto_135
    if-eqz v4, :cond_110

    :try_start_137
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13a
    .catch Ljava/lang/Throwable; {:try_start_137 .. :try_end_13a} :catch_13b

    goto :goto_110

    :catch_13b
    move-exception v18

    goto :goto_110

    .line 161
    .end local v2    # "addr":Ljava/net/InetSocketAddress;
    .end local v5    # "encodedCity":Ljava/lang/String;
    .end local v6    # "host":Ljava/lang/String;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "out":Ljava/io/OutputStream;
    .end local v9    # "path":Ljava/lang/String;
    .end local v10    # "port":I
    .end local v11    # "raw":Ljava/lang/String;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .end local v13    # "request":Ljava/lang/String;
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .end local v15    # "socket":Ljava/net/Socket;
    .end local v16    # "spoken":Ljava/lang/String;
    :catchall_13d
    move-exception v18

    if-eqz v3, :cond_143

    :try_start_140
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_143
    .catch Ljava/lang/Throwable; {:try_start_140 .. :try_end_143} :catch_14f

    .line 162
    :cond_143
    :goto_143
    if-eqz v4, :cond_148

    :try_start_145
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_148
    .catch Ljava/lang/Throwable; {:try_start_145 .. :try_end_148} :catch_151

    .line 163
    :cond_148
    :goto_148
    throw v18

    .line 161
    .restart local v2    # "addr":Ljava/net/InetSocketAddress;
    .restart local v5    # "encodedCity":Ljava/lang/String;
    .restart local v6    # "host":Ljava/lang/String;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "out":Ljava/io/OutputStream;
    .restart local v9    # "path":Ljava/lang/String;
    .restart local v10    # "port":I
    .restart local v11    # "raw":Ljava/lang/String;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "request":Ljava/lang/String;
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    .restart local v15    # "socket":Ljava/net/Socket;
    .restart local v16    # "spoken":Ljava/lang/String;
    :catch_149
    move-exception v18

    goto :goto_135

    .end local v2    # "addr":Ljava/net/InetSocketAddress;
    .end local v5    # "encodedCity":Ljava/lang/String;
    .end local v6    # "host":Ljava/lang/String;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "out":Ljava/io/OutputStream;
    .end local v9    # "path":Ljava/lang/String;
    .end local v10    # "port":I
    .end local v11    # "raw":Ljava/lang/String;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .end local v13    # "request":Ljava/lang/String;
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .end local v15    # "socket":Ljava/net/Socket;
    .end local v16    # "spoken":Ljava/lang/String;
    .restart local v17    # "t":Ljava/lang/Throwable;
    :catch_14b
    move-exception v18

    goto :goto_10b

    .line 162
    :catch_14d
    move-exception v18

    goto :goto_110

    .line 161
    .end local v17    # "t":Ljava/lang/Throwable;
    :catch_14f
    move-exception v19

    goto :goto_143

    .line 162
    :catch_151
    move-exception v19

    goto :goto_148
.end method


# virtual methods
.method public bridge synthetic acceptInboundEvent0(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;->acceptInboundEvent0(Lnluparser/scheme/NLU;)Z

    move-result v0

    return v0
.end method

.method public acceptInboundEvent0(Lnluparser/scheme/NLU;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/WeatherIntent;",
            "Lnluparser/scheme/WeatherResult;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "evt":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/WeatherIntent;Lnluparser/scheme/WeatherResult;>;"
    if-eqz p1, :cond_10

    const-string v0, "cn.yunzhisheng.weather"

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .registers 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "interruptType"    # Ljava/lang/String;

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;->eventReceived:Z

    if-eqz v0, :cond_16

    .line 178
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    .line 179
    const-string v0, "doOneShotInterrupt"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 180
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    .line 182
    :cond_13
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;->reset()V

    .line 184
    :cond_16
    return-void
.end method

.method public bridge synthetic eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;->eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method public eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 12
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/WeatherIntent;",
            "Lnluparser/scheme/WeatherResult;",
            ">;",
            "Lcom/unisound/vui/engine/ANTHandlerContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "evt":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/WeatherIntent;Lnluparser/scheme/WeatherResult;>;"
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 66
    const-string v1, "\u676d\u5dde"

    .line 68
    .local v1, "city":Ljava/lang/String;
    :try_start_5
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v6

    if-eqz v6, :cond_2f

    .line 69
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v6

    invoke-virtual {v6}, Lnluparser/scheme/Data;->getResult()Lnluparser/scheme/Result;

    move-result-object v3

    .line 70
    .local v3, "raw":Lnluparser/scheme/Result;
    instance-of v6, v3, Lnluparser/scheme/WeatherResult;

    if-eqz v6, :cond_2f

    .line 71
    move-object v0, v3

    check-cast v0, Lnluparser/scheme/WeatherResult;

    move-object v4, v0

    .line 72
    .local v4, "result":Lnluparser/scheme/WeatherResult;
    invoke-virtual {v4}, Lnluparser/scheme/WeatherResult;->getCityName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2f

    invoke-virtual {v4}, Lnluparser/scheme/WeatherResult;->getCityName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2f

    .line 73
    invoke-virtual {v4}, Lnluparser/scheme/WeatherResult;->getCityName()Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_2e} :catch_51

    move-result-object v1

    .line 81
    .end local v3    # "raw":Lnluparser/scheme/Result;
    .end local v4    # "result":Lnluparser/scheme/WeatherResult;
    :cond_2f
    :goto_2f
    move-object v2, v1

    .line 82
    .local v2, "finalCity":Ljava/lang/String;
    const-string v6, "PhicommWeatherHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "intercept WEATHER, city="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v6, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler$1;

    invoke-direct {v6, p0, v2, p2, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler$1;-><init>(Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;Ljava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    invoke-static {v6}, Lcom/unisound/vui/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 101
    return-void

    .line 77
    .end local v2    # "finalCity":Ljava/lang/String;
    :catch_51
    move-exception v5

    .line 78
    .local v5, "t":Ljava/lang/Throwable;
    const-string v6, "PhicommWeatherHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parse city failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f
.end method

.method public initPriority()V
    .registers 2

    .prologue
    .line 46
    const/16 v0, 0x136

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;->setPriority(I)V

    .line 47
    return-void
.end method

.method public onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 57
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method public onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;->eventReceived:Z

    if-nez v0, :cond_9

    .line 169
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    .line 172
    :goto_8
    return v0

    .line 171
    :cond_9
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;->exit()V

    .line 172
    const/4 v0, 0x1

    goto :goto_8
.end method
