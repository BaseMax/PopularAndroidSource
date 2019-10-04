.class public final Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;
.super Lc/c/a/n/c/d/a/a;
.source "EpisodeDetailFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/a/a<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;",
        "Lc/c/a/n/j/d/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic Ba:[Lh/i/i;


# instance fields
.field public Ca:I

.field public final Da:Lh/c;

.field public Ea:Z

.field public Fa:Ljava/lang/Long;

.field public Ga:Lc/c/a/n/j/b/c/b;

.field public Ha:Lc/c/a/n/j/d/o;

.field public Ia:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "shareMessage"

    const-string v4, "getShareMessage()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ba:[Lh/i/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/a/a;-><init>()V

    const v0, 0x7f0d0072

    .line 2
    iput v0, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ca:I

    .line 3
    new-instance v0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment$shareMessage$2;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment$shareMessage$2;-><init>(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V

    invoke-static {v0}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Da:Lh/c;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ea:Z

    const-wide/16 v0, -0x1

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Fa:Ljava/lang/Long;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)Lc/c/a/n/j/d/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ha:Lc/c/a/n/j/d/o;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "episodeDetailArgs"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->a(Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;Lcom/farsitel/bazaar/common/model/ui/EntityState;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->a(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->c(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lc/c/a/n/c/d/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)Lc/c/a/n/j/b/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ga:Lc/c/a/n/j/b/c/b;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "playInfoViewModel"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic c(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)Lc/c/a/n/c/d/a/f;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/a/a;->rb()Lc/c/a/n/c/d/a/f;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)Lc/c/a/n/j/d/t;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p0

    check-cast p0, Lc/c/a/n/j/d/t;

    return-object p0
.end method

.method public static final synthetic f(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->ub()V

    return-void
.end method

.method public static final synthetic g(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->vb()V

    return-void
.end method

.method public static final synthetic h(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->xb()V

    return-void
.end method


# virtual methods
.method public final Ab()V
    .locals 3

    .line 1
    new-instance v0, Lc/c/a/n/j/h/e;

    invoke-direct {v0}, Lc/c/a/n/j/h/e;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lb/o/a/d;->a(Lb/o/a/n;Ljava/lang/String;)V

    return-void
.end method

.method public final Bb()Lc/c/a/n/j/d/n;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/j/d/n;

    invoke-direct {v0, p0}, Lc/c/a/n/j/d/n;-><init>(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V

    return-object v0
.end method

.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ia:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/EpisodeDetailsScreen;
    .locals 3

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/EpisodeDetailsScreen;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ha:Lc/c/a/n/j/d/o;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc/c/a/n/j/d/o;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Fa:Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Lcom/farsitel/bazaar/analytics/model/where/EpisodeDetailsScreen;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0

    :cond_0
    const-string v0, "episodeDetailArgs"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Sa()Lcom/farsitel/bazaar/analytics/model/where/EpisodeDetailsScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Ua()Lc/c/a/n/c/d/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ua()Lc/c/a/n/j/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public Ua()Lc/c/a/n/j/b/a/a;
    .locals 8

    .line 2
    new-instance v7, Lc/c/a/n/j/b/a/a;

    .line 3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->wb()Lc/c/a/n/j/d/k;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Bb()Lc/c/a/n/j/d/n;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->zb()Lc/c/a/n/j/d/m;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->sb()Lc/c/a/n/j/d/b;

    move-result-object v4

    .line 7
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->tb()Lc/c/a/n/j/d/c;

    move-result-object v6

    const/4 v5, 0x0

    move-object v0, v7

    .line 8
    invoke-direct/range {v0 .. v6}, Lc/c/a/n/j/b/a/a;-><init>(Lc/c/a/n/j/b/a/d$a;Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;Lc/c/a/n/c/d/o$a;Lc/c/a/n/j/b/b/d$a;Lcom/farsitel/bazaar/common/model/cinema/EpisodeItemClickListener;Lc/c/a/n/c/c/a/a/a/i;)V

    return-object v7
.end method

.method public Ya()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ca:I

    return v0
.end method

.method public Za()Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;
    .locals 6

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ha:Lc/c/a/n/j/d/o;

    const/4 v2, 0x0

    const-string v3, "episodeDetailArgs"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lc/c/a/n/j/d/o;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ha:Lc/c/a/n/j/d/o;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lc/c/a/n/j/d/o;->c()I

    move-result v4

    iget-object v5, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ha:Lc/c/a/n/j/d/o;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lc/c/a/n/j/d/o;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic Za()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Za()Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;

    move-result-object v0

    return-object v0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 9
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(IILandroid/content/Intent;)V

    .line 10
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/j/d/t;

    invoke-virtual {v0, p1, p2, p3}, Lc/c/a/n/j/d/t;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lc/c/a/n/j/d/l;

    invoke-direct {v0, p0}, Lc/c/a/n/j/d/l;-><init>(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V

    invoke-virtual {p0, v0}, Lc/c/a/n/c/d/f;->a(Lc/c/a/n/c/d/m;)V

    .line 7
    invoke-super {p0, p1, p2}, Lc/c/a/n/c/d/a/a;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 8
    sget p1, Lc/c/a/e;->playFloatingButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/widget/LoadingButton;

    const-string p2, "playFloatingButton"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lc/c/a/n/j/d/t;)V
    .locals 3

    .line 11
    invoke-virtual {p1}, Lc/c/a/n/j/d/t;->q()Lb/r/r;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v1

    new-instance v2, Lc/c/a/n/j/d/e;

    invoke-direct {v2, p0, p1}, Lc/c/a/n/j/d/e;-><init>(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;Lc/c/a/n/j/d/t;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeasonsItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ab()V

    goto :goto_0

    .line 34
    :cond_0
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeSeeMoreItem;

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v0

    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeSeeMoreItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeSeeMoreItem;->getSlug()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "Uri.parse(this)"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeSeeMoreItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lc/c/a/b/f;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_1
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/cinema/RetryItem;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p1

    check-cast p1, Lc/c/a/n/j/d/t;

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ha:Lc/c/a/n/j/d/o;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc/c/a/n/j/d/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/c/a/n/j/d/t;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "episodeDetailArgs"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 39
    :cond_3
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->yb()V

    goto :goto_0

    .line 40
    :cond_4
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/cinema/VideoAddReviewItem;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p1

    check-cast p1, Lc/c/a/n/j/d/t;

    invoke-virtual {p1}, Lc/c/a/n/j/d/t;->v()V

    goto :goto_0

    .line 41
    :cond_5
    instance-of p1, p1, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewActionItem;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->yb()V

    :cond_6
    :goto_0
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;)V
    .locals 8

    .line 16
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/j/d/t;

    invoke-virtual {v0}, Lc/c/a/n/j/d/t;->x()V

    if-eqz p1, :cond_1

    .line 17
    sget-object v0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->u:Lcom/farsitel/bazaar/player/VideoPlayerActivity$a;

    .line 18
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->getEntityId()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v1, "Uri.parse(this)"

    invoke-static {v3, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->getWaterMarkUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 22
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v4, v1

    .line 23
    :goto_0
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->getRefreshData()Lcom/farsitel/bazaar/common/model/cinema/RefreshData;

    move-result-object v6

    .line 24
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->getSubtitles()Ljava/util/List;

    move-result-object v5

    .line 25
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->getReferrer()Ljava/lang/String;

    move-result-object v7

    .line 26
    new-instance p1, Lc/c/a/l/f;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lc/c/a/l/f;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Lcom/farsitel/bazaar/common/model/cinema/RefreshData;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, p0, p1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity$a;->a(Landroidx/fragment/app/Fragment;Lc/c/a/l/f;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;)V
    .locals 4

    .line 28
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->getCanBePlayed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ga:Lc/c/a/n/j/b/c/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v1

    check-cast v1, Lc/c/a/n/j/d/t;

    invoke-virtual {v1, p1}, Lc/c/a/n/j/d/t;->a(Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;)Lcom/farsitel/bazaar/common/model/PlayedVideoModel;

    move-result-object v1

    sget-object v2, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;->EPISODE:Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getReferrer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lc/c/a/n/j/b/c/b;->a(Lcom/farsitel/bazaar/common/model/PlayedVideoModel;Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/j/d/t;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->getEpisodeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/c/a/n/j/d/t;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "playInfoViewModel"

    .line 31
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 32
    :cond_1
    sget-object v0, Lcom/farsitel/bazaar/ui/payment/PaymentActivity;->w:Lcom/farsitel/bazaar/ui/payment/PaymentActivity$a;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->getEpisodeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/farsitel/bazaar/ui/payment/PaymentActivity$a;->b(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V
    .locals 2

    .line 12
    sget-object v0, Lc/c/a/n/j/d/a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-string v1, "downloadedVideoToolbarIcon"

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 13
    sget p1, Lc/c/a/e;->downloadedVideoToolbarIcon:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    goto :goto_0

    .line 14
    :cond_0
    sget p1, Lc/c/a/e;->downloadedVideoToolbarIcon:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lc/c/a/n/j/d/d;

    invoke-direct {v0, p0}, Lc/c/a/n/j/d/d;-><init>(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    sget p1, Lc/c/a/e;->downloadedVideoToolbarIcon:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object p1

    .line 4
    invoke-static {p0, p1}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object p1

    const-class v0, Lc/c/a/n/j/b/c/b;

    invoke-virtual {p1, v0}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    check-cast p1, Lc/c/a/n/j/b/c/b;

    .line 6
    invoke-virtual {p1}, Lc/c/a/n/j/b/c/b;->e()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment$onActivityCreated$$inlined$createViewModel$lambda$1;

    invoke-direct {v1, p0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment$onActivityCreated$$inlined$createViewModel$lambda$1;-><init>(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V

    invoke-static {p0, v0, v1}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 7
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ga:Lc/c/a/n/j/b/c/b;

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lc/c/a/d/f/o;->c(Landroid/os/Bundle;)V

    .line 3
    sget-object p1, Lc/c/a/n/j/d/o;->a:Lc/c/a/n/j/d/o$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments!!"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/j/d/o$a;->a(Landroid/os/Bundle;)Lc/c/a/n/j/d/o;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ha:Lc/c/a/n/j/d/o;

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final c(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->a(Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->d(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in Video Play."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final d(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/j/d/t;

    invoke-virtual {v0}, Lc/c/a/n/j/d/t;->x()V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/ErrorModel;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Qa()Lc/c/a/d/d/c;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lc/c/a/d/b/d;->b(Landroid/content/Context;Lcom/farsitel/bazaar/data/entity/ErrorModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/d/d/c;->a(Ljava/lang/String;)V

    .line 5
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    invoke-virtual {v0, p1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ia:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ia:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ia:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ia:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final f(I)Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/j/d/t;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lc/c/a/n/j/d/t;->b(Lc/c/a/n/j/d/t;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v2, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    .line 4
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getCover()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getName()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "getString(toolbarTitleResourceId)"

    invoke-static {p1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {v2, v1, v0, p1}, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 8
    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1

    .line 9
    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1
.end method

.method public hb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ea:Z

    return v0
.end method

.method public bridge synthetic jb()Lc/c/a/n/c/d/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->jb()Lc/c/a/n/j/d/t;

    move-result-object v0

    return-object v0
.end method

.method public jb()Lc/c/a/n/j/d/t;
    .locals 6

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object v0

    const-class v1, Lc/c/a/n/j/d/t;

    invoke-virtual {v0, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast v0, Lc/c/a/n/j/d/t;

    .line 5
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ha:Lc/c/a/n/j/d/o;

    const/4 v2, 0x0

    const-string v3, "episodeDetailArgs"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lc/c/a/n/j/d/o;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lc/c/a/n/j/d/t;->c(I)V

    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v2, v1, v2}, Lc/c/a/n/j/d/t;->a(Lc/c/a/n/j/d/t;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getPrice()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Fa:Ljava/lang/Long;

    .line 7
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ha:Lc/c/a/n/j/d/o;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc/c/a/n/j/d/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/n/j/d/t;->d(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lc/c/a/n/c/d/g;->g()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;

    invoke-direct {v2, v0, p0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;-><init>(Lc/c/a/n/j/d/t;Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V

    invoke-static {p0, v1, v2}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->a(Lc/c/a/n/j/d/t;)V

    .line 10
    invoke-virtual {v0}, Lc/c/a/n/j/d/t;->w()Landroidx/lifecycle/LiveData;

    move-result-object v1

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    .line 12
    new-instance v3, Lc/c/a/n/j/d/f;

    invoke-direct {v3, v0, p0}, Lc/c/a/n/j/d/f;-><init>(Lc/c/a/n/j/d/t;Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V

    .line 13
    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 14
    invoke-virtual {v0}, Lc/c/a/n/j/d/t;->p()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/j/d/g;

    invoke-direct {v3, p0}, Lc/c/a/n/j/d/g;-><init>(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 15
    invoke-virtual {v0}, Lc/c/a/n/j/d/t;->s()Lb/r/r;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/j/d/h;

    invoke-direct {v3, p0}, Lc/c/a/n/j/d/h;-><init>(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 16
    invoke-virtual {v0}, Lc/c/a/n/j/d/t;->m()Lb/r/r;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/j/d/j;

    invoke-direct {v3, v0}, Lc/c/a/n/j/d/j;-><init>(Lc/c/a/n/j/d/t;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 17
    invoke-virtual {v0}, Lc/c/a/n/j/d/t;->r()Lb/r/t;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/j/d/i;

    invoke-direct {v3, p0}, Lc/c/a/n/j/d/i;-><init>(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 18
    invoke-virtual {v0}, Lc/c/a/n/j/d/t;->l()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->a(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    return-object v0

    .line 19
    :cond_1
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 20
    :cond_2
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/d/a/a;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->La()V

    return-void
.end method

.method public qb()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Da:Lh/c;

    sget-object v1, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ba:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final sb()Lc/c/a/n/j/d/b;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/j/d/b;

    invoke-direct {v0, p0}, Lc/c/a/n/j/d/b;-><init>(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V

    return-object v0
.end method

.method public final tb()Lc/c/a/n/j/d/c;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/j/d/c;

    invoke-direct {v0, p0}, Lc/c/a/n/j/d/c;-><init>(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V

    return-object v0
.end method

.method public final ub()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/j/d/t;

    invoke-virtual {v0}, Lc/c/a/n/j/d/t;->n()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$a;->c(I)V

    :cond_0
    return-void
.end method

.method public final vb()V
    .locals 2

    .line 1
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    sget-object v1, Lc/c/a/d;->a:Lc/c/a/d$l;

    invoke-virtual {v1}, Lc/c/a/d$l;->m()Lb/w/p;

    move-result-object v1

    invoke-static {v0, v1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method

.method public final wb()Lc/c/a/n/j/d/k;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/j/d/k;

    invoke-direct {v0, p0}, Lc/c/a/n/j/d/k;-><init>(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V

    return-object v0
.end method

.method public final xb()V
    .locals 6

    .line 1
    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/PostVideoReviewButtonClick;

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ha:Lc/c/a/n/j/d/o;

    const/4 v2, 0x0

    const-string v3, "episodeDetailArgs"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc/c/a/n/j/d/o;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Ha:Lc/c/a/n/j/d/o;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lc/c/a/n/j/d/o;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/farsitel/bazaar/analytics/model/what/PostVideoReviewButtonClick;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment;->Fa:Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment$a;

    .line 3
    new-instance v1, Lc/c/a/n/j/g/a/a;

    .line 4
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Za()Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;->getReferrer()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Za()Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;->a()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f10023a

    .line 6
    invoke-virtual {p0, v4}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->f(I)Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    move-result-object v4

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lc/c/a/n/j/g/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment$a;->a(Lc/c/a/n/j/g/a/a;)Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object v1

    const-string v2, "postVideoReview"

    invoke-virtual {v0, v1, v2}, Lb/o/a/d;->a(Lb/o/a/n;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public final yb()V
    .locals 5

    .line 1
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 2
    sget-object v1, Lc/c/a/n/j/d/p;->a:Lc/c/a/n/j/d/p$c;

    .line 3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Za()Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;->getReferrer()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Za()Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;->a()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1001a8

    .line 5
    invoke-virtual {p0, v4}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->f(I)Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    move-result-object v4

    .line 6
    invoke-virtual {v1, v2, v3, v4}, Lc/c/a/n/j/d/p$c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;)Lb/w/p;

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method

.method public final zb()Lc/c/a/n/j/d/m;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/j/d/m;

    invoke-direct {v0, p0}, Lc/c/a/n/j/d/m;-><init>(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V

    return-object v0
.end method
