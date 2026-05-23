.class public Lcom/unisound/vui/util/LocalizeDataUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/util/LocalizeDataUtil$a;
    }
.end annotation


# static fields
.field private static final CONTACT_DISPLAY_NAME_INDEX:I = 0x1

.field private static final CONTACT_HAS_PHONE_NUMBER_INDEX:I = 0x2

.field private static final CONTACT_ID_INDEX:I = 0x0

.field private static final PHONE_CONTACT_ID_INDEX:I = 0x0

.field private static final PHONE_NUMBER_INDEX:I = 0x1

.field private static final PROJECTION_CONTACTS:[Ljava/lang/String;

.field private static localizeDataUtil:Lcom/unisound/vui/util/LocalizeDataUtil;

.field private static mCommandInFile:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unisound/vui/util/entity/CommandInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private albumsNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private artistsNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contactNamesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final contactSelectAll:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private factory:Ljavax/xml/parsers/SAXParserFactory;

.field private handler:Lcom/unisound/vui/util/LocalizeDataUtil$a;

.field private mAppinfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/util/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioUri:Landroid/net/Uri;

.field private mCommandMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/unisound/vui/util/entity/CommandInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContactUri:Landroid/net/Uri;

.field private mContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/data/entity/out/UniContact;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneUri:Landroid/net/Uri;

.field private mUserCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private musicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/MusicResult$Music;",
            ">;"
        }
    .end annotation
.end field

.field private parser:Ljavax/xml/parsers/SAXParser;

