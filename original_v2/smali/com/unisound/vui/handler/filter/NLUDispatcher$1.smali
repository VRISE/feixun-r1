.class Lcom/unisound/vui/handler/filter/NLUDispatcher$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "NLUDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/handler/filter/NLUDispatcher;-><init>(Lnluparser/MixtureProcessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Lnluparser/scheme/NLU",
        "<",
        "Lnluparser/scheme/Intent$NullIntent;",
        "Lnluparser/scheme/Result$NullResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/handler/filter/NLUDispatcher;


# direct methods
.method constructor <init>(Lcom/unisound/vui/handler/filter/NLUDispatcher;)V
    .registers 2
    .param p1, "this$0"    # Lcom/unisound/vui/handler/filter/NLUDispatcher;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher$1;->this$0:Lcom/unisound/vui/handler/filter/NLUDispatcher;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
