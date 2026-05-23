.class public final Lcom/tencent/bugly/crashreport/common/info/b;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 919
    sput-object v0, Lcom/tencent/bugly/crashreport/common/info/b;->a:Ljava/lang/String;

    .line 920
    sput-object v0, Lcom/tencent/bugly/crashreport/common/info/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_3

    .line 53
    :goto_2
    return-object v0

    .line 48
    :catch_3
    move-exception v0

    .line 49
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    :cond_d
    const-string v0, "fail"

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    if-nez p0, :cond_5

    .line 116
    :goto_4
    return-object v1

    .line 98
    :cond_5
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 99
    const-string v0, "no READ_PHONE_STATE permission to get IMEI"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_4

    .line 104
    :cond_15
    :try_start_15
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 106
    if-eqz v0, :cond_37

    .line 107
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_22} :catch_2b

    move-result-object v0

    .line 108
    if-eqz v0, :cond_29

    .line 109
    :try_start_25
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_28} :catch_35

    move-result-object v0

    :cond_29
    :goto_29
    move-object v1, v0

    .line 116
    goto :goto_4

    .line 112
    :catch_2b
    move-exception v0

    move-object v0, v1

    .line 114
    :goto_2d
    const-string v1, "Failed to get IMEI."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_29

    .line 112
    :catch_35
    move-exception v1

    goto :goto_2d

    :cond_37
    move-object v0, v1

    goto :goto_29
.end method

.method public static a(Z)Ljava/lang/String;
    .registers 3

    .prologue
    .line 377
    const/4 v0, 0x0

    .line 378
    if-eqz p0, :cond_7

    .line 379
    :try_start_3
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->q()Ljava/lang/String;

    move-result-object v0

    .line 381
    :cond_7
    if-nez v0, :cond_f

    .line 382
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1b} :catch_1d

    move-result-object v0

    .line 390
    :goto_1c
    return-object v0

    .line 385
    :catch_1d
    move-exception v0

    .line 386
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 387
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 390
    :cond_27
    const-string v0, "fail"

    goto :goto_1c
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_3

    .line 69
    :goto_2
    return-object v0

    .line 64
    :catch_3
    move-exception v0

    .line 65
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    :cond_d
    const-string v0, "fail"

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 126
    if-nez p0, :cond_5

    .line 147
    :goto_4
    return-object v1

    .line 129
    :cond_5
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 130
    const-string v0, "no READ_PHONE_STATE permission to get IMSI"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_4

    .line 135
    :cond_15
    :try_start_15
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 137
    if-eqz v0, :cond_37

    .line 138
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_22} :catch_2b

    move-result-object v0

    .line 139
    if-eqz v0, :cond_29

    .line 140
    :try_start_25
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_28} :catch_35

    move-result-object v0

    :cond_29
    :goto_29
    move-object v1, v0

    .line 147
    goto :goto_4

    .line 143
    :catch_2b
    move-exception v0

    move-object v0, v1

    .line 145
    :goto_2d
    const-string v1, "Failed to get IMSI."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_29

    .line 143
    :catch_35
    move-exception v1

    goto :goto_2d

    :cond_37
    move-object v0, v1

    goto :goto_29
.end method

.method public static c()I
    .registers 2

    .prologue
    .line 79
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_3

    .line 85
    :goto_2
    return v0

    .line 80
    :catch_3
    move-exception v0

    .line 81
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    :cond_d
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 157
    const-string v0, "fail"

    .line 158
    if-nez p0, :cond_5

    .line 174
    :cond_4
    :goto_4
    return-object v0

    .line 163
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_e} :catch_19

    move-result-object v1

    .line 164
    if-nez v1, :cond_14

    .line 165
    :try_start_11
    const-string v0, "null"

    goto :goto_4

    .line 167
    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_17} :catch_29

    move-result-object v0

    goto :goto_4

    .line 169
    :catch_19
    move-exception v1

    .line 170
    :goto_1a
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 171
    const-string v1, "Failed to get Android ID."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_4

    .line 169
    :catch_29
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_1a
.end method

.method public static d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 287
    :try_start_0
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_3

    .line 290
    :goto_2
    return-object v0

    .line 289
    :catch_3
    move-exception v0

    const-string v0, "Failed to get hardware serial number."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 290
    const-string v0, "fail"

    goto :goto_2
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 213
    const-string v1, "fail"

    .line 214
    if-nez p0, :cond_7

    .line 251
    :goto_6
    return-object v1

    .line 218
    :cond_7
    :try_start_7
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 219
    if-eqz v0, :cond_70

    .line 220
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_70

    .line 222
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1a} :catch_66

    move-result-object v0

    .line 223
    if-eqz v0, :cond_25

    :try_start_1d
    const-string v1, "02:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 224
    :cond_25
    const-string v1, "wifi.interface"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    const-string v2, "MAC interface: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 226
    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 228
    if-nez v1, :cond_42

    .line 229
    const-string v1, "wlan0"

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 232
    :cond_42
    if-nez v1, :cond_4a

    .line 233
    const-string v1, "eth0"

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 235
    :cond_4a
    if-eqz v1, :cond_54

    .line 236
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    .line 237
    invoke-static {v1}, Lcom/tencent/bugly/proguard/z;->d([B)Ljava/lang/String;
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_53} :catch_72

    move-result-object v0

    .line 247
    :cond_54
    :goto_54
    if-nez v0, :cond_58

    .line 248
    const-string v0, "null"

    .line 250
    :cond_58
    const-string v1, "MAC address: %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 251
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 242
    :catch_66
    move-exception v0

    .line 243
    :goto_67
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 244
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_70
    move-object v0, v1

    goto :goto_54

    .line 242
    :catch_72
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_67
.end method

