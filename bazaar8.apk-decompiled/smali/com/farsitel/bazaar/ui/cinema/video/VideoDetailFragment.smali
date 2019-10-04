.class public final Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;
.super Lc/c/a/n/c/d/a/a;
.source "VideoDetailFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/a/a<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;",
        "Lc/c/a/n/j/k/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic Ba:[Lh/i/i;


# instance fields
.field public Ca:I

.field public Da:Lc/c/a/n/j/k/a;

.field public Ea:Lc/c/a/n/j/b/c/b;

.field public Fa:Z

.field public Ga:Ljava/lang/Long;

.field public Ha:Lc/c/a/n/j/k/o;

.field public Ia:Ljava/lang/String;

.field public final Ja:Lh/c;

.field public Ka:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "shareMessage"

    const-string v4, "getShareMessage()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ba:[Lh/i/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/a/a;-><init>()V

    const v0, 0x7f0d0072

    .line 2
    iput v0, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ca:I

    const-wide/16 v0, -0x1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ga:Ljava/lang/Long;

    .line 4
    new-instance v0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$shareMessage$2;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$shareMessage$2;-><init>(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V

    invoke-static {v0}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ja:Lh/c;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)Lc/c/a/n/j/k/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Da:Lc/c/a/n/j/k/a;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "fabScrollListener"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;Lcom/farsitel/bazaar/common/model/ui/EntityState;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->a(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->c(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;Ljava/lang/Long;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ga:Ljava/lang/Long;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lc/c/a/n/c/d/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)Lc/c/a/n/c/d/a/f;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/a/a;->rb()Lc/c/a/n/c/d/a/f;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)Lc/c/a/n/j/k/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ha:Lc/c/a/n/j/k/o;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "videoDetailArgs"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic e(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)Lc/c/a/n/j/k/s;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p0

    check-cast p0, Lc/c/a/n/j/k/s;

    return-object p0
.end method

