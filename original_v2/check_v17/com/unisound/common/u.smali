.class public Lcom/unisound/common/u;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x7530

    invoke-static {p0, v0}, Lcom/unisound/common/u;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    const/4 v3, 0x0

    const-string v5, ""

    :try_start_3
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_e} :catch_66
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_e} :catch_82
    .catchall {:try_start_3 .. :try_end_e} :catchall_9e

    :try_start_e
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_5d

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_24
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_24} :catch_de
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_24} :catch_c7
    .catchall {:try_start_e .. :try_end_24} :catchall_b6

    move-result-object v4

    :try_start_25
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v6, "utf-8"

    invoke-direct {v1, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_31
    .catch Ljava/net/MalformedURLException; {:try_start_25 .. :try_end_31} :catch_e5
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_31} :catch_ce
    .catchall {:try_start_25 .. :try_end_31} :catchall_bc

    :try_start_31
    const-string v1, ""
    :try_end_33
    .catch Ljava/net/MalformedURLException; {:try_start_31 .. :try_end_33} :catch_eb
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_33} :catch_d4
    .catchall {:try_start_31 .. :try_end_33} :catchall_c1

    move-object v1, v5

    :goto_34
    :try_start_34
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4a
    .catch Ljava/net/MalformedURLException; {:try_start_34 .. :try_end_4a} :catch_f1
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4a} :catch_d9
    .catchall {:try_start_34 .. :try_end_4a} :catchall_c1

    move-result-object v1

    goto :goto_34

    :cond_4c
    move-object v3, v4

    :goto_4d
    if-eqz v3, :cond_52

    :try_start_4f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_52
    if-eqz v2, :cond_57

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_57
    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_5c} :catch_61

    :cond_5c
    :goto_5c
    return-object v1

    :cond_5d
    :try_start_5d
    const-string v1, "{}"
    :try_end_5f
    .catch Ljava/net/MalformedURLException; {:try_start_5d .. :try_end_5f} :catch_de
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_5f} :catch_c7
    .catchall {:try_start_5d .. :try_end_5f} :catchall_b6

    move-object v2, v3

    goto :goto_4d

    :catch_61
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5c

    :catch_66
    move-exception v0

    move-object v1, v5

    move-object v2, v3

    move-object v4, v3

    :goto_6a
    :try_start_6a
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_c5

    if-eqz v4, :cond_72

    :try_start_6f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_72
    if-eqz v2, :cond_77

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_77
    if-eqz v3, :cond_5c

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_7c} :catch_7d

    goto :goto_5c

    :catch_7d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5c

    :catch_82
    move-exception v0

    move-object v1, v5

    move-object v2, v3

    move-object v4, v3

    :goto_86
    :try_start_86
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_c5

    if-eqz v4, :cond_8e

    :try_start_8b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_8e
    if-eqz v2, :cond_93

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_93
    if-eqz v3, :cond_5c

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_98} :catch_99

    goto :goto_5c

    :catch_99
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5c

    :catchall_9e
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_a1
    if-eqz v4, :cond_a6

    :try_start_a3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_a6
    if-eqz v2, :cond_ab

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_ab
    if-eqz v3, :cond_b0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_b0} :catch_b1

    :cond_b0
    :goto_b0
    throw v0

    :catch_b1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b0

    :catchall_b6
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v3, v0

    move-object v0, v1

    goto :goto_a1

    :catchall_bc
    move-exception v1

    move-object v2, v3

    move-object v3, v0

    move-object v0, v1

    goto :goto_a1

    :catchall_c1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_a1

    :catchall_c5
    move-exception v0

    goto :goto_a1

    :catch_c7
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_86

    :catch_ce
    move-exception v1

    move-object v2, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_86

    :catch_d4
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_86

    :catch_d9
    move-exception v3

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_86

    :catch_de
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_6a

    :catch_e5
    move-exception v1

    move-object v2, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_6a

    :catch_eb
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_6a

    :catch_f1
    move-exception v3

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto/16 :goto_6a
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/unisound/common/u;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x7530

    invoke-static {p0, p1, v0}, Lcom/unisound/common/u;->a(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;[BI)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    const-string v2, ""

    :try_start_3
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_72
    .catchall {:try_start_3 .. :try_end_e} :catchall_7e

    :try_start_e
    const-string v1, "Accept-Charset"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_6f

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-direct {v1, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v1, ""

    move-object v1, v2

    :goto_4d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4d

    :cond_65
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_68} :catch_8a
    .catchall {:try_start_e .. :try_end_68} :catchall_85

    :goto_68
    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    :cond_6e
    :goto_6e
    return-object v0

    :cond_6f
    :try_start_6f
    const-string v1, "{}"
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_71} :catch_8a
    .catchall {:try_start_6f .. :try_end_71} :catchall_85

    goto :goto_68

    :catch_72
    move-exception v0

    :goto_73
    :try_start_73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Error"
    :try_end_78
    .catchall {:try_start_73 .. :try_end_78} :catchall_7e

    if-eqz v1, :cond_6e

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_6e

    :catchall_7e
    move-exception v0

    :goto_7f
    if-eqz v1, :cond_84

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_84
    throw v0

    :catchall_85
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_7f

    :catch_8a
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_73

    :cond_8f
    move-object v0, v1

    goto :goto_6e
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x7530

    invoke-static {p0, v0, v1}, Lcom/unisound/common/u;->b(Ljava/lang/String;[BI)I

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;[BI)I
    .registers 8

    const/4 v2, 0x0

    const/4 v1, -0x1

    :try_start_2
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_41
    .catchall {:try_start_2 .. :try_end_d} :catchall_4c

    :try_start_d
    const-string v2, "Accept-Charset"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_34} :catch_57
    .catchall {:try_start_d .. :try_end_34} :catchall_53

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3a

    const/4 v1, 0x0

    :cond_3a
    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    :goto_40
    return v0

    :catch_41
    move-exception v0

    :goto_42
    :try_start_42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_4c

    if-eqz v2, :cond_5c

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    goto :goto_40

    :catchall_4c
    move-exception v0

    :goto_4d
    if-eqz v2, :cond_52

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_52
    throw v0

    :catchall_53
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4d

    :catch_57
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_42

    :cond_5c
    move v0, v1

    goto :goto_40
.end method
