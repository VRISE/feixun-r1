.class public Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.super Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    }
.end annotation


# static fields
.field private static final FRACTION_TO_CONSIDER_FULLSCREEN:F = 0.98f

.field private static final NO_TRACKS:[I

.field private static final WITHIN_RENDERER_CAPABILITIES_BONUS:I = 0x3e8


# instance fields
.field private final adaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

.field private final paramsReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 372
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 382
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    .line 383
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V
    .registers 4
    .param p1, "adaptiveTrackSelectionFactory"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;-><init>()V

    .line 392
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->adaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    .line 393
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->paramsReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 394
    return-void
.end method

.method private static compareFormatValues(II)I
    .registers 3
    .param p0, "first"    # I
    .param p1, "second"    # I

    .prologue
    const/4 v0, -0x1

    .line 659
    if-ne p0, v0, :cond_7

    if-ne p1, v0, :cond_6

    const/4 v0, 0x0

    :cond_6
    :goto_6
    return v0

    :cond_7
    if-ne p1, v0, :cond_b

    const/4 v0, 0x1

    goto :goto_6

    :cond_b
    sub-int v0, p0, p1

    goto :goto_6
.end method

.method private static filterAdaptiveVideoTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)V
    .registers 18
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "requiredAdaptiveSupport"    # I
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "maxVideoWidth"    # I
    .param p5, "maxVideoHeight"    # I
    .param p6, "maxVideoBitrate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 571
    .local p7, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v8, v1, -0x1

    .local v8, "i":I
    :goto_6
    if-ltz v8, :cond_2e

    .line 572
    move-object/from16 v0, p7

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 573
    .local v9, "trackIndex":I
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    aget v3, p1, v9

    move-object v2, p3

    move v4, p2

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveVideoTrack(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIII)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 576
    move-object/from16 v0, p7

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 571
    :cond_2b
    add-int/lit8 v8, v8, -0x1

    goto :goto_6

    .line 579
    .end local v9    # "trackIndex":I
    :cond_2e
    return-void
.end method

