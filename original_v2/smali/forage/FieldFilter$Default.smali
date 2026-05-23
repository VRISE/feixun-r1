.class public final Lforage/FieldFilter$Default;
.super Ljava/lang/Object;

# interfaces
.implements Lforage/FieldFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lforage/FieldFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;ILjava/lang/Class;)Z
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "modifiers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    return v0
.end method
