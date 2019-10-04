.class public final Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;
.super Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;
.source "ViewHolderItem.kt"


# instance fields
.field public final cover:Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

.field public final genres:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/farsitel/bazaar/common/model/cinema/GenreItem;",
            ">;"
        }
    .end annotation
.end field

.field public final headerImage:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final publisher:Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;

.field public final referrer:Ljava/lang/String;

.field public final seriesId:Ljava/lang/String;

.field public final shareMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/farsitel/bazaar/common/model/cinema/GenreItem;",
            ">;",
            "Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;",
            "Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p9

    const-string v0, "id"

    invoke-static {v11, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "seriesId"

    invoke-static {v12, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {v13, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {v14, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v9, p9

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iput-object v11, v10, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->id:Ljava/lang/String;

    iput-object v12, v10, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->seriesId:Ljava/lang/String;

    iput-object v13, v10, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->name:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v0, v10, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->genres:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    iput-object v0, v10, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->publisher:Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;

    move-object/from16 v0, p6

    iput-object v0, v10, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->cover:Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    move-object/from16 v0, p7

    iput-object v0, v10, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->shareMessage:Ljava/lang/String;

    move-object/from16 v0, p8

    iput-object v0, v10, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->headerImage:Ljava/lang/String;

    iput-object v14, v10, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->referrer:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;
    .locals 10

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    move-object v2, p0

    iget-object v3, v2, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->seriesId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, p0

    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getGenres()Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getPublisher()Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getCover()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    move-result-object v7

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getShareMessage()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getHeaderImage()Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getReferrer()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_8
    move-object/from16 v0, p9

    :goto_8
    move-object p1, v1

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v0

    invoke-virtual/range {p0 .. p9}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->seriesId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component4()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/farsitel/bazaar/common/model/cinema/GenreItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getGenres()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final component5()Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;
    .locals 1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getPublisher()Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;

    move-result-object v0

    return-object v0
.end method

.method public final component6()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;
    .locals 1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getCover()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    move-result-object v0

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getShareMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getHeaderImage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getReferrer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/farsitel/bazaar/common/model/cinema/GenreItem;",
            ">;",
            "Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;",
            "Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;"
        }
    .end annotation

    const-string v0, "id"

    move-object v2, p1

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "seriesId"

    move-object v3, p2

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object v4, p3

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;

    move-object v1, v0

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->seriesId:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->seriesId:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getGenres()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getGenres()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getPublisher()Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getPublisher()Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;

    move-result-object v1

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getCover()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getCover()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    move-result-object v1

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getShareMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getShareMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getHeaderImage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getHeaderImage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getReferrer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getCover()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->cover:Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    return-object v0
.end method

.method public getGenres()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/farsitel/bazaar/common/model/cinema/GenreItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->genres:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHeaderImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->headerImage:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisher()Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->publisher:Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;

    return-object v0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeriesId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->seriesId:Ljava/lang/String;

    return-object v0
.end method

.method public getShareMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->shareMessage:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->seriesId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getName()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getGenres()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/AbstractList;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getPublisher()Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getCover()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getShareMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getHeaderImage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getReferrer()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EpisodeInfoItem(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", seriesId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->seriesId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", genres="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getGenres()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", publisher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getPublisher()Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getCover()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shareMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getShareMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", headerImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getHeaderImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getReferrer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