.method public static e()J
    .registers 6

    .prologue
    .line 398
    const-wide/16 v0, -0x1

    .line 400
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 401
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    .line 403
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_17} :catch_1b

    move-result v0

    int-to-long v0, v0

    .line 404
    mul-long/2addr v0, v4

    .line 410
    :cond_1a
    :goto_1a
    return-wide v0

    .line 405
    :catch_1b
    move-exception v2

    .line 406
    invoke-static {v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 407
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1a
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 261
    const-string v1, "fail"

    .line 262
    if-nez p0, :cond_5

    .line 277
    :goto_4
    return-object v1

    .line 266
    :cond_5
    :try_start_5
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 268
    if-eqz v0, :cond_26

    .line 269
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_12} :catch_19

    move-result-object v0

    .line 270
    if-nez v0, :cond_17

    .line 271
    :try_start_15
    const-string v0, "null"
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_17} :catch_24

    :cond_17
    :goto_17
    move-object v1, v0

    .line 277
    goto :goto_4

    .line 274
    :catch_19
    move-exception v0

    move-object v0, v1

    .line 275
    :goto_1b
    const-string v1, "Failed to get SIM serial number."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_17

    .line 274
    :catch_24
    move-exception v1

    goto :goto_1b

    :cond_26
    move-object v0, v1

    goto :goto_17
.end method

