.class public final Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;
.super Lc/c/a/n/c/d/k;
.source "VideoDownloadListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/k<",
        "Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;",
        "Lcom/farsitel/bazaar/data/entity/None;",
        "Lc/c/a/n/j/c/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic ya:[Lh/i/i;


# instance fields
.field public Aa:Lc/c/a/n/j/b/c/b;

.field public final Ba:Lh/c;

.field public Ca:Z

.field public Da:Ljava/util/HashMap;

.field public za:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "titleName"

    const-string v4, "getTitleName()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->ya:[Lh/i/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/k;-><init>()V

    const v0, 0x7f0d012e

    .line 2
    iput v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->za:I

    .line 3
    new-instance v0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment$titleName$2;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment$titleName$2;-><init>(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;)V

    invoke-static {v0}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->Ba:Lh/c;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;)Lc/c/a/n/j/c/l;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p0

    check-cast p0, Lc/c/a/n/j/c/l;

    return-object p0
.end method

.method public static final synthetic c(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->ub()V

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->Da:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/VideoDownloadListScreen;
    .locals 1

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/VideoDownloadListScreen;

    invoke-direct {v0}, Lcom/farsitel/bazaar/analytics/model/where/VideoDownloadListScreen;-><init>()V

    return-object v0
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->Sa()Lcom/farsitel/bazaar/analytics/model/where/VideoDownloadListScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Ua()Lc/c/a/n/c/d/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->Ua()Lc/c/a/n/j/c/f;

    move-result-object v0

    return-object v0
.end method

.method public Ua()Lc/c/a/n/j/c/f;
    .locals 2

    .line 2
    new-instance v0, Lc/c/a/n/j/c/f;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->tb()Lc/c/a/n/j/c/g;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/c/a/n/j/c/f;-><init>(Lc/c/a/n/j/c/p;)V

    return-object v0
.end method

.method public Wa()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->za:I

    return v0
.end method

.method public Za()Lcom/farsitel/bazaar/data/entity/None;
    .locals 1

    .line 2
    sget-object v0, Lcom/farsitel/bazaar/data/entity/None;->INSTANCE:Lcom/farsitel/bazaar/data/entity/None;

    return-object v0
.end method

.method public bridge synthetic Za()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->Za()Lcom/farsitel/bazaar/data/entity/None;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadedVideoItem"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/DeleteVideoItemClick;

    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/farsitel/bazaar/analytics/model/what/DeleteVideoItemClick;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/d;->c(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d010f

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "popupView"

    .line 5
    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lc/c/a/i/f;->a(Landroid/view/View;Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object p1

    const v1, 0x7f0a0127

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lc/c/a/n/j/c/j;

    invoke-direct {v1, p0, p2, p1}, Lc/c/a/n/j/c/j;-><init>(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;)V
    .locals 7

    const-string v0, "downloadedVideoItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/VideoDownloadClick;

    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->PAUSE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/farsitel/bazaar/analytics/model/what/VideoDownloadClick;-><init>(Lcom/farsitel/bazaar/common/model/ui/EntityState;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ga()Lb/o/a/i;

    move-result-object v0

    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v1

    check-cast v1, Lc/c/a/n/j/c/l;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getVideoId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lc/c/a/n/j/c/l;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 9
    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/DownloadVideoButtonClick;

    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/farsitel/bazaar/analytics/model/what/DownloadVideoButtonClick;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 10
    new-instance v0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;

    invoke-direct {v0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;-><init>()V

    .line 11
    new-instance v7, Lc/c/a/n/j/c/d;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lc/c/a/n/j/c/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lc/c/a/n/j/c/d;->f()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->m(Landroid/os/Bundle;)V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lb/o/a/d;->a(Lb/o/a/n;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

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

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->Aa:Lc/c/a/n/j/b/c/b;

    return-void
.end method

.method public final b(Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;)V
    .locals 3

    const-string v0, "downloadedVideoItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getShareLink()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "Uri.parse(this)"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 9
    invoke-static {v0, p1, v2, v1, v2}, Lc/c/a/b/f;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;)V
    .locals 9

    const-string v0, "downloadedVideoItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/ui/EntityState;->needToDownloadContinue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getVideoName()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getVideoDesc()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getShareLink()Ljava/lang/String;

    move-result-object v6

    .line 7
    new-instance p1, Lc/c/a/c/d/c$h;

    invoke-direct {p1}, Lc/c/a/c/d/c$h;-><init>()V

    const/4 v0, 0x1

    invoke-static {p1, v1, v0, v1}, Lc/c/a/c/d/d;->a(Lc/c/a/c/d/d;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    .line 8
    invoke-virtual/range {v2 .. v7}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->Aa:Lc/c/a/n/j/b/c/b;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getVideoId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/c/a/n/j/b/c/b;->a(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    sget-object v0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->u:Lcom/farsitel/bazaar/player/VideoPlayerActivity$a;

    .line 11
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->getEntityId()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v2, "Uri.parse(this)"

    invoke-static {v4, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->getWaterMarkUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 15
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    move-object v5, v1

    .line 16
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->getSubtitles()Ljava/util/List;

    move-result-object v6

    .line 17
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->getRefreshData()Lcom/farsitel/bazaar/common/model/cinema/RefreshData;

    move-result-object v7

    .line 18
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->getReferrer()Ljava/lang/String;

    move-result-object v8

    .line 19
    new-instance p1, Lc/c/a/l/f;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lc/c/a/l/f;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Lcom/farsitel/bazaar/common/model/cinema/RefreshData;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p0, p1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity$a;->a(Landroidx/fragment/app/Fragment;Lc/c/a/l/f;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string p1, "playInfoViewModel"

    .line 21
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->Da:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->Da:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->Da:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->Da:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public hb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->Ca:Z

    return v0
.end method

.method public bridge synthetic jb()Lc/c/a/n/c/d/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->jb()Lc/c/a/n/j/c/l;

    move-result-object v0

    return-object v0
.end method

.method public jb()Lc/c/a/n/j/c/l;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object v0

    const-class v1, Lc/c/a/n/j/c/l;

    invoke-virtual {v0, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast v0, Lc/c/a/n/j/c/l;

    .line 5
    invoke-virtual {v0}, Lc/c/a/n/c/d/g;->g()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment$makeViewModel$$inlined$createViewModel$lambda$1;

    invoke-direct {v2, p0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment$makeViewModel$$inlined$createViewModel$lambda$1;-><init>(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;)V

    invoke-static {p0, v1, v2}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 6
    invoke-virtual {v0}, Lc/c/a/n/j/c/l;->j()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/j/c/i;

    invoke-direct {v3, p0}, Lc/c/a/n/j/c/i;-><init>(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    return-object v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/d/k;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->La()V

    return-void
.end method

.method public qb()Lc/c/a/n/c/d/l;
    .locals 5

    .line 1
    new-instance v0, Lc/c/a/n/c/d/l;

    .line 2
    new-instance v1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment$emptyViewData$1;

    invoke-direct {v1, p0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment$emptyViewData$1;-><init>(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;)V

    const v2, 0x7f100200

    const v3, 0x7f08010f

    const v4, 0x7f1001fc

    .line 3
    invoke-direct {v0, v2, v3, v4, v1}, Lc/c/a/n/c/d/l;-><init>(IIILh/f/a/a;)V

    return-object v0
.end method

.method public rb()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->Ba:Lh/c;

    sget-object v1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->ya:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final tb()Lc/c/a/n/j/c/g;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/j/c/g;

    invoke-direct {v0, p0}, Lc/c/a/n/j/c/g;-><init>(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;)V

    return-object v0
.end method

.method public final ub()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/j/c/l;

    invoke-virtual {v0}, Lc/c/a/n/j/c/l;->k()Lb/r/r;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v1

    new-instance v2, Lc/c/a/n/j/c/h;

    invoke-direct {v2, p0}, Lc/c/a/n/j/c/h;-><init>(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    return-void
.end method
