.class public final Lc/c/a/n/j/j/l;
.super Lc/c/a/n/j/h/a;
.source "SeriesDetailViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/j/h/a<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;",
        ">;"
    }
.end annotation


# instance fields
.field public j:Li/a/ra;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public final m:Lb/r/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/r<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public n:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/lang/Integer;

.field public final p:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public q:I

.field public final r:Landroid/content/Context;

.field public final s:Lc/c/a/e/d/h/d/a;

.field public final t:Lc/c/a/b/d/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/c/a/e/d/h/d/a;Lc/c/a/b/d/m;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "seriesDetailRepository"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentManager"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/n/j/h/a;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/j/l;->r:Landroid/content/Context;

    iput-object p2, p0, Lc/c/a/n/j/j/l;->s:Lc/c/a/e/d/h/d/a;

    iput-object p3, p0, Lc/c/a/n/j/j/l;->t:Lc/c/a/b/d/m;

    .line 2
    new-instance p1, Lb/r/r;

    invoke-direct {p1}, Lb/r/r;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/j/l;->m:Lb/r/r;

    .line 3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/j/l;->n:Ljava/util/HashSet;

    .line 4
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/j/l;->p:Lb/r/t;

    .line 5
    iget-object p1, p0, Lc/c/a/n/j/j/l;->m:Lb/r/r;

    iget-object p2, p0, Lc/c/a/n/j/j/l;->t:Lc/c/a/b/d/m;

    invoke-virtual {p2}, Lc/c/a/b/d/m;->a()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance p3, Lc/c/a/n/j/j/k;

    invoke-direct {p3, p0}, Lc/c/a/n/j/j/k;-><init>(Lc/c/a/n/j/j/l;)V

    invoke-virtual {p1, p2, p3}, Lb/r/r;->a(Landroidx/lifecycle/LiveData;Lb/r/u;)V

    return-void
.end method

