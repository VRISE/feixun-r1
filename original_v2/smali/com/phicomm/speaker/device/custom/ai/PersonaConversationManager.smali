.class public final Lcom/phicomm/speaker/device/custom/ai/PersonaConversationManager;
.super Ljava/lang/Object;
.source "PersonaConversationManager.java"


# static fields
.field private static final HISTORIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "PersonaConvMgr"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/device/custom/ai/PersonaConversationManager;->HISTORIES:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/device/custom/ai/PersonaConversationManager;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Ljava/lang/String;)V
    .registers 6
    .param p0, "personaId"    # Ljava/lang/String;

    .prologue
    .line 43
    if-nez p0, :cond_3

    .line 51
    :goto_2
    return-void

    .line 44
    :cond_3
    sget-object v2, Lcom/phicomm/speaker/device/custom/ai/PersonaConversationManager;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 45
    :try_start_6
    sget-object v1, Lcom/phicomm/speaker/device/custom/ai/PersonaConversationManager;->HISTORIES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;

    .line 46
    .local v0, "h":Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;
    if-eqz v0, :cond_2b

    .line 47
    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->clear()V

    .line 48
    const-string v1, "PersonaConvMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleared history for persona: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_2b
    monitor-exit v2

    goto :goto_2

    .end local v0    # "h":Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;
    :catchall_2d
    move-exception v1

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public static clearAll()V
    .registers 3

    .prologue
    .line 57
    sget-object v1, Lcom/phicomm/speaker/device/custom/ai/PersonaConversationManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_3
    sget-object v0, Lcom/phicomm/speaker/device/custom/ai/PersonaConversationManager;->HISTORIES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 59
    const-string v0, "PersonaConvMgr"

    const-string v2, "Cleared ALL persona histories"

    invoke-static {v0, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    monitor-exit v1

    .line 61
    return-void

    .line 60
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public static getHistory(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;
    .registers 6
    .param p0, "personaId"    # Ljava/lang/String;

    .prologue
    .line 27
    if-nez p0, :cond_4

    const-string p0, "default"

    .line 28
    :cond_4
    sget-object v2, Lcom/phicomm/speaker/device/custom/ai/PersonaConversationManager;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 29
    :try_start_7
    sget-object v1, Lcom/phicomm/speaker/device/custom/ai/PersonaConversationManager;->HISTORIES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;

    .line 30
    .local v0, "h":Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;
    if-nez v0, :cond_33

    .line 31
    new-instance v0, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;

    .end local v0    # "h":Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;
    invoke-direct {v0}, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;-><init>()V

    .line 32
    .restart local v0    # "h":Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;
    sget-object v1, Lcom/phicomm/speaker/device/custom/ai/PersonaConversationManager;->HISTORIES:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v1, "PersonaConvMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created new history for persona: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_33
    monitor-exit v2

    return-object v0

    .line 36
    .end local v0    # "h":Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;
    :catchall_35
    move-exception v1

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_35

    throw v1
.end method