.method protected static formatHasLanguage(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z
    .registers 3
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 870
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static getAdaptiveAudioTrackCount(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;)I
    .registers 7
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "configuration"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;

    .prologue
    .line 761
    const/4 v0, 0x0

    .line 762
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v2, :cond_17

    .line 763
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    aget v3, p1, v1

    invoke-static {v2, v3, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveAudioTrack(Lcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 764
    add-int/lit8 v0, v0, 0x1

    .line 762
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 767
    :cond_17
    return v0
.end method

.method private static getAdaptiveAudioTracks(Lcom/google/android/exoplayer2/source/TrackGroup;[IZ)[I
    .registers 16
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "allowMixedMimeTypes"    # Z

    .prologue
    .line 728
    const/4 v9, 0x0

    .line 729
    .local v9, "selectedConfigurationTrackCount":I
    const/4 v8, 0x0

    .line 730
    .local v8, "selectedConfiguration":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 731
    .local v7, "seenConfigurationTuples":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    iget v10, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v4, v10, :cond_30

    .line 732
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 733
    .local v3, "format":Lcom/google/android/exoplayer2/Format;
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;

    iget v11, v3, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v12, v3, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-eqz p2, :cond_2d

    const/4 v10, 0x0

    :goto_19
    invoke-direct {v1, v11, v12, v10}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;-><init>(IILjava/lang/String;)V

    .line 736
    .local v1, "configuration":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;
    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 737
    invoke-static {p0, p1, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveAudioTrackCount(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;)I

    move-result v2

    .line 738
    .local v2, "configurationCount":I
    if-le v2, v9, :cond_2a

    .line 739
    move-object v8, v1

    .line 740
    move v9, v2

    .line 731
    .end local v2    # "configurationCount":I
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 733
    .end local v1    # "configuration":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;
    :cond_2d
    iget-object v10, v3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    goto :goto_19

    .line 745
    .end local v3    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_30
    const/4 v10, 0x1

    if-le v9, v10, :cond_4f

    .line 746
    new-array v0, v9, [I

    .line 747
    .local v0, "adaptiveIndices":[I
    const/4 v5, 0x0

    .line 748
    .local v5, "index":I
    const/4 v4, 0x0

    :goto_37
    iget v10, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v4, v10, :cond_51

    .line 749
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    aget v11, p1, v4

    invoke-static {v10, v11, v8}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveAudioTrack(Lcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;)Z

    move-result v10

    if-eqz v10, :cond_4c

    .line 751
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    aput v4, v0, v5

    move v5, v6

    .line 748
    .end local v6    # "index":I
    .restart local v5    # "index":I
    :cond_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 756
    .end local v0    # "adaptiveIndices":[I
    .end local v5    # "index":I
    :cond_4f
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    :cond_51
    return-object v0
.end method

.method private static getAdaptiveVideoTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)I
    .registers 19
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "requiredAdaptiveSupport"    # I
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "maxVideoWidth"    # I
    .param p5, "maxVideoHeight"    # I
    .param p6, "maxVideoBitrate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 556
    .local p7, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 557
    .local v8, "adaptiveTrackCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_2c

    .line 558
    move-object/from16 v0, p7

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 559
    .local v10, "trackIndex":I
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    aget v3, p1, v10

    move-object v2, p3

    move v4, p2

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveVideoTrack(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIII)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 562
    add-int/lit8 v8, v8, 0x1

    .line 557
    :cond_29
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 565
    .end local v10    # "trackIndex":I
    :cond_2c
    return v8
.end method

.method private static getAdaptiveVideoTracksForGroup(Lcom/google/android/exoplayer2/source/TrackGroup;[IZIIIIIIZ)[I
    .registers 35
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "allowMixedMimeTypes"    # Z
    .param p3, "requiredAdaptiveSupport"    # I
    .param p4, "maxVideoWidth"    # I
    .param p5, "maxVideoHeight"    # I
    .param p6, "maxVideoBitrate"    # I
    .param p7, "viewportWidth"    # I
    .param p8, "viewportHeight"    # I
    .param p9, "orientationMayChange"    # Z

    .prologue
    .line 516
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_a

    .line 517
    sget-object v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    .line 550
    :goto_9
    return-object v4

    .line 520
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getViewportFilteredTrackIndices(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v11

    .line 522
    .local v11, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_20

    .line 523
    sget-object v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    goto :goto_9

    .line 526
    :cond_20
    const/4 v15, 0x0

    .line 527
    .local v15, "selectedMimeType":Ljava/lang/String;
    if-nez p2, :cond_6e

    .line 529
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 530
    .local v22, "seenMimeTypes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .line 531
    .local v23, "selectedMimeTypeTrackCount":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_2c
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_6e

    .line 532
    move/from16 v0, v21

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 533
    .local v24, "trackIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iget-object v7, v4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 534
    .local v7, "sampleMimeType":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    .line 535
    invoke-static/range {v4 .. v11}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveVideoTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)I

    move-result v20

    .line 538
    .local v20, "countForMimeType":I
    move/from16 v0, v20

    move/from16 v1, v23

    if-le v0, v1, :cond_6b

    .line 539
    move-object v15, v7

    .line 540
    move/from16 v23, v20

    .line 531
    .end local v20    # "countForMimeType":I
    :cond_6b
    add-int/lit8 v21, v21, 0x1

    goto :goto_2c

    .end local v7    # "sampleMimeType":Ljava/lang/String;
    .end local v21    # "i":I
    .end local v22    # "seenMimeTypes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v23    # "selectedMimeTypeTrackCount":I
    .end local v24    # "trackIndex":I
    :cond_6e
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p3

    move/from16 v16, p4

    move/from16 v17, p5

    move/from16 v18, p6

    move-object/from16 v19, v11

    .line 547
    invoke-static/range {v12 .. v19}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->filterAdaptiveVideoTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)V

    .line 550
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_89

    sget-object v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    goto :goto_9

    :cond_89
    invoke-static {v11}, Lcom/google/android/exoplayer2/util/Util;->toArray(Ljava/util/List;)[I

    move-result-object v4

    goto/16 :goto_9
.end method

.method private static getAudioTrackScore(ILjava/lang/String;Lcom/google/android/exoplayer2/Format;)I
    .registers 7
    .param p0, "formatSupport"    # I
    .param p1, "preferredLanguage"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    const/4 v2, 0x0

    .line 707
    iget v3, p2, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1a

    const/4 v0, 0x1

    .line 709
    .local v0, "isDefault":Z
    :goto_8
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->formatHasLanguage(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 710
    if-eqz v0, :cond_1c

    .line 711
    const/4 v1, 0x4

    .line 720
    .local v1, "trackScore":I
    :goto_11
    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 721
    add-int/lit16 v1, v1, 0x3e8

    .line 723
    :cond_19
    return v1

    .end local v0    # "isDefault":Z
    .end local v1    # "trackScore":I
    :cond_1a
    move v0, v2

    .line 707
    goto :goto_8

    .line 713
    .restart local v0    # "isDefault":Z
    :cond_1c
    const/4 v1, 0x3

    .restart local v1    # "trackScore":I
    goto :goto_11

    .line 715
    .end local v1    # "trackScore":I
    :cond_1e
    if-eqz v0, :cond_22

    .line 716
    const/4 v1, 0x2

    .restart local v1    # "trackScore":I
    goto :goto_11

    .line 718
    .end local v1    # "trackScore":I
    :cond_22
    const/4 v1, 0x1

    .restart local v1    # "trackScore":I
    goto :goto_11
.end method

.method private static getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;
    .registers 9
    .param p0, "orientationMayChange"    # Z
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "videoWidth"    # I
    .param p4, "videoHeight"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 928
    if-eqz p0, :cond_e

    if-le p3, p4, :cond_20

    move v3, v1

    :goto_7
    if-le p1, p2, :cond_22

    :goto_9
    if-eq v3, v1, :cond_e

    .line 930
    move v0, p1

    .line 931
    .local v0, "tempViewportWidth":I
    move p1, p2

    .line 932
    move p2, v0

    .line 935
    .end local v0    # "tempViewportWidth":I
    :cond_e
    mul-int v1, p3, p2

    mul-int v2, p4, p1

    if-lt v1, v2, :cond_24

    .line 937
    new-instance v1, Landroid/graphics/Point;

    mul-int v2, p1, p4

    invoke-static {v2, p3}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 940
    :goto_1f
    return-object v1

    :cond_20
    move v3, v2

    .line 928
    goto :goto_7

    :cond_22
    move v1, v2

    goto :goto_9

    .line 940
    :cond_24
    new-instance v1, Landroid/graphics/Point;

    mul-int v2, p2, p3

    invoke-static {v2, p4}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v2

    invoke-direct {v1, v2, p2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1f
.end method

.method private static getViewportFilteredTrackIndices(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;
    .registers 15
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "orientationMayChange"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "IIZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const v10, 0x3f7ae148    # 0.98f

    const v9, 0x7fffffff

    .line 878
    new-instance v5, Ljava/util/ArrayList;

    iget v7, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 879
    .local v5, "selectedTrackIndices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    iget v7, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v7, :cond_1c

    .line 880
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 883
    :cond_1c
    if-eq p1, v9, :cond_20

    if-ne p2, v9, :cond_21

    .line 919
    :cond_20
    return-object v5

    .line 888
    :cond_21
    const v2, 0x7fffffff

    .line 889
    .local v2, "maxVideoPixelsToRetain":I
    const/4 v1, 0x0

    :goto_25
    iget v7, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v7, :cond_5b

    .line 890
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 894
    .local v0, "format":Lcom/google/android/exoplayer2/Format;
    iget v7, v0, Lcom/google/android/exoplayer2/Format;->width:I

    if-lez v7, :cond_58

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->height:I

    if-lez v7, :cond_58

    .line 895
    iget v7, v0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {p3, p1, p2, v7, v8}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;

    move-result-object v3

    .line 897
    .local v3, "maxVideoSizeInViewport":Landroid/graphics/Point;
    iget v7, v0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->height:I

    mul-int v6, v7, v8

    .line 898
    .local v6, "videoPixels":I
    iget v7, v0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v8, v3, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    float-to-int v8, v8

    if-lt v7, v8, :cond_58

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->height:I

    iget v8, v3, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    float-to-int v8, v8

    if-lt v7, v8, :cond_58

    if-ge v6, v2, :cond_58

    .line 901
    move v2, v6

    .line 889
    .end local v3    # "maxVideoSizeInViewport":Landroid/graphics/Point;
    .end local v6    # "videoPixels":I
    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 909
    .end local v0    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_5b
    if-eq v2, v9, :cond_20

    .line 910
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_63
    if-ltz v1, :cond_20

    .line 911
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 912
    .restart local v0    # "format":Lcom/google/android/exoplayer2/Format;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format;->getPixelCount()I

    move-result v4

    .line 913
    .local v4, "pixelCount":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_7c

    if-le v4, v2, :cond_7f

    .line 914
    :cond_7c
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 910
    :cond_7f
    add-int/lit8 v1, v1, -0x1

    goto :goto_63
.end method

.method protected static isSupported(IZ)Z
    .registers 4
    .param p0, "formatSupport"    # I
    .param p1, "allowExceedsCapabilities"    # Z

    .prologue
    .line 864
    and-int/lit8 v0, p0, 0x3

    .line 865
    .local v0, "maskedSupport":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    if-eqz p1, :cond_c

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v1, 0x1

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private static isSupportedAdaptiveAudioTrack(Lcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;)Z
    .registers 6
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p1, "formatSupport"    # I
    .param p2, "configuration"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;

    .prologue
    const/4 v0, 0x0

    .line 772
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v1

    if-eqz v1, :cond_22

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v2, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->channelCount:I

    if-ne v1, v2, :cond_22

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iget v2, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->sampleRate:I

    if-ne v1, v2, :cond_22

    iget-object v1, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v1, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->mimeType:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 775
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    :cond_21
    const/4 v0, 0x1

    :cond_22
    return v0
.end method

.method private static isSupportedAdaptiveVideoTrack(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIII)Z
    .registers 10
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "formatSupport"    # I
    .param p3, "requiredAdaptiveSupport"    # I
    .param p4, "maxVideoWidth"    # I
    .param p5, "maxVideoHeight"    # I
    .param p6, "maxVideoBitrate"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 584
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v1

    if-eqz v1, :cond_2f

    and-int v1, p2, p3

    if-eqz v1, :cond_2f

    if-eqz p1, :cond_16

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 585
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    :cond_16
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v1, v2, :cond_1e

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    if-gt v1, p4, :cond_2f

    :cond_1e
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq v1, v2, :cond_26

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-gt v1, p5, :cond_2f

    :cond_26
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-eq v1, v2, :cond_2e

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-gt v1, p6, :cond_2f

    :cond_2e
    const/4 v0, 0x1

    :cond_2f
    return v0
.end method

.method private static selectAdaptiveVideoTrack(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IIIIZZIIZLcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .registers 25
    .param p0, "rendererCapabilities"    # Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p1, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "formatSupport"    # [[I
    .param p3, "maxVideoWidth"    # I
    .param p4, "maxVideoHeight"    # I
    .param p5, "maxVideoBitrate"    # I
    .param p6, "allowNonSeamlessAdaptiveness"    # Z
    .param p7, "allowMixedMimeAdaptiveness"    # Z
    .param p8, "viewportWidth"    # I
    .param p9, "viewportHeight"    # I
    .param p10, "orientationMayChange"    # Z
    .param p11, "adaptiveTrackSelectionFactory"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 495
    if-eqz p6, :cond_33

    const/16 v4, 0xc

    .line 498
    .local v4, "requiredAdaptiveSupport":I
    :goto_4
    if-eqz p7, :cond_36

    .line 499
    invoke-interface {p0}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsMixedMimeTypeAdaptation()I

    move-result v2

    and-int/2addr v2, v4

    if-eqz v2, :cond_36

    const/4 v3, 0x1

    .line 500
    .local v3, "allowMixedMimeTypes":Z
    :goto_e
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_f
    iget v2, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v12, v2, :cond_3b

    .line 501
    invoke-virtual {p1, v12}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    .line 502
    .local v1, "group":Lcom/google/android/exoplayer2/source/TrackGroup;
    aget-object v2, p2, v12

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-static/range {v1 .. v10}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveVideoTracksForGroup(Lcom/google/android/exoplayer2/source/TrackGroup;[IZIIIIIIZ)[I

    move-result-object v11

    .line 505
    .local v11, "adaptiveTracks":[I
    array-length v2, v11

    if-lez v2, :cond_38

    .line 506
    move-object/from16 v0, p11

    invoke-interface {v0, v1, v11}, Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;->createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;[I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    .line 509
    .end local v1    # "group":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v11    # "adaptiveTracks":[I
    :goto_32
    return-object v2

    .line 495
    .end local v3    # "allowMixedMimeTypes":Z
    .end local v4    # "requiredAdaptiveSupport":I
    .end local v12    # "i":I
    :cond_33
    const/16 v4, 0x8

    goto :goto_4

    .line 499
    .restart local v4    # "requiredAdaptiveSupport":I
    :cond_36
    const/4 v3, 0x0

    goto :goto_e

    .line 500
    .restart local v1    # "group":Lcom/google/android/exoplayer2/source/TrackGroup;
    .restart local v3    # "allowMixedMimeTypes":Z
    .restart local v11    # "adaptiveTracks":[I
    .restart local v12    # "i":I
    :cond_38
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    .line 509
    .end local v1    # "group":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v11    # "adaptiveTracks":[I
    :cond_3b
    const/4 v2, 0x0

    goto :goto_32
.end method

.method private static selectFixedVideoTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IIIIIIZZZ)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .registers 32
    .param p0, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p1, "formatSupport"    # [[I
    .param p2, "maxVideoWidth"    # I
    .param p3, "maxVideoHeight"    # I
    .param p4, "maxVideoBitrate"    # I
    .param p5, "viewportWidth"    # I
    .param p6, "viewportHeight"    # I
    .param p7, "orientationMayChange"    # Z
    .param p8, "exceedConstraintsIfNecessary"    # Z
    .param p9, "exceedRendererCapabilitiesIfNecessary"    # Z

    .prologue
    .line 595
    const/4 v11, 0x0

    .line 596
    .local v11, "selectedGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v13, 0x0

    .line 597
    .local v13, "selectedTrackIndex":I
    const/4 v15, 0x0

    .line 598
    .local v15, "selectedTrackScore":I
    const/4 v10, -0x1

    .line 599
    .local v10, "selectedBitrate":I
    const/4 v12, -0x1

    .line 600
    .local v12, "selectedPixelCount":I
    const/4 v7, 0x0

    .local v7, "groupIndex":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_f7

    .line 601
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v17

    .line 602
    .local v17, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    move-object/from16 v0, v17

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getViewportFilteredTrackIndices(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v14

    .line 604
    .local v14, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    aget-object v16, p1, v7

    .line 605
    .local v16, "trackFormatSupport":[I
    const/16 v18, 0x0

    .local v18, "trackIndex":I
    :goto_26
    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_f3

    .line 606
    aget v20, v16, v18

    move/from16 v0, v20

    move/from16 v1, p9

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v20

    if-eqz v20, :cond_95

    .line 607
    invoke-virtual/range {v17 .. v18}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 608
    .local v5, "format":Lcom/google/android/exoplayer2/Format;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_98

    iget v0, v5, Lcom/google/android/exoplayer2/Format;->width:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_64

    iget v0, v5, Lcom/google/android/exoplayer2/Format;->width:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p2

    if-gt v0, v1, :cond_98

    :cond_64
    iget v0, v5, Lcom/google/android/exoplayer2/Format;->height:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7a

    iget v0, v5, Lcom/google/android/exoplayer2/Format;->height:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p3

    if-gt v0, v1, :cond_98

    :cond_7a
    iget v0, v5, Lcom/google/android/exoplayer2/Format;->bitrate:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_90

    iget v0, v5, Lcom/google/android/exoplayer2/Format;->bitrate:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p4

    if-gt v0, v1, :cond_98

    :cond_90
    const/4 v8, 0x1

    .line 612
    .local v8, "isWithinConstraints":Z
    :goto_91
    if-nez v8, :cond_9a

    if-nez p8, :cond_9a

    .line 605
    .end local v5    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v8    # "isWithinConstraints":Z
    :cond_95
    :goto_95
    add-int/lit8 v18, v18, 0x1

    goto :goto_26

    .line 608
    .restart local v5    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_98
    const/4 v8, 0x0

    goto :goto_91

    .line 616
    .restart local v8    # "isWithinConstraints":Z
    :cond_9a
    if-eqz v8, :cond_db

    const/16 v19, 0x2

    .line 617
    .local v19, "trackScore":I
    :goto_9e
    aget v20, v16, v18

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v20

    if-eqz v20, :cond_ae

    .line 618
    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    .line 620
    :cond_ae
    move/from16 v0, v19

    if-le v0, v15, :cond_de

    const/4 v9, 0x1

    .line 621
    .local v9, "selectTrack":Z
    :goto_b3
    move/from16 v0, v19

    if-ne v0, v15, :cond_cc

    .line 627
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Format;->getPixelCount()I

    move-result v6

    .line 628
    .local v6, "formatPixelCount":I
    if-eq v6, v12, :cond_e0

    .line 629
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Format;->getPixelCount()I

    move-result v20

    move/from16 v0, v20

    invoke-static {v0, v12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->compareFormatValues(II)I

    move-result v4

    .line 633
    .local v4, "comparisonResult":I
    :goto_c7
    if-eqz v8, :cond_ed

    if-lez v4, :cond_eb

    const/4 v9, 0x1

    .line 635
    .end local v4    # "comparisonResult":I
    .end local v6    # "formatPixelCount":I
    :cond_cc
    :goto_cc
    if-eqz v9, :cond_95

    .line 636
    move-object/from16 v11, v17

    .line 637
    move/from16 v13, v18

    .line 638
    move/from16 v15, v19

    .line 639
    iget v10, v5, Lcom/google/android/exoplayer2/Format;->bitrate:I

    .line 640
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Format;->getPixelCount()I

    move-result v12

    goto :goto_95

    .line 616
    .end local v9    # "selectTrack":Z
    .end local v19    # "trackScore":I
    :cond_db
    const/16 v19, 0x1

    goto :goto_9e

    .line 620
    .restart local v19    # "trackScore":I
    :cond_de
    const/4 v9, 0x0

    goto :goto_b3

    .line 631
    .restart local v6    # "formatPixelCount":I
    .restart local v9    # "selectTrack":Z
    :cond_e0
    iget v0, v5, Lcom/google/android/exoplayer2/Format;->bitrate:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v0, v10}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->compareFormatValues(II)I

    move-result v4

    .restart local v4    # "comparisonResult":I
    goto :goto_c7

    .line 633
    :cond_eb
    const/4 v9, 0x0

    goto :goto_cc

    :cond_ed
    if-gez v4, :cond_f1

    const/4 v9, 0x1

    goto :goto_cc

    :cond_f1
    const/4 v9, 0x0

    goto :goto_cc

    .line 600
    .end local v4    # "comparisonResult":I
    .end local v5    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v6    # "formatPixelCount":I
    .end local v8    # "isWithinConstraints":Z
    .end local v9    # "selectTrack":Z
    .end local v19    # "trackScore":I
    :cond_f3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    .line 645
    .end local v14    # "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "trackFormatSupport":[I
    .end local v17    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v18    # "trackIndex":I
    :cond_f7
    if-nez v11, :cond_fc

    const/16 v20, 0x0

    :goto_fb
    return-object v20

    :cond_fc
    new-instance v20, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    move-object/from16 v0, v20

    invoke-direct {v0, v11, v13}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    goto :goto_fb
.end method


# virtual methods
.method public getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->paramsReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    return-object v0
.end method

.method protected selectAudioTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILjava/lang/String;ZZLcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .registers 20
    .param p1, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "formatSupport"    # [[I
    .param p3, "preferredAudioLanguage"    # Ljava/lang/String;
    .param p4, "exceedRendererCapabilitiesIfNecessary"    # Z
    .param p5, "allowMixedMimeAdaptiveness"    # Z
    .param p6, "adaptiveTrackSelectionFactory"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    .prologue
    .line 668
    const/4 v5, -0x1

    .line 669
    .local v5, "selectedGroupIndex":I
    const/4 v6, -0x1

    .line 670
    .local v6, "selectedTrackIndex":I
    const/4 v7, 0x0

    .line 671
    .local v7, "selectedTrackScore":I
    const/4 v3, 0x0

    .local v3, "groupIndex":I
    :goto_4
    iget v12, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v3, v12, :cond_34

    .line 672
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v9

    .line 673
    .local v9, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    aget-object v8, p2, v3

    .line 674
    .local v8, "trackFormatSupport":[I
    const/4 v10, 0x0

    .local v10, "trackIndex":I
    :goto_f
    iget v12, v9, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v10, v12, :cond_31

    .line 675
    aget v12, v8, v10

    move/from16 v0, p4

    invoke-static {v12, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v12

    if-eqz v12, :cond_2e

    .line 676
    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 677
    .local v2, "format":Lcom/google/android/exoplayer2/Format;
    aget v12, v8, v10

    move-object/from16 v0, p3

    invoke-static {v12, v0, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getAudioTrackScore(ILjava/lang/String;Lcom/google/android/exoplayer2/Format;)I

    move-result v11

    .line 679
    .local v11, "trackScore":I
    if-le v11, v7, :cond_2e

    .line 680
    move v5, v3

    .line 681
    move v6, v10

    .line 682
    move v7, v11

    .line 674
    .end local v2    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v11    # "trackScore":I
    :cond_2e
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    .line 671
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 688
    .end local v8    # "trackFormatSupport":[I
    .end local v9    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v10    # "trackIndex":I
    :cond_34
    const/4 v12, -0x1

    if-ne v5, v12, :cond_39

    .line 689
    const/4 v12, 0x0

    .line 702
    :goto_38
    return-object v12

    .line 692
    :cond_39
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    .line 693
    .local v4, "selectedGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    if-eqz p6, :cond_51

    .line 695
    aget-object v12, p2, v5

    move/from16 v0, p5

    invoke-static {v4, v12, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveAudioTracks(Lcom/google/android/exoplayer2/source/TrackGroup;[IZ)[I

    move-result-object v1

    .line 697
    .local v1, "adaptiveTracks":[I
    array-length v12, v1

    if-lez v12, :cond_51

    .line 698
    move-object/from16 v0, p6

    invoke-interface {v0, v4, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;->createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;[I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v12

    goto :goto_38

    .line 702
    .end local v1    # "adaptiveTracks":[I
    :cond_51
    new-instance v12, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    invoke-direct {v12, v4, v6}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    goto :goto_38
.end method

.method protected selectOtherTrack(ILcom/google/android/exoplayer2/source/TrackGroupArray;[[IZ)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .registers 18
    .param p1, "trackType"    # I
    .param p2, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p3, "formatSupport"    # [[I
    .param p4, "exceedRendererCapabilitiesIfNecessary"    # Z

    .prologue
    .line 837
    const/4 v4, 0x0

    .line 838
    .local v4, "selectedGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v5, 0x0

    .line 839
    .local v5, "selectedTrackIndex":I
    const/4 v6, 0x0

    .line 840
    .local v6, "selectedTrackScore":I
    const/4 v2, 0x0

    .local v2, "groupIndex":I
    :goto_4
    iget v11, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v2, v11, :cond_45

    .line 841
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    .line 842
    .local v8, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    aget-object v7, p3, v2

    .line 843
    .local v7, "trackFormatSupport":[I
    const/4 v9, 0x0

    .local v9, "trackIndex":I
    :goto_f
    iget v11, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v9, v11, :cond_42

    .line 844
    aget v11, v7, v9

    move/from16 v0, p4

    invoke-static {v11, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v11

    if-eqz v11, :cond_3b

    .line 845
    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 846
    .local v1, "format":Lcom/google/android/exoplayer2/Format;
    iget v11, v1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_3e

    const/4 v3, 0x1

    .line 847
    .local v3, "isDefault":Z
    :goto_28
    if-eqz v3, :cond_40

    const/4 v10, 0x2

    .line 848
    .local v10, "trackScore":I
    :goto_2b
    aget v11, v7, v9

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v11

    if-eqz v11, :cond_36

    .line 849
    add-int/lit16 v10, v10, 0x3e8

    .line 851
    :cond_36
    if-le v10, v6, :cond_3b

    .line 852
    move-object v4, v8

    .line 853
    move v5, v9

    .line 854
    move v6, v10

    .line 843
    .end local v1    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v3    # "isDefault":Z
    .end local v10    # "trackScore":I
    :cond_3b
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 846
    .restart local v1    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_3e
    const/4 v3, 0x0

    goto :goto_28

    .line 847
    .restart local v3    # "isDefault":Z
    :cond_40
    const/4 v10, 0x1

    goto :goto_2b

    .line 840
    .end local v1    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v3    # "isDefault":Z
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 859
    .end local v7    # "trackFormatSupport":[I
    .end local v8    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v9    # "trackIndex":I
    :cond_45
    if-nez v4, :cond_49

    const/4 v11, 0x0

    :goto_48
    return-object v11

    :cond_49
    new-instance v11, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    invoke-direct {v11, v4, v5}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    goto :goto_48
.end method

.method protected selectTextTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILjava/lang/String;Ljava/lang/String;Z)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .registers 21
    .param p1, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "formatSupport"    # [[I
    .param p3, "preferredTextLanguage"    # Ljava/lang/String;
    .param p4, "preferredAudioLanguage"    # Ljava/lang/String;
    .param p5, "exceedRendererCapabilitiesIfNecessary"    # Z

    .prologue
    .line 783
    const/4 v5, 0x0

    .line 784
    .local v5, "selectedGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v6, 0x0

    .line 785
    .local v6, "selectedTrackIndex":I
    const/4 v7, 0x0

    .line 786
    .local v7, "selectedTrackScore":I
    const/4 v2, 0x0

    .local v2, "groupIndex":I
    :goto_4
    move-object/from16 v0, p1

    iget v13, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v2, v13, :cond_70

    .line 787
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v10

    .line 788
    .local v10, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    aget-object v9, p2, v2

    .line 789
    .local v9, "trackFormatSupport":[I
    const/4 v11, 0x0

    .local v11, "trackIndex":I
    :goto_13
    iget v13, v10, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v11, v13, :cond_6d

    .line 790
    aget v13, v9, v11

    move/from16 v0, p5

    invoke-static {v13, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v13

    if-eqz v13, :cond_4e

    .line 791
    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 792
    .local v1, "format":Lcom/google/android/exoplayer2/Format;
    iget v13, v1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_51

    const/4 v3, 0x1

    .line 793
    .local v3, "isDefault":Z
    :goto_2c
    iget v13, v1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_53

    const/4 v4, 0x1

    .line 795
    .local v4, "isForced":Z
    :goto_33
    move-object/from16 v0, p3

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->formatHasLanguage(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5b

    .line 796
    if-eqz v3, :cond_55

    .line 797
    const/4 v12, 0x6

    .line 818
    :goto_3e
    aget v13, v9, v11

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v13

    if-eqz v13, :cond_7a

    .line 819
    add-int/lit16 v8, v12, 0x3e8

    .line 821
    :goto_49
    if-le v8, v7, :cond_4e

    .line 822
    move-object v5, v10

    .line 823
    move v6, v11

    .end local v7    # "selectedTrackScore":I
    .local v8, "selectedTrackScore":I
    move v7, v8

    .line 789
    .end local v1    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v3    # "isDefault":Z
    .end local v4    # "isForced":Z
    .end local v8    # "selectedTrackScore":I
    .restart local v7    # "selectedTrackScore":I
    :cond_4e
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    .line 792
    .restart local v1    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_51
    const/4 v3, 0x0

    goto :goto_2c

    .line 793
    .restart local v3    # "isDefault":Z
    :cond_53
    const/4 v4, 0x0

    goto :goto_33

    .line 798
    .restart local v4    # "isForced":Z
    :cond_55
    if-nez v4, :cond_59

    .line 802
    const/4 v12, 0x5

    .local v12, "trackScore":I
    goto :goto_3e

    .line 804
    .end local v12    # "trackScore":I
    :cond_59
    const/4 v12, 0x4

    .restart local v12    # "trackScore":I
    goto :goto_3e

    .line 806
    .end local v12    # "trackScore":I
    :cond_5b
    if-eqz v3, :cond_5f

    .line 807
    const/4 v12, 0x3

    .restart local v12    # "trackScore":I
    goto :goto_3e

    .line 808
    .end local v12    # "trackScore":I
    :cond_5f
    if-eqz v4, :cond_4e

    .line 809
    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->formatHasLanguage(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6b

    .line 810
    const/4 v12, 0x2

    .restart local v12    # "trackScore":I
    goto :goto_3e

    .line 812
    .end local v12    # "trackScore":I
    :cond_6b
    const/4 v12, 0x1

    goto :goto_3e

    .line 786
    .end local v1    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v3    # "isDefault":Z
    .end local v4    # "isForced":Z
    :cond_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 829
    .end local v9    # "trackFormatSupport":[I
    .end local v10    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v11    # "trackIndex":I
    :cond_70
    if-nez v5, :cond_74

    const/4 v13, 0x0

    :goto_73
    return-object v13

    :cond_74
    new-instance v13, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    invoke-direct {v13, v5, v6}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    goto :goto_73

    .restart local v1    # "format":Lcom/google/android/exoplayer2/Format;
    .restart local v3    # "isDefault":Z
    .restart local v4    # "isForced":Z
    .restart local v9    # "trackFormatSupport":[I
    .restart local v10    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .restart local v11    # "trackIndex":I
    :cond_7a
    move v8, v12

    goto :goto_49
.end method

.method protected selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/source/TrackGroupArray;[[[I)[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .registers 26
    .param p1, "rendererCapabilities"    # [Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p2, "rendererTrackGroupArrays"    # [Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p3, "rendererFormatSupports"    # [[[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 424
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    .line 425
    .local v19, "rendererCount":I
    move/from16 v0, v19

    new-array v0, v0, [Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-object/from16 v20, v0

    .line 426
    .local v20, "rendererTrackSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->paramsReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 427
    .local v18, "params":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    const/16 v21, 0x0

    .line 429
    .local v21, "videoTrackAndRendererPresent":Z
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_19
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_72

    .line 430
    const/4 v2, 0x2

    aget-object v3, p1, v17

    invoke-interface {v3}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v3

    if-ne v2, v3, :cond_6d

    .line 431
    aget-object v3, p1, v17

    aget-object v4, p2, v17

    aget-object v5, p3, v17

    move-object/from16 v0, v18

    iget v6, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    move-object/from16 v0, v18

    iget v7, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    move-object/from16 v0, v18

    iget v8, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    move-object/from16 v0, v18

    iget-boolean v9, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    move-object/from16 v0, v18

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    move-object/from16 v0, v18

    iget v11, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    move-object/from16 v0, v18

    iget v12, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    move-object/from16 v0, v18

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->adaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    move-object/from16 v0, v18

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    move/from16 v16, v0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v16}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectVideoTrack(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IIIIZZIIZLcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;ZZ)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    aput-object v2, v20, v17

    .line 437
    aget-object v2, p2, v17

    iget v2, v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-lez v2, :cond_70

    const/4 v2, 0x1

    :goto_6b
    or-int v21, v21, v2

    .line 429
    :cond_6d
    add-int/lit8 v17, v17, 0x1

    goto :goto_19

    .line 437
    :cond_70
    const/4 v2, 0x0

    goto :goto_6b

    .line 441
    :cond_72
    const/16 v17, 0x0

    :goto_74
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_d6

    .line 442
    aget-object v2, p1, v17

    invoke-interface {v2}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v2

    packed-switch v2, :pswitch_data_d8

    .line 458
    aget-object v2, p1, v17

    invoke-interface {v2}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v2

    aget-object v3, p2, v17

    aget-object v4, p3, v17

    move-object/from16 v0, v18

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectOtherTrack(ILcom/google/android/exoplayer2/source/TrackGroupArray;[[IZ)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    aput-object v2, v20, v17

    .line 441
    :goto_99
    :pswitch_99
    add-int/lit8 v17, v17, 0x1

    goto :goto_74

    .line 447
    :pswitch_9c
    aget-object v3, p2, v17

    aget-object v4, p3, v17

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    move-object/from16 v0, v18

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    if-eqz v21, :cond_b8

    const/4 v8, 0x0

    :goto_af
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectAudioTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILjava/lang/String;ZZLcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    aput-object v2, v20, v17

    goto :goto_99

    :cond_b8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->adaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    goto :goto_af

    .line 453
    :pswitch_bd
    aget-object v3, p2, v17

    aget-object v4, p3, v17

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectTextTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILjava/lang/String;Ljava/lang/String;Z)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    aput-object v2, v20, v17

    goto :goto_99

    .line 464
    :cond_d6
    return-object v20

    .line 442
    nop

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_9c
        :pswitch_99
        :pswitch_bd
    .end packed-switch
.end method

.method protected selectVideoTrack(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IIIIZZIIZLcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;ZZ)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .registers 26
    .param p1, "rendererCapabilities"    # Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p2, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p3, "formatSupport"    # [[I
    .param p4, "maxVideoWidth"    # I
    .param p5, "maxVideoHeight"    # I
    .param p6, "maxVideoBitrate"    # I
    .param p7, "allowNonSeamlessAdaptiveness"    # Z
    .param p8, "allowMixedMimeAdaptiveness"    # Z
    .param p9, "viewportWidth"    # I
    .param p10, "viewportHeight"    # I
    .param p11, "orientationMayChange"    # Z
    .param p12, "adaptiveTrackSelectionFactory"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    .param p13, "exceedConstraintsIfNecessary"    # Z
    .param p14, "exceedRendererCapabilitiesIfNecessary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 475
    const/4 v10, 0x0

    .line 476
    .local v10, "selection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    if-eqz p12, :cond_7

    .line 477
    invoke-static/range {p1 .. p12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectAdaptiveVideoTrack(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IIIIZZIIZLcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v10

    .line 482
    :cond_7
    if-nez v10, :cond_1e

    move-object v0, p2

    move-object v1, p3

    move v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p13

    move/from16 v9, p14

    .line 483
    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectFixedVideoTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IIIIIIZZZ)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v10

    .line 487
    :cond_1e
    return-object v10
.end method

.method public setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V
    .registers 3
    .param p1, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .prologue
    .line 402
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->paramsReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 404
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->invalidate()V

    .line 406
    :cond_14
    return-void
.end method