.method public static f()J
    .registers 6

    .prologue
    .line 418
    const-wide/16 v0, -0x1

    .line 420
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 421
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    .line 423
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_17} :catch_1b

    move-result v0

    int-to-long v0, v0

    .line 424
    mul-long/2addr v0, v4

    .line 430
    :cond_1a
    :goto_1a
    return-wide v0

    .line 425
    :catch_1b
    move-exception v2

    .line 426
    invoke-static {v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 427
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1a
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 634
    const-string v1, "unknown"

    .line 636
    :try_start_2
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 638
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 639
    if-nez v0, :cond_12

    .line 640
    const/4 v1, 0x0

    .line 705
    :cond_11
    :goto_11
    return-object v1

    .line 642
    :cond_12
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 643
    const-string v1, "WIFI"

    goto :goto_11

    .line 644
    :cond_1c
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_82

    .line 645
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 647
    if-eqz v0, :cond_82

    .line 648
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 649
    packed-switch v0, :pswitch_data_84

    .line 696
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MOBILE("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_48
    move-object v1, v0

    .line 704
    goto :goto_11

    .line 651
    :pswitch_4a
    const-string v1, "GPRS"

    goto :goto_11

    .line 654
    :pswitch_4d
    const-string v1, "EDGE"

    goto :goto_11

    .line 657
    :pswitch_50
    const-string v1, "UMTS"

    goto :goto_11

    .line 660
    :pswitch_53
    const-string v1, "HSDPA"

    goto :goto_11

    .line 663
    :pswitch_56
    const-string v1, "HSUPA"

    goto :goto_11

    .line 666
    :pswitch_59
    const-string v1, "HSPA"

    goto :goto_11

    .line 669
    :pswitch_5c
    const-string v1, "CDMA"

    goto :goto_11

    .line 672
    :pswitch_5f
    const-string v1, "EVDO_0"

    goto :goto_11

    .line 675
    :pswitch_62
    const-string v1, "EVDO_A"

    goto :goto_11

    .line 678
    :pswitch_65
    const-string v1, "1xRTT"

    goto :goto_11

    .line 681
    :pswitch_68
    const-string v1, "iDen"

    goto :goto_11

    .line 684
    :pswitch_6b
    const-string v1, "EVDO_B"

    goto :goto_11

    .line 687
    :pswitch_6e
    const-string v1, "LTE"

    goto :goto_11

    .line 690
    :pswitch_71
    const-string v1, "eHRPD"

    goto :goto_11

    .line 693
    :pswitch_74
    const-string v1, "HSPA+"
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_76} :catch_77

    goto :goto_11

    .line 700
    :catch_77
    move-exception v0

    .line 701
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 702
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    :cond_82
    move-object v0, v1

    goto :goto_48

    .line 649
    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_4d
        :pswitch_50
        :pswitch_5c
        :pswitch_5f
        :pswitch_62
        :pswitch_65
        :pswitch_53
        :pswitch_56
        :pswitch_59
        :pswitch_68
        :pswitch_6b
        :pswitch_6e
        :pswitch_71
        :pswitch_74
    .end packed-switch
.end method

.method public static g()J
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 437
    const-string v0, "/proc/meminfo"

    .line 441
    :try_start_3
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_72
    .catchall {:try_start_3 .. :try_end_8} :catchall_a0

    .line 442
    :try_start_8
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v0, 0x800

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_cd
    .catchall {:try_start_8 .. :try_end_f} :catchall_c4

    .line 443
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_12} :catch_d0
    .catchall {:try_start_f .. :try_end_12} :catchall_c7

    move-result-object v0

    .line 444
    if-nez v0, :cond_34

    .line 445
    :try_start_15
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_1e

    .line 467
    :cond_18
    :goto_18
    :try_start_18
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_29

    .line 474
    :cond_1b
    :goto_1b
    const-wide/16 v0, -0x1

    .line 478
    :cond_1d
    :goto_1d
    return-wide v0

    .line 461
    :catch_1e
    move-exception v0

    .line 462
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 463
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    .line 470
    :catch_29
    move-exception v0

    .line 471
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 472
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b

    .line 447
    :cond_34
    :try_start_34
    const-string v1, ":\\s+"

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 448
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 449
    const-string v1, "kb"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_51} :catch_d0
    .catchall {:try_start_34 .. :try_end_51} :catchall_c7

    move-result-wide v0

    const/16 v4, 0xa

    shl-long/2addr v0, v4

    .line 451
    :try_start_55
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_67

    .line 467
    :cond_58
    :goto_58
    :try_start_58
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_1d

    .line 470
    :catch_5c
    move-exception v2

    .line 471
    invoke-static {v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 472
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d

    .line 461
    :catch_67
    move-exception v2

    .line 462
    invoke-static {v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_58

    .line 463
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_58

    .line 452
    :catch_72
    move-exception v0

    move-object v2, v1

    .line 453
    :goto_74
    :try_start_74
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_7d

    .line 454
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_c9

    .line 458
    :cond_7d
    if-eqz v1, :cond_82

    .line 460
    :try_start_7f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_8a

    .line 467
    :cond_82
    :goto_82
    if-eqz v2, :cond_87

    .line 469
    :try_start_84
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_95

    .line 478
    :cond_87
    :goto_87
    const-wide/16 v0, -0x2

    goto :goto_1d

    .line 461
    :catch_8a
    move-exception v0

    .line 462
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_82

    .line 463
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_82

    .line 470
    :catch_95
    move-exception v0

    .line 471
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_87

    .line 472
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_87

    .line 458
    :catchall_a0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_a3
    if-eqz v2, :cond_a8

    .line 460
    :try_start_a5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_ae

    .line 467
    :cond_a8
    :goto_a8
    if-eqz v3, :cond_ad

    .line 469
    :try_start_aa
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_b9

    .line 474
    :cond_ad
    :goto_ad
    throw v0

    .line 461
    :catch_ae
    move-exception v1

    .line 462
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_a8

    .line 463
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a8

    .line 470
    :catch_b9
    move-exception v1

    .line 471
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_ad

    .line 472
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ad

    .line 458
    :catchall_c4
    move-exception v0

    move-object v2, v1

    goto :goto_a3

    :catchall_c7
    move-exception v0

    goto :goto_a3

    :catchall_c9
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_a3

    .line 452
    :catch_cd
    move-exception v0

    move-object v2, v3

    goto :goto_74

    :catch_d0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_74
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 714
    const-string v0, "ro.miui.ui.version.name"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 715
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 716
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XiaoMi/MIUI/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 782
    :goto_23
    return-object v0

    .line 720
    :cond_24
    const-string v0, "ro.build.version.emui"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 721
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HuaWei/EMOTION/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 726
    :cond_48
    const-string v0, "ro.lenovo.series"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 727
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_72

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 728
    const-string v0, "ro.build.version.incremental"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Lenovo/VIBE/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 733
    :cond_72
    const-string v0, "ro.build.nubia.rom.name"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 734
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a7

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a7

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Zte/NUBIA/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.build.nubia.rom.code"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_23

    .line 740
    :cond_a7
    const-string v0, "ro.meizu.product.model"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 741
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d2

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d2

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Meizu/FLYME/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ro.build.display.id"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_23

    .line 746
    :cond_d2
    const-string v0, "ro.build.version.opporom"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 747
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f7

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f7

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Oppo/COLOROS/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_23

    .line 752
    :cond_f7
    const-string v0, "ro.vivo.os.build.display.id"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 753
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11c

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11c

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vivo/FUNTOUCH/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_23

    .line 758
    :cond_11c
    const-string v0, "ro.aa.romver"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 759
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_151

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_151

    .line 760
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "htc/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.build.description"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_23

    .line 764
    :cond_151
    const-string v0, "ro.lewa.version"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 765
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_186

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_186

    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tcl/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.build.display.id"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_23

    .line 770
    :cond_186
    const-string v0, "ro.gn.gnromvernumber"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 771
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1bb

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1bb

    .line 772
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "amigo/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.build.display.id"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_23

    .line 776
    :cond_1bb
    const-string v0, "ro.build.tyd.kbstyle_version"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 777
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e0

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e0

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dido/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_23

    .line 782
    :cond_1e0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.build.fingerprint"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.build.rom.id"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_23
.end method

.method public static h()J
    .registers 11

    .prologue
    const/4 v3, 0x0

    const-wide/16 v0, -0x1

    const/16 v10, 0xa

    .line 485
    const-string v2, "/proc/meminfo"

    .line 489
    :try_start_7
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_102
    .catchall {:try_start_7 .. :try_end_c} :catchall_131

    .line 490
    :try_start_c
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v5, 0x800

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_13} :catch_15e
    .catchall {:try_start_c .. :try_end_13} :catchall_155

    .line 491
    :try_start_13
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 492
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_19} :catch_162
    .catchall {:try_start_13 .. :try_end_19} :catchall_158

    move-result-object v3

    .line 493
    if-nez v3, :cond_39

    .line 494
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_23

    .line 536
    :cond_1f
    :goto_1f
    :try_start_1f
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_2e

    .line 547
    :cond_22
    :goto_22
    return-wide v0

    .line 530
    :catch_23
    move-exception v2

    .line 531
    invoke-static {v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 532
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    .line 539
    :catch_2e
    move-exception v2

    .line 540
    invoke-static {v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 541
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    .line 496
    :cond_39
    :try_start_39
    const-string v5, ":\\s+"

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 497
    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 498
    const-string v5, "kb"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 499
    const-wide/16 v6, 0x0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    shl-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 502
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_5e} :catch_162
    .catchall {:try_start_39 .. :try_end_5e} :catchall_158

    move-result-object v3

    .line 503
    if-nez v3, :cond_7e

    .line 504
    :try_start_61
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_73

    .line 536
    :cond_64
    :goto_64
    :try_start_64
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_22

    .line 539
    :catch_68
    move-exception v2

    .line 540
    invoke-static {v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 541
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    .line 530
    :catch_73
    move-exception v2

    .line 531
    invoke-static {v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_64

    .line 532
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_64

    .line 506
    :cond_7e
    :try_start_7e
    const-string v5, ":\\s+"

    const/4 v8, 0x2

    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 507
    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 508
    const-string v5, "kb"

    const-string v8, ""

    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 509
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    shl-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 511
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_a1} :catch_162
    .catchall {:try_start_7e .. :try_end_a1} :catchall_158

    move-result-object v3

    .line 512
    if-nez v3, :cond_c3

    .line 513
    :try_start_a4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_b8

    .line 536
    :cond_a7
    :goto_a7
    :try_start_a7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_ac

    goto/16 :goto_22

    .line 539
    :catch_ac
    move-exception v2

    .line 540
    invoke-static {v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 541
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_22

    .line 530
    :catch_b8
    move-exception v2

    .line 531
    invoke-static {v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_a7

    .line 532
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a7

    .line 515
    :cond_c3
    :try_start_c3
    const-string v0, ":\\s+"

    const/4 v1, 0x2

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 516
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 517
    const-string v1, "kb"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 518
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_e0
    .catch Ljava/lang/Throwable; {:try_start_c3 .. :try_end_e0} :catch_162
    .catchall {:try_start_c3 .. :try_end_e0} :catchall_158

    move-result-wide v0

    shl-long/2addr v0, v10

    add-long/2addr v0, v6

    .line 520
    :try_start_e3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e6} :catch_f7

    .line 536
    :cond_e6
    :goto_e6
    :try_start_e6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_e9} :catch_eb

    goto/16 :goto_22

    .line 539
    :catch_eb
    move-exception v2

    .line 540
    invoke-static {v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 541
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_22

    .line 530
    :catch_f7
    move-exception v2

    .line 531
    invoke-static {v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_e6

    .line 532
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e6

    .line 521
    :catch_102
    move-exception v0

    move-object v1, v3

    .line 522
    :goto_104
    :try_start_104
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_10d

    .line 523
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10d
    .catchall {:try_start_104 .. :try_end_10d} :catchall_15a

    .line 527
    :cond_10d
    if-eqz v1, :cond_112

    .line 529
    :try_start_10f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_112} :catch_11b

    .line 536
    :cond_112
    :goto_112
    if-eqz v3, :cond_117

    .line 538
    :try_start_114
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_117} :catch_126

    .line 547
    :cond_117
    :goto_117
    const-wide/16 v0, -0x2

    goto/16 :goto_22

    .line 530
    :catch_11b
    move-exception v0

    .line 531
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_112

    .line 532
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_112

    .line 539
    :catch_126
    move-exception v0

    .line 540
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_117

    .line 541
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_117

    .line 527
    :catchall_131
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_134
    if-eqz v2, :cond_139

    .line 529
    :try_start_136
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_139} :catch_13f

    .line 536
    :cond_139
    :goto_139
    if-eqz v4, :cond_13e

    .line 538
    :try_start_13b
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_13e
    .catch Ljava/io/IOException; {:try_start_13b .. :try_end_13e} :catch_14a

    .line 543
    :cond_13e
    :goto_13e
    throw v0

    .line 530
    :catch_13f
    move-exception v1

    .line 531
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_139

    .line 532
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_139

    .line 539
    :catch_14a
    move-exception v1

    .line 540
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_13e

    .line 541
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13e

    .line 527
    :catchall_155
    move-exception v0

    move-object v2, v3

    goto :goto_134

    :catchall_158
    move-exception v0

    goto :goto_134

    :catchall_15a
    move-exception v0

    move-object v2, v1

    move-object v4, v3

    goto :goto_134

    .line 521
    :catch_15e
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    goto :goto_104

    :catch_162
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_104
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 791
    const-string v0, "ro.board.platform"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i()J
    .registers 4

    .prologue
    .line 557
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->p()Z

    move-result v0

    if-nez v0, :cond_9

    .line 558
    const-wide/16 v0, 0x0

    .line 571
    :goto_8
    return-wide v0

    .line 562
    :cond_9
    :try_start_9
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    .line 564
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1d} :catch_22

    move-result v0

    int-to-long v2, v0

    .line 565
    int-to-long v0, v1

    mul-long/2addr v0, v2

    goto :goto_8

    .line 566
    :catch_22
    move-exception v0

    .line 567
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 568
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 571
    :cond_2c
    const-wide/16 v0, -0x2

    goto :goto_8
