.class public final Lc/c/a/e/d/h/e/b/m;
.super Ljava/lang/Object;
.source "ResponseDto.kt"


# instance fields
.field public final cast:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "cast"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/e/d/h/e/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "description"
    .end annotation
.end field

.field public final genres:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "genres"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/e/d/h/e/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public final isDownloadable:Z
    .annotation runtime Lc/e/d/a/c;
        value = "isDownloadable"
    .end annotation
.end field

.field public final isLive:Z
    .annotation runtime Lc/e/d/a/c;
        value = "isLive"
    .end annotation
.end field

.field public final isSubscriptionOnly:Z
    .annotation runtime Lc/e/d/a/c;
        value = "isSubscriptionOnly"
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

.field public final priceBeforeDiscount:I
    .annotation runtime Lc/e/d/a/c;
        value = "priceBeforeDiscount"
    .end annotation
.end field

.field public final publisher:Lc/c/a/e/d/h/e/b/f;
    .annotation runtime Lc/e/d/a/c;
        value = "publisher"
    .end annotation
.end field

.field public final referrer:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "referrerList"
    .end annotation
.end field

.field public final relatedVideoPage:Lc/c/a/e/d/c/a/o;
    .annotation runtime Lc/e/d/a/c;
        value = "relatedVideoPage"
    .end annotation
.end field

.field public final shareMessage:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "shareMessage"
    .end annotation
.end field

.field public final thumbnails:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "previews"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/e/d/h/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public final videoCover:Lc/c/a/e/d/h/b/a/a;
    .annotation runtime Lc/e/d/a/c;
        value = "cover"
    .end annotation
.end field

.field public final videoId:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "identifier"
    .end annotation
.end field

.field public final videoInfoList:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "videoInfoList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/e/d/h/e/b/j;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final a()Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;
    .locals 5

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;

    .line 2
    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->description:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 3
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;-><init>(Ljava/lang/String;IILh/f/b/f;)V

    return-object v0
.end method

