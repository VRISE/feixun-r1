.class public Lcom/unisound/b/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "Network"

.field public static final b:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final c:Ljava/lang/String; = "cn.yunzhisheng.intent.action.CONNECTIVITY_CHANGE"

.field public static final d:Ljava/lang/String; = "TYPE_NULL_POINT"

.field public static final e:Ljava/lang/String; = "TYPE_UNCONNECT"

.field public static final f:Ljava/lang/String; = "TYPE_WIFI"

.field public static final g:Ljava/lang/String; = "TYPE_GPRS"

.field private static final h:I = 0x0

.field private static final i:I = 0x1

.field private static j:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput v0, Lcom/unisound/b/j;->j:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .registers 6

    const-wide/16 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, d MMM yyyy HH:mm:ss z"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "GMT+8"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    :try_start_1a
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_21} :catch_23

    move-result-wide v0

    :cond_22
    :goto_22
    return-wide v0

    :catch_23
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "getServerTime exception"

    invoke-static {v2}, Lcom/unisound/b/i;->a(Ljava/lang/String;)V

    goto :goto_22
.end method

.method private static a(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v1, ""

    :try_start_2
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    invoke-static {v0}, Lcom/unisound/b/j;->a(I)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_17

    move-result-object v0

    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    const-string v0, "Activate getIp error"

    invoke-static {v0}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_16
.end method

.method public static a()Z
    .registers 1

    sget v0, Lcom/unisound/b/j;->j:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Lcom/unisound/b/j;->j:I

    invoke-static {p0}, Lcom/unisound/b/j;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_21

    sput v0, Lcom/unisound/b/j;->j:I

    :goto_c
    sget v3, Lcom/unisound/b/j;->j:I

    if-eq v2, v3, :cond_1c

    if-eqz p0, :cond_1c

    new-instance v2, Landroid/content/Intent;

    const-string v3, "cn.yunzhisheng.intent.action.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1c
    sget v2, Lcom/unisound/b/j;->j:I

    if-lez v2, :cond_24

    :goto_20
    return v0

    :cond_21
    sput v1, Lcom/unisound/b/j;->j:I

    goto :goto_c

    :cond_24
    move v0, v1

    goto :goto_20
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_5

    move v0, v1

    :goto_4
    return v0

    :cond_5
    :try_start_5
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_16} :catch_1b

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_4

    :catch_1b
    move-exception v0

    const-string v0, "activate isNetworkConnected error"

    invoke-static {v0}, Lcom/unisound/b/i;->d(Ljava/lang/String;)V

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v1, "TYPE_NULL_POINT"

    :try_start_2
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    move-object v0, v1

    :goto_20
    move-object v1, v0

    :cond_21
    :goto_21
    return-object v1

    :pswitch_22
    const-string v0, "TYPE_WIFI"

    goto :goto_20

    :pswitch_25
    const-string v0, "TYPE_GPRS"

    goto :goto_20

    :cond_28
    const-string v1, "TYPE_UNCONNECT"
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_2b

    goto :goto_21

    :catch_2b
    move-exception v0

    const-string v0, "Activate Network judgeCurrentNetTpe error"

    invoke-static {v0}, Lcom/unisound/b/i;->d(Ljava/lang/String;)V

    goto :goto_21

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method