.field private phoneNumberInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/util/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final projectionPhone:[Ljava/lang/String;

.field private songsNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedFormatter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/unisound/vui/util/LocalizeDataUtil;->PROJECTION_CONTACTS:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/unisound/vui/util/LocalizeDataUtil;->mCommandInFile:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mAppinfos:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mAppsName:Ljava/util/List;

    const-string v0, "display_name NOTNULL AND display_name != \'\' "

    iput-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->contactSelectAll:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "is_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->projectionPhone:[Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mContacts:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->phoneNumberInfos:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->contactNamesList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->supportedFormatter:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->musicList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->songsNameList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->artistsNameList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->albumsNameList:Ljava/util/List;

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->supportedFormatter:Ljava/util/ArrayList;

    const-string v1, "wav"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->supportedFormatter:Ljava/util/ArrayList;

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->supportedFormatter:Ljava/util/ArrayList;

    const-string v1, "ogg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->supportedFormatter:Ljava/util/ArrayList;

    const-string v1, "flac"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->supportedFormatter:Ljava/util/ArrayList;

    const-string v1, "m4a"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->supportedFormatter:Ljava/util/ArrayList;

    const-string v1, "aac"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mUserCommands:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mCommandMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->context:Landroid/content/Context;

    return-void
.end method

.method public static getCommandInfo(Ljava/lang/String;)Lcom/unisound/vui/util/entity/CommandInfo;
    .registers 5
    .param p0, "wakeupWord"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    sget-object v0, Lcom/unisound/vui/util/LocalizeDataUtil;->mCommandInFile:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    move-object v0, v1

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/unisound/vui/util/LocalizeDataUtil;->mCommandInFile:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/util/entity/CommandInfo;

    invoke-virtual {v0}, Lcom/unisound/vui/util/entity/CommandInfo;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_6

    :cond_24
    move-object v0, v1

    goto :goto_6
.end method

.method private getNameMappingRecordByNamePinYin(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unisound/vui/data/entity/out/UniContact;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mContacts:Ljava/util/List;

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_75

    invoke-static {p1}, Lcn/yunzhisheng/common/PinyinConverter;->getNameSpell1(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v0, v4, v2

    if-eqz v0, :cond_22

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return-object v0

    :cond_24
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v1, v2

    :goto_2b
    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_75

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mContacts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/data/entity/out/UniContact;

    invoke-virtual {v0}, Lcom/unisound/vui/data/entity/out/UniContact;->getContactNamePinYin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0x14

    if-ge v7, v8, :cond_75

    array-length v7, v5

    const/4 v8, 0x1

    if-ne v7, v8, :cond_60

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5c

    aget-object v6, v4, v2

    invoke-virtual {v0, v6}, Lcom/unisound/vui/data/entity/out/UniContact;->isContainSearchName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5c
    :goto_5c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2b

    :cond_60
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5c

    array-length v7, v4

    if-lez v7, :cond_5c

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    :cond_75
    move-object v0, v3

    goto :goto_23
.end method

.method private getPhones(J)Ljava/util/ArrayList;
    .registers 10
    .param p1, "contactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unisound/vui/util/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->phoneNumberInfos:Ljava/util/List;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->phoneNumberInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_30

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->phoneNumberInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/util/a/b;

    invoke-virtual {v0}, Lcom/unisound/vui/util/a/b;->a()I

    move-result v3

    int-to-long v4, v3

    cmp-long v3, v4, p1

    if-nez v3, :cond_17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_30
    return-object v1
.end method

.method private getSystemContact()V
    .registers 9

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->context:Landroid/content/Context;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    const-string v4, "display_name NOTNULL AND display_name != \'\' "

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/unisound/vui/util/LocalizeDataUtil;->PROJECTION_CONTACTS:[Ljava/lang/String;

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/unisound/vui/util/LocalizeDataUtil;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5d

    :goto_21
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    new-instance v1, Lcom/unisound/vui/data/entity/out/UniContact;

    invoke-direct {v1}, Lcom/unisound/vui/data/entity/out/UniContact;-><init>()V

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/unisound/vui/data/entity/out/UniContact;->setContactId(J)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/unisound/vui/data/entity/out/UniContact;->setHasPhoneNumber(I)V

    invoke-virtual {v1, v2}, Lcom/unisound/vui/data/entity/out/UniContact;->setContactName(Ljava/lang/String;)V

    invoke-static {v2}, Lcn/yunzhisheng/common/PinyinConverter;->getNameSpell1(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_52

    array-length v4, v3

    if-lez v4, :cond_52

    aget-object v3, v3, v7

    invoke-virtual {v1, v3}, Lcom/unisound/vui/data/entity/out/UniContact;->setContactNamePinYin(Ljava/lang/String;)V

    :cond_52
    iget-object v3, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->contactNamesList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mContacts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_5d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_6
.end method

.method private getSystemPhoneNumber()V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->context:Landroid/content/Context;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->projectionPhone:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3f

    :goto_1e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    new-instance v1, Lcom/unisound/vui/util/a/b;

    invoke-direct {v1}, Lcom/unisound/vui/util/a/b;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/vui/util/a/b;->a(I)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unisound/vui/util/a/b;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->phoneNumberInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_3f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_5
.end method

.method private isContainChinese(Ljava/lang/String;)Z
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const-string v0, "[\u4e00-\u9fa5]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private matchPhoneNumberToContact()V
    .registers 11

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mContacts:Ljava/util/List;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->phoneNumberInfos:Ljava/util/List;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->phoneNumberInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_19

    :cond_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/data/entity/out/UniContact;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->phoneNumberInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_36
    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/vui/util/a/b;

    invoke-virtual {v0}, Lcom/unisound/vui/data/entity/out/UniContact;->getContactId()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/unisound/vui/util/a/b;->a()I

    move-result v5

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-nez v5, :cond_36

    invoke-virtual {v1}, Lcom/unisound/vui/util/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Lcom/unisound/vui/data/entity/out/UniContact;->setContactPhoneNO(Ljava/util/ArrayList;)V

    goto :goto_36
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/unisound/vui/util/LocalizeDataUtil;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lcom/unisound/vui/util/LocalizeDataUtil;->localizeDataUtil:Lcom/unisound/vui/util/LocalizeDataUtil;

    if-nez v0, :cond_b

    new-instance v0, Lcom/unisound/vui/util/LocalizeDataUtil;

    invoke-direct {v0, p0}, Lcom/unisound/vui/util/LocalizeDataUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unisound/vui/util/LocalizeDataUtil;->localizeDataUtil:Lcom/unisound/vui/util/LocalizeDataUtil;

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "un2py.mg"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcn/yunzhisheng/common/PinyinConverter;->init(Ljava/io/InputStream;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_18} :catch_1b

    :goto_18
    sget-object v0, Lcom/unisound/vui/util/LocalizeDataUtil;->localizeDataUtil:Lcom/unisound/vui/util/LocalizeDataUtil;

    return-object v0

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18
.end method

.method private parse(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .registers 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unisound/vui/util/entity/CommandInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->factory:Ljavax/xml/parsers/SAXParserFactory;

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->factory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->parser:Ljavax/xml/parsers/SAXParser;

    new-instance v0, Lcom/unisound/vui/util/LocalizeDataUtil$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/unisound/vui/util/LocalizeDataUtil$a;-><init>(Lcom/unisound/vui/util/LocalizeDataUtil;Lcom/unisound/vui/util/LocalizeDataUtil$1;)V

    iput-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->handler:Lcom/unisound/vui/util/LocalizeDataUtil$a;

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->parser:Ljavax/xml/parsers/SAXParser;

    iget-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->handler:Lcom/unisound/vui/util/LocalizeDataUtil$a;

    invoke-virtual {v0, p1, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->handler:Lcom/unisound/vui/util/LocalizeDataUtil$a;

    invoke-virtual {v0}, Lcom/unisound/vui/util/LocalizeDataUtil$a;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-virtual/range {p1 .. p6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method private removeSongNameBlankCharAndSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/unisound/vui/util/LocalizeDataUtil;->isContainChinese(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "flac"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_2a
    move-object v0, p1

    goto :goto_b

    :cond_2c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2a
.end method

.method private removeStrBlankChar(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/unisound/vui/util/LocalizeDataUtil;->isContainChinese(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method


# virtual methods
.method public getAlbumsNamesList()Ljava/util/List;
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllMusic()Lnluparser/scheme/MusicResult;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppByName(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "appName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/util/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mAppinfos:Ljava/util/List;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mAppinfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3b

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mAppinfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/util/a/a;

    invoke-virtual {v0}, Lcom/unisound/vui/util/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v0}, Lcom/unisound/vui/util/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_3b
    return-object v1
.end method

.method public getApps()Ljava/util/List;
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

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mAppsName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/unisound/vui/util/LocalizeDataUtil;->updateAppsData()Ljava/util/List;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mAppsName:Ljava/util/List;

    goto :goto_c
.end method

.method public getArtistsNameList()Ljava/util/List;
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCommandMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/unisound/vui/util/entity/CommandInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mCommandMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getContactByPhoneNumber(Ljava/lang/String;)Lcom/unisound/vui/data/entity/out/UniContact;
    .registers 9
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/unisound/vui/util/LocalizeDataUtil;->updateContacts()Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/data/entity/out/UniContact;

    invoke-virtual {v0}, Lcom/unisound/vui/data/entity/out/UniContact;->getContactPhoneNO()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_11

    const/4 v1, 0x0

    move v2, v1

    :goto_29
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_11

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    :goto_43
    return-object v0

    :cond_44
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_29

    :cond_48
    const/4 v0, 0x0

    goto :goto_43
.end method

.method public getContacts()Ljava/util/List;
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

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/unisound/vui/util/LocalizeDataUtil;->updateContacts()Ljava/util/List;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->contactNamesList:Ljava/util/List;

    goto :goto_c
.end method

.method public getMusicByAlbumName(Ljava/lang/String;)Lnluparser/scheme/MusicResult;
    .registers 3
    .param p1, "albumName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMusicByArtistName(Ljava/lang/String;)Lnluparser/scheme/MusicResult;
    .registers 3
    .param p1, "artistName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMusicBySongsName(Ljava/lang/String;)Lnluparser/scheme/MusicResult;
    .registers 3
    .param p1, "songName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSongsNamesList()Ljava/util/List;
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserDef()Ljava/util/List;
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

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mUserCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/unisound/vui/util/LocalizeDataUtil;->updateUserCommands()Ljava/util/List;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mUserCommands:Ljava/util/List;

    goto :goto_c
.end method

.method public registerAppReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 4
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->context:Landroid/content/Context;

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->context:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_6
.end method

.method public registerContactDataObserver(Landroid/database/ContentObserver;Landroid/database/ContentObserver;)V
    .registers 6
    .param p1, "contactObserver"    # Landroid/database/ContentObserver;
    .param p2, "phoneNumberObserver"    # Landroid/database/ContentObserver;

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->context:Landroid/content/Context;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    if-nez p2, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mContactUri:Landroid/net/Uri;

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mPhoneUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mPhoneUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_9
.end method

.method public searchContactByName(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unisound/vui/data/entity/out/UniContact;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    new-instance v0, Lcom/unisound/vui/util/b/b;

    invoke-direct {v0}, Lcom/unisound/vui/util/b/b;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    if-eqz v5, :cond_51

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_51

    iget-object v2, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mContacts:Ljava/util/List;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mContacts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_35

    if-eqz v0, :cond_35

    invoke-direct {p0, p1}, Lcom/unisound/vui/util/LocalizeDataUtil;->getNameMappingRecordByNamePinYin(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_35

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_35
    if-eqz v1, :cond_51

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_51

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/data/entity/out/UniContact;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_51
    if-eqz v5, :cond_9f

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9f

    move v2, v3

    :goto_5a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_9f

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/data/entity/out/UniContact;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/unisound/vui/data/entity/out/UniContact;->getContactId()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/unisound/vui/util/LocalizeDataUtil;->getPhones(J)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v0}, Lcom/unisound/vui/data/entity/out/UniContact;->cleanPhone()V

    if-eqz v7, :cond_9b

    move v4, v3

    :goto_79
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_9b

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/vui/util/a/b;

    invoke-virtual {v1}, Lcom/unisound/vui/util/a/b;->b()Ljava/lang/String;

    move-result-object v1

    const-string v8, "([^\u4e00-\u9fa5a-zA-Z0-9.])"

    const-string v9, ""

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v6}, Lcom/unisound/vui/data/entity/out/UniContact;->setContactPhoneNO(Ljava/util/ArrayList;)V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_79

    :cond_9b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5a

    :cond_9f
    return-object v5
.end method

.method public unRegisterContactObserver(Landroid/database/ContentObserver;Landroid/database/ContentObserver;)V
    .registers 4
    .param p1, "contactObserver"    # Landroid/database/ContentObserver;
    .param p2, "phoneNumberObserver"    # Landroid/database/ContentObserver;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->context:Landroid/content/Context;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    if-nez p2, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_8
.end method

.method public unregisterAppReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 3
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->context:Landroid/content/Context;

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->context:Landroid/content/Context;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_6
.end method

.method public updateAppsData()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mAppinfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mAppsName:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->context:Landroid/content/Context;

    if-nez v1, :cond_10

    :goto_f
    return-object v0

    :cond_10
    iget-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6b

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    new-instance v3, Lcom/unisound/vui/util/a/a;

    invoke-direct {v3}, Lcom/unisound/vui/util/a/a;-><init>()V

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/unisound/vui/util/a/a;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mAppsName:Ljava/util/List;

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/unisound/vui/util/a/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mAppinfos:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_6b
    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mAppsName:Ljava/util/List;

    goto :goto_f
.end method

.method public updateContacts()Ljava/util/List;
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

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->context:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->phoneNumberInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->contactNamesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/unisound/vui/util/LocalizeDataUtil;->getSystemContact()V

    invoke-direct {p0}, Lcom/unisound/vui/util/LocalizeDataUtil;->getSystemPhoneNumber()V

    invoke-direct {p0}, Lcom/unisound/vui/util/LocalizeDataUtil;->matchPhoneNumberToContact()V

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->contactNamesList:Ljava/util/List;

    goto :goto_5
.end method

.method public updateMusics()V
    .registers 1

    return-void
.end method

.method public updateUserCommands()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mUserCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->context:Landroid/content/Context;

    if-nez v0, :cond_c

    move-object v0, v1

    :goto_b
    return-object v0

    :cond_c
    sput-object v1, Lcom/unisound/vui/util/LocalizeDataUtil;->mCommandInFile:Ljava/util/ArrayList;

    :try_start_e
    const-string v0, "like"

    const-string v2, "start open commands/user_commands_config.xml"

    invoke-static {v0, v2}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "commands/user_commands_config.xml"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_24} :catch_fe
    .catchall {:try_start_e .. :try_end_24} :catchall_11c

    move-result-object v2

    :try_start_25
    const-string v0, "like"

    const-string v3, "open commands/user_commands_config.xml succes"

    invoke-static {v0, v3}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/unisound/vui/util/LocalizeDataUtil;->parse(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/util/LocalizeDataUtil;->mCommandInFile:Ljava/util/ArrayList;

    sget-object v0, Lcom/unisound/vui/util/LocalizeDataUtil;->mCommandInFile:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_df

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/util/entity/CommandInfo;

    invoke-virtual {v0}, Lcom/unisound/vui/util/entity/CommandInfo;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/unisound/vui/util/entity/CommandInfo;->getOperands()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/unisound/vui/util/entity/CommandInfo;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/unisound/vui/util/entity/CommandInfo;->getValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "like"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCommand = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mOperands= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "  mOperator="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_38

    const-string v5, "\\|"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    :goto_97
    array-length v6, v5

    if-ge v3, v6, :cond_38

    const-string v6, "like"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCommands["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v6, v5, v3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_dc

    iget-object v6, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mUserCommands:Ljava/util/List;

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mCommandMap:Ljava/util/HashMap;

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_dc} :catch_13c
    .catchall {:try_start_25 .. :try_end_dc} :catchall_13a

    :cond_dc
    add-int/lit8 v3, v3, 0x1

    goto :goto_97

    :cond_df
    if-eqz v2, :cond_ea

    :try_start_e1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_ee
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_f6

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->factory:Ljavax/xml/parsers/SAXParserFactory;

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->parser:Ljavax/xml/parsers/SAXParser;

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->handler:Lcom/unisound/vui/util/LocalizeDataUtil$a;

    :cond_ea
    :goto_ea
    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->mUserCommands:Ljava/util/List;

    goto/16 :goto_b

    :catch_ee
    move-exception v0

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->factory:Ljavax/xml/parsers/SAXParserFactory;

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->parser:Ljavax/xml/parsers/SAXParser;

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->handler:Lcom/unisound/vui/util/LocalizeDataUtil$a;

    goto :goto_ea

    :catchall_f6
    move-exception v0

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->factory:Ljavax/xml/parsers/SAXParserFactory;

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->parser:Ljavax/xml/parsers/SAXParser;

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->handler:Lcom/unisound/vui/util/LocalizeDataUtil$a;

    throw v0

    :catch_fe
    move-exception v0

    move-object v0, v1

    :goto_100
    if-eqz v0, :cond_ea

    :try_start_102
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_105} :catch_10c
    .catchall {:try_start_102 .. :try_end_105} :catchall_114

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->factory:Ljavax/xml/parsers/SAXParserFactory;

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->parser:Ljavax/xml/parsers/SAXParser;

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->handler:Lcom/unisound/vui/util/LocalizeDataUtil$a;

    goto :goto_ea

    :catch_10c
    move-exception v0

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->factory:Ljavax/xml/parsers/SAXParserFactory;

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->parser:Ljavax/xml/parsers/SAXParser;

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->handler:Lcom/unisound/vui/util/LocalizeDataUtil$a;

    goto :goto_ea

    :catchall_114
    move-exception v0

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->factory:Ljavax/xml/parsers/SAXParserFactory;

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->parser:Ljavax/xml/parsers/SAXParser;

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->handler:Lcom/unisound/vui/util/LocalizeDataUtil$a;

    throw v0

    :catchall_11c
    move-exception v0

    move-object v2, v1

    :goto_11e
    if-eqz v2, :cond_129

    :try_start_120
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_123
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_123} :catch_12a
    .catchall {:try_start_120 .. :try_end_123} :catchall_132

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->factory:Ljavax/xml/parsers/SAXParserFactory;

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->parser:Ljavax/xml/parsers/SAXParser;

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->handler:Lcom/unisound/vui/util/LocalizeDataUtil$a;

    :cond_129
    :goto_129
    throw v0

    :catch_12a
    move-exception v2

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->factory:Ljavax/xml/parsers/SAXParserFactory;

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->parser:Ljavax/xml/parsers/SAXParser;

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->handler:Lcom/unisound/vui/util/LocalizeDataUtil$a;

    goto :goto_129

    :catchall_132
    move-exception v0

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->factory:Ljavax/xml/parsers/SAXParserFactory;

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->parser:Ljavax/xml/parsers/SAXParser;

    iput-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil;->handler:Lcom/unisound/vui/util/LocalizeDataUtil$a;

    throw v0

    :catchall_13a
    move-exception v0

    goto :goto_11e

    :catch_13c
    move-exception v0

    move-object v0, v2

    goto :goto_100
.end method
