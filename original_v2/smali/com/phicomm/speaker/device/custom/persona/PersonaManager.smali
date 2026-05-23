.class public Lcom/phicomm/speaker/device/custom/persona/PersonaManager;
.super Ljava/lang/Object;
.source "PersonaManager.java"


# static fields
.field private static final KEY_CURRENT_PERSONA:Ljava/lang/String; = "current_persona"

.field private static final KEY_LAST_INTERACTION_TIME:Ljava/lang/String; = "last_interaction_time"

.field private static final KEY_PERSONA_MODE:Ljava/lang/String; = "persona_mode"

.field private static final SP_NAME:Ljava/lang/String; = "persona_manager"

.field private static context:Landroid/content/Context;

.field private static volatile currentMode:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

.field private static final currentPersonaId:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile isListening:Z

.field private static volatile lastInteractionTime:J

.field private static volatile shutUpEndTime:J

.field private static final stateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "default"

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->currentPersonaId:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    sget-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;->PASSIVE:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    sput-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->currentMode:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->lastInteractionTime:J

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->isListening:Z

    .line 33
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->shutUpEndTime:J

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->stateLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activatePersona(Ljava/lang/String;)V
    .registers 7
    .param p0, "personaId"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->findByPersonaId(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    move-result-object v0

    .line 53
    .local v0, "config":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    if-nez v0, :cond_1f

    .line 54
    const-string v1, "PersonaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Persona not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_1e
    return-void

    .line 58
    :cond_1f
    sget-object v2, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 59
    :try_start_22
    sget-object v1, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->currentPersonaId:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getMode()Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    move-result-object v1

    sput-object v1, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->currentMode:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->lastInteractionTime:J

    .line 64
    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getMode()Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    move-result-object v1

    sget-object v3, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;->ACTIVE:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    if-ne v1, v3, :cond_47

    .line 65
    const-string v1, "PersonaManager"

    const-string v3, "Active persona cannot be activated directly"

    invoke-static {v1, v3}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    monitor-exit v2

    goto :goto_1e

    .line 68
    :catchall_44
    move-exception v1

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_22 .. :try_end_46} :catchall_44

    throw v1

    :cond_47
    :try_start_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_44

    .line 70
    const-string v1, "PersonaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activated persona: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getPersonaName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v1, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;->PASSIVE:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    invoke-static {p0, v1}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->savePersonaState(Ljava/lang/String;Lcom/phicomm/speaker/device/custom/persona/PersonaMode;)V

    goto :goto_1e
.end method

