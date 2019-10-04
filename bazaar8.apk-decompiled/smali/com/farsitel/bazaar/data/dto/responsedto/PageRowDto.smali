.class public final Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;
.super Ljava/lang/Object;
.source "FehrestResponseDto.kt"


# instance fields
.field public final app:Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;
    .annotation runtime Lc/e/d/a/c;
        value = "app"
    .end annotation
.end field

.field public final appList:Lcom/farsitel/bazaar/data/dto/responsedto/AppListDto;
    .annotation runtime Lc/e/d/a/c;
        value = "appList"
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "description"
    .end annotation
.end field

.field public final genre:Lcom/farsitel/bazaar/data/dto/responsedto/PageGenreRowDto;
    .annotation runtime Lc/e/d/a/c;
        value = "genre"
    .end annotation
.end field

.field public final genreList:Lcom/farsitel/bazaar/data/dto/responsedto/GenreListDto;
    .annotation runtime Lc/e/d/a/c;
        value = "genreList"
    .end annotation
.end field

.field public final hami:Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;
    .annotation runtime Lc/e/d/a/c;
        value = "hamiPromo"
    .end annotation
.end field

.field public final isAd:Ljava/lang/Boolean;
    .annotation runtime Lc/e/d/a/c;
        value = "isAd"
    .end annotation
.end field

.field public final moreAction:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "more"
    .end annotation
.end field

.field public final movie:Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;
    .annotation runtime Lc/e/d/a/c;
        value = "video"
    .end annotation
.end field

.field public final promo:Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;
    .annotation runtime Lc/e/d/a/c;
        value = "promo"
    .end annotation
.end field

.field public final promoList:Lcom/farsitel/bazaar/data/dto/responsedto/PromoListDto;
    .annotation runtime Lc/e/d/a/c;
        value = "promoList"
    .end annotation
.end field

.field public final referrer:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "referrerList"
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "title"
    .end annotation
.end field

.field public final videoList:Lcom/farsitel/bazaar/data/dto/responsedto/VideoListDto;
    .annotation runtime Lc/e/d/a/c;
        value = "videoList"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;Lcom/farsitel/bazaar/data/dto/responsedto/PageGenreRowDto;Lcom/farsitel/bazaar/data/dto/responsedto/AppListDto;Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;Lcom/farsitel/bazaar/data/dto/responsedto/VideoListDto;Lcom/farsitel/bazaar/data/dto/responsedto/PromoListDto;Lcom/farsitel/bazaar/data/dto/responsedto/GenreListDto;Ljava/lang/String;)V
    .locals 1

    const-string v0, "referrer"

    invoke-static {p14, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->moreAction:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->isAd:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->description:Ljava/lang/String;

    iput-object p5, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;

    iput-object p6, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->movie:Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;

    iput-object p7, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->hami:Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;

    iput-object p8, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->genre:Lcom/farsitel/bazaar/data/dto/responsedto/PageGenreRowDto;

    iput-object p9, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->appList:Lcom/farsitel/bazaar/data/dto/responsedto/AppListDto;

    iput-object p10, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->promo:Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;

    iput-object p11, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->videoList:Lcom/farsitel/bazaar/data/dto/responsedto/VideoListDto;

    iput-object p12, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->promoList:Lcom/farsitel/bazaar/data/dto/responsedto/PromoListDto;

    iput-object p13, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->genreList:Lcom/farsitel/bazaar/data/dto/responsedto/GenreListDto;

    iput-object p14, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->referrer:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;Lcom/farsitel/bazaar/data/dto/responsedto/PageGenreRowDto;Lcom/farsitel/bazaar/data/dto/responsedto/AppListDto;Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;Lcom/farsitel/bazaar/data/dto/responsedto/VideoListDto;Lcom/farsitel/bazaar/data/dto/responsedto/PromoListDto;Lcom/farsitel/bazaar/data/dto/responsedto/GenreListDto;Ljava/lang/String;ILjava/lang/Object;)Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;
    .locals 15

    move-object v0, p0

    move/from16 v1, p15

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->moreAction:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->isAd:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->description:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->movie:Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->hami:Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->genre:Lcom/farsitel/bazaar/data/dto/responsedto/PageGenreRowDto;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->appList:Lcom/farsitel/bazaar/data/dto/responsedto/AppListDto;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->promo:Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->videoList:Lcom/farsitel/bazaar/data/dto/responsedto/VideoListDto;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->promoList:Lcom/farsitel/bazaar/data/dto/responsedto/PromoListDto;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->genreList:Lcom/farsitel/bazaar/data/dto/responsedto/GenreListDto;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->referrer:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v1, p14

    :goto_d
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v1

    invoke-virtual/range {p0 .. p14}, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;Lcom/farsitel/bazaar/data/dto/responsedto/PageGenreRowDto;Lcom/farsitel/bazaar/data/dto/responsedto/AppListDto;Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;Lcom/farsitel/bazaar/data/dto/responsedto/VideoListDto;Lcom/farsitel/bazaar/data/dto/responsedto/PromoListDto;Lcom/farsitel/bazaar/data/dto/responsedto/GenreListDto;Ljava/lang/String;)Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;

    move-result-object v0

    return-object v0
