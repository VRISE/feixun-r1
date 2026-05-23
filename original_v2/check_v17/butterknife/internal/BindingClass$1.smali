.class synthetic Lbutterknife/internal/BindingClass$1;
.super Ljava/lang/Object;
.source "BindingClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbutterknife/internal/BindingClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$butterknife$internal$FieldCollectionViewBinding$Kind:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 157
    invoke-static {}, Lbutterknife/internal/FieldCollectionViewBinding$Kind;->values()[Lbutterknife/internal/FieldCollectionViewBinding$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lbutterknife/internal/BindingClass$1;->$SwitchMap$butterknife$internal$FieldCollectionViewBinding$Kind:[I

    :try_start_9
    sget-object v0, Lbutterknife/internal/BindingClass$1;->$SwitchMap$butterknife$internal$FieldCollectionViewBinding$Kind:[I

    sget-object v1, Lbutterknife/internal/FieldCollectionViewBinding$Kind;->ARRAY:Lbutterknife/internal/FieldCollectionViewBinding$Kind;

    invoke-virtual {v1}, Lbutterknife/internal/FieldCollectionViewBinding$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Lbutterknife/internal/BindingClass$1;->$SwitchMap$butterknife$internal$FieldCollectionViewBinding$Kind:[I

    sget-object v1, Lbutterknife/internal/FieldCollectionViewBinding$Kind;->LIST:Lbutterknife/internal/FieldCollectionViewBinding$Kind;

    invoke-virtual {v1}, Lbutterknife/internal/FieldCollectionViewBinding$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_14
.end method