.method public final b()Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;
    .locals 12

    .line 1
    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->videoId:Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lc/c/a/e/d/h/e/b/m;->name:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/h/e/b/m;->genres:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 6
    check-cast v5, Lc/c/a/e/d/h/e/b/b;

    .line 7
    iget-object v6, p0, Lc/c/a/e/d/h/e/b/m;->referrer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lc/c/a/e/d/h/e/b/b;->a(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/cinema/GenreItem;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 8
    :cond_1
    iget-object v0, p0, Lc/c/a/e/d/h/e/b/m;->publisher:Lc/c/a/e/d/h/e/b/f;

    if-eqz v0, :cond_2

    iget-object v5, p0, Lc/c/a/e/d/h/e/b/m;->referrer:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lc/c/a/e/d/h/e/b/f;->a(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_2
    move-object v5, v3

    .line 9
    :goto_1
    iget-object v0, p0, Lc/c/a/e/d/h/e/b/m;->videoCover:Lc/c/a/e/d/h/b/a/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lc/c/a/e/d/h/b/a/a;->d()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    :cond_3
    move-object v6, v3

    .line 10
    :goto_2
    iget-object v7, p0, Lc/c/a/e/d/h/e/b/m;->shareMessage:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lc/c/a/e/d/h/e/b/m;->thumbnails:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lh/a/u;->i(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/e/d/h/b/a/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lc/c/a/e/d/h/b/a/a;->a()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_3

    :cond_4
    move-object v8, v3

    .line 12
    :goto_3
    iget-boolean v9, p0, Lc/c/a/e/d/h/e/b/m;->isLive:Z

    .line 13
    iget-object v10, p0, Lc/c/a/e/d/h/e/b/m;->referrer:Ljava/lang/String;

    .line 14
    new-instance v11, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;

    move-object v0, v11

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    invoke-direct/range {v0 .. v9}, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v11
.end method

.method public final c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/h/e/b/m;->videoInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Lcom/farsitel/bazaar/common/model/cinema/OtherInfoTitleItem;

    invoke-direct {v2}, Lcom/farsitel/bazaar/common/model/cinema/OtherInfoTitleItem;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 6
    check-cast v3, Lc/c/a/e/d/h/e/b/j;

    .line 7
    invoke-virtual {v3}, Lc/c/a/e/d/h/e/b/j;->a()Lcom/farsitel/bazaar/common/model/cinema/TextTitleItem;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public final d()Lcom/farsitel/bazaar/common/model/cinema/ScreenshotsItem;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->thumbnails:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lc/c/a/e/d/h/b/a/a;

    .line 4
    invoke-virtual {v6}, Lc/c/a/e/d/h/b/a/a;->b()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lc/c/a/e/d/h/e/b/i;->a(Ljava/lang/Integer;)Lcom/farsitel/bazaar/common/model/cinema/ThumbnailType;

    move-result-object v6

    sget-object v7, Lcom/farsitel/bazaar/common/model/cinema/ThumbnailType;->VIDEO:Lcom/farsitel/bazaar/common/model/cinema/ThumbnailType;

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_0

    goto :goto_1

    :cond_2
    move-object v5, v4

    .line 5
    :goto_1
    check-cast v5, Lc/c/a/e/d/h/b/a/a;

    if-eqz v5, :cond_3

    .line 6
    invoke-virtual {v5}, Lc/c/a/e/d/h/b/a/a;->e()Lcom/farsitel/bazaar/common/model/cinema/TrailerCoverItem;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v4

    :goto_2
    if-eqz v1, :cond_6

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->thumbnails:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-static {v1}, Lc/c/a/e/d/h/e/b/i;->a(Ljava/util/List;)Lcom/farsitel/bazaar/common/model/cinema/ScreenshotsItem;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotsItem;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {}, Lh/a/l;->a()Ljava/util/List;

    move-result-object v1

    :goto_3
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_5

    .line 10
    new-instance v4, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotsItem;

    invoke-static {v0}, Lh/a/u;->h(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotsItem;-><init>(Ljava/util/List;)V

    :cond_5
    return-object v4

    .line 11
    :cond_6
    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->thumbnails:Ljava/util/List;

    if-eqz v1, :cond_a

    .line 12
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lc/c/a/e/d/h/b/a/a;

    .line 13
    invoke-virtual {v6}, Lc/c/a/e/d/h/b/a/a;->b()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lc/c/a/e/d/h/e/b/i;->a(Ljava/lang/Integer;)Lcom/farsitel/bazaar/common/model/cinema/ThumbnailType;

    move-result-object v6

    sget-object v7, Lcom/farsitel/bazaar/common/model/cinema/ThumbnailType;->IMAGE:Lcom/farsitel/bazaar/common/model/cinema/ThumbnailType;

    if-ne v6, v7, :cond_8

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_7

    goto :goto_5

    :cond_9
    move-object v5, v4

    .line 14
    :goto_5
    check-cast v5, Lc/c/a/e/d/h/b/a/a;

    if-eqz v5, :cond_a

    .line 15
    invoke-virtual {v5}, Lc/c/a/e/d/h/b/a/a;->c()Lcom/farsitel/bazaar/common/model/cinema/CinemaBigScreenshotItem;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_a
    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->thumbnails:Ljava/util/List;

    if-eqz v1, :cond_b

    invoke-static {v1}, Lc/c/a/e/d/h/e/b/i;->a(Ljava/util/List;)Lcom/farsitel/bazaar/common/model/cinema/ScreenshotsItem;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotsItem;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-static {v1}, Lh/a/u;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    goto :goto_6

    :cond_b
    move-object v1, v4

    :goto_6
    if-eqz v1, :cond_c

    .line 18
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_c

    .line 19
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_c
    if-eqz v1, :cond_d

    .line 20
    invoke-static {v1}, Lh/a/u;->h(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_d

    goto :goto_7

    :cond_d
    invoke-static {}, Lh/a/l;->a()Ljava/util/List;

    move-result-object v1

    :goto_7
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_e

    .line 22
    new-instance v4, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotsItem;

    invoke-static {v0}, Lh/a/u;->h(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotsItem;-><init>(Ljava/util/List;)V

    :cond_e
    return-object v4
.end method

.method public final e()Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    new-instance v16, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    .line 2
    iget-object v2, v0, Lc/c/a/e/d/h/e/b/m;->videoId:Ljava/lang/String;

    .line 3
    iget-object v3, v0, Lc/c/a/e/d/h/e/b/m;->name:Ljava/lang/String;

    .line 4
    iget v1, v0, Lc/c/a/e/d/h/e/b/m;->price:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 5
    iget v1, v0, Lc/c/a/e/d/h/e/b/m;->priceBeforeDiscount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 6
    iget-object v1, v0, Lc/c/a/e/d/h/e/b/m;->publisher:Lc/c/a/e/d/h/e/b/f;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc/c/a/e/d/h/e/b/f;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v7, v1

    .line 7
    iget-boolean v6, v0, Lc/c/a/e/d/h/e/b/m;->isDownloadable:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 8
    iget-object v13, v0, Lc/c/a/e/d/h/e/b/m;->referrer:Ljava/lang/String;

    const/16 v14, 0x780

    const/4 v15, 0x0

    move-object/from16 v1, v16

    .line 9
    invoke-direct/range {v1 .. v15}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/Integer;ZZLcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;Ljava/lang/String;ILh/f/b/f;)V

    return-object v16
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_6

    instance-of v1, p1, Lc/c/a/e/d/h/e/b/m;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Lc/c/a/e/d/h/e/b/m;

    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->cast:Ljava/util/List;

    iget-object v3, p1, Lc/c/a/e/d/h/e/b/m;->cast:Ljava/util/List;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->description:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/h/e/b/m;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->genres:Ljava/util/List;

    iget-object v3, p1, Lc/c/a/e/d/h/e/b/m;->genres:Ljava/util/List;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lc/c/a/e/d/h/e/b/m;->isLive:Z

    iget-boolean v3, p1, Lc/c/a/e/d/h/e/b/m;->isLive:Z

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lc/c/a/e/d/h/e/b/m;->isSubscriptionOnly:Z

    iget-boolean v3, p1, Lc/c/a/e/d/h/e/b/m;->isSubscriptionOnly:Z

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lc/c/a/e/d/h/e/b/m;->isDownloadable:Z

    iget-boolean v3, p1, Lc/c/a/e/d/h/e/b/m;->isDownloadable:Z

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->name:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/h/e/b/m;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lc/c/a/e/d/h/e/b/m;->price:I

    iget v3, p1, Lc/c/a/e/d/h/e/b/m;->price:I

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_5

    iget v1, p0, Lc/c/a/e/d/h/e/b/m;->priceBeforeDiscount:I

    iget v3, p1, Lc/c/a/e/d/h/e/b/m;->priceBeforeDiscount:I

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_5

    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->publisher:Lc/c/a/e/d/h/e/b/f;

    iget-object v3, p1, Lc/c/a/e/d/h/e/b/m;->publisher:Lc/c/a/e/d/h/e/b/f;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->relatedVideoPage:Lc/c/a/e/d/c/a/o;

    iget-object v3, p1, Lc/c/a/e/d/h/e/b/m;->relatedVideoPage:Lc/c/a/e/d/c/a/o;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->shareMessage:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/h/e/b/m;->shareMessage:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->thumbnails:Ljava/util/List;

    iget-object v3, p1, Lc/c/a/e/d/h/e/b/m;->thumbnails:Ljava/util/List;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->videoCover:Lc/c/a/e/d/h/b/a/a;

    iget-object v3, p1, Lc/c/a/e/d/h/e/b/m;->videoCover:Lc/c/a/e/d/h/b/a/a;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->videoId:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/h/e/b/m;->videoId:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->videoInfoList:Ljava/util/List;

    iget-object v3, p1, Lc/c/a/e/d/h/e/b/m;->videoInfoList:Ljava/util/List;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->referrer:Ljava/lang/String;

    iget-object p1, p1, Lc/c/a/e/d/h/e/b/m;->referrer:Ljava/lang/String;

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    return v2

    :cond_6
    :goto_5
    return v0
.end method

.method public final f()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lc/c/a/e/d/h/e/b/m;->b()Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Lc/c/a/e/d/h/e/b/m;->e()Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lc/c/a/e/d/h/e/b/m;->a()Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lc/c/a/e/d/h/e/b/m;->d()Lcom/farsitel/bazaar/common/model/cinema/ScreenshotsItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->cast:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_4

    .line 7
    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->cast:Ljava/util/List;

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 10
    check-cast v3, Lc/c/a/e/d/h/e/b/a;

    .line 11
    iget-object v4, p0, Lc/c/a/e/d/h/e/b/m;->referrer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lc/c/a/e/d/h/e/b/a;->a(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/cinema/CrewItem;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CrewsItem;

    invoke-direct {v1, v2}, Lcom/farsitel/bazaar/common/model/cinema/CrewsItem;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_4
    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->relatedVideoPage:Lc/c/a/e/d/c/a/o;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lc/c/a/e/d/c/a/o;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_5
    invoke-virtual {p0}, Lc/c/a/e/d/h/e/b/m;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lc/c/a/e/d/h/e/b/m;->cast:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/e/b/m;->description:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/e/b/m;->genres:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lc/c/a/e/d/h/e/b/m;->isLive:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lc/c/a/e/d/h/e/b/m;->isSubscriptionOnly:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lc/c/a/e/d/h/e/b/m;->isDownloadable:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/e/b/m;->name:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lc/c/a/e/d/h/e/b/m;->price:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lc/c/a/e/d/h/e/b/m;->priceBeforeDiscount:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/e/b/m;->publisher:Lc/c/a/e/d/h/e/b/f;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lc/c/a/e/d/h/e/b/f;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/e/b/m;->relatedVideoPage:Lc/c/a/e/d/c/a/o;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lc/c/a/e/d/c/a/o;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/e/b/m;->shareMessage:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/e/b/m;->thumbnails:Ljava/util/List;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_a
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/e/b/m;->videoCover:Lc/c/a/e/d/h/b/a/a;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lc/c/a/e/d/h/b/a/a;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/e/b/m;->videoId:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_c
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/e/b/m;->videoInfoList:Ljava/util/List;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_d
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/e/b/m;->referrer:Ljava/lang/String;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_e
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoInfoResponseDto(cast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->cast:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", genres="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->genres:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lc/c/a/e/d/h/e/b/m;->isLive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSubscriptionOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lc/c/a/e/d/h/e/b/m;->isSubscriptionOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDownloadable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lc/c/a/e/d/h/e/b/m;->isDownloadable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/h/e/b/m;->price:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", priceBeforeDiscount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/h/e/b/m;->priceBeforeDiscount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", publisher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->publisher:Lc/c/a/e/d/h/e/b/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", relatedVideoPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->relatedVideoPage:Lc/c/a/e/d/c/a/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shareMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->shareMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", thumbnails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->thumbnails:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoCover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->videoCover:Lc/c/a/e/d/h/b/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->videoInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/e/b/m;->referrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
