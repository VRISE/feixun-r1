.class public Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;
.super Ljava/lang/Object;
.source "ConversationHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/device/custom/ai/ConversationHistory$ConversationTurn;
    }
.end annotation


# static fields
.field private static final EXPIRE_TIME_MS:J = 0x927c0L

.field private static final MAX_TURNS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ConversationHistory"


# instance fields
.field private history:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/phicomm/speaker/device/custom/ai/ConversationHistory$ConversationTurn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->history:Ljava/util/List;

    return-void
.end method

.method private cleanExpiredHistory()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 70
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->history:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 92
    :cond_9
    :goto_9
    return-void

    .line 74
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 75
    .local v0, "now":J
    const/4 v3, 0x0

    .line 78
    .local v3, "removedCount":I
    :goto_f
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->history:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_32

    .line 79
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->history:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory$ConversationTurn;

    .line 80
    .local v2, "oldest":Lcom/phicomm/speaker/device/custom/ai/ConversationHistory$ConversationTurn;
    iget-wide v4, v2, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory$ConversationTurn;->timestamp:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0x927c0

    cmp-long v4, v4, v6

    if-lez v4, :cond_32

    .line 81
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->history:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 82
    add-int/lit8 v3, v3, 0x1

    .line 87
    goto :goto_f

    .line 89
    .end local v2    # "oldest":Lcom/phicomm/speaker/device/custom/ai/ConversationHistory$ConversationTurn;
    :cond_32
    if-lez v3, :cond_9

    .line 90
    const-string v4, "ConversationHistory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6e05\u7406\u8fc7\u671f\u5386\u53f2,\u5220\u9664 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u8f6e,\u5269\u4f59 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->history:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u8f6e"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method


# virtual methods
.method public declared-synchronized addTurn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "userMessage"    # Ljava/lang/String;
    .param p2, "assistantMessage"    # Ljava/lang/String;

    .prologue
    .line 51
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->cleanExpiredHistory()V

    .line 54
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->history:Ljava/util/List;

    new-instance v1, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory$ConversationTurn;

    invoke-direct {v1, p1, p2}, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory$ConversationTurn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_25

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->history:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 59
    const-string v0, "ConversationHistory"

    const-string v1, "\u8fbe\u523020\u8f6e\u4e0a\u9650,\u5220\u9664\u6700\u65e9\u7684\u5bf9\u8bdd"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_25
    const-string v0, "ConversationHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6dfb\u52a0\u5bf9\u8bdd\u5386\u53f2,\u5f53\u524d\u8f6e\u6570: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->history:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    .line 63
    monitor-exit p0

    return-void

    .line 51
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .registers 3

    .prologue
    .line 124
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 125
    const-string v0, "ConversationHistory"

    const-string v1, "\u6e05\u7a7a\u5bf9\u8bdd\u5386\u53f2"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 126
    monitor-exit p0

    return-void

    .line 124
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFormattedHistory()Ljava/lang/String;
    .registers 7

    .prologue
    .line 101
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->cleanExpiredHistory()V

    .line 103
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->history:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_72

    move-result v3

    if-eqz v3, :cond_f

    .line 104
    const/4 v3, 0x0

    .line 117
    :goto_d
    monitor-exit p0

    return-object v3

    .line 107
    :cond_f
    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v3, "\u4ee5\u4e0b\u662f\u4e4b\u524d\u7684\u5bf9\u8bdd\u5386\u53f2:\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->history:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4f

    .line 111
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->history:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory$ConversationTurn;

    .line 112
    .local v2, "turn":Lcom/phicomm/speaker/device/custom/ai/ConversationHistory$ConversationTurn;
    const-string v3, "\u7528\u6237: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory$ConversationTurn;->userMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v3, "AI: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory$ConversationTurn;->assistantMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 116
    .end local v2    # "turn":Lcom/phicomm/speaker/device/custom/ai/ConversationHistory$ConversationTurn;
    :cond_4f
    const-string v3, "ConversationHistory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u83b7\u53d6\u683c\u5f0f\u5316\u5386\u53f2,\u8f6e\u6570: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->history:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_70
    .catchall {:try_start_f .. :try_end_70} :catchall_72

    move-result-object v3

    goto :goto_d

    .line 101
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :catchall_72
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized isValid()Z
    .registers 2

    .prologue
    .line 132
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->cleanExpiredHistory()V

    .line 133
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_11

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    .line 132
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .registers 2

    .prologue
    .line 140
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->cleanExpiredHistory()V

    .line 141
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 140
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
