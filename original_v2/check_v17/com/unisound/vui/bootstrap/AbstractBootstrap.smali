.class public abstract Lcom/unisound/vui/bootstrap/AbstractBootstrap;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/unisound/vui/bootstrap/AbstractBootstrap",
        "<TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile antEngineFactory:Lcom/unisound/vui/bootstrap/ANTEFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/bootstrap/ANTEFactory",
            "<+",
            "Lcom/unisound/vui/engine/ANTEngine;",
            ">;"
        }
    .end annotation
.end field

.field private final attrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/unisound/vui/util/AttributeKey",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private volatile handler:Lcom/unisound/vui/engine/ANTHandler;

.field private volatile initializationHandler:Lcom/unisound/vui/engine/ANTHandler;

.field private localConfiguration:Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;

.field private volatile mainTag:Ljava/lang/String;

.field private mainVocab:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/unisound/vui/engine/ANTEngineOption",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private pipeline:Lcom/unisound/vui/engine/ANTPipeline;

.field private volatile wakeupWord:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->options:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->attrs:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method final androidContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->context:Landroid/content/Context;

    return-object v0
.end method

.method public androidContext(Landroid/content/Context;)Lcom/unisound/vui/bootstrap/AbstractBootstrap;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TB;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/bootstrap/AbstractBootstrap;, "Lcom/unisound/vui/bootstrap/AbstractBootstrap<TB;>;"
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->context:Landroid/content/Context;

    return-object p0
.end method

.method public antEngineFactory(Lcom/unisound/vui/bootstrap/ANTEFactory;)Lcom/unisound/vui/bootstrap/AbstractBootstrap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/vui/bootstrap/ANTEFactory",
            "<",
            "Lcom/unisound/vui/engine/ANTEngine;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/bootstrap/AbstractBootstrap;, "Lcom/unisound/vui/bootstrap/AbstractBootstrap<TB;>;"
    .local p1, "antEngineFactory":Lcom/unisound/vui/bootstrap/ANTEFactory;, "Lcom/unisound/vui/bootstrap/ANTEFactory<Lcom/unisound/vui/engine/ANTEngine;>;"
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "antEngineFactory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->antEngineFactory:Lcom/unisound/vui/bootstrap/ANTEFactory;

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "antEngineFactory set already"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iput-object p1, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->antEngineFactory:Lcom/unisound/vui/bootstrap/ANTEFactory;

    return-object p0
.end method

.method public attr(Lcom/unisound/vui/util/AttributeKey;Ljava/lang/Object;)Lcom/unisound/vui/bootstrap/AbstractBootstrap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/unisound/vui/util/AttributeKey",
            "<TT;>;TT;)TB;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/bootstrap/AbstractBootstrap;, "Lcom/unisound/vui/bootstrap/AbstractBootstrap<TB;>;"
    .local p1, "key":Lcom/unisound/vui/util/AttributeKey;, "Lcom/unisound/vui/util/AttributeKey<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p2, :cond_19

    iget-object v1, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->attrs:Ljava/util/Map;

    monitor-enter v1

    :try_start_f
    iget-object v0, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->attrs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    :goto_15
    return-object p0

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw v0

    :cond_19
    iget-object v1, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->attrs:Ljava/util/Map;

    monitor-enter v1

    :try_start_1c
    iget-object v0, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->attrs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_15

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_23

    throw v0
.end method

.method final attrs()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/unisound/vui/util/AttributeKey",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->attrs:Ljava/util/Map;

    return-object v0
.end method

.method public handler(Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/bootstrap/AbstractBootstrap;
    .registers 4
    .param p1, "handler"    # Lcom/unisound/vui/engine/ANTHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/vui/engine/ANTHandler;",
            ")TB;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/bootstrap/AbstractBootstrap;, "Lcom/unisound/vui/bootstrap/AbstractBootstrap<TB;>;"
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->handler:Lcom/unisound/vui/engine/ANTHandler;

    return-object p0
.end method

.method final handler()Lcom/unisound/vui/engine/ANTHandler;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->handler:Lcom/unisound/vui/engine/ANTHandler;

    return-object v0
.end method

.method public init()V
    .registers 6

    sget-object v0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->validate()Lcom/unisound/vui/bootstrap/AbstractBootstrap;

    iget-object v0, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->antEngineFactory:Lcom/unisound/vui/bootstrap/ANTEFactory;

    invoke-interface {v0}, Lcom/unisound/vui/bootstrap/ANTEFactory;->newANTEngine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v1

    :try_start_10
    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->pipeline:Lcom/unisound/vui/engine/ANTPipeline;

    invoke-virtual {p0, v1}, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->init0(Lcom/unisound/vui/engine/ANTEngine;)V

    invoke-virtual {p0}, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->isUseProxyMode()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTEngine;->initializeSdk()V

    :goto_22
    return-void

    :cond_23
    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTEngine;->initializeMode()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_26} :catch_27

    goto :goto_22

    :catch_27
    move-exception v0

    sget-object v2, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTEngine;->unsafe()Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    move-result-object v0

    const/16 v1, 0x579

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->release(ILjava/lang/String;)V

    goto :goto_22
.end method

