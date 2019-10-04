.class public final Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;
.super Ljava/lang/Object;
.source "FehrestResponseDto.kt"


# instance fields
.field public final coverUrl:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "coverUrl"
    .end annotation
.end field

.field public final episode:Lcom/farsitel/bazaar/data/dto/responsedto/PageEpisodeDto;
    .annotation runtime Lc/e/d/a/c;
        value = "episode"
    .end annotation
.end field

.field public final movie:Lcom/farsitel/bazaar/data/dto/responsedto/PageMovieDto;
    .annotation runtime Lc/e/d/a/c;
        value = "movie"
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "name"
    .end annotation
.end field

.field public final price:I
    .annotation runtime Lc/e/d/a/c;
        value = "price"
    .end annotation
.end field

.field public final priceBeforeDiscountString:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "priceBeforeDiscountString"
    .end annotation
.end field

.field public final priceString:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "priceString"
    .end annotation
.end field

.field public final referrer:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "referrerList"
    .end annotation
.end field

.field public final serial:Lcom/farsitel/bazaar/data/dto/responsedto/PageSerialDto;
    .annotation runtime Lc/e/d/a/c;
        value = "serial"
    .end annotation
.end field

.field public final shortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;
    .annotation runtime Lc/e/d/a/c;
        value = "shortInfo"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;Lcom/farsitel/bazaar/data/dto/responsedto/PageMovieDto;Lcom/farsitel/bazaar/data/dto/responsedto/PageSerialDto;Lcom/farsitel/bazaar/data/dto/responsedto/PageEpisodeDto;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverUrl"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->name:Ljava/lang/String;

    iput p2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->price:I

    iput-object p3, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->priceBeforeDiscountString:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->priceString:Ljava/lang/String;

    iput-object p5, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->coverUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->shortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

    iput-object p7, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->movie:Lcom/farsitel/bazaar/data/dto/responsedto/PageMovieDto;

    iput-object p8, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->serial:Lcom/farsitel/bazaar/data/dto/responsedto/PageSerialDto;

    iput-object p9, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->episode:Lcom/farsitel/bazaar/data/dto/responsedto/PageEpisodeDto;

    iput-object p10, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->referrer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCoverUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getEpisode()Lcom/farsitel/bazaar/data/dto/responsedto/PageEpisodeDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->episode:Lcom/farsitel/bazaar/data/dto/responsedto/PageEpisodeDto;

    return-object v0
.end method

.method public final getMovie()Lcom/farsitel/bazaar/data/dto/responsedto/PageMovieDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->movie:Lcom/farsitel/bazaar/data/dto/responsedto/PageMovieDto;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->price:I

    return v0
.end method

.method public final getPriceBeforeDiscountString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->priceBeforeDiscountString:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriceString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->priceString:Ljava/lang/String;

    return-object v0
.end method

.method public final getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerial()Lcom/farsitel/bazaar/data/dto/responsedto/PageSerialDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->serial:Lcom/farsitel/bazaar/data/dto/responsedto/PageSerialDto;

    return-object v0
.end method

.method public final getShortInfo()Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->shortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

    return-object v0
.end method

.method public final toEpisodeItem()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    new-instance v18, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    .line 2
    iget-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->episode:Lcom/farsitel/bazaar/data/dto/responsedto/PageEpisodeDto;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/dto/responsedto/PageEpisodeDto;->getVideoId()Ljava/lang/String;

    move-result-object v3

    .line 3
    iget-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->episode:Lcom/farsitel/bazaar/data/dto/responsedto/PageEpisodeDto;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/dto/responsedto/PageEpisodeDto;->getEpisodeId()Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->episode:Lcom/farsitel/bazaar/data/dto/responsedto/PageEpisodeDto;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/dto/responsedto/PageEpisodeDto;->getEpisodeIdx()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 5
    iget-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->episode:Lcom/farsitel/bazaar/data/dto/responsedto/PageEpisodeDto;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/dto/responsedto/PageEpisodeDto;->getSeasonIdx()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 6
    iget-object v7, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->coverUrl:Ljava/lang/String;

    .line 7
    iget-object v8, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->name:Ljava/lang/String;

    .line 8
    iget v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->price:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 9
    iget-object v10, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->priceString:Ljava/lang/String;

    .line 10
    iget-object v11, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->priceBeforeDiscountString:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 11
    iget-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->shortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lc/c/a/e/f/g;->a(Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;)Lcom/farsitel/bazaar/common/model/ShortInfo;

    move-result-object v1

    move-object v14, v1

    goto :goto_0

    :cond_0
    move-object v14, v2

    .line 12
    :goto_0
    iget-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->referrer:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object/from16 v19, v1

    const/4 v15, 0x0

    const/16 v16, 0x2000

    const/16 v17, 0x0

    move-object/from16 v1, v18

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move v12, v13

    move-object v13, v14

    move-object/from16 v14, v19

    .line 13
    invoke-direct/range {v1 .. v17}, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLcom/farsitel/bazaar/common/model/ShortInfo;Ljava/lang/String;ZILh/f/b/f;)V

    return-object v18

    .line 14
    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V

    throw v2