.method public static synthetic a(Lc/c/a/n/j/j/l;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->g()Lb/r/r;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/core/model/Resource;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lc/c/a/n/j/j/l;->d(Ljava/util/List;)Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/j/j/l;)Ljava/util/HashSet;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/c/a/n/j/j/l;->n:Ljava/util/HashSet;

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/j/j/l;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public static synthetic a(Lc/c/a/n/j/j/l;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lc/c/a/n/j/j/l;->a(Ljava/lang/String;IZLjava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/j/j/l;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/n/j/j/l;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/j/j/l;Ljava/util/List;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lc/c/a/n/j/j/l;->e(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic b(Lc/c/a/n/j/j/l;)Lc/c/a/e/d/h/d/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/j/j/l;->s:Lc/c/a/e/d/h/d/a;

    return-object p0
.end method

.method public static final synthetic b(Lc/c/a/n/j/j/l;Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/n/j/j/l;->g(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lc/c/a/n/j/j/l;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 38
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lc/c/a/n/j/j/l;->f(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;)Lcom/farsitel/bazaar/common/model/PlayedVideoModel;
    .locals 18

    const-string v0, "item"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    move-object/from16 v3, p0

    .line 24
    invoke-static {v3, v0, v2, v0}, Lc/c/a/n/j/j/l;->a(Lc/c/a/n/j/j/l;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 25
    new-instance v17, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 27
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->getName()Ljava/lang/String;

    move-result-object v6

    .line 28
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->getCover()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;->getMainUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v7, v0

    .line 29
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->getEpisodeIndex()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lc/c/a/n/j/j/l;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Lcom/farsitel/bazaar/common/model/PlayedVideoType;->EPISODE:Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/16 v15, 0x100

    const/16 v16, 0x0

    move-object/from16 v4, v17

    .line 30
    invoke-direct/range {v4 .. v16}, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/farsitel/bazaar/common/model/PlayedVideoType;ZJILh/f/b/f;)V

    return-object v17

    .line 31
    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    throw v0
.end method

.method public final a(ILjava/util/List;)Lcom/farsitel/bazaar/common/model/cinema/SeriesSeasonsItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;)",
            "Lcom/farsitel/bazaar/common/model/cinema/SeriesSeasonsItem;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 15
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeasonsItem;

    if-eqz v0, :cond_1

    .line 16
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeasonsItem;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.farsitel.bazaar.common.model.cinema.SeriesSeasonsItem"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final a(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 42
    invoke-interface {v2}, Lcom/farsitel/bazaar/common/model/RecyclerData;->getViewType()I

    move-result v2

    if-eq v2, p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lh/a/u;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;)V
    .locals 8

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v2, p0, Lc/c/a/n/j/j/l;->k:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->getIndex()I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lc/c/a/n/j/j/l;->l:Ljava/lang/String;

    if-eqz v5, :cond_0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lc/c/a/n/j/j/l;->a(Lc/c/a/n/j/j/l;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "requestReferrer"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "serialId"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;)V
    .locals 7

    const-string v0, "params"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/n/j/j/l;->k:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;->getReferrer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/n/j/j/l;->l:Ljava/lang/String;

    .line 7
    new-instance v4, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailViewModel$makeData$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailViewModel$makeData$1;-><init>(Lc/c/a/n/j/j/l;Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;Lh/c/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 33
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_1

    check-cast v2, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 34
    instance-of v4, v2, Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeItem;

    if-eqz v4, :cond_0

    .line 35
    check-cast v2, Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeItem;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeItem;->getShowLoadingButton()Z

    move-result v4

    .line 36
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeItem;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeItem;->setShowLoadingButton(Z)V

    .line 37
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeItem;->getShowLoadingButton()Z

    move-result v2

    if-eq v4, v2, :cond_0

    .line 38
    iget-object v2, p0, Lc/c/a/n/j/j/l;->p:Lb/r/t;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lb/r/t;->b(Ljava/lang/Object;)V

    :cond_0
    move v1, v3

    goto :goto_0

    .line 39
    :cond_1
    invoke-static {}, Lh/a/l;->b()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 11

    .line 10
    iget-object v0, p0, Lc/c/a/n/j/j/l;->o:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_1

    if-eqz p3, :cond_3

    .line 11
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p0, Lc/c/a/n/j/j/l;->o:Ljava/lang/Integer;

    .line 12
    invoke-virtual {p0, p2}, Lc/c/a/n/j/j/l;->d(I)V

    .line 13
    iget-object p3, p0, Lc/c/a/n/j/j/l;->j:Li/a/ra;

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p3, v1, v0, v1}, Li/a/ra$a;->a(Li/a/ra;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 14
    new-instance p3, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailViewModel$getEpisodes$1;

    const/4 v10, 0x0

    move-object v5, p3

    move-object v6, p0

    move-object v7, p1

    move v8, p2

    move-object v9, p4

    invoke-direct/range {v5 .. v10}, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailViewModel$getEpisodes$1;-><init>(Lc/c/a/n/j/j/l;Ljava/lang/String;ILjava/lang/String;Lh/c/b;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/j/j/l;->j:Li/a/ra;

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .line 17
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    invoke-virtual {v0, p1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    .line 18
    invoke-virtual {p0}, Lc/c/a/n/j/j/l;->n()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lh/a/u;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 19
    sget-object v0, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->LOADING_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lc/c/a/n/j/j/l;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lc/c/a/n/j/j/l;->c(Ljava/util/List;)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 21
    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/RetryItem;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/farsitel/bazaar/common/model/cinema/RetryItem;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Lc/c/a/n/j/j/l;->g(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v7, Lcom/farsitel/bazaar/common/model/cinema/VideoDividerItem;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/common/model/cinema/VideoDividerItem;-><init>(IZIILh/f/b/f;)V

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_d

    .line 14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/farsitel/bazaar/common/model/RecyclerData;

    invoke-interface {v2}, Lcom/farsitel/bazaar/common/model/RecyclerData;->getViewType()I

    move-result v2

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/farsitel/bazaar/common/model/RecyclerData;

    invoke-interface {v3}, Lcom/farsitel/bazaar/common/model/RecyclerData;->getViewType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 16
    :goto_1
    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->DIVIDER:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x0

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v4, :cond_b

    .line 17
    :goto_2
    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_EPISODE_SEE_MORE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 18
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 19
    :cond_2
    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_SEASON_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_3

    .line 20
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 21
    :cond_3
    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_SINGLE_SEASON_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_4

    .line 22
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 23
    :cond_4
    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_EPISODE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_5

    .line 24
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 25
    :cond_5
    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SCREEN_SHOT:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_6

    .line 26
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 27
    :cond_6
    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->CREWS:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_7

    .line 28
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 29
    :cond_7
    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->OTHER_INFO_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_8

    if-eqz v3, :cond_8

    .line 30
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 31
    :cond_8
    sget-object v3, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->LOADING_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 32
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 33
    :cond_9
    sget-object v3, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->RETRY_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_a

    .line 34
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 35
    :cond_a
    :goto_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 36
    :cond_b
    sget-object v3, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->DIVIDER:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_c

    goto :goto_4

    .line 37
    :cond_c
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_d
    return-object v0
.end method

.method public final b(Ljava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lc/c/a/n/j/j/l;->c(Ljava/util/List;)I

    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lc/c/a/n/j/j/l;->a(ILjava/util/List;)Lcom/farsitel/bazaar/common/model/cinema/SeriesSeasonsItem;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeasonsItem;->getItems()Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 8
    check-cast v5, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;

    .line 9
    invoke-virtual {v5}, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->getIndex()I

    move-result v5

    if-ne v5, p2, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    :goto_2
    if-ltz v4, :cond_3

    const/4 p2, 0x0

    .line 10
    invoke-static {v1, p2, v4, v6, p2}, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeasonsItem;->copy$default(Lcom/farsitel/bazaar/common/model/cinema/SeriesSeasonsItem;Ljava/util/List;IILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/SeriesSeasonsItem;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "seriesId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lc/c/a/n/j/j/l;->j()I

    move-result v0

    iget-object v1, p0, Lc/c/a/n/j/j/l;->l:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v2, v1}, Lc/c/a/n/j/j/l;->a(Ljava/lang/String;IZLjava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "requestReferrer"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final c(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;)I"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 4
    invoke-interface {v2}, Lcom/farsitel/bazaar/common/model/RecyclerData;->getViewType()I

    move-result v3

    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_SEASON_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v3, v4, :cond_1

    invoke-interface {v2}, Lcom/farsitel/bazaar/common/model/RecyclerData;->getViewType()I

    move-result v2

    sget-object v3, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_SINGLE_SEASON_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    :goto_3
    return v1
.end method

.method public final c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc/c/a/n/j/j/l;->q:I

    return-void
.end method

.method public final d(Ljava/util/List;)Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;)",
            "Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 12
    instance-of v2, v2, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 13
    :goto_0
    move-object p1, v1

    check-cast p1, Lcom/farsitel/bazaar/common/model/RecyclerData;

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    instance-of v1, p1, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;

    if-nez v1, :cond_3

    move-object p1, v0

    :cond_3
    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;

    return-object p1
.end method

.method public final d(I)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/j/j/l;->n()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lh/a/u;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :goto_0
    invoke-virtual {p0, v0, p1}, Lc/c/a/n/j/j/l;->b(Ljava/util/List;I)Ljava/util/List;

    .line 4
    sget-object p1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->RETRY_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lc/c/a/n/j/j/l;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 5
    sget-object v0, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_EPISODE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lc/c/a/n/j/j/l;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 6
    sget-object v0, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_EPISODE_SEE_MORE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lc/c/a/n/j/j/l;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 7
    sget-object v0, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->LOADING_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lc/c/a/n/j/j/l;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lc/c/a/n/j/j/l;->c(Ljava/util/List;)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 9
    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/ProgressItem;

    invoke-direct {v1}, Lcom/farsitel/bazaar/common/model/cinema/ProgressItem;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10
    :cond_1
    invoke-virtual {p0, p1}, Lc/c/a/n/j/j/l;->g(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;

    invoke-virtual {p0, p1}, Lc/c/a/n/j/j/l;->a(Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;)V

    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/j/j/l;->n()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lh/a/u;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->LOADING_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lc/c/a/n/j/j/l;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lc/c/a/n/j/j/l;->c(Ljava/util/List;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    add-int/2addr v1, v2

    .line 4
    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lc/c/a/n/j/j/l;->g(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 6
    invoke-static {p0, p1, v2, p1}, Lc/c/a/n/j/j/l;->b(Lc/c/a/n/j/j/l;Ljava/util/List;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final f(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-ltz v0, :cond_1

    check-cast v1, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 2
    instance-of v3, v1, Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeItem;

    if-eqz v3, :cond_0

    .line 3
    check-cast v1, Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeItem;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->isBought()Z

    move-result v3

    .line 4
    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->getEntityId()Ljava/lang/String;

    move-result-object v4

    .line 5
    iget-object v5, p0, Lc/c/a/n/j/j/l;->n:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 6
    invoke-virtual {v1, v4}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->setBought(Z)V

    .line 7
    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->isBought()Z

    move-result v1

    if-eq v3, v1, :cond_0

    .line 8
    iget-object v1, p0, Lc/c/a/n/j/j/l;->p:Lb/r/t;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb/r/t;->b(Ljava/lang/Object;)V

    :cond_0
    move v0, v2

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lh/a/l;->b()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final g(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lh/a/u;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/n/j/j/l;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Ljava/util/List;)V

    .line 3
    iget-object v1, p0, Lc/c/a/n/j/j/l;->k:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lc/c/a/n/j/j/l;->j()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lc/c/a/n/j/j/l;->l:Ljava/lang/String;

    if-eqz v4, :cond_0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lc/c/a/n/j/j/l;->a(Lc/c/a/n/j/j/l;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "requestReferrer"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v0, "serialId"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p1
.end method

.method public j()I
    .locals 5

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/j/l;->o:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lc/c/a/n/j/j/l;->q:I

    .line 2
    :goto_0
    invoke-virtual {p0}, Lc/c/a/n/j/j/l;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->getIndex()I

    move-result v4

    if-ne v4, v0, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    check-cast v2, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;

    if-eqz v2, :cond_4

    .line 3
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->getIndex()I

    move-result v1

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lc/c/a/n/j/j/l;->k()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lh/a/u;->g(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->getIndex()I

    move-result v1

    goto :goto_3

    :cond_5
    :goto_4
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_6
    return v0
.end method

.method public k()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/j/j/l;->n()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lh/a/u;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {p0, v0}, Lc/c/a/n/j/j/l;->c(Ljava/util/List;)I

    move-result v1

    .line 3
    invoke-virtual {p0, v1, v0}, Lc/c/a/n/j/j/l;->a(ILjava/util/List;)Lcom/farsitel/bazaar/common/model/cinema/SeriesSeasonsItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeasonsItem;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lh/a/l;->a()Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final l()Lb/r/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/r/r<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/j/l;->m:Lb/r/r;

    return-object v0
.end method

.method public final m()Lb/r/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/r/t<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/j/l;->p:Lb/r/t;

    return-object v0
.end method

.method public final n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->g()Lb/r/r;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/core/model/Resource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final o()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_1

    check-cast v3, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 3
    instance-of v5, v3, Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeItem;

    if-eqz v5, :cond_0

    check-cast v3, Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeItem;

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeItem;->getShowLoadingButton()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    invoke-virtual {v3, v1}, Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeItem;->setShowLoadingButton(Z)V

    .line 5
    iget-object v3, p0, Lc/c/a/n/j/j/l;->p:Lb/r/t;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lb/r/t;->b(Ljava/lang/Object;)V

    :cond_0
    move v2, v4

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lh/a/l;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_2
    return-void
.end method