.end method

.method public static i(Landroid/content/Context;)Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 801
    .line 804
    :try_start_2
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/Superuser.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_c} :catch_4e

    move-result v0

    move v1, v0

    .line 811
    :goto_e
    const/4 v3, 0x0

    .line 812
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v5, "/system/bin/sh"

    aput-object v5, v0, v2

    const-string v5, "-c"

    aput-object v5, v0, v4

    const/4 v5, 0x2

    const-string v6, "type su"

    aput-object v6, v0, v5

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 814
    if-eqz v0, :cond_60

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_60

    .line 815
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 816
    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 817
    const-string v6, "not found"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 818
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_4c
    move-object v3, v0

    .line 820
    goto :goto_2f

    .line 805
    :catch_4e
    move-exception v0

    .line 806
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 807
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_58
    move v1, v2

    goto :goto_e

    .line 821
    :cond_5a
    if-nez v3, :cond_60

    .line 822
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 825
    :cond_60
    if-nez v3, :cond_82

    move v0, v2

    :goto_63
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 827
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_87

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v5, "test-keys"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_87

    move v0, v4

    .line 830
    :goto_76
    if-nez v0, :cond_80

    if-nez v1, :cond_80

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_81

    :cond_80
    move v2, v4

    .line 833
    :cond_81
    return v2

    .line 825
    :cond_82
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_63

    :cond_87
    move v0, v2

    .line 827
    goto :goto_76

    :cond_89
    move-object v0, v3

    goto :goto_4c