.method public static disableShutUpMode()V
    .registers 4

    .prologue
    const-wide/16 v2, 0x0

    .line 190
    sput-wide v2, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->shutUpEndTime:J

    .line 193
    sget-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_15

    .line 194
    sget-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->context:Landroid/content/Context;

    const-string v1, "persona_manager"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/unisound/vui/util/SharedPreferencesHelper;

    move-result-object v0

    const-string v1, "shut_up_end_time"

    .line 195
    invoke-virtual {v0, v1, v2, v3}, Lcom/unisound/vui/util/SharedPreferencesHelper;->saveLongValue(Ljava/lang/String;J)V

    .line 198
    :cond_15
    const-string v0, "PersonaManager"

    const-string v1, "Shut-up mode disabled, eavesdropping resumed"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public static enableShutUpMode()V
    .registers 6

    .prologue
    .line 167
    sget-object v1, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    sput-wide v2, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->shutUpEndTime:J

    .line 171
    sget-boolean v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->isListening:Z

    if-eqz v0, :cond_1b

    .line 172
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->stopActiveListeningLocked()V

    .line 173
    const-string v0, "PersonaManager"

    const-string v2, "Stopped active listening mode"

    invoke-static {v0, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_37

    .line 178
    sget-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_2f

    .line 179
    sget-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->context:Landroid/content/Context;

    const-string v1, "persona_manager"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/unisound/vui/util/SharedPreferencesHelper;

    move-result-object v0

    const-string v1, "shut_up_end_time"

    sget-wide v2, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->shutUpEndTime:J

    .line 180
    invoke-virtual {v0, v1, v2, v3}, Lcom/unisound/vui/util/SharedPreferencesHelper;->saveLongValue(Ljava/lang/String;J)V

    .line 183
    :cond_2f
    const-string v0, "PersonaManager"

    const-string v1, "Shut-up mode enabled for 1 hour"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void

    .line 175
    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public static getCurrentMode()Lcom/phicomm/speaker/device/custom/persona/PersonaMode;
    .registers 1

    .prologue
    .line 237
    sget-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->currentMode:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    return-object v0
.end method

.method public static getCurrentPersonaConfig()Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    .registers 1

    .prologue
    .line 223
    sget-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->currentPersonaId:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->findByPersonaId(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentPersonaId()Ljava/lang/String;
    .registers 1

    .prologue
    .line 230
    sget-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->currentPersonaId:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getLastInteractionTime()J
    .registers 2

    .prologue
    .line 251
    sget-wide v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->lastInteractionTime:J

    return-wide v0
.end method

.method public static getShutUpRemainingTime()J
    .registers 4

    .prologue
    .line 213
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->isShutUpDisabled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 214
    const-wide/16 v0, 0x0

    .line 216
    :goto_8
    return-wide v0

    :cond_9
    sget-wide v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->shutUpEndTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_8
.end method

.method public static isListening()Z
    .registers 1

    .prologue
    .line 244
    sget-boolean v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->isListening:Z

    return v0
.end method

.method public static isShutUpDisabled()Z
    .registers 4

    .prologue
    .line 206
    sget-wide v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->shutUpEndTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->shutUpEndTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static recordInteraction()V
    .registers 4

    .prologue
    .line 125
    sget-object v1, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->lastInteractionTime:J

    .line 129
    sget-boolean v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->isListening:Z

    if-eqz v0, :cond_17

    .line 130
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->stopActiveListeningLocked()V

    .line 131
    const-string v0, "PersonaManager"

    const-string v2, "Stopped active listening mode"

    invoke-static {v0, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_17
    monitor-exit v1

    .line 134
    return-void

    .line 133
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public static restorePersonaState(Landroid/content/Context;)V
    .registers 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v12, 0x0

    .line 275
    const-string v5, "persona_manager"

    invoke-static {p0, v5}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/unisound/vui/util/SharedPreferencesHelper;

    move-result-object v5

    const-string v10, "current_persona"

    const-string v11, "default"

    .line 276
    invoke-virtual {v5, v10, v11}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "personaId":Ljava/lang/String;
    const-string v5, "persona_manager"

    invoke-static {p0, v5}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/unisound/vui/util/SharedPreferencesHelper;

    move-result-object v5

    const-string v10, "persona_mode"

    sget-object v11, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;->PASSIVE:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    .line 278
    invoke-virtual {v11}, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "modeStr":Ljava/lang/String;
    const-string v5, "persona_manager"

    invoke-static {p0, v5}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/unisound/vui/util/SharedPreferencesHelper;

    move-result-object v4

    .line 281
    .local v4, "prefs":Lcom/unisound/vui/util/SharedPreferencesHelper;
    const-string v5, "last_interaction_time"

    invoke-virtual {v4, v5}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 282
    .local v0, "lastTime":J
    cmp-long v5, v0, v12

    if-nez v5, :cond_36

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 286
    :cond_36
    const-string v5, "shut_up_end_time"

    invoke-virtual {v4, v5}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    .line 288
    .local v8, "shutUpTime":J
    sget-object v5, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->currentPersonaId:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 289
    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;->valueOf(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    move-result-object v5

    sput-object v5, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->currentMode:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    .line 290
    sput-wide v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->lastInteractionTime:J

    .line 293
    cmp-long v5, v8, v12

    if-lez v5, :cond_82

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v5, v10, v8

    if-gez v5, :cond_82

    .line 295
    sput-wide v8, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->shutUpEndTime:J

    .line 296
    sget-wide v10, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->shutUpEndTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/32 v12, 0xea60

    div-long v6, v10, v12

    .line 297
    .local v6, "remainingMin":J
    const-string v5, "PersonaManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Restored shut-up mode, remaining: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "min"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .end local v6    # "remainingMin":J
    :goto_81
    return-void

    .line 300
    :cond_82
    sput-wide v12, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->shutUpEndTime:J

    .line 301
    const-string v5, "PersonaManager"

    const-string v10, "Eavesdropping enabled by default after reboot"

    invoke-static {v5, v10}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81
.end method

.method private static savePersonaState(Ljava/lang/String;Lcom/phicomm/speaker/device/custom/persona/PersonaMode;)V
    .registers 6
    .param p0, "personaId"    # Ljava/lang/String;
    .param p1, "mode"    # Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    .prologue
    .line 258
    sget-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->context:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 259
    const-string v0, "PersonaManager"

    const-string v1, "Context is null, cannot save state"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :goto_b
    return-void

    .line 263
    :cond_c
    sget-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->context:Landroid/content/Context;

    const-string v1, "persona_manager"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/unisound/vui/util/SharedPreferencesHelper;

    move-result-object v0

    const-string v1, "current_persona"

    .line 264
    invoke-virtual {v0, v1, p0}, Lcom/unisound/vui/util/SharedPreferencesHelper;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->context:Landroid/content/Context;

    const-string v1, "persona_manager"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/unisound/vui/util/SharedPreferencesHelper;

    move-result-object v0

    const-string v1, "persona_mode"

    .line 266
    invoke-virtual {p1}, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/util/SharedPreferencesHelper;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->context:Landroid/content/Context;

    const-string v1, "persona_manager"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/unisound/vui/util/SharedPreferencesHelper;

    move-result-object v0

    const-string v1, "last_interaction_time"

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/unisound/vui/util/SharedPreferencesHelper;->saveLongValue(Ljava/lang/String;J)V

    goto :goto_b
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 45
    sput-object p0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->context:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public static shouldTriggerActiveListening(Landroid/content/Context;)Z
    .registers 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->isShutUpDisabled()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 142
    sget-wide v6, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->shutUpEndTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 143
    .local v4, "remainingTime":J
    const-string v6, "PersonaManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shut-up mode active, remaining: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    div-long v8, v4, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "s"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .end local v4    # "remainingTime":J
    :goto_31
    return v1

    .line 147
    :cond_32
    sget-object v6, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->stateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 149
    :try_start_35
    sget-object v7, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->currentMode:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    sget-object v8, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;->PASSIVE:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    if-ne v7, v8, :cond_5c

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v10, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->lastInteractionTime:J

    sub-long v2, v8, v10

    .line 151
    .local v2, "idleTime":J
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getActivePersona()Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    move-result-object v0

    .line 153
    .local v0, "activeConfig":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getIdleTriggerThresholdMs()J

    move-result-wide v8

    cmp-long v7, v2, v8

    if-ltz v7, :cond_5c

    .line 154
    const-string v1, "PersonaManager"

    const-string v7, "Idle threshold reached, can trigger active listening"

    invoke-static {v1, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v1, 0x1

    monitor-exit v6

    goto :goto_31

    .line 158
    .end local v0    # "activeConfig":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    .end local v2    # "idleTime":J
    :catchall_59
    move-exception v1

    monitor-exit v6
    :try_end_5b
    .catchall {:try_start_35 .. :try_end_5b} :catchall_59

    throw v1

    :cond_5c
    :try_start_5c
    monitor-exit v6
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_59

    goto :goto_31
.end method

.method public static startActiveListening(Landroid/content/Context;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getActivePersona()Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    move-result-object v0

    .line 81
    .local v0, "activeConfig":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    if-nez v0, :cond_e

    .line 82
    const-string v1, "PersonaManager"

    const-string v4, "No active persona configured"

    invoke-static {v1, v4}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_d
    return-void

    .line 86
    :cond_e
    sget-object v4, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->stateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 88
    :try_start_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->lastInteractionTime:J

    sub-long v2, v6, v8

    .line 89
    .local v2, "idleTime":J
    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getIdleTriggerThresholdMs()J

    move-result-wide v6

    cmp-long v1, v2, v6

    if-gez v1, :cond_3e

    .line 90
    const-string v1, "PersonaManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not idle enough yet, idleTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    monitor-exit v4

    goto :goto_d

    .line 98
    .end local v2    # "idleTime":J
    :catchall_3b
    move-exception v1

    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_11 .. :try_end_3d} :catchall_3b

    throw v1

    .line 95
    .restart local v2    # "idleTime":J
    :cond_3e
    :try_start_3e
    sget-object v1, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->currentPersonaId:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v5, "eavesdropper"

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 96
    sget-object v1, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;->ACTIVE:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    sput-object v1, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->currentMode:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    .line 97
    const/4 v1, 0x1

    sput-boolean v1, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->isListening:Z

    .line 98
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_3e .. :try_end_4d} :catchall_3b

    .line 100
    const-string v1, "PersonaManager"

    const-string v4, "Started active listening mode"

    invoke-static {v1, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public static stopActiveListening()V
    .registers 2

    .prologue
    .line 107
    sget-object v1, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_3
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->stopActiveListeningLocked()V

    .line 109
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_f

    .line 111
    const-string v0, "PersonaManager"

    const-string v1, "Stopped active listening mode"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void

    .line 109
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private static stopActiveListeningLocked()V
    .registers 2

    .prologue
    .line 116
    sget-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->currentPersonaId:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 117
    sget-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;->PASSIVE:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    sput-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->currentMode:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    .line 118
    const/4 v0, 0x0

    sput-boolean v0, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->isListening:Z

    .line 119
    return-void
.end method
