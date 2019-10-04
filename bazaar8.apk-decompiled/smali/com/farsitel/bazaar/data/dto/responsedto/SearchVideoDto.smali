.class public final Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;
.super Ljava/lang/Object;
.source "AppListDto.kt"


# instance fields
.field public final isAd:Ljava/lang/Boolean;
    .annotation runtime Lc/e/d/a/c;
        value = "isAd"
    .end annotation
.end field

.field public final jsonReferrer:Lc/e/d/p;
    .annotation runtime Lc/e/d/a/c;
        value = "jref"
    .end annotation
.end field

.field public final videoCoverUrl:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "coverUrl"
    .end annotation
.end field

.field public final videoId:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "videoId"
    .end annotation
.end field

.field public final videoName:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "name"
    .end annotation
.end field

.field public final videoPrice:I
    .annotation runtime Lc/e/d/a/c;
        value = "price"
    .end annotation
.end field

.field public final videoPriceBeforeDiscount:Ljava/lang/Integer;
    .annotation runtime Lc/e/d/a/c;
        value = "priceBeforeDiscount"
    .end annotation
.end field

.field public final videoRate:Ljava/lang/Float;
    .annotation runtime Lc/e/d/a/c;
        value = "rate"
    .end annotation
.end field

.field public final videoReferrer:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "referrer"
    .end annotation
.end field

.field public final videoShortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;
    .annotation runtime Lc/e/d/a/c;
        value = "shortInfo"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ILjava/lang/Integer;Ljava/lang/String;Lc/e/d/p;Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "videoName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCoverUrl"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoName:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoId:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoCoverUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoRate:Ljava/lang/Float;

    iput p5, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoPrice:I

    iput-object p6, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoPriceBeforeDiscount:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoReferrer:Ljava/lang/String;

    iput-object p8, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->jsonReferrer:Lc/e/d/p;

    iput-object p9, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoShortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

    iput-object p10, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->isAd:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ILjava/lang/Integer;Ljava/lang/String;Lc/e/d/p;Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoCoverUrl:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoRate:Ljava/lang/Float;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoPrice:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoPriceBeforeDiscount:Ljava/lang/Integer;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoReferrer:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->jsonReferrer:Lc/e/d/p;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoShortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->isAd:Ljava/lang/Boolean;

    goto :goto_9

    :cond_9
    move-object/from16 v1, p10

    :goto_9
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ILjava/lang/Integer;Ljava/lang/String;Lc/e/d/p;Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;Ljava/lang/Boolean;)Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoName:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->isAd:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoCoverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoRate:Ljava/lang/Float;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoPrice:I

    return v0
.end method

.method public final component6()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoPriceBeforeDiscount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoReferrer:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Lc/e/d/p;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->jsonReferrer:Lc/e/d/p;

    return-object v0
.end method

.method public final component9()Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoShortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ILjava/lang/Integer;Ljava/lang/String;Lc/e/d/p;Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;Ljava/lang/Boolean;)Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;
    .locals 12

    const-string v0, "videoName"

    move-object v2, p1

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    move-object v3, p2

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCoverUrl"

    move-object v4, p3

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;

    move-object v1, v0

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ILjava/lang/Integer;Ljava/lang/String;Lc/e/d/p;Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoName:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoName:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoId:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoId:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoCoverUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoCoverUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoRate:Ljava/lang/Float;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoRate:Ljava/lang/Float;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoPrice:I

    iget v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoPrice:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoPriceBeforeDiscount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoPriceBeforeDiscount:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoReferrer:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoReferrer:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->jsonReferrer:Lc/e/d/p;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->jsonReferrer:Lc/e/d/p;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoShortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoShortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->isAd:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->isAd:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public final getJsonReferrer()Lc/e/d/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->jsonReferrer:Lc/e/d/p;

    return-object v0
.end method

.method public final getVideoCoverUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoCoverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoName:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoPrice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoPrice:I

    return v0
.end method

.method public final getVideoPriceBeforeDiscount()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoPriceBeforeDiscount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getVideoRate()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoRate:Ljava/lang/Float;

    return-object v0
.end method

.method public final getVideoReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoReferrer:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoShortInfo()Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoShortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoCoverUrl:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoRate:Ljava/lang/Float;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoPrice:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoPriceBeforeDiscount:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoReferrer:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->jsonReferrer:Lc/e/d/p;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoShortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->isAd:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public final isAd()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->isAd:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchVideoDto(videoName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoCoverUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoCoverUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoRate:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoPrice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoPriceBeforeDiscount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoPriceBeforeDiscount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoReferrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoReferrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", jsonReferrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->jsonReferrer:Lc/e/d/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoShortInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->videoShortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->isAd:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