.end method

.method public static j()J
    .registers 4

    .prologue
    .line 581
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->p()Z

    move-result v0

    if-nez v0, :cond_9

    .line 582
    const-wide/16 v0, 0x0

    .line 595
    :goto_8
    return-wide v0

    .line 586
    :cond_9
    :try_start_9
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    .line 588
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1d} :catch_22

    move-result v0

    int-to-long v2, v0

    .line 589
    int-to-long v0, v1

    mul-long/2addr v0, v2

    goto :goto_8

    .line 590
    :catch_22
    move-exception v0

    .line 591
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 592
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 595
    :cond_2c
    const-wide/16 v0, -0x2

    goto :goto_8
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 894
    const-string v1, "ro.genymotion.version"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 895
    if-eqz v1, :cond_1f

    .line 896
    const-string v2, "ro.genymotion.version"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    :cond_1f
    const-string v1, "androVM.vbox_dpi"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 903
    if-eqz v1, :cond_39

    .line 904
    const-string v2, "androVM.vbox_dpi"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    :cond_39
    const-string v1, "qemu.sf.fake_camera"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 911
    if-eqz v1, :cond_4e

    .line 912
    const-string v2, "qemu.sf.fake_camera"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    :cond_4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .registers 3

    .prologue
    .line 602
    const-string v0, "fail"

    .line 604
    :try_start_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_9} :catch_b

    move-result-object v0

    .line 610
    :cond_a
    :goto_a
    return-object v0

    .line 605
    :catch_b
    move-exception v1

    .line 606
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 607
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 929
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 931
    sget-object v0, Lcom/tencent/bugly/crashreport/common/info/b;->a:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 932
    const-string v0, "ro.secure"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/crashreport/common/info/b;->a:Ljava/lang/String;

    .line 934
    :cond_11
    sget-object v0, Lcom/tencent/bugly/crashreport/common/info/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 935
    const-string v0, "ro.secure"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    sget-object v0, Lcom/tencent/bugly/crashreport/common/info/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    :cond_29
    sget-object v0, Lcom/tencent/bugly/crashreport/common/info/b;->b:Ljava/lang/String;

    if-nez v0, :cond_35

    .line 942
    const-string v0, "ro.debuggable"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/crashreport/common/info/b;->b:Ljava/lang/String;

    .line 944
    :cond_35
    sget-object v0, Lcom/tencent/bugly/crashreport/common/info/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_4d

    .line 945
    const-string v0, "ro.debuggable"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    sget-object v0, Lcom/tencent/bugly/crashreport/common/info/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    :cond_4d
    const/4 v2, 0x0

    .line 953
    :try_start_4e
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    const-string v4, "/proc/self/status"

    invoke-direct {v0, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_5a} :catch_8e
    .catchall {:try_start_4e .. :try_end_5a} :catchall_a2

    .line 955
    :cond_5a
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 956
    const-string v2, "TracerPid:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 957
    :cond_68
    if-eqz v0, :cond_81

    .line 961
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 962
    const-string v2, "tracer_pid"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    const-string v2, "|"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    :cond_81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_84} :catch_b1
    .catchall {:try_start_5a .. :try_end_84} :catchall_af

    move-result-object v0

    .line 970
    :try_start_85
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    .line 978
    :goto_88
    return-object v0

    .line 973
    :catch_89
    move-exception v1

    .line 974
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_88

    .line 967
    :catch_8e
    move-exception v0

    move-object v1, v2

    .line 968
    :goto_90
    :try_start_90
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_af

    .line 970
    if-eqz v1, :cond_98

    .line 972
    :try_start_95
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_9d

    .line 978
    :cond_98
    :goto_98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_88

    .line 973
    :catch_9d
    move-exception v0

    .line 974
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_98

    .line 970
    :catchall_a2
    move-exception v0

    move-object v1, v2

    :goto_a4
    if-eqz v1, :cond_a9

    .line 972
    :try_start_a6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_aa

    .line 975
    :cond_a9
    :goto_a9
    throw v0

    .line 973
    :catch_aa
    move-exception v1

    .line 974
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_a9

    .line 970
    :catchall_af
    move-exception v0

    goto :goto_a4

    .line 967
    :catch_b1
    move-exception v0

    goto :goto_90