.end method

.method private final toAppList()Lcom/farsitel/bazaar/common/model/page/VitrinItem$App;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->appList:Lcom/farsitel/bazaar/data/dto/responsedto/AppListDto;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/dto/responsedto/AppListDto;->getApps()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v4, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;

    .line 5
    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->isAd:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->toPageAppItem(Ljava/lang/Boolean;)Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$App;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->title:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    move-object v2, v1

    iget-object v5, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->moreAction:Ljava/lang/String;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->referrer:Ljava/lang/String;

    move-object v1, v0

    move-object v3, v5

    invoke-direct/range {v1 .. v7}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$App;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0

    .line 7
    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 v0, 0x0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private final toGenreList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/PageTypeItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->genreList:Lcom/farsitel/bazaar/data/dto/responsedto/GenreListDto;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/dto/responsedto/GenreListDto;->getGenres()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Lcom/farsitel/bazaar/data/dto/responsedto/PageGenreRowDto;

    .line 5
    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/dto/responsedto/PageGenreRowDto;->toGenreItem()Lcom/farsitel/bazaar/common/model/page/ListItem$CategoryItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->title:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v3, Lcom/farsitel/bazaar/common/model/page/ListItem$CategoryHeaderItem;

    iget-object v4, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->moreAction:Ljava/lang/String;

    iget-object v5, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->referrer:Ljava/lang/String;

    invoke-direct {v3, v2, v4, v5}, Lcom/farsitel/bazaar/common/model/page/ListItem$CategoryHeaderItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0

    .line 9
    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 v0, 0x0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private final toPromoList()Lcom/farsitel/bazaar/common/model/page/VitrinItem$Promo;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->promoList:Lcom/farsitel/bazaar/data/dto/responsedto/PromoListDto;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/dto/responsedto/PromoListDto;->getPromos()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v4, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;

    .line 5
    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;->toPromoItem()Lcom/farsitel/bazaar/common/model/page/PromoItem;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Promo;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->title:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    move-object v2, v1

    iget-object v3, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->description:Ljava/lang/String;

    iget-object v5, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->moreAction:Ljava/lang/String;

    iget-object v6, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->referrer:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Promo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 7
    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 v0, 0x0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private final toVideoList()Lcom/farsitel/bazaar/common/model/page/VitrinItem$Movie;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->videoList:Lcom/farsitel/bazaar/data/dto/responsedto/VideoListDto;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/dto/responsedto/VideoListDto;->getVideos()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v5, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;

    .line 5
    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->getMovie()Lcom/farsitel/bazaar/data/dto/responsedto/PageMovieDto;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->toMovieItem()Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    move-result-object v1

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->getSerial()Lcom/farsitel/bazaar/data/dto/responsedto/PageSerialDto;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->toSerialItem()Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;

    move-result-object v1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->getEpisode()Lcom/farsitel/bazaar/data/dto/responsedto/PageEpisodeDto;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->toEpisodeItem()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object v1

    .line 8
    :goto_1
    invoke-interface {v5, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid type for movie"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_3
    new-instance v0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Movie;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->title:Ljava/lang/String;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const-string v1, ""

    :goto_2
    move-object v2, v1

    iget-object v4, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->moreAction:Ljava/lang/String;

    iget-object v6, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->referrer:Ljava/lang/String;

    move-object v1, v0

    move-object v3, v4

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Movie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0

    .line 11
    :cond_5
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 v0, 0x0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->promo:Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;

    return-object v0
.end method

.method public final component11()Lcom/farsitel/bazaar/data/dto/responsedto/VideoListDto;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->videoList:Lcom/farsitel/bazaar/data/dto/responsedto/VideoListDto;

    return-object v0
.end method

.method public final component12()Lcom/farsitel/bazaar/data/dto/responsedto/PromoListDto;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->promoList:Lcom/farsitel/bazaar/data/dto/responsedto/PromoListDto;

    return-object v0
.end method

.method public final component13()Lcom/farsitel/bazaar/data/dto/responsedto/GenreListDto;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->genreList:Lcom/farsitel/bazaar/data/dto/responsedto/GenreListDto;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->moreAction:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->isAd:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;

    return-object v0
.end method

.method public final component6()Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->movie:Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;

    return-object v0
.end method

.method public final component7()Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->hami:Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;

    return-object v0
.end method

.method public final component8()Lcom/farsitel/bazaar/data/dto/responsedto/PageGenreRowDto;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->genre:Lcom/farsitel/bazaar/data/dto/responsedto/PageGenreRowDto;

    return-object v0
.end method

.method public final component9()Lcom/farsitel/bazaar/data/dto/responsedto/AppListDto;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->appList:Lcom/farsitel/bazaar/data/dto/responsedto/AppListDto;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;Lcom/farsitel/bazaar/data/dto/responsedto/PageGenreRowDto;Lcom/farsitel/bazaar/data/dto/responsedto/AppListDto;Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;Lcom/farsitel/bazaar/data/dto/responsedto/VideoListDto;Lcom/farsitel/bazaar/data/dto/responsedto/PromoListDto;Lcom/farsitel/bazaar/data/dto/responsedto/GenreListDto;Ljava/lang/String;)Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;
    .locals 16

    const-string v0, "referrer"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v15}, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;Lcom/farsitel/bazaar/data/dto/responsedto/PageGenreRowDto;Lcom/farsitel/bazaar/data/dto/responsedto/AppListDto;Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;Lcom/farsitel/bazaar/data/dto/responsedto/VideoListDto;Lcom/farsitel/bazaar/data/dto/responsedto/PromoListDto;Lcom/farsitel/bazaar/data/dto/responsedto/GenreListDto;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->moreAction:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->moreAction:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->isAd:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->isAd:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->description:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->movie:Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->movie:Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->hami:Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->hami:Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->genre:Lcom/farsitel/bazaar/data/dto/responsedto/PageGenreRowDto;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->genre:Lcom/farsitel/bazaar/data/dto/responsedto/PageGenreRowDto;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->appList:Lcom/farsitel/bazaar/data/dto/responsedto/AppListDto;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->appList:Lcom/farsitel/bazaar/data/dto/responsedto/AppListDto;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->promo:Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->promo:Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->videoList:Lcom/farsitel/bazaar/data/dto/responsedto/VideoListDto;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->videoList:Lcom/farsitel/bazaar/data/dto/responsedto/VideoListDto;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->promoList:Lcom/farsitel/bazaar/data/dto/responsedto/PromoListDto;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->promoList:Lcom/farsitel/bazaar/data/dto/responsedto/PromoListDto;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->genreList:Lcom/farsitel/bazaar/data/dto/responsedto/GenreListDto;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->genreList:Lcom/farsitel/bazaar/data/dto/responsedto/GenreListDto;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->referrer:Ljava/lang/String;

    iget-object p1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->referrer:Ljava/lang/String;

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

