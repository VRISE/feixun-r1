.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.java"


# static fields
.field private static final EMPTY_RULE:[Ljava/lang/String;

.field private static final EXCEPTION_MARKER:B = 0x21t

.field private static final PREVAILING_RULE:[Ljava/lang/String;

.field public static final PUBLIC_SUFFIX_RESOURCE:Ljava/lang/String; = "publicsuffixes.gz"

.field private static final WILDCARD_LABEL:[B

.field private static final instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field private final listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private publicSuffixExceptionListBytes:[B

.field private publicSuffixListBytes:[B

.field private final readCompleteLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-array v0, v3, [B

    const/16 v1, 0x2a

    aput-byte v1, v0, v2

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    .line 39
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    .line 40
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "*"

    aput-object v1, v0, v2

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    .line 44
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static binarySearchBytes([B[[BI)Ljava/lang/String;
    .registers 24
    .param p0, "bytesToSearch"    # [B
    .param p1, "labels"    # [[B
    .param p2, "labelIndex"    # I

    .prologue
    .line 194
    const/4 v13, 0x0

    .line 195
    .local v13, "low":I
    move-object/from16 v0, p0

    array-length v10, v0

    .line 196
    .local v10, "high":I
    const/4 v14, 0x0

    .line 197
    .local v14, "match":Ljava/lang/String;
    :goto_5
    if-ge v13, v10, :cond_c6

    .line 198
    add-int v19, v13, v10

    div-int/lit8 v15, v19, 0x2

    .line 201
    .local v15, "mid":I
    :goto_b
    const/16 v19, -0x1

    move/from16 v0, v19

    if-le v15, v0, :cond_1e

    aget-byte v19, p0, v15

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1e

    .line 202
    add-int/lit8 v15, v15, -0x1

    goto :goto_b

    .line 204
    :cond_1e
    add-int/lit8 v15, v15, 0x1

    .line 207
    const/4 v8, 0x1

    .line 208
    .local v8, "end":I
    :goto_21
    add-int v19, v15, v8

    aget-byte v19, p0, v19

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_30

    .line 209
    add-int/lit8 v8, v8, 0x1

    goto :goto_21

    .line 211
    :cond_30
    add-int v19, v15, v8

    sub-int v18, v19, v15

    .line 216
    .local v18, "publicSuffixLength":I
    move/from16 v7, p2

    .line 217
    .local v7, "currentLabelIndex":I
    const/4 v6, 0x0

    .line 218
    .local v6, "currentLabelByteIndex":I
    const/16 v16, 0x0

    .line 220
    .local v16, "publicSuffixByteIndex":I
    const/4 v9, 0x0

    .line 223
    .local v9, "expectDot":Z
    :cond_3a
    :goto_3a
    if-eqz v9, :cond_50

    .line 224
    const/16 v3, 0x2e

    .line 225
    .local v3, "byte0":I
    const/4 v9, 0x0

    .line 230
    :goto_3f
    add-int v19, v15, v16

    aget-byte v19, p0, v19

    move/from16 v0, v19

    and-int/lit16 v4, v0, 0xff

    .line 232
    .local v4, "byte1":I
    sub-int v5, v3, v4

    .line 233
    .local v5, "compareResult":I
    if-eqz v5, :cond_59

    .line 252
    :cond_4b
    if-gez v5, :cond_7e

    .line 253
    add-int/lit8 v10, v15, -0x1

    goto :goto_5

    .line 227
    .end local v3    # "byte0":I
    .end local v4    # "byte1":I
    .end local v5    # "compareResult":I
    :cond_50
    aget-object v19, p1, v7

    aget-byte v19, v19, v6

    move/from16 v0, v19

    and-int/lit16 v3, v0, 0xff

    .restart local v3    # "byte0":I
    goto :goto_3f

    .line 235
    .restart local v4    # "byte1":I
    .restart local v5    # "compareResult":I
    :cond_59
    add-int/lit8 v16, v16, 0x1

    .line 236
    add-int/lit8 v6, v6, 0x1

    .line 237
    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_4b

    .line 239
    aget-object v19, p1, v7

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v0, v6, :cond_3a

    .line 242
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-eq v7, v0, :cond_4b

    .line 245
    add-int/lit8 v7, v7, 0x1

    .line 246
    const/4 v6, -0x1

    .line 247
    const/4 v9, 0x1

    goto :goto_3a

    .line 254
    :cond_7e
    if-lez v5, :cond_85

    .line 255
    add-int v19, v15, v8

    add-int/lit8 v13, v19, 0x1

    goto :goto_5

    .line 258
    :cond_85
    sub-int v17, v18, v16

    .line 259
    .local v17, "publicSuffixBytesLeft":I
    aget-object v19, p1, v7

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    sub-int v12, v19, v6

    .line 260
    .local v12, "labelBytesLeft":I
    add-int/lit8 v11, v7, 0x1

    .local v11, "i":I
    :goto_92
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_a7

    .line 261
    aget-object v19, p1, v11

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v12, v12, v19

    .line 260
    add-int/lit8 v11, v11, 0x1

    goto :goto_92

    .line 264
    :cond_a7
    move/from16 v0, v17

    if-ge v12, v0, :cond_af

    .line 265
    add-int/lit8 v10, v15, -0x1

    goto/16 :goto_5

    .line 266
    :cond_af
    move/from16 v0, v17

    if-le v12, v0, :cond_b9

    .line 267
    add-int v19, v15, v8

    add-int/lit8 v13, v19, 0x1

    goto/16 :goto_5

    .line 270
    :cond_b9
    new-instance v14, Ljava/lang/String;

    .end local v14    # "match":Ljava/lang/String;
    sget-object v19, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v14, v0, v15, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 275
    .end local v3    # "byte0":I
    .end local v4    # "byte1":I
    .end local v5    # "compareResult":I
    .end local v6    # "currentLabelByteIndex":I
    .end local v7    # "currentLabelIndex":I
    .end local v8    # "end":I
    .end local v9    # "expectDot":Z
    .end local v11    # "i":I
    .end local v12    # "labelBytesLeft":I
    .end local v15    # "mid":I
    .end local v16    # "publicSuffixByteIndex":I
    .end local v17    # "publicSuffixBytesLeft":I
    .end local v18    # "publicSuffixLength":I
    .restart local v14    # "match":Ljava/lang/String;
    :cond_c6
    return-object v14
.end method

.method private findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;
    .registers 15
    .param p1, "domainLabels"    # [Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    .line 108
    iget-object v10, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-nez v10, :cond_25

    iget-object v10, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v10

    if-eqz v10, :cond_25

    .line 109
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheList()V

    .line 117
    :goto_15
    monitor-enter p0

    .line 118
    :try_start_16
    iget-object v10, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-nez v10, :cond_2d

    .line 119
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 122
    :catchall_22
    move-exception v10

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_22

    throw v10

    .line 112
    :cond_25
    :try_start_25
    iget-object v10, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v10}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_2a} :catch_2b

    goto :goto_15

    .line 113
    :catch_2b
    move-exception v10

    goto :goto_15

    .line 122
    :cond_2d
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_22

    .line 125
    array-length v10, p1

    new-array v0, v10, [[B

    .line 126
    .local v0, "domainLabelsUtf8Bytes":[[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_32
    array-length v10, p1

    if-ge v4, v10, :cond_42

    .line 127
    aget-object v10, p1, v4

    sget-object v11, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    aput-object v10, v0, v4

    .line 126
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 132
    :cond_42
    const/4 v1, 0x0

    .line 133
    .local v1, "exactMatch":Ljava/lang/String;
    const/4 v4, 0x0

    :goto_44
    array-length v10, v0

    if-ge v4, v10, :cond_50

    .line 134
    iget-object v10, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v10, v0, v4}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, "rule":Ljava/lang/String;
    if-eqz v7, :cond_9b

    .line 136
    move-object v1, v7

    .line 146
    .end local v7    # "rule":Ljava/lang/String;
    :cond_50
    const/4 v8, 0x0

    .line 147
    .local v8, "wildcardMatch":Ljava/lang/String;
    array-length v10, v0

    if-le v10, v12, :cond_6d

    .line 148
    invoke-virtual {v0}, [[B->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[B

    .line 149
    .local v6, "labelsWithWildcard":[[B
    const/4 v5, 0x0

    .local v5, "labelIndex":I
    :goto_5b
    array-length v10, v6

    add-int/lit8 v10, v10, -0x1

    if-ge v5, v10, :cond_6d

    .line 150
    sget-object v10, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    aput-object v10, v6, v5

    .line 151
    iget-object v10, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v10, v6, v5}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v7

    .line 152
    .restart local v7    # "rule":Ljava/lang/String;
    if-eqz v7, :cond_9e

    .line 153
    move-object v8, v7

    .line 160
    .end local v5    # "labelIndex":I
    .end local v6    # "labelsWithWildcard":[[B
    .end local v7    # "rule":Ljava/lang/String;
    :cond_6d
    const/4 v3, 0x0

    .line 161
    .local v3, "exception":Ljava/lang/String;
    if-eqz v8, :cond_7f

    .line 162
    const/4 v5, 0x0

    .restart local v5    # "labelIndex":I
    :goto_71
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    if-ge v5, v10, :cond_7f

    .line 163
    iget-object v10, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    invoke-static {v10, v0, v5}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v7

    .line 165
    .restart local v7    # "rule":Ljava/lang/String;
    if-eqz v7, :cond_a1

    .line 166
    move-object v3, v7

    .line 172
    .end local v5    # "labelIndex":I
    .end local v7    # "rule":Ljava/lang/String;
    :cond_7f
    if-eqz v3, :cond_a4

    .line 174
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 175
    const-string v10, "\\."

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 188
    :cond_9a
    :goto_9a
    return-object v2

    .line 133
    .end local v3    # "exception":Ljava/lang/String;
    .end local v8    # "wildcardMatch":Ljava/lang/String;
    .restart local v7    # "rule":Ljava/lang/String;
    :cond_9b
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 149
    .restart local v5    # "labelIndex":I
    .restart local v6    # "labelsWithWildcard":[[B
    .restart local v8    # "wildcardMatch":Ljava/lang/String;
    :cond_9e
    add-int/lit8 v5, v5, 0x1

    goto :goto_5b

    .line 162
    .end local v6    # "labelsWithWildcard":[[B
    .restart local v3    # "exception":Ljava/lang/String;
    :cond_a1
    add-int/lit8 v5, v5, 0x1

    goto :goto_71

    .line 176
    .end local v5    # "labelIndex":I
    .end local v7    # "rule":Ljava/lang/String;
    :cond_a4
    if-nez v1, :cond_ab

    if-nez v8, :cond_ab

    .line 177
    sget-object v2, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    goto :goto_9a

    .line 180
    :cond_ab
    if-eqz v1, :cond_c1

    .line 181
    const-string v10, "\\."

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "exactRuleLabels":[Ljava/lang/String;
    :goto_b3
    if-eqz v8, :cond_c4

    .line 185
    const-string v10, "\\."

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 188
    .local v9, "wildcardRuleLabels":[Ljava/lang/String;
    :goto_bb
    array-length v10, v2

    array-length v11, v9

    if-gt v10, v11, :cond_9a

    move-object v2, v9

    .line 190
    goto :goto_9a

    .line 182
    .end local v2    # "exactRuleLabels":[Ljava/lang/String;
    .end local v9    # "wildcardRuleLabels":[Ljava/lang/String;
    :cond_c1
    sget-object v2, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    goto :goto_b3

    .line 186
    .restart local v2    # "exactRuleLabels":[Ljava/lang/String;
    :cond_c4
    sget-object v9, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    goto :goto_bb
.end method

.method public static get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-object v0
.end method

.method private readTheList()V
    .registers 11

    .prologue
    .line 279
    const/4 v4, 0x0

    .line 280
    .local v4, "publicSuffixListBytes":[B
    const/4 v3, 0x0

    .line 282
    .local v3, "publicSuffixExceptionListBytes":[B
    const-class v7, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const-string v8, "publicsuffixes.gz"

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 285
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_32

    .line 286
    new-instance v7, Lokio/GzipSource;

    invoke-static {v2}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v8

    invoke-direct {v7, v8}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    invoke-static {v7}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    .line 288
    .local v0, "bufferedSource":Lokio/BufferedSource;
    :try_start_1d
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v5

    .line 289
    .local v5, "totalBytes":I
    new-array v4, v5, [B

    .line 290
    invoke-interface {v0, v4}, Lokio/BufferedSource;->readFully([B)V

    .line 292
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v6

    .line 293
    .local v6, "totalExceptionBytes":I
    new-array v3, v6, [B

    .line 294
    invoke-interface {v0, v3}, Lokio/BufferedSource;->readFully([B)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2f} :catch_3e
    .catchall {:try_start_1d .. :try_end_2f} :catchall_4f

    .line 300
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 304
    .end local v0    # "bufferedSource":Lokio/BufferedSource;
    .end local v5    # "totalBytes":I
    .end local v6    # "totalExceptionBytes":I
    :cond_32
    :goto_32
    monitor-enter p0

    .line 305
    :try_start_33
    iput-object v4, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 306
    iput-object v3, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 307
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_54

    .line 309
    iget-object v7, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 310
    return-void

    .line 295
    .restart local v0    # "bufferedSource":Lokio/BufferedSource;
    :catch_3e
    move-exception v1

    .line 296
    .local v1, "e":Ljava/io/IOException;
    :try_start_3f
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v7

    const/4 v8, 0x5

    const-string v9, "Failed to read public suffix list"

    invoke-virtual {v7, v8, v9, v1}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_4f

    .line 297
    const/4 v4, 0x0

    .line 298
    const/4 v3, 0x0

    .line 300
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_32

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_4f
    move-exception v7

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v7

    .line 307
    .end local v0    # "bufferedSource":Lokio/BufferedSource;
    :catchall_54
    move-exception v7

    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v7
.end method


# virtual methods
.method public getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x21

    const/4 v9, 0x0

    .line 77
    if-nez p1, :cond_d

    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "domain == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 80
    :cond_d
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, "unicodeDomain":Ljava/lang/String;
    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "domainLabels":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "rule":[Ljava/lang/String;
    array-length v7, v0

    array-length v8, v5

    if-ne v7, v8, :cond_29

    aget-object v7, v5, v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_29

    .line 85
    const/4 v7, 0x0

    .line 104
    :goto_28
    return-object v7

    .line 89
    :cond_29
    aget-object v7, v5, v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_52

    .line 91
    array-length v7, v0

    array-length v8, v5

    sub-int v2, v7, v8

    .line 97
    .local v2, "firstLabelOffset":I
    :goto_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v1, "effectiveTldPlusOne":Ljava/lang/StringBuilder;
    const-string v7, "\\."

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "punycodeLabels":[Ljava/lang/String;
    move v3, v2

    .local v3, "i":I
    :goto_41
    array-length v7, v4

    if-ge v3, v7, :cond_59

    .line 100
    aget-object v7, v4, v3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 94
    .end local v1    # "effectiveTldPlusOne":Ljava/lang/StringBuilder;
    .end local v2    # "firstLabelOffset":I
    .end local v3    # "i":I
    .end local v4    # "punycodeLabels":[Ljava/lang/String;
    :cond_52
    array-length v7, v0

    array-length v8, v5

    add-int/lit8 v8, v8, 0x1

    sub-int v2, v7, v8

    .restart local v2    # "firstLabelOffset":I
    goto :goto_35

    .line 102
    .restart local v1    # "effectiveTldPlusOne":Ljava/lang/StringBuilder;
    .restart local v3    # "i":I
    .restart local v4    # "punycodeLabels":[Ljava/lang/String;
    :cond_59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_28
.end method

.method setListBytes([B[B)V
    .registers 5
    .param p1, "publicSuffixListBytes"    # [B
    .param p2, "publicSuffixExceptionListBytes"    # [B

    .prologue
    .line 314
    iput-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 315
    iput-object p2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 316
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 317
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 318
    return-void
.end method