.end method

.method public static l()Ljava/lang/String;
    .registers 3

    .prologue
    .line 617
    const-string v0, "fail"

    .line 619
    :try_start_2
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_4} :catch_5

    .line 625
    :cond_4
    :goto_4
    return-object v0

    .line 620
    :catch_5
    move-exception v1

    .line 621
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 622
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 1048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1050
    const-string v1, "gsm.sim.state"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1051
    if-eqz v1, :cond_1a

    .line 1052
    const-string v2, "gsm.sim.state"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    :cond_1a
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    const-string v1, "gsm.sim.state2"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1059
    if-eqz v1, :cond_34

    .line 1060
    const-string v2, "gsm.sim.state2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 844
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 845
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/block/mmcblk0/device/type"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 846
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v4, "/sys/block/mmcblk0/device/type"

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1f} :catch_8d
    .catchall {:try_start_1 .. :try_end_1f} :catchall_9a

    .line 847
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 848
    if-eqz v2, :cond_28

    .line 849
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    :cond_28
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_2b} :catch_b6
    .catchall {:try_start_1f .. :try_end_2b} :catchall_a8

    move-object v2, v1

    .line 853
    :goto_2c
    :try_start_2c
    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/block/mmcblk0/device/name"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 855
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/block/mmcblk0/device/name"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_4a} :catch_b8
    .catchall {:try_start_2c .. :try_end_4a} :catchall_ab

    .line 856
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 857
    if-eqz v2, :cond_53

    .line 858
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    :cond_53
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_56} :catch_b6
    .catchall {:try_start_4a .. :try_end_56} :catchall_ad

    move-object v2, v1

    .line 862
    :cond_57
    :try_start_57
    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/block/mmcblk0/device/cid"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_be

    .line 864
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/block/mmcblk0/device/cid"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_75} :catch_bb
    .catchall {:try_start_57 .. :try_end_75} :catchall_ab

    .line 865
    :try_start_75
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 866
    if-eqz v2, :cond_7e

    .line 867
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_7e} :catch_b6
    .catchall {:try_start_75 .. :try_end_7e} :catchall_b0

    .line 870
    :cond_7e
    :goto_7e
    :try_start_7e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_81} :catch_b6
    .catchall {:try_start_7e .. :try_end_81} :catchall_b3

    move-result-object v0

    .line 875
    if-eqz v1, :cond_87

    .line 877
    :try_start_84
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    .line 880
    :cond_87
    :goto_87
    return-object v0

    .line 878
    :catch_88
    move-exception v1

    .line 879
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_87

    .line 873
    :catch_8d
    move-exception v1

    move-object v1, v0

    :goto_8f
    if-eqz v1, :cond_87

    .line 877
    :try_start_91
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95

    goto :goto_87

    .line 878
    :catch_95
    move-exception v1

    .line 879
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_87

    .line 875
    :catchall_9a
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_9d
    if-eqz v2, :cond_a2

    .line 877
    :try_start_9f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a3

    .line 880
    :cond_a2
    :goto_a2
    throw v0

    .line 878
    :catch_a3
    move-exception v1

    .line 879
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_a2

    .line 875
    :catchall_a8
    move-exception v0

    move-object v2, v1

    goto :goto_9d

    :catchall_ab
    move-exception v0

    goto :goto_9d

    :catchall_ad
    move-exception v0

    move-object v2, v1

    goto :goto_9d

    :catchall_b0
    move-exception v0

    move-object v2, v1

    goto :goto_9d

    :catchall_b3
    move-exception v0

    move-object v2, v1

    goto :goto_9d

    .line 873
    :catch_b6
    move-exception v2

    goto :goto_8f

    :catch_b8
    move-exception v1

    move-object v1, v2

    goto :goto_8f

    :catch_bb
    move-exception v1

    move-object v1, v2

    goto :goto_8f

    :cond_be
    move-object v1, v2

    goto :goto_7e

    :cond_c0
    move-object v2, v0

    goto/16 :goto_2c