.method public final getApp()Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;

    return-object v0
.end method

.method public final getAppList()Lcom/farsitel/bazaar/data/dto/responsedto/AppListDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->appList:Lcom/farsitel/bazaar/data/dto/responsedto/AppListDto;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getGenre()Lcom/farsitel/bazaar/data/dto/responsedto/PageGenreRowDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->genre:Lcom/farsitel/bazaar/data/dto/responsedto/PageGenreRowDto;

    return-object v0
.end method

.method public final getGenreList()Lcom/farsitel/bazaar/data/dto/responsedto/GenreListDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->genreList:Lcom/farsitel/bazaar/data/dto/responsedto/GenreListDto;

    return-object v0
.end method

.method public final getHami()Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->hami:Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;

    return-object v0
.end method

.method public final getMoreAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->moreAction:Ljava/lang/String;

    return-object v0
.end method

.method public final getMovie()Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->movie:Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;

    return-object v0
.end method

.method public final getPromo()Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->promo:Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;

    return-object v0
.end method

.method public final getPromoList()Lcom/farsitel/bazaar/data/dto/responsedto/PromoListDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->promoList:Lcom/farsitel/bazaar/data/dto/responsedto/PromoListDto;

    return-object v0
.end method

.method public final getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoList()Lcom/farsitel/bazaar/data/dto/responsedto/VideoListDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->videoList:Lcom/farsitel/bazaar/data/dto/responsedto/VideoListDto;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->moreAction:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->isAd:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->description:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->movie:Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->hami:Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->genre:Lcom/farsitel/bazaar/data/dto/responsedto/PageGenreRowDto;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/dto/responsedto/PageGenreRowDto;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->appList:Lcom/farsitel/bazaar/data/dto/responsedto/AppListDto;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->promo:Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->videoList:Lcom/farsitel/bazaar/data/dto/responsedto/VideoListDto;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->promoList:Lcom/farsitel/bazaar/data/dto/responsedto/PromoListDto;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->genreList:Lcom/farsitel/bazaar/data/dto/responsedto/GenreListDto;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->referrer:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_d
    add-int/2addr v0, v1

    return v0