.method abstract init0(Lcom/unisound/vui/engine/ANTEngine;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public initializationHandler(Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/bootstrap/AbstractBootstrap;
    .registers 4
    .param p1, "initializationHandler"    # Lcom/unisound/vui/engine/ANTHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/vui/engine/ANTHandler;",
            ")TB;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/bootstrap/AbstractBootstrap;, "Lcom/unisound/vui/bootstrap/AbstractBootstrap<TB;>;"
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "initializationHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->initializationHandler:Lcom/unisound/vui/engine/ANTHandler;

    return-object p0
.end method

.method final initializationHandler()Lcom/unisound/vui/engine/ANTHandler;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->initializationHandler:Lcom/unisound/vui/engine/ANTHandler;

    return-object v0
.end method

.method abstract isUseProxyMode()Z
.end method

.method final localConfiguration()Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->localConfiguration:Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;

    return-object v0
.end method

.method public localConfiguration(Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;)Lcom/unisound/vui/bootstrap/AbstractBootstrap;
    .registers 4
    .param p1, "localConfiguration"    # Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;",
            ")TB;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/bootstrap/AbstractBootstrap;, "Lcom/unisound/vui/bootstrap/AbstractBootstrap<TB;>;"
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ant engine localConfiguration is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->localConfiguration:Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;

    return-object p0
.end method

.method public mainTag(Ljava/lang/String;)Lcom/unisound/vui/bootstrap/AbstractBootstrap;
    .registers 4
    .param p1, "mainTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/bootstrap/AbstractBootstrap;, "Lcom/unisound/vui/bootstrap/AbstractBootstrap<TB;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mainTag"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iput-object p1, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->mainTag:Ljava/lang/String;

    return-object p0
.end method

.method final mainTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->mainTag:Ljava/lang/String;

    return-object v0
.end method

.method public mainVocab(Ljava/util/Map;)Lcom/unisound/vui/bootstrap/AbstractBootstrap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)TB;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/bootstrap/AbstractBootstrap;, "Lcom/unisound/vui/bootstrap/AbstractBootstrap<TB;>;"
    .local p1, "vocab":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mainVocab"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->mainVocab:Ljava/util/Map;

    return-object p0
.end method

.method final mainVocab()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->mainVocab:Ljava/util/Map;

    return-object v0
.end method

.method public option(Lcom/unisound/vui/engine/ANTEngineOption;Ljava/lang/Object;)Lcom/unisound/vui/bootstrap/AbstractBootstrap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/unisound/vui/engine/ANTEngineOption",
            "<TT;>;TT;)TB;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/bootstrap/AbstractBootstrap;, "Lcom/unisound/vui/bootstrap/AbstractBootstrap<TB;>;"
    .local p1, "option":Lcom/unisound/vui/engine/ANTEngineOption;, "Lcom/unisound/vui/engine/ANTEngineOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "option"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p2, :cond_19

    iget-object v1, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->options:Ljava/util/Map;

    monitor-enter v1

    :try_start_f
    iget-object v0, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->options:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    :goto_15
    return-object p0

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw v0

    :cond_19
    iget-object v1, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->options:Ljava/util/Map;

    monitor-enter v1

    :try_start_1c
    iget-object v0, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->options:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_15

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_23

    throw v0
.end method

.method public options(Lcom/unisound/vui/bootstrap/a;)Lcom/unisound/vui/bootstrap/AbstractBootstrap;
    .registers 5
    .param p1, "provider"    # Lcom/unisound/vui/bootstrap/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/vui/bootstrap/a;",
            ")TB;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/bootstrap/AbstractBootstrap;, "Lcom/unisound/vui/bootstrap/AbstractBootstrap<TB;>;"
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ant engine options provider"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v1, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->options:Ljava/util/Map;

    monitor-enter v1

    :try_start_d
    invoke-interface {p1}, Lcom/unisound/vui/bootstrap/a;->options()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "The ANTEOptionsProvider.options() method can\'t return null value"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    throw v0

    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->options:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_1b

    return-object p0
.end method

.method public options(Ljava/util/Map;)Lcom/unisound/vui/bootstrap/AbstractBootstrap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/unisound/vui/engine/ANTEngineOption",
            "<*>;",
            "Ljava/lang/Object;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/bootstrap/AbstractBootstrap;, "Lcom/unisound/vui/bootstrap/AbstractBootstrap<TB;>;"
    .local p1, "optionObjectMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/unisound/vui/engine/ANTEngineOption<*>;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->options:Ljava/util/Map;

    monitor-enter v1

    if-nez p1, :cond_10

    :try_start_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "The optionObjectMap value can\'t be null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->options:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_d

    return-object p0
.end method

.method final options()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/unisound/vui/engine/ANTEngineOption",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->options:Ljava/util/Map;

    return-object v0
.end method

.method public pipeline()Lcom/unisound/vui/engine/ANTPipeline;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->pipeline:Lcom/unisound/vui/engine/ANTPipeline;

    return-object v0
.end method

.method public validate()Lcom/unisound/vui/bootstrap/AbstractBootstrap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->antEngineFactory:Lcom/unisound/vui/bootstrap/ANTEFactory;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "antEngineFactory not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->context:Landroid/content/Context;

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "android context not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget-object v0, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->wakeupWord:Ljava/util/List;

    if-nez v0, :cond_24

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "wakeup word not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    iget-object v0, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->initializationHandler:Lcom/unisound/vui/engine/ANTHandler;

    if-nez v0, :cond_30

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initializationHandler not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    return-object p0
.end method

.method public wakeupWord(Ljava/util/List;)Lcom/unisound/vui/bootstrap/AbstractBootstrap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/bootstrap/AbstractBootstrap;, "Lcom/unisound/vui/bootstrap/AbstractBootstrap<TB;>;"
    .local p1, "wakeupWord":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "wakeupWord"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->wakeupWord:Ljava/util/List;

    return-object p0
.end method

.method final wakeupWord()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/bootstrap/AbstractBootstrap;->wakeupWord:Ljava/util/List;

    return-object v0
.end method