.end method

.method public final toMovieItem()Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    new-instance v16, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    .line 2
    iget-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->movie:Lcom/farsitel/bazaar/data/dto/responsedto/PageMovieDto;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/dto/responsedto/PageMovieDto;->getVideoId()Ljava/lang/String;

    move-result-object v3

    .line 3
    iget-object v4, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->name:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->shortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;->getInfo()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v2

    .line 5
    :goto_0
    iget-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->shortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;->getMoreInfo()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, v2

    :goto_1
    const/4 v7, 0x0

    .line 6
    iget v8, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->price:I

    .line 7
    iget-object v9, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->priceString:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 8
    iget-object v12, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->coverUrl:Ljava/lang/String;

    .line 9
    iget-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->referrer:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v13, v1

    const/4 v14, 0x0

    const/16 v15, 0x800

    const/16 v17, 0x0

    move-object/from16 v1, v16

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move v13, v14

    move v14, v15

    move-object/from16 v15, v17

    .line 10
    invoke-direct/range {v1 .. v15}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ILjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZILh/f/b/f;)V

    return-object v16

    .line 11
    :cond_3
    invoke-static {}, Lh/f/b/j;->a()V

    throw v2
.end method

.method public final toSerialItem()Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;
    .locals 15

    .line 1
    new-instance v13, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->serial:Lcom/farsitel/bazaar/data/dto/responsedto/PageSerialDto;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/dto/responsedto/PageSerialDto;->getVideoId()Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->serial:Lcom/farsitel/bazaar/data/dto/responsedto/PageSerialDto;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/dto/responsedto/PageSerialDto;->getEpisodeIdx()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->serial:Lcom/farsitel/bazaar/data/dto/responsedto/PageSerialDto;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/dto/responsedto/PageSerialDto;->getSeasonIdx()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 5
    iget-object v5, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->coverUrl:Ljava/lang/String;

    .line 6
    iget-object v6, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->name:Ljava/lang/String;

    .line 7
    iget v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->price:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 8
    iget-object v8, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->priceString:Ljava/lang/String;

    .line 9
    iget-object v9, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->priceBeforeDiscountString:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 10
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->shortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lc/c/a/e/f/g;->a(Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;)Lcom/farsitel/bazaar/common/model/ShortInfo;

    move-result-object v0

    move-object v12, v0

    goto :goto_0

    :cond_0
    move-object v12, v1

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->referrer:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v14, v0

    move-object v0, v13

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v14

    .line 12
    invoke-direct/range {v0 .. v12}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLcom/farsitel/bazaar/common/model/ShortInfo;Ljava/lang/String;)V

    return-object v13

    .line 13
    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1
.end method

.method public final toVideoItem()Lcom/farsitel/bazaar/common/model/page/ListItem;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->movie:Lcom/farsitel/bazaar/data/dto/responsedto/PageMovieDto;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->toMovieItem()Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    move-result-object v4

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;-><init>(Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;ZILh/f/b/f;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->serial:Lcom/farsitel/bazaar/data/dto/responsedto/PageSerialDto;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/farsitel/bazaar/common/model/page/ListItem$Serial;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->toSerialItem()Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Serial;-><init>(Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->episode:Lcom/farsitel/bazaar/data/dto/responsedto/PageEpisodeDto;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->toEpisodeItem()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object v4

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;-><init>(Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;ZILh/f/b/f;)V

    :goto_0
    return-object v0

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "invalid common video"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
