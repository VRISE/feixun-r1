.class Lcom/phicomm/speaker/device/custom/ai/ConversationHistory$ConversationTurn;
.super Ljava/lang/Object;
.source "ConversationHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConversationTurn"
.end annotation


# instance fields
.field assistantMessage:Ljava/lang/String;

.field timestamp:J

.field userMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "userMessage"    # Ljava/lang/String;
    .param p2, "assistantMessage"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory$ConversationTurn;->userMessage:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory$ConversationTurn;->assistantMessage:Ljava/lang/String;

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory$ConversationTurn;->timestamp:J

    .line 37
    return-void
.end method