.end method

.method public static n()Ljava/lang/String;
    .registers 6

    .prologue
    .line 988
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 989
    const/4 v1, 0x0

    .line 991
    :try_start_6
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/ac/online"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 993
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/sys/class/power_supply/ac/online"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1f} :catch_ae
    .catchall {:try_start_6 .. :try_end_1f} :catchall_bb

    .line 994
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 995
    if-eqz v1, :cond_32

    .line 996
    const-string v3, "ac_online"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    :cond_32
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_35} :catch_d6
    .catchall {:try_start_1f .. :try_end_35} :catchall_c7

    move-object v1, v0

    .line 1002
    :cond_36
    :try_start_36
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/usb/online"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1005
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/sys/class/power_supply/usb/online"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_54} :catch_d8
    .catchall {:try_start_36 .. :try_end_54} :catchall_bb

    .line 1006
    :try_start_54
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 1007
    if-eqz v1, :cond_67

    .line 1008
    const-string v3, "usb_online"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    :cond_67
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_6a} :catch_d6
    .catchall {:try_start_54 .. :try_end_6a} :catchall_cc

    move-object v1, v0

    .line 1014
    :cond_6b
    :try_start_6b
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/battery/capacity"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_de

    .line 1017
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/sys/class/power_supply/battery/capacity"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_89} :catch_db
    .catchall {:try_start_6b .. :try_end_89} :catchall_bb

    .line 1019
    :try_start_89
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 1020
    if-eqz v1, :cond_9c

    .line 1021
    const-string v3, "battery_capacity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    :cond_9c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_9f} :catch_d6
    .catchall {:try_start_89 .. :try_end_9f} :catchall_d1

    .line 1030
    :goto_9f
    if-eqz v0, :cond_a4

    .line 1032
    :try_start_a1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a9

    .line 1038
    :cond_a4
    :goto_a4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1033
    :catch_a9
    move-exception v0

    .line 1034
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_a4

    .line 1030
    :catch_ae
    move-exception v0

    move-object v0, v1

    :goto_b0
    if-eqz v0, :cond_a4

    .line 1032
    :try_start_b2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_b6

    goto :goto_a4

    .line 1033
    :catch_b6
    move-exception v0

    .line 1034
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_a4

    .line 1030
    :catchall_bb
    move-exception v0

    :goto_bc
    if-eqz v1, :cond_c1

    .line 1032
    :try_start_be
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_c2

    .line 1035
    :cond_c1
    :goto_c1
    throw v0

    .line 1033
    :catch_c2
    move-exception v1

    .line 1034
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_c1

    .line 1030
    :catchall_c7
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_bc

    :catchall_cc
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_bc

    :catchall_d1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_bc

    :catch_d6
    move-exception v1

    goto :goto_b0

    :catch_d8
    move-exception v0

    move-object v0, v1

    goto :goto_b0

    :catch_db
    move-exception v0

    move-object v0, v1

    goto :goto_b0

    :cond_de
    move-object v0, v1

    goto :goto_9f
.end method

