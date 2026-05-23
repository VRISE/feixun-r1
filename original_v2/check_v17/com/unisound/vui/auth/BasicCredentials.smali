.class public final Lcom/unisound/vui/auth/BasicCredentials;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/auth/UNIOSCredentials;


# instance fields
.field private accessKey:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "accessKey"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "accessKey"
    .end annotation
.end field

.field private secretKey:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "secretKey"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "secretKey"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "accessKey"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Access key cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Secret key cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput-object p1, p0, Lcom/unisound/vui/auth/BasicCredentials;->accessKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/unisound/vui/auth/BasicCredentials;->secretKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    .end local p1    # "o":Ljava/lang/Object;
    :cond_4
    :goto_4
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/unisound/vui/auth/BasicCredentials;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/unisound/vui/auth/BasicCredentials;->accessKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/unisound/vui/auth/BasicCredentials;->accessKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lcom/unisound/vui/auth/BasicCredentials;->secretKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/unisound/vui/auth/BasicCredentials;->secretKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public getAccessKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/auth/BasicCredentials;->accessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/auth/BasicCredentials;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/unisound/vui/auth/BasicCredentials;->accessKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unisound/vui/auth/BasicCredentials;->secretKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setAccessKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "accessKey"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/auth/BasicCredentials;->accessKey:Ljava/lang/String;

    return-void
.end method

.method public setSecretKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "secretKey"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/auth/BasicCredentials;->secretKey:Ljava/lang/String;

    return-void
.end method
