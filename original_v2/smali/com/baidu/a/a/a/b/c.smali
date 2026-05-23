.class public final Lcom/baidu/a/a/a/b/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/a/a/a/b/c$b;,
        Lcom/baidu/a/a/a/b/c$c;,
        Lcom/baidu/a/a/a/b/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static e:Lcom/baidu/a/a/a/b/c$b;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:I

.field private d:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v2, 0xc

    new-instance v0, Ljava/lang/String;

    new-array v1, v2, [B

    fill-array-data v1, :array_32

    invoke-static {v1}, Lcom/baidu/a/a/a/a/b;->a([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/String;

    new-array v2, v2, [B

    fill-array-data v2, :array_3c

    invoke-static {v2}, Lcom/baidu/a/a/a/a/b;->a([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/a/a/a/b/c;->a:Ljava/lang/String;

    return-void

    :array_32
    .array-data 1
        0x4dt
        0x7at
        0x41t
        0x79t
        0x4dt
        0x54t
        0x49t
        0x78t
        0x4dt
        0x44t
        0x49t
        0x3dt
    .end array-data

    :array_3c
    .array-data 1
        0x5at
        0x47t
        0x6ct
        0x6at
        0x64t
        0x57t
        0x52t
        0x70t
        0x59t
        0x57t
        0x49t
        0x3dt
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/a/a/a/b/c;->c:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/a/a/a/b/c;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/baidu/a/a/a/b/c;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/baidu/a/a/a/b/c;->c(Landroid/content/Context;)Lcom/baidu/a/a/a/b/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/a/a/a/b/c$b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_48
    .catchall {:try_start_1 .. :try_end_6} :catchall_38

    const/16 v1, 0x2000

    :try_start_8
    new-array v1, v1, [C

    new-instance v3, Ljava/io/CharArrayWriter;

    invoke-direct {v3}, Ljava/io/CharArrayWriter;-><init>()V

    :goto_f
    invoke-virtual {v2, v1}, Ljava/io/FileReader;->read([C)I

    move-result v4

    if-lez v4, :cond_24

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/io/CharArrayWriter;->write([CII)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1a
    .catchall {:try_start_8 .. :try_end_19} :catchall_46

    goto :goto_f

    :catch_1a
    move-exception v1

    :goto_1b
    :try_start_1b
    invoke-static {v1}, Lcom/baidu/a/a/a/b/c;->b(Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_46

    if-eqz v2, :cond_23

    :try_start_20
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_33

    :cond_23
    :goto_23
    return-object v0

    :cond_24
    :try_start_24
    invoke-virtual {v3}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_1a
    .catchall {:try_start_24 .. :try_end_27} :catchall_46

    move-result-object v0

    if-eqz v2, :cond_23

    :try_start_2a
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_23

    :catch_2e
    move-exception v1

    invoke-static {v1}, Lcom/baidu/a/a/a/b/c;->b(Ljava/lang/Throwable;)V

    goto :goto_23

    :catch_33
    move-exception v1

    invoke-static {v1}, Lcom/baidu/a/a/a/b/c;->b(Ljava/lang/Throwable;)V

    goto :goto_23

    :catchall_38
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3b
    if-eqz v2, :cond_40

    :try_start_3d
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    :cond_40
    :goto_40
    throw v0

    :catch_41
    move-exception v1

    invoke-static {v1}, Lcom/baidu/a/a/a/b/c;->b(Ljava/lang/Throwable;)V

    goto :goto_40

    :catchall_46
    move-exception v0

    goto :goto_3b

    :catch_48
    move-exception v1

    move-object v2, v0

    goto :goto_1b
.end method

.method private static a([B)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument b ( byte array ) is null! "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v1, ""

    const-string v0, ""

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_12
    array-length v2, p0

    if-ge v1, v2, :cond_50

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :cond_50
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Intent;Z)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/a/a/a/b/c$a;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/baidu/a/a/a/b/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_17
    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_17

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_17

    :try_start_2d
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x80

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_17

    const-string v7, "galaxy_data"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_17

    const-string v8, "utf-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/a/a/a/a/b;->a([B)[B

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/baidu/a/a/a/b/c$a;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Lcom/baidu/a/a/a/b/c$a;-><init>(Lcom/baidu/a/a/a/b/d;)V

    const-string v10, "priority"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v8, Lcom/baidu/a/a/a/b/c$a;->b:I

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v10, v8, Lcom/baidu/a/a/a/b/c$a;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v10, p0, Lcom/baidu/a/a/a/b/c;->b:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8d

    const/4 v10, 0x1

    iput-boolean v10, v8, Lcom/baidu/a/a/a/b/c$a;->d:Z

    :cond_8d
    if-eqz p2, :cond_ec

    const-string v10, "galaxy_sf"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_ec

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v10, 0x40

    invoke-virtual {v4, v0, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    const-string v0, "sigs"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v11, v0, [Ljava/lang/String;

    move v0, v2

    :goto_b4
    array-length v12, v11

    if-ge v0, v12, :cond_c0

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b4

    :cond_c0
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v0}, Lcom/baidu/a/a/a/b/c;->a([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v11, v0}, Lcom/baidu/a/a/a/b/c;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ec

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/a/a/a/a/b;->a([B)[B

    move-result-object v0

    iget-object v6, p0, Lcom/baidu/a/a/a/b/c;->d:Ljava/security/PublicKey;

    invoke-static {v0, v6}, Lcom/baidu/a/a/a/b/c;->a([BLjava/security/PublicKey;)[B

    move-result-object v0

    invoke-static {v7}, Lcom/baidu/a/a/a/a/d;->a([B)[B

    move-result-object v6

    if-eqz v0, :cond_f4

    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_f4

    move v0, v1

    :goto_e7
    if-eqz v0, :cond_ec

    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/baidu/a/a/a/b/c$a;->c:Z

    :cond_ec
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_ef} :catch_f1

    goto/16 :goto_17

    :catch_f1
    move-exception v0

    goto/16 :goto_17

    :cond_f4
    move v0, v2

    goto :goto_e7

    :cond_f6
    new-instance v0, Lcom/baidu/a/a/a/b/d;

    invoke-direct {v0, p0}, Lcom/baidu/a/a/a/b/d;-><init>(Lcom/baidu/a/a/a/b/c;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v3
.end method

.method private a()V
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Lcom/baidu/a/a/a/b/b;->a()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_25
    .catchall {:try_start_1 .. :try_end_a} :catchall_32

    :try_start_a
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/a/a/a/b/c;->d:Ljava/security/PublicKey;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_43
    .catchall {:try_start_a .. :try_end_1a} :catchall_3e

    if-eqz v0, :cond_1f

    :try_start_1c
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_20

    :cond_1f
    :goto_1f
    return-void

    :catch_20
    move-exception v0

    invoke-static {v0}, Lcom/baidu/a/a/a/b/c;->b(Ljava/lang/Throwable;)V

    goto :goto_1f

    :catch_25
    move-exception v0

    move-object v0, v1

    :goto_27
    if-eqz v0, :cond_1f

    :try_start_29
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_1f

    :catch_2d
    move-exception v0

    invoke-static {v0}, Lcom/baidu/a/a/a/b/c;->b(Ljava/lang/Throwable;)V

    goto :goto_1f

    :catchall_32
    move-exception v0

    :goto_33
    if-eqz v1, :cond_38

    :try_start_35
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_39

    :cond_38
    :goto_38
    throw v0

    :catch_39
    move-exception v1

    invoke-static {v1}, Lcom/baidu/a/a/a/b/c;->b(Ljava/lang/Throwable;)V

    goto :goto_38

    :catchall_3e
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_33

    :catch_43
    move-exception v1

    goto :goto_27
.end method

.method static synthetic a(Ljava/lang/Throwable;)V
    .registers 1

    invoke-static {p0}, Lcom/baidu/a/a/a/b/c;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_3b

    move v0, v1

    :goto_a
    :try_start_a
    iget-object v4, p0, Lcom/baidu/a/a/a/b/c;->b:Landroid/content/Context;

    const-string v5, "libcuid.so"

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_42
    .catchall {:try_start_a .. :try_end_11} :catchall_53

    move-result-object v3

    :try_start_12
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_62
    .catchall {:try_start_12 .. :try_end_1c} :catchall_53

    if-eqz v3, :cond_21

    :try_start_1e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_3d

    :cond_21
    :goto_21
    if-nez v0, :cond_3a

    const/16 v0, 0x1b4

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/baidu/a/a/a/b/c;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "libcuid.so"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/a/a/a/b/c$c;->a(Ljava/lang/String;I)Z

    move-result v2

    :cond_3a
    :goto_3a
    return v2

    :cond_3b
    move v0, v2

    goto :goto_a

    :catch_3d
    move-exception v1

    invoke-static {v1}, Lcom/baidu/a/a/a/b/c;->b(Ljava/lang/Throwable;)V

    goto :goto_21

    :catch_42
    move-exception v0

    move-object v2, v3

    :goto_44
    :try_start_44
    invoke-static {v0}, Lcom/baidu/a/a/a/b/c;->b(Ljava/lang/Throwable;)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_5f

    if-eqz v2, :cond_4c

    :try_start_49
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4e

    :cond_4c
    :goto_4c
    move v2, v1

    goto :goto_3a

    :catch_4e
    move-exception v0

    invoke-static {v0}, Lcom/baidu/a/a/a/b/c;->b(Ljava/lang/Throwable;)V

    goto :goto_4c

    :catchall_53
    move-exception v0

    :goto_54
    if-eqz v3, :cond_59

    :try_start_56
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_5a

    :cond_59
    :goto_59
    throw v0

    :catch_5a
    move-exception v1

    invoke-static {v1}, Lcom/baidu/a/a/a/b/c;->b(Ljava/lang/Throwable;)V

    goto :goto_59

    :catchall_5f
    move-exception v0

    move-object v3, v2

    goto :goto_54

    :catch_62
    move-exception v0

    move-object v2, v3

    goto :goto_44
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/baidu/a/a/a/b/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    :goto_a
    return v0

    :catch_b
    move-exception v0

    invoke-static {v0}, Lcom/baidu/a/a/a/b/c;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method private a([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    array-length v3, p1

    move v1, v0

    :goto_11
    if-ge v1, v3, :cond_1b

    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1b
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    array-length v3, p2

    :goto_21
    if-ge v0, v3, :cond_2b

    aget-object v4, p2, v0

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_2b
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method

.method private static a([BLjava/security/PublicKey;)[B
    .registers 4

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method private a([Landroid/content/pm/Signature;)[Ljava/lang/String;
    .registers 5

    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_4
    array-length v2, v1

    if-ge v0, v2, :cond_1a

    aget-object v2, p1, v0

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/a/a/a/a/d;->a([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/a/a/a/b/c;->a([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1a
    return-object v1
.end method

.method private b()Lcom/baidu/a/a/a/b/c$b;
    .registers 10

    const/4 v7, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.intent.action.GALAXY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/a/a/a/b/c;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/baidu/a/a/a/b/c;->a(Landroid/content/Intent;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_230

    :cond_21
    move v0, v2

    :goto_22
    if-ge v0, v7, :cond_2e

    const-string v1, "DeviceId"

    const-string v3, "galaxy lib host missing meta-data,make sure you know the right way to integrate galaxy"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_2e
    move v0, v2

    :goto_2f
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/baidu/a/a/a/b/c;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v6, "libcuid.so"

    invoke-direct {v1, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_274

    invoke-static {v1}, Lcom/baidu/a/a/a/b/c;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/a/a/a/b/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/a/a/a/b/c$b;->a(Ljava/lang/String;)Lcom/baidu/a/a/a/b/c$b;

    move-result-object v3

    :goto_4e
    if-nez v3, :cond_26e

    iget v1, p0, Lcom/baidu/a/a/a/b/c;->c:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/baidu/a/a/a/b/c;->c:I

    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.baidu.intent.action.GALAXY"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/baidu/a/a/a/b/c;->a(Landroid/content/Intent;Z)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_26e

    const-string v0, "files"

    iget-object v1, p0, Lcom/baidu/a/a/a/b/c;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_271

    const-string v0, "DeviceId"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fetal error:: app files dir name is unexpectedly :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_96
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9a
    :goto_9a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/a/a/a/b/c$a;

    iget-boolean v7, v0, Lcom/baidu/a/a/a/b/c$a;->d:Z

    if-nez v7, :cond_9a

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/io/File;

    iget-object v0, v0, Lcom/baidu/a/a/a/b/c$a;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "libcuid.so"

    invoke-direct {v7, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_249

    invoke-static {v7}, Lcom/baidu/a/a/a/b/c;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/a/a/a/b/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/a/a/a/b/c$b;->a(Ljava/lang/String;)Lcom/baidu/a/a/a/b/c$b;

    move-result-object v0

    if-eqz v0, :cond_24a

    :goto_ce
    if-nez v0, :cond_de

    const-string v0, "com.baidu.deviceid.v2"

    invoke-direct {p0, v0}, Lcom/baidu/a/a/a/b/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/a/a/a/b/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/a/a/a/b/c$b;->a(Ljava/lang/String;)Lcom/baidu/a/a/a/b/c$b;

    move-result-object v0

    :cond_de
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-direct {p0, v1}, Lcom/baidu/a/a/a/b/c;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v0, :cond_26b

    if-eqz v3, :cond_26b

    iget v0, p0, Lcom/baidu/a/a/a/b/c;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/a/a/a/b/c;->c:I

    invoke-direct {p0}, Lcom/baidu/a/a/a/b/c;->e()Lcom/baidu/a/a/a/b/c$b;

    move-result-object v0

    move-object v1, v0

    :goto_f3
    if-nez v1, :cond_ff

    iget v0, p0, Lcom/baidu/a/a/a/b/c;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/baidu/a/a/a/b/c;->c:I

    invoke-direct {p0}, Lcom/baidu/a/a/a/b/c;->d()Lcom/baidu/a/a/a/b/c$b;

    move-result-object v1

    :cond_ff
    if-nez v1, :cond_268

    if-eqz v3, :cond_268

    iget v0, p0, Lcom/baidu/a/a/a/b/c;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/a/a/a/b/c;->c:I

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/baidu/a/a/a/b/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/a/a/a/b/c;->d(Ljava/lang/String;)Lcom/baidu/a/a/a/b/c$b;

    move-result-object v1

    move v2, v5

    :goto_114
    if-nez v1, :cond_265

    iget v1, p0, Lcom/baidu/a/a/a/b/c;->c:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/baidu/a/a/a/b/c;->c:I

    if-nez v2, :cond_124

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/baidu/a/a/a/b/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_124
    new-instance v2, Lcom/baidu/a/a/a/b/c$b;

    invoke-direct {v2, v4}, Lcom/baidu/a/a/a/b/c$b;-><init>(Lcom/baidu/a/a/a/b/d;)V

    iget-object v1, p0, Lcom/baidu/a/a/a/b/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/a/a/a/b/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v3, v6, :cond_24d

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_152
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v5}, Lcom/baidu/a/a/a/a/c;->a([BZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/a/a/a/b/c$b;->a:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/a/a/a/b/c$b;->b:Ljava/lang/String;

    move-object v0, v2

    :goto_15f
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/baidu/a/a/a/b/c;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "libcuid.so"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v2, p0, Lcom/baidu/a/a/a/b/c;->c:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_178

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_18a

    :cond_178
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_262

    invoke-virtual {v0}, Lcom/baidu/a/a/a/b/c$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/a/a/a/b/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_186
    invoke-direct {p0, v1}, Lcom/baidu/a/a/a/b/c;->a(Ljava/lang/String;)Z

    move-object v4, v1

    :cond_18a
    invoke-direct {p0}, Lcom/baidu/a/a/a/b/c;->c()Z

    move-result v1

    if-eqz v1, :cond_1b5

    iget v2, p0, Lcom/baidu/a/a/a/b/c;->c:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1a2

    const-string v2, "com.baidu.deviceid.v2"

    invoke-direct {p0, v2}, Lcom/baidu/a/a/a/b/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b5

    :cond_1a2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b0

    invoke-virtual {v0}, Lcom/baidu/a/a/a/b/c$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/a/a/a/b/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1b0
    const-string v2, "com.baidu.deviceid.v2"

    invoke-direct {p0, v2, v4}, Lcom/baidu/a/a/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1b5
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {p0, v2}, Lcom/baidu/a/a/a/b/c;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e5

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v5, "backups/.SystemConfig/.cuid2"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v3, p0, Lcom/baidu/a/a/a/b/c;->c:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_1d4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1e5

    :cond_1d4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e2

    invoke-virtual {v0}, Lcom/baidu/a/a/a/b/c$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/a/a/a/b/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1e2
    invoke-static {v4}, Lcom/baidu/a/a/a/b/c;->g(Ljava/lang/String;)V

    :cond_1e5
    if-eqz v1, :cond_207

    iget v2, p0, Lcom/baidu/a/a/a/b/c;->c:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1f9

    const-string v2, "com.baidu.deviceid"

    invoke-direct {p0, v2}, Lcom/baidu/a/a/a/b/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_207

    :cond_1f9
    const-string v2, "com.baidu.deviceid"

    iget-object v3, v0, Lcom/baidu/a/a/a/b/c$b;->a:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/baidu/a/a/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "bd_setting_i"

    iget-object v3, v0, Lcom/baidu/a/a/a/b/c$b;->b:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/baidu/a/a/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_207
    if-eqz v1, :cond_22f

    iget-object v1, v0, Lcom/baidu/a/a/a/b/c$b;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22f

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "backups/.SystemConfig/.cuid"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v2, p0, Lcom/baidu/a/a/a/b/c;->c:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_228

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_22f

    :cond_228
    iget-object v1, v0, Lcom/baidu/a/a/a/b/c$b;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/baidu/a/a/a/b/c$b;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/baidu/a/a/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22f
    return-object v0

    :cond_230
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/a/a/a/b/c$a;

    iget-boolean v1, v0, Lcom/baidu/a/a/a/b/c$a;->c:Z

    iget-boolean v0, v0, Lcom/baidu/a/a/a/b/c$a;->c:Z

    if-nez v0, :cond_277

    move v0, v2

    :goto_23d
    if-ge v0, v7, :cond_277

    const-string v3, "DeviceId"

    const-string v6, "galaxy config err, In the release version of the signature should be matched"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_23d

    :cond_249
    move-object v0, v3

    :cond_24a
    move-object v3, v0

    goto/16 :goto_9a

    :cond_24d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.baidu"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_152

    :cond_262
    move-object v1, v4

    goto/16 :goto_186

    :cond_265
    move-object v0, v1

    goto/16 :goto_15f

    :cond_268
    move-object v0, v4

    goto/16 :goto_114

    :cond_26b
    move-object v1, v0

    goto/16 :goto_f3

    :cond_26e
    move-object v0, v3

    goto/16 :goto_ce

    :cond_271
    move-object v1, v0

    goto/16 :goto_96

    :cond_274
    move-object v3, v4

    goto/16 :goto_4e

    :cond_277
    move v0, v1

    goto/16 :goto_2f
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v0, ""

    :cond_14
    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/baidu/a/a/a/b/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-static {v0}, Lcom/baidu/a/a/a/b/c;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "backups/.SystemConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, ".cuid"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_29
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_6e

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    :cond_42
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_42

    invoke-virtual {v1, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_6e
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/io/FileWriter;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    sget-object v2, Lcom/baidu/a/a/a/b/c;->a:Ljava/lang/String;

    sget-object v3, Lcom/baidu/a/a/a/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/baidu/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lcom/baidu/a/a/a/a/b;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_96} :catch_98
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_96} :catch_9b

    goto/16 :goto_6

    :catch_98
    move-exception v0

    goto/16 :goto_6

    :catch_9b
    move-exception v0

    goto/16 :goto_6
.end method

.method private static b(Ljava/lang/Throwable;)V
    .registers 1

    return-void
.end method

.method private static c(Landroid/content/Context;)Lcom/baidu/a/a/a/b/c$b;
    .registers 3

    sget-object v0, Lcom/baidu/a/a/a/b/c;->e:Lcom/baidu/a/a/a/b/c$b;

    if-nez v0, :cond_1d

    const-class v1, Lcom/baidu/a/a/a/b/c$b;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/baidu/a/a/a/b/c;->e:Lcom/baidu/a/a/a/b/c$b;

    if-nez v0, :cond_1c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    new-instance v0, Lcom/baidu/a/a/a/b/c;

    invoke-direct {v0, p0}, Lcom/baidu/a/a/a/b/c;-><init>(Landroid/content/Context;)V

    invoke-direct {v0}, Lcom/baidu/a/a/a/b/c;->b()Lcom/baidu/a/a/a/b/c$b;

    move-result-object v0

    sput-object v0, Lcom/baidu/a/a/a/b/c;->e:Lcom/baidu/a/a/a/b/c$b;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    :cond_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_20

    :cond_1d
    sget-object v0, Lcom/baidu/a/a/a/b/c;->e:Lcom/baidu/a/a/a/b/c$b;

    return-object v0

    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method

.method private c()Z
    .registers 2

    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-direct {p0, v0}, Lcom/baidu/a/a/a/b/c;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/baidu/a/a/a/b/c;->b:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private d()Lcom/baidu/a/a/a/b/c$b;
    .registers 6

    const/4 v3, 0x0

    const-string v0, "com.baidu.deviceid"

    invoke-direct {p0, v0}, Lcom/baidu/a/a/a/b/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "bd_setting_i"

    invoke-direct {p0, v0}, Lcom/baidu/a/a/a/b/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/baidu/a/a/a/b/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "bd_setting_i"

    invoke-direct {p0, v2, v0}, Lcom/baidu/a/a/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v1, p0, Lcom/baidu/a/a/a/b/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/a/a/a/b/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.baidu"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/baidu/a/a/a/a/c;->a([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/a/a/a/b/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_65

    new-instance v2, Lcom/baidu/a/a/a/b/c$b;

    invoke-direct {v2, v3}, Lcom/baidu/a/a/a/b/c$b;-><init>(Lcom/baidu/a/a/a/b/d;)V

    iput-object v1, v2, Lcom/baidu/a/a/a/b/c$b;->a:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/a/a/a/b/c$b;->b:Ljava/lang/String;

    move-object v0, v2

    :goto_64
    return-object v0

    :cond_65
    move-object v0, v3

    goto :goto_64
.end method

.method private d(Ljava/lang/String;)Lcom/baidu/a/a/a/b/c$b;
    .registers 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_14

    move v5, v4

    :goto_a
    if-eqz v5, :cond_16

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    move-object v0, v2

    :goto_13
    return-object v0

    :cond_14
    move v5, v3

    goto :goto_a

    :cond_16
    const-string v0, ""

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "baidu/.cuid"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5a

    :goto_29
    :try_start_29
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_38
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_67

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_46} :catch_47
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_46} :catch_be
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_46} :catch_b9

    goto :goto_38

    :catch_47
    move-exception v1

    move-object v1, p1

    :cond_49
    :goto_49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b6

    new-instance v3, Lcom/baidu/a/a/a/b/c$b;

    invoke-direct {v3, v2}, Lcom/baidu/a/a/a/b/c$b;-><init>(Lcom/baidu/a/a/a/b/d;)V

    iput-object v0, v3, Lcom/baidu/a/a/a/b/c$b;->a:Ljava/lang/String;

    iput-object v1, v3, Lcom/baidu/a/a/a/b/c$b;->b:Ljava/lang/String;

    move-object v0, v3

    goto :goto_13

    :cond_5a
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v6, "backups/.SystemConfig/.cuid"

    invoke-direct {v1, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move v3, v4

    goto :goto_29

    :cond_67
    :try_start_67
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    new-instance v1, Ljava/lang/String;

    sget-object v6, Lcom/baidu/a/a/a/b/c;->a:Ljava/lang/String;

    sget-object v7, Lcom/baidu/a/a/a/b/c;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/a/a/a/a/b;->a([B)[B

    move-result-object v4

    invoke-static {v6, v7, v4}, Lcom/baidu/a/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c3

    array-length v4, v1

    const/4 v6, 0x2

    if-ne v4, v6, :cond_c3

    if-eqz v5, :cond_a6

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a6

    const/4 v4, 0x1

    aget-object v0, v1, v4
    :try_end_9d
    .catch Ljava/io/FileNotFoundException; {:try_start_67 .. :try_end_9d} :catch_47
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_9d} :catch_be
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_9d} :catch_b9

    move-object v1, p1

    :goto_9e
    if-nez v3, :cond_49

    :try_start_a0
    invoke-static {v1, v0}, Lcom/baidu/a/a/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catch Ljava/io/FileNotFoundException; {:try_start_a0 .. :try_end_a3} :catch_a4
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_c1
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a3} :catch_bc

    goto :goto_49

    :catch_a4
    move-exception v3

    goto :goto_49

    :cond_a6
    if-nez v5, :cond_c3

    :try_start_a8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b1

    const/4 v4, 0x1

    aget-object p1, v1, v4

    :cond_b1
    const/4 v4, 0x1

    aget-object v0, v1, v4
    :try_end_b4
    .catch Ljava/io/FileNotFoundException; {:try_start_a8 .. :try_end_b4} :catch_47
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_b4} :catch_be
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b4} :catch_b9

    move-object v1, p1

    goto :goto_9e

    :cond_b6
    move-object v0, v2

    goto/16 :goto_13

    :catch_b9
    move-exception v1

    move-object v1, p1

    goto :goto_49

    :catch_bc
    move-exception v3

    goto :goto_49

    :catch_be
    move-exception v1

    move-object v1, p1

    goto :goto_49

    :catch_c1
    move-exception v3

    goto :goto_49

    :cond_c3
    move-object v1, p1

    goto :goto_9e
.end method

.method private e()Lcom/baidu/a/a/a/b/c$b;
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backups/.SystemConfig/.cuid2"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-static {v0}, Lcom/baidu/a/a/a/b/c;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    :try_start_1b
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/baidu/a/a/a/b/c;->a:Ljava/lang/String;

    sget-object v3, Lcom/baidu/a/a/a/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/a/a/a/a/b;->a([B)[B

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/baidu/a/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/baidu/a/a/a/b/c$b;->a(Ljava/lang/String;)Lcom/baidu/a/a/a/b/c$b;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_33} :catch_35

    move-result-object v0

    :goto_34
    return-object v0

    :catch_35
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_39
    const/4 v0, 0x0

    goto :goto_34
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    sget-object v0, Lcom/baidu/a/a/a/b/c;->a:Ljava/lang/String;

    sget-object v1, Lcom/baidu/a/a/a/b/c;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/baidu/a/a/a/a/b;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_19} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_22

    move-result-object v0

    goto :goto_7

    :catch_1b
    move-exception v0

    invoke-static {v0}, Lcom/baidu/a/a/a/b/c;->b(Ljava/lang/Throwable;)V

    :goto_1f
    const-string v0, ""

    goto :goto_7

    :catch_22
    move-exception v0

    invoke-static {v0}, Lcom/baidu/a/a/a/b/c;->b(Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/baidu/a/a/a/b/c;->a:Ljava/lang/String;

    sget-object v2, Lcom/baidu/a/a/a/b/c;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/a/a/a/a/b;->a([B)[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/a/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1d} :catch_1e

    goto :goto_7

    :catch_1e
    move-exception v0

    invoke-static {v0}, Lcom/baidu/a/a/a/b/c;->b(Ljava/lang/Throwable;)V

    const-string v0, ""

    goto :goto_7
.end method

.method private static g(Ljava/lang/String;)V
    .registers 9

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backups/.SystemConfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, ".cuid2"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_57

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_2b
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2b

    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_57
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/io/FileWriter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_69} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_69} :catch_6a

    :goto_69
    return-void

    :catch_6a
    move-exception v0

    goto :goto_69

    :catch_6c
    move-exception v0

    goto :goto_69
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/a/a/a/b/c;->b:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_1c

    move-result-object v0

    :goto_11
    invoke-static {v0}, Lcom/baidu/a/a/a/b/c;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    :goto_1b
    return-object p1

    :catch_1c
    move-exception v0

    const-string v2, "DeviceId"

    const-string v3, "Read IMEI failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_24
    move-object v0, v1

    goto :goto_11

    :cond_26
    move-object p1, v0

    goto :goto_1b
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_c

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, ""

    :cond_c
    return-object p0
.end method
