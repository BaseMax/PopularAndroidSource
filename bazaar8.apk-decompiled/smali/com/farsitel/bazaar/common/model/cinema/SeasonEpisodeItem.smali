.class public final Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;
.super Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;
.source "ViewHolderItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;


# instance fields
.field public final cover:Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

.field public final episodeIndex:Ljava/lang/Integer;

.field public final fullName:Ljava/lang/String;

.field public final identifier:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final price:J

.field public final priceBeforeDiscount:Ljava/lang/Integer;

.field public final referrer:Ljava/lang/String;

.field public final seasonIndex:Ljava/lang/Integer;

.field public final serialIdentifier:Ljava/lang/String;

.field public final serialName:Ljava/lang/String;

.field public final shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

.field public showLoadingButton:Z

.field public final viewType:I


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;Lcom/farsitel/bazaar/common/model/ShortInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/Integer;ZLjava/lang/String;)V
    .locals 11

    move-object v8, p0

    move-object v9, p3

    move-object/from16 v10, p14

    const-string v0, "identifier"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {v10, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-wide/from16 v3, p10

    move-object/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p14

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    move-object v0, p1

    iput-object v0, v8, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->cover:Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    move-object v0, p2

    iput-object v0, v8, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

    iput-object v9, v8, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->identifier:Ljava/lang/String;

    move-object v0, p4

    iput-object v0, v8, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->serialIdentifier:Ljava/lang/String;

    move-object/from16 v0, p5

    iput-object v0, v8, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->fullName:Ljava/lang/String;

    move-object/from16 v0, p6

    iput-object v0, v8, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->name:Ljava/lang/String;

    move-object/from16 v0, p7

    iput-object v0, v8, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->serialName:Ljava/lang/String;

    move-object/from16 v0, p8

    iput-object v0, v8, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->episodeIndex:Ljava/lang/Integer;

    move-object/from16 v0, p9

    iput-object v0, v8, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->seasonIndex:Ljava/lang/Integer;

    move-wide/from16 v0, p10

    iput-wide v0, v8, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->price:J

    move-object/from16 v0, p12

    iput-object v0, v8, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->priceBeforeDiscount:Ljava/lang/Integer;

    move/from16 v0, p13

    iput-boolean v0, v8, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->showLoadingButton:Z

    iput-object v10, v8, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->referrer:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SEASON_EPISODE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, v8, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->viewType:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;Lcom/farsitel/bazaar/common/model/ShortInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/Integer;ZLjava/lang/String;ILh/f/b/f;)V
    .locals 18

    move/from16 v0, p15

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    move-wide v13, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v13, p10

    :goto_0
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/16 v16, 0x0

    goto :goto_1

    :cond_1
    move/from16 v16, p13

    :goto_1
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v15, p12

    move-object/from16 v17, p14

    .line 1
    invoke-direct/range {v3 .. v17}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;-><init>(Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;Lcom/farsitel/bazaar/common/model/ShortInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/Integer;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;Lcom/farsitel/bazaar/common/model/ShortInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/Integer;ZLjava/lang/String;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;
    .locals 15

    move-object v0, p0

    move/from16 v1, p15

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getCover()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->serialIdentifier:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getFullName()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->name:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->serialName:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getEpisodeIndex()Ljava/lang/Integer;

    move-result-object v9

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->seasonIndex:Ljava/lang/Integer;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getPrice()J

    move-result-wide v11

    goto :goto_9

    :cond_9
    move-wide/from16 v11, p10

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->priceBeforeDiscount:Ljava/lang/Integer;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-boolean v14, v0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->showLoadingButton:Z

    goto :goto_b

    :cond_b
    move/from16 v14, p13

    :goto_b
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getReferrer()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_c
    move-object/from16 v1, p14

    :goto_c
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-wide/from16 p10, v11

    move-object/from16 p12, v13

    move/from16 p13, v14

    move-object/from16 p14, v1

    invoke-virtual/range {p0 .. p14}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->copy(Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;Lcom/farsitel/bazaar/common/model/ShortInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/Integer;ZLjava/lang/String;)Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;
    .locals 1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getCover()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    move-result-object v0

    return-object v0
.end method

.method public final component10()J
    .locals 2

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getPrice()J

    move-result-wide v0

    return-wide v0
.end method

.method public final component11()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->priceBeforeDiscount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component12()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->showLoadingButton:Z

    return v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getReferrer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Lcom/farsitel/bazaar/common/model/ShortInfo;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->serialIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getFullName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->serialName:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getEpisodeIndex()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final component9()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->seasonIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;Lcom/farsitel/bazaar/common/model/ShortInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/Integer;ZLjava/lang/String;)Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;
    .locals 16

    const-string v0, "identifier"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-wide/from16 v11, p10

    move-object/from16 v13, p12

    move/from16 v14, p13

    invoke-direct/range {v1 .. v15}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;-><init>(Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;Lcom/farsitel/bazaar/common/model/ShortInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/Integer;ZLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getCover()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getCover()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    move-result-object v3

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->serialIdentifier:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->serialIdentifier:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->serialName:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->serialName:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getEpisodeIndex()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getEpisodeIndex()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->seasonIndex:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->seasonIndex:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getPrice()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getPrice()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->priceBeforeDiscount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->priceBeforeDiscount:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->showLoadingButton:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->showLoadingButton:Z

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getReferrer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public getCover()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->cover:Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    return-object v0
.end method

.method public getEpisodeIndex()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->episodeIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->price:J

    return-wide v0
.end method

.method public final getPriceBeforeDiscount()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->priceBeforeDiscount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeasonIndex()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->seasonIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSerialIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->serialIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerialName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->serialName:Ljava/lang/String;

    return-object v0
.end method

.method public final getShortInfo()Lcom/farsitel/bazaar/common/model/ShortInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

    return-object v0
.end method

.method public final getShowLoadingButton()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->showLoadingButton:Z

    return v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->viewType:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getCover()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/ShortInfo;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->serialIdentifier:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getFullName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->name:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->serialName:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getEpisodeIndex()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->seasonIndex:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getPrice()J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->priceBeforeDiscount:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->showLoadingButton:Z

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :cond_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getReferrer()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_b
    add-int/2addr v0, v1

    return v0
.end method

.method public final setShowLoadingButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->showLoadingButton:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeasonEpisodeItem(cover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getCover()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shortInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serialIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->serialIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fullName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serialName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->serialName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", episodeIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getEpisodeIndex()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", seasonIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->seasonIndex:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getPrice()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", priceBeforeDiscount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->priceBeforeDiscount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showLoadingButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->showLoadingButton:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/SeasonEpisodeItem;->getReferrer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