.method public static final synthetic f(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->tb()V

    return-void
.end method

.method public static final synthetic g(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->ub()V

    return-void
.end method

.method public static final synthetic h(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->vb()V

    return-void
.end method

.method public static final synthetic i(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->wb()V

    return-void
.end method

.method public static final synthetic j(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->yb()V

    return-void
.end method


# virtual methods
.method public final Ab()Lc/c/a/n/j/k/m;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/j/k/m;

    invoke-direct {v0, p0}, Lc/c/a/n/j/k/m;-><init>(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V

    return-object v0
.end method

.method public final Bb()Lc/c/a/n/j/k/n;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/j/k/n;

    invoke-direct {v0, p0}, Lc/c/a/n/j/k/n;-><init>(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V

    return-object v0
.end method

.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ka:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/VideoDetailsScreen;
    .locals 4

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/VideoDetailsScreen;

    .line 3
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ha:Lc/c/a/n/j/k/o;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc/c/a/n/j/k/o;->b()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ga:Ljava/lang/Long;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    .line 5
    :goto_0
    invoke-direct {v0, v1, v2, v3}, Lcom/farsitel/bazaar/analytics/model/where/VideoDetailsScreen;-><init>(Ljava/lang/String;J)V

    return-object v0

    :cond_1
    const-string v0, "videoDetailArgs"

    .line 6
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Sa()Lcom/farsitel/bazaar/analytics/model/where/VideoDetailsScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Ua()Lc/c/a/n/c/d/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ua()Lc/c/a/n/j/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public Ua()Lc/c/a/n/j/b/a/a;
    .locals 10

    .line 2
    new-instance v9, Lc/c/a/n/j/b/a/a;

    .line 3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->xb()Lc/c/a/n/j/k/k;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Bb()Lc/c/a/n/j/k/n;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ab()Lc/c/a/n/j/k/m;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->sb()Lc/c/a/n/j/k/c;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, v9

    .line 7
    invoke-direct/range {v0 .. v8}, Lc/c/a/n/j/b/a/a;-><init>(Lc/c/a/n/j/b/a/d$a;Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;Lc/c/a/n/c/d/o$a;Lc/c/a/n/j/b/b/d$a;Lcom/farsitel/bazaar/common/model/cinema/EpisodeItemClickListener;Lc/c/a/n/c/c/a/a/a/i;ILh/f/b/f;)V

    return-object v9
.end method

.method public Xa()Landroidx/recyclerview/widget/RecyclerView$h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public Ya()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ca:I

    return v0
.end method

.method public Za()Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;
    .locals 5

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;

    .line 3
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ha:Lc/c/a/n/j/k/o;

    const/4 v2, 0x0

    const-string v3, "videoDetailArgs"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc/c/a/n/j/k/o;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ha:Lc/c/a/n/j/k/o;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lc/c/a/n/j/k/o;->a()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-direct {v0, v1, v2}, Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 5
    :cond_0
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic Za()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Za()Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;

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

    check-cast v0, Lc/c/a/n/j/k/s;

    invoke-virtual {v0, p1, p2, p3}, Lc/c/a/n/j/k/s;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lc/c/a/n/j/k/l;

    invoke-direct {v0, p0}, Lc/c/a/n/j/k/l;-><init>(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V

    invoke-virtual {p0, v0}, Lc/c/a/n/c/d/f;->a(Lc/c/a/n/c/d/m;)V

    .line 7
    invoke-super {p0, p1, p2}, Lc/c/a/n/c/d/a/a;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 8
    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/VideoDetailVisit;

    iget-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ha:Lc/c/a/n/j/k/o;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc/c/a/n/j/k/o;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/farsitel/bazaar/analytics/model/what/VideoDetailVisit;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "videoDetailArgs"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->zb()V

    goto :goto_0

    .line 29
    :cond_0
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewActionItem;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->zb()V

    goto :goto_0

    .line 30
    :cond_1
    instance-of p1, p1, Lcom/farsitel/bazaar/common/model/cinema/VideoAddReviewItem;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p1

    check-cast p1, Lc/c/a/n/j/k/s;

    invoke-virtual {p1}, Lc/c/a/n/j/k/s;->r()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;)V
    .locals 8

    .line 15
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/j/k/s;

    invoke-virtual {v0}, Lc/c/a/n/j/k/s;->t()V

    .line 16
    sget v0, Lc/c/a/e;->playFloatingButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LoadingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setShowLoading(Z)V

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

.method public final a(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V
    .locals 2

    .line 11
    sget-object v0, Lc/c/a/n/j/k/b;->a:[I

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

    .line 12
    sget p1, Lc/c/a/e;->downloadedVideoToolbarIcon:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    goto :goto_0

    .line 13
    :cond_0
    sget p1, Lc/c/a/e;->downloadedVideoToolbarIcon:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lc/c/a/n/j/k/d;

    invoke-direct {v0, p0}, Lc/c/a/n/j/k/d;-><init>(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    sget p1, Lc/c/a/e;->downloadedVideoToolbarIcon:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->e(I)Landroid/view/View;

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

    new-instance v1, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$onActivityCreated$$inlined$createViewModel$lambda$1;

    invoke-direct {v1, p0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$onActivityCreated$$inlined$createViewModel$lambda$1;-><init>(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V

    invoke-static {p0, v0, v1}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 7
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ea:Lc/c/a/n/j/b/c/b;

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lc/c/a/d/f/o;->c(Landroid/os/Bundle;)V

    .line 3
    sget-object p1, Lc/c/a/n/j/k/o;->a:Lc/c/a/n/j/k/o$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments!!"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/j/k/o$a;->a(Landroid/os/Bundle;)Lc/c/a/n/j/k/o;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ha:Lc/c/a/n/j/k/o;

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public c(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1}, Lc/c/a/n/c/d/a/a;->c(Landroid/view/View;)V

    .line 5
    invoke-virtual {p0}, Lc/c/a/n/c/d/a/a;->rb()Lc/c/a/n/c/d/a/f;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc/c/a/n/c/d/a/f;->a()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    new-instance v0, Lc/c/a/n/j/k/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lc/c/a/e;->playFloatingButton:I

    invoke-virtual {p0, v2}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->e(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/farsitel/bazaar/widget/LoadingButton;

    const-string v3, "playFloatingButton"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, p1}, Lc/c/a/n/j/k/a;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Da:Lc/c/a/n/j/k/a;

    .line 7
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Da:Lc/c/a/n/j/k/a;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 8
    sget p1, Lc/c/a/e;->playFloatingButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/widget/LoadingButton;

    new-instance v0, Lc/c/a/n/j/k/e;

    invoke-direct {v0, p0}, Lc/c/a/n/j/k/e;-><init>(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/widget/LoadingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    sget p1, Lc/c/a/e;->playFloatingButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/widget/LoadingButton;

    invoke-static {p1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    return-void

    :cond_1
    const-string p1, "fabScrollListener"

    .line 10
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

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

    .line 11
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    .line 12
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->a(Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;)V

    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->d(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    goto :goto_0

    .line 14
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

    const-string p1, " for play"

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

    check-cast v0, Lc/c/a/n/j/k/s;

    invoke-virtual {v0}, Lc/c/a/n/j/k/s;->t()V

    .line 3
    sget v0, Lc/c/a/e;->playFloatingButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LoadingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setShowLoading(Z)V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/ErrorModel;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Qa()Lc/c/a/d/d/c;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lc/c/a/d/b/d;->b(Landroid/content/Context;Lcom/farsitel/bazaar/data/entity/ErrorModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/d/d/c;->a(Ljava/lang/String;)V

    .line 6
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    invoke-virtual {v0, p1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ka:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ka:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ka:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ka:Ljava/util/HashMap;

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

    check-cast v0, Lc/c/a/n/j/k/s;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lc/c/a/n/j/k/s;->b(Lc/c/a/n/j/k/s;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;

    move-result-object v0

    .line 3
    new-instance v2, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->getCover()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->getName()Ljava/lang/String;

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
    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1
.end method

.method public hb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Fa:Z

    return v0
.end method

.method public bridge synthetic jb()Lc/c/a/n/c/d/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->jb()Lc/c/a/n/j/k/s;

    move-result-object v0

    return-object v0
.end method

.method public jb()Lc/c/a/n/j/k/s;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object v0

    const-class v1, Lc/c/a/n/j/k/s;

    invoke-virtual {v0, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast v0, Lc/c/a/n/j/k/s;

    .line 5
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Za()Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;->getVideoId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ia:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Lc/c/a/n/c/d/g;->g()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;

    invoke-direct {v2, v0, p0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;-><init>(Lc/c/a/n/j/k/s;Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V

    invoke-static {p0, v1, v2}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 7
    invoke-virtual {v0}, Lc/c/a/n/j/k/s;->s()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/j/k/h;

    invoke-direct {v3, v0, p0}, Lc/c/a/n/j/k/h;-><init>(Lc/c/a/n/j/k/s;Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 8
    invoke-virtual {v0}, Lc/c/a/n/j/k/s;->l()Lb/r/r;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/j/k/i;

    invoke-direct {v3, p0}, Lc/c/a/n/j/k/i;-><init>(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 9
    invoke-virtual {v0}, Lc/c/a/n/j/k/s;->k()Lb/r/t;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/j/k/j;

    invoke-direct {v3, p0}, Lc/c/a/n/j/k/j;-><init>(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    return-object v0
.end method

.method public n(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lc/c/a/n/c/d/a/a;->n(Landroid/os/Bundle;)V

    const-string v0, "totalScroll"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Da:Lc/c/a/n/j/k/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lc/c/a/n/c/d/a/g;->a(I)V

    return-void

    :cond_0
    const-string p1, "fabScrollListener"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public qa()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lc/c/a/n/c/d/f;->a(Lc/c/a/n/c/d/m;)V

    .line 2
    invoke-super {p0}, Lc/c/a/n/c/d/a/a;->qa()V

    .line 3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->La()V

    return-void
.end method

.method public qb()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ja:Lh/c;

    sget-object v1, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ba:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final sb()Lc/c/a/n/j/k/c;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/j/k/c;

    invoke-direct {v0, p0}, Lc/c/a/n/j/k/c;-><init>(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V

    return-object v0
.end method

.method public final tb()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/j/k/s;

    invoke-virtual {v0}, Lc/c/a/n/j/k/s;->p()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v1

    new-instance v2, Lc/c/a/n/j/k/f;

    invoke-direct {v2, p0}, Lc/c/a/n/j/k/f;-><init>(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    return-void
.end method

.method public final ub()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/j/k/s;

    invoke-virtual {v0}, Lc/c/a/n/j/k/s;->n()I

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

.method public final wb()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/j/k/s;

    invoke-virtual {v0}, Lc/c/a/n/j/k/s;->m()Lcom/farsitel/bazaar/common/model/PlayedVideoModel;

    move-result-object v0

    .line 2
    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/PlayVideoButtonClick;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->getEntityId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->getType()Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    move-result-object v3

    iget-object v4, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ha:Lc/c/a/n/j/k/o;

    const-string v7, "videoDetailArgs"

    const/4 v8, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lc/c/a/n/j/k/o;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lcom/farsitel/bazaar/analytics/model/what/PlayVideoButtonClick;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/PlayedVideoType;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ea:Lc/c/a/n/j/b/c/b;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;->VIDEO:Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;

    iget-object v3, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ha:Lc/c/a/n/j/k/o;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lc/c/a/n/j/k/o;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lc/c/a/n/j/b/c/b;->a(Lcom/farsitel/bazaar/common/model/PlayedVideoModel;Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/j/k/s;

    invoke-virtual {v0}, Lc/c/a/n/j/k/s;->q()V

    return-void

    .line 5
    :cond_0
    invoke-static {v7}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v8

    :cond_1
    const-string v0, "playInfoViewModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v8

    .line 6
    :cond_2
    invoke-static {v7}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v8
.end method

.method public final xb()Lc/c/a/n/j/k/k;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/j/k/k;

    invoke-direct {v0, p0}, Lc/c/a/n/j/k/k;-><init>(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V

    return-object v0
.end method

.method public final yb()V
    .locals 6

    .line 1
    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/PostVideoReviewButtonClick;

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ha:Lc/c/a/n/j/k/o;

    const/4 v2, 0x0

    const-string v3, "videoDetailArgs"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc/c/a/n/j/k/o;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Ha:Lc/c/a/n/j/k/o;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lc/c/a/n/j/k/o;->a()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Za()Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;->getReferrer()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Za()Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;->getVideoId()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f10023a

    .line 6
    invoke-virtual {p0, v4}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->f(I)Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

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

.method public final zb()V
    .locals 5

    .line 1
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 2
    sget-object v1, Lc/c/a/n/j/k/p;->a:Lc/c/a/n/j/k/p$b;

    .line 3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Za()Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;->getReferrer()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Za()Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;->getVideoId()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1001a8

    .line 5
    invoke-virtual {p0, v4}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->f(I)Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    move-result-object v4

    .line 6
    invoke-virtual {v1, v2, v3, v4}, Lc/c/a/n/j/k/p$b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;)Lb/w/p;

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method