.end method

.method public final isAd()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->isAd:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final notEmptyAtLeastOneField()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->movie:Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->hami:Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->genre:Lcom/farsitel/bazaar/data/dto/responsedto/PageGenreRowDto;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->promo:Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->appList:Lcom/farsitel/bazaar/data/dto/responsedto/AppListDto;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->videoList:Lcom/farsitel/bazaar/data/dto/responsedto/VideoListDto;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->promoList:Lcom/farsitel/bazaar/data/dto/responsedto/PromoListDto;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->genreList:Lcom/farsitel/bazaar/data/dto/responsedto/GenreListDto;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final toPageTypeItem()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/PageTypeItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->isAd:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->toPageAppItem(Ljava/lang/Boolean;)Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v3

    .line 3
    new-instance v0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->hasDetail()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;-><init>(Lcom/farsitel/bazaar/common/model/page/PageAppItem;ZZILh/f/b/f;)V

    invoke-static {v0}, Lh/a/k;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->movie:Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;->toVideoItem()Lcom/farsitel/bazaar/common/model/page/ListItem;

    move-result-object v0

    invoke-static {v0}, Lh/a/k;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->hami:Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->toHamiItem()Lcom/farsitel/bazaar/common/model/page/ListItem$Hami;

    move-result-object v0

    invoke-static {v0}, Lh/a/k;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->genre:Lcom/farsitel/bazaar/data/dto/responsedto/PageGenreRowDto;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/dto/responsedto/PageGenreRowDto;->toGenreItem()Lcom/farsitel/bazaar/common/model/page/ListItem$CategoryItem;

    move-result-object v0

    invoke-static {v0}, Lh/a/k;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->appList:Lcom/farsitel/bazaar/data/dto/responsedto/AppListDto;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->toAppList()Lcom/farsitel/bazaar/common/model/page/VitrinItem$App;

    move-result-object v0

    invoke-static {v0}, Lh/a/k;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->videoList:Lcom/farsitel/bazaar/data/dto/responsedto/VideoListDto;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->toVideoList()Lcom/farsitel/bazaar/common/model/page/VitrinItem$Movie;

    move-result-object v0

    invoke-static {v0}, Lh/a/k;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_5
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->promoList:Lcom/farsitel/bazaar/data/dto/responsedto/PromoListDto;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->toPromoList()Lcom/farsitel/bazaar/common/model/page/VitrinItem$Promo;

    move-result-object v0

    invoke-static {v0}, Lh/a/k;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_6
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->genreList:Lcom/farsitel/bazaar/data/dto/responsedto/GenreListDto;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->toGenreList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_7
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->promo:Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;

    if-eqz v0, :cond_8

    new-instance v1, Lcom/farsitel/bazaar/common/model/page/ListItem$Promo;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;->toPromoItem()Lcom/farsitel/bazaar/common/model/page/PromoItem;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/farsitel/bazaar/common/model/page/ListItem$Promo;-><init>(Lcom/farsitel/bazaar/common/model/page/PromoItem;)V

    invoke-static {v1}, Lh/a/k;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    .line 12
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid pageState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageRowDto(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", moreAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->moreAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->isAd:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", movie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->movie:Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hami="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->hami:Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", genre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->genre:Lcom/farsitel/bazaar/data/dto/responsedto/PageGenreRowDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->appList:Lcom/farsitel/bazaar/data/dto/responsedto/AppListDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", promo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->promo:Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->videoList:Lcom/farsitel/bazaar/data/dto/responsedto/VideoListDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", promoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->promoList:Lcom/farsitel/bazaar/data/dto/responsedto/PromoListDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", genreList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->genreList:Lcom/farsitel/bazaar/data/dto/responsedto/GenreListDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->referrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
