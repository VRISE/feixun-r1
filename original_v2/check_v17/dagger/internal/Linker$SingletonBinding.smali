.class Ldagger/internal/Linker$SingletonBinding;
.super Ldagger/internal/Binding;
.source "Linker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/Linker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ldagger/internal/Binding",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final binding:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile onlyInstance:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ldagger/internal/Binding;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Binding",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, "this":Ldagger/internal/Linker$SingletonBinding;, "Ldagger/internal/Linker$SingletonBinding<TT;>;"
    .local p1, "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<TT;>;"
    iget-object v0, p1, Ldagger/internal/Binding;->provideKey:Ljava/lang/String;

    iget-object v1, p1, Ldagger/internal/Binding;->membersKey:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p1, Ldagger/internal/Binding;->requiredBy:Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 344
    # getter for: Ldagger/internal/Linker;->UNINITIALIZED:Ljava/lang/Object;
    invoke-static {}, Ldagger/internal/Linker;->access$200()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldagger/internal/Linker$SingletonBinding;->onlyInstance:Ljava/lang/Object;

    .line 348
    iput-object p1, p0, Ldagger/internal/Linker$SingletonBinding;->binding:Ldagger/internal/Binding;

    .line 349
    return-void
.end method

.method synthetic constructor <init>(Ldagger/internal/Binding;Ldagger/internal/Linker$1;)V
    .registers 3
    .param p1, "x0"    # Ldagger/internal/Binding;
    .param p2, "x1"    # Ldagger/internal/Linker$1;

    .prologue
    .line 342
    .local p0, "this":Ldagger/internal/Linker$SingletonBinding;, "Ldagger/internal/Linker$SingletonBinding<TT;>;"
    invoke-direct {p0, p1}, Ldagger/internal/Linker$SingletonBinding;-><init>(Ldagger/internal/Binding;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .registers 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 352
    .local p0, "this":Ldagger/internal/Linker$SingletonBinding;, "Ldagger/internal/Linker$SingletonBinding<TT;>;"
    iget-object v0, p0, Ldagger/internal/Linker$SingletonBinding;->binding:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->attach(Ldagger/internal/Linker;)V

    .line 353
    return-void
.end method

.method public dependedOn()Z
    .registers 2

    .prologue
    .line 392
    .local p0, "this":Ldagger/internal/Linker$SingletonBinding;, "Ldagger/internal/Linker$SingletonBinding<TT;>;"
    iget-object v0, p0, Ldagger/internal/Linker$SingletonBinding;->binding:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->dependedOn()Z

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, "this":Ldagger/internal/Linker$SingletonBinding;, "Ldagger/internal/Linker$SingletonBinding<TT;>;"
    iget-object v0, p0, Ldagger/internal/Linker$SingletonBinding;->onlyInstance:Ljava/lang/Object;

    # getter for: Ldagger/internal/Linker;->UNINITIALIZED:Ljava/lang/Object;
    invoke-static {}, Ldagger/internal/Linker;->access$200()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1a

    .line 362
    monitor-enter p0

    .line 363
    :try_start_9
    iget-object v0, p0, Ldagger/internal/Linker$SingletonBinding;->onlyInstance:Ljava/lang/Object;

    # getter for: Ldagger/internal/Linker;->UNINITIALIZED:Ljava/lang/Object;
    invoke-static {}, Ldagger/internal/Linker;->access$200()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_19

    .line 364
    iget-object v0, p0, Ldagger/internal/Linker$SingletonBinding;->binding:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldagger/internal/Linker$SingletonBinding;->onlyInstance:Ljava/lang/Object;

    .line 366
    :cond_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1d

    .line 368
    :cond_1a
    iget-object v0, p0, Ldagger/internal/Linker$SingletonBinding;->onlyInstance:Ljava/lang/Object;

    return-object v0

    .line 366
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Ldagger/internal/Linker$SingletonBinding;, "Ldagger/internal/Linker$SingletonBinding<TT;>;"
    .local p1, "get":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembers":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Ldagger/internal/Linker$SingletonBinding;->binding:Ldagger/internal/Binding;

    invoke-virtual {v0, p1, p2}, Ldagger/internal/Binding;->getDependencies(Ljava/util/Set;Ljava/util/Set;)V

    .line 373
    return-void
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Ldagger/internal/Linker$SingletonBinding;, "Ldagger/internal/Linker$SingletonBinding<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ldagger/internal/Linker$SingletonBinding;->binding:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 357
    return-void
.end method

.method public isCycleFree()Z
    .registers 2

    .prologue
    .line 376
    .local p0, "this":Ldagger/internal/Linker$SingletonBinding;, "Ldagger/internal/Linker$SingletonBinding<TT;>;"
    iget-object v0, p0, Ldagger/internal/Linker$SingletonBinding;->binding:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->isCycleFree()Z

    move-result v0

    return v0
.end method

.method public isLinked()Z
    .registers 2

    .prologue
    .line 380
    .local p0, "this":Ldagger/internal/Linker$SingletonBinding;, "Ldagger/internal/Linker$SingletonBinding<TT;>;"
    iget-object v0, p0, Ldagger/internal/Linker$SingletonBinding;->binding:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->isLinked()Z

    move-result v0

    return v0
.end method

.method protected isSingleton()Z
    .registers 2

    .prologue
    .line 412
    .local p0, "this":Ldagger/internal/Linker$SingletonBinding;, "Ldagger/internal/Linker$SingletonBinding<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isVisiting()Z
    .registers 2

    .prologue
    .line 384
    .local p0, "this":Ldagger/internal/Linker$SingletonBinding;, "Ldagger/internal/Linker$SingletonBinding<TT;>;"
    iget-object v0, p0, Ldagger/internal/Linker$SingletonBinding;->binding:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->isVisiting()Z

    move-result v0

    return v0
.end method

.method public library()Z
    .registers 2

    .prologue
    .line 388
    .local p0, "this":Ldagger/internal/Linker$SingletonBinding;, "Ldagger/internal/Linker$SingletonBinding<TT;>;"
    iget-object v0, p0, Ldagger/internal/Linker$SingletonBinding;->binding:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->library()Z

    move-result v0

    return v0
.end method

.method public setCycleFree(Z)V
    .registers 3
    .param p1, "cycleFree"    # Z

    .prologue
    .line 396
    .local p0, "this":Ldagger/internal/Linker$SingletonBinding;, "Ldagger/internal/Linker$SingletonBinding<TT;>;"
    iget-object v0, p0, Ldagger/internal/Linker$SingletonBinding;->binding:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->setCycleFree(Z)V

    .line 397
    return-void
.end method

.method public setDependedOn(Z)V
    .registers 3
    .param p1, "dependedOn"    # Z

    .prologue
    .line 408
    .local p0, "this":Ldagger/internal/Linker$SingletonBinding;, "Ldagger/internal/Linker$SingletonBinding<TT;>;"
    iget-object v0, p0, Ldagger/internal/Linker$SingletonBinding;->binding:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->setDependedOn(Z)V

    .line 409
    return-void
.end method

.method public setLibrary(Z)V
    .registers 4
    .param p1, "library"    # Z

    .prologue
    .line 404
    .local p0, "this":Ldagger/internal/Linker$SingletonBinding;, "Ldagger/internal/Linker$SingletonBinding<TT;>;"
    iget-object v0, p0, Ldagger/internal/Linker$SingletonBinding;->binding:Ldagger/internal/Binding;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldagger/internal/Binding;->setLibrary(Z)V

    .line 405
    return-void
.end method

.method protected setLinked()V
    .registers 2

    .prologue
    .line 416
    .local p0, "this":Ldagger/internal/Linker$SingletonBinding;, "Ldagger/internal/Linker$SingletonBinding<TT;>;"
    iget-object v0, p0, Ldagger/internal/Linker$SingletonBinding;->binding:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->setLinked()V

    .line 417
    return-void
.end method

.method public setVisiting(Z)V
    .registers 3
    .param p1, "visiting"    # Z

    .prologue
    .line 400
    .local p0, "this":Ldagger/internal/Linker$SingletonBinding;, "Ldagger/internal/Linker$SingletonBinding<TT;>;"
    iget-object v0, p0, Ldagger/internal/Linker$SingletonBinding;->binding:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->setVisiting(Z)V

    .line 401
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 420
    .local p0, "this":Ldagger/internal/Linker$SingletonBinding;, "Ldagger/internal/Linker$SingletonBinding<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@Singleton/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldagger/internal/Linker$SingletonBinding;->binding:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