.method public static o()J
    .registers 8

    .prologue
    .line 1074
    const/4 v0, 0x0

    .line 1075
    const/4 v3, 0x0

    .line 1078
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v4, "/proc/uptime"

    invoke-direct {v1, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_e} :catch_35
    .catchall {:try_start_2 .. :try_end_e} :catchall_45

    .line 1079
    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 1080
    if-eqz v1, :cond_2b

    .line 1081
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    .line 1082
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-float v3, v4

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_28} :catch_54
    .catchall {:try_start_e .. :try_end_28} :catchall_52

    move-result v0

    sub-float v0, v3, v0

    .line 1087
    :cond_2b
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_30

    .line 1095
    :cond_2e
    :goto_2e
    float-to-long v0, v0

    return-wide v0

    .line 1090
    :catch_30
    move-exception v1

    .line 1091
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_2e

    .line 1084
    :catch_35
    move-exception v1

    move-object v2, v3

    .line 1085
    :goto_37
    :try_start_37
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_52

    .line 1087
    if-eqz v2, :cond_2e

    .line 1089
    :try_start_3c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_2e

    .line 1090
    :catch_40
    move-exception v1

    .line 1091
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_2e

    .line 1087
    :catchall_45
    move-exception v0

    move-object v2, v3

    :goto_47
    if-eqz v2, :cond_4c

    .line 1089
    :try_start_49
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    .line 1092
    :cond_4c
    :goto_4c
    throw v0

    .line 1090
    :catch_4d
    move-exception v1

    .line 1091
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_4c

    .line 1087
    :catchall_52
    move-exception v0

    goto :goto_47

    .line 1084
    :catch_54
    move-exception v1

    goto :goto_37
.end method

.method private static p()Z
    .registers 2

    .prologue
    .line 301
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_e

    move-result v0

    if-eqz v0, :cond_18

    .line 302
    const/4 v0, 0x1

    .line 309
    :goto_d
    return v0

    .line 304
    :catch_e
    move-exception v0

    .line 305
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 306
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 309
    :cond_18
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static q()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    .line 316
    const-string v0, "/system/build.prop"

    .line 320
    :try_start_4
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_65
    .catchall {:try_start_4 .. :try_end_9} :catchall_93

    .line 321
    :try_start_9
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v0, 0x800

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_10} :catch_bc
    .catchall {:try_start_9 .. :try_end_10} :catchall_b7

    .line 324
    :cond_10
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c1

    .line 325
    const-string v4, "="

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 326
    array-length v4, v0

    if-ne v4, v6, :cond_10

    .line 327
    const/4 v4, 0x0

    aget-object v4, v0, v4

    const-string v5, "ro.product.cpu.abilist"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 328
    const/4 v4, 0x1

    aget-object v0, v0, v4

    .line 336
    :goto_2e
    if-eqz v0, :cond_39

    .line 337
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v0, v0, v4
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_39} :catch_bf
    .catchall {:try_start_10 .. :try_end_39} :catchall_ba

    .line 347
    :cond_39
    :try_start_39
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_4f

    .line 356
    :cond_3c
    :goto_3c
    :try_start_3c
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_5a

    .line 363
    :cond_3f
    :goto_3f
    return-object v0

    .line 330
    :cond_40
    const/4 v4, 0x0

    :try_start_41
    aget-object v4, v0, v4

    const-string v5, "ro.product.cpu.abi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 331
    const/4 v4, 0x1

    aget-object v0, v0, v4
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_4e} :catch_bf
    .catchall {:try_start_41 .. :try_end_4e} :catchall_ba

    goto :goto_2e

    .line 350
    :catch_4f
    move-exception v1

    .line 351
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 352
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3c

    .line 359
    :catch_5a
    move-exception v1

    .line 360
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 361
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3f

    .line 340
    :catch_65
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 341
    :goto_68
    :try_start_68
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_71

    .line 342
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_68 .. :try_end_71} :catchall_ba

    .line 344
    :cond_71
    if-eqz v2, :cond_76

    .line 349
    :try_start_73
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_7d

    .line 356
    :cond_76
    :goto_76
    if-eqz v3, :cond_7b

    .line 358
    :try_start_78
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_88

    :cond_7b
    :goto_7b
    move-object v0, v1

    .line 363
    goto :goto_3f

    .line 350
    :catch_7d
    move-exception v0

    .line 351
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_76

    .line 352
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_76

    .line 359
    :catch_88
    move-exception v0

    .line 360
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_7b

    .line 361
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7b

    .line 347
    :catchall_93
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_96
    if-eqz v2, :cond_9b

    .line 349
    :try_start_98
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_a1

    .line 356
    :cond_9b
    :goto_9b
    if-eqz v3, :cond_a0

    .line 358
    :try_start_9d
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_ac

    .line 363
    :cond_a0
    :goto_a0
    throw v0

    .line 350
    :catch_a1
    move-exception v1

    .line 351
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_9b

    .line 352
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9b

    .line 359
    :catch_ac
    move-exception v1

    .line 360
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_a0

    .line 361
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a0

    .line 347
    :catchall_b7
    move-exception v0

    move-object v2, v1

    goto :goto_96

    :catchall_ba
    move-exception v0

    goto :goto_96

    .line 340
    :catch_bc
    move-exception v0

    move-object v2, v1

    goto :goto_68

    :catch_bf
    move-exception v0

    goto :goto_68

    :cond_c1
    move-object v0, v1

    goto/16 :goto_2e
.end method
