.class public final Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;
.super Lc/c/a/n/c/d/a/a;
.source "SeriesDetailFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/a/a<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;",
        "Lc/c/a/n/j/j/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic Ba:[Lh/i/i;


# instance fields
.field public Ca:I

.field public Da:Lc/c/a/n/j/j/i;

.field public Ea:Lc/c/a/n/j/b/c/b;

.field public Fa:Z

.field public final Ga:Lh/c;

.field public Ha:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "shareMessage"

    const-string v4, "getShareMessage()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->Ba:[Lh/i/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/a/a;-><init>()V

    const v0, 0x7f0d006a

    .line 2
    iput v0, p0, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->Ca:I

    .line 3
    new-instance v0, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment$shareMessage$2;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment$shareMessage$2;-><init>(Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;)V

    invoke-static {v0}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->Ga:Lh/c;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->a(Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->c(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lc/c/a/n/c/d/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;)Lc/c/a/n/j/j/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->Da:Lc/c/a/n/j/j/i;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "seriesDetailArgs"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic c(Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;)Lc/c/a/n/c/d/a/f;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/a/a;->rb()Lc/c/a/n/c/d/a/f;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;)Lc/c/a/n/j/j/l;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p0

    check-cast p0, Lc/c/a/n/j/j/l;

    return-object p0
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->Ha:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/SeriesDetailsScreen;
    .locals 2

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/SeriesDetailsScreen;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->Da:Lc/c/a/n/j/j/i;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc/c/a/n/j/j/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/analytics/model/where/SeriesDetailsScreen;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "seriesDetailArgs"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->Sa()Lcom/farsitel/bazaar/analytics/model/where/SeriesDetailsScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Ua()Lc/c/a/n/c/d/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->Ua()Lc/c/a/n/j/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public Ua()Lc/c/a/n/j/b/a/a;
    .locals 10

    .line 2
    new-instance v9, Lc/c/a/n/j/b/a/a;

    .line 3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->ub()Lc/c/a/n/j/j/e;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->xb()Lc/c/a/n/j/j/h;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->vb()Lc/c/a/n/j/j/g;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->sb()Lc/c/a/n/j/j/a;

    move-result-object v4

    .line 7
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->tb()Lc/c/a/n/j/j/b;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, v9

    .line 8
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
    iget v0, p0, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->Ca:I

    return v0
.end method

.method public Za()Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;
    .locals 6

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->Da:Lc/c/a/n/j/j/i;

    const/4 v2, 0x0

    const-string v3, "seriesDetailArgs"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lc/c/a/n/j/j/i;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->Da:Lc/c/a/n/j/j/i;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lc/c/a/n/j/j/i;->b()I

    move-result v4

    iget-object v5, p0, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->Da:Lc/c/a/n/j/j/i;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lc/c/a/n/j/j/i;->a()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->Za()Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lc/c/a/n/j/j/f;

    invoke-direct {v0, p0}, Lc/c/a/n/j/j/f;-><init>(Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;)V

    invoke-virtual {p0, v0}, Lc/c/a/n/c/d/f;->a(Lc/c/a/n/c/d/m;)V

    .line 6
    invoke-super {p0, p1, p2}, Lc/c/a/n/c/d/a/a;->a(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 11

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-interface {p1}, Lcom/farsitel/bazaar/common/model/RecyclerData;->getViewType()I

    move-result v0

    .line 20
    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_SEASON_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->wb()V

    goto/16 :goto_1

    .line 22
    :cond_0
    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_EPISODE_SEE_MORE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "seriesDetailArgs"

    const/4 v3, 0x0

    if-ne v0, v1, :cond_4

    .line 23
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeSeeMoreItem;

    if-eqz v0, :cond_3

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v0

    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeSeeMoreItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeSeeMoreItem;->getSlug()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v4, "Uri.parse(this)"

    invoke-static {v1, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    .line 26
    invoke-static {v0, v1, v3, v4, v3}, Lc/c/a/b/f;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/Object;)V

    .line 27
    new-instance v6, Lcom/farsitel/bazaar/analytics/model/what/LoadEpisodesEvent;

    .line 28
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->Da:Lc/c/a/n/j/j/i;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc/c/a/n/j/j/i;->b()I

    move-result v0

    .line 29
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeSeeMoreItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object p1

    .line 30
    :goto_0
    invoke-direct {v6, v0, p1}, Lcom/farsitel/bazaar/analytics/model/what/LoadEpisodesEvent;-><init>(ILjava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v5, p0

    .line 31
    invoke-static/range {v5 .. v10}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    .line 32
    :cond_2
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v3

    .line 33
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_4
    sget-object p1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->RETRY_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-ne v0, p1, :cond_6

    .line 35
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p1

    check-cast p1, Lc/c/a/n/j/j/l;

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->Da:Lc/c/a/n/j/j/i;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lc/c/a/n/j/j/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/c/a/n/j/j/l;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v3

    :cond_6
    :goto_1
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;)V
    .locals 8

    .line 36
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->isPlayable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->Ea:Lc/c/a/n/j/b/c/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v1

    check-cast v1, Lc/c/a/n/j/j/l;

    invoke-virtual {v1, p1}, Lc/c/a/n/j/j/l;->a(Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;)Lcom/farsitel/bazaar/common/model/PlayedVideoModel;

    move-result-object v1

    sget-object v2, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;->EPISODE:Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->getReferrer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lc/c/a/n/j/b/c/b;->a(Lcom/farsitel/bazaar/common/model/PlayedVideoModel;Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/j/j/l;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/c/a/n/j/j/l;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const-string p1, "playInfoViewModel"

    .line 39
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 40
    :cond_1
    new-instance v7, Lcom/farsitel/bazaar/analytics/model/what/PurchaseEpisodeButtonClick;

    .line 41
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->getEntityId()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->getFullName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    move-object v2, v0

    .line 43
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->getEpisodeIndex()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v3, v0

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    const/4 v3, -0x1

    .line 44
    :goto_1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->getPrice()J

    move-result-wide v4

    .line 45
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->getReferrer()Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    .line 46
    invoke-direct/range {v0 .. v6}, Lcom/farsitel/bazaar/analytics/model/what/PurchaseEpisodeButtonClick;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v7

    .line 47
    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 48
    sget-object v0, Lcom/farsitel/bazaar/ui/payment/PaymentActivity;->w:Lcom/farsitel/bazaar/ui/payment/PaymentActivity$a;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/farsitel/bazaar/ui/payment/PaymentActivity$a;->b(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;)V
    .locals 8

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/j/j/l;

    invoke-virtual {v0}, Lc/c/a/n/j/j/l;->o()V

    .line 8
    sget-object v0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->u:Lcom/farsitel/bazaar/player/VideoPlayerActivity$a;

    .line 9
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->getEntityId()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v1, "Uri.parse(this)"

    invoke-static {v3, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->getWaterMarkUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 13
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v4, v1

    .line 14
    :goto_0
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->getSubtitles()Ljava/util/List;

    move-result-object v5

    .line 15
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->getRefreshData()Lcom/farsitel/bazaar/common/model/cinema/RefreshData;

    move-result-object v6

    .line 16
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->getReferrer()Ljava/lang/String;

    move-result-object v7

    .line 17
    new-instance p1, Lc/c/a/l/f;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lc/c/a/l/f;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Lcom/farsitel/bazaar/common/model/cinema/RefreshData;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, p0, p1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity$a;->a(Landroidx/fragment/app/Fragment;Lc/c/a/l/f;)V

    :cond_1
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

    new-instance v1, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment$onActivityCreated$$inlined$createViewModel$lambda$1;

    invoke-direct {v1, p0}, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment$onActivityCreated$$inlined$createViewModel$lambda$1;-><init>(Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;)V

    invoke-static {p0, v0, v1}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 7
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->Ea:Lc/c/a/n/j/b/c/b;

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lc/c/a/d/f/o;->c(Landroid/os/Bundle;)V

    .line 3
    sget-object p1, Lc/c/a/n/j/j/i;->a:Lc/c/a/n/j/j/i$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments!!"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/j/j/i$a;->a(Landroid/os/Bundle;)Lc/c/a/n/j/j/i;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->Da:Lc/c/a/n/j/j/i;

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

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->a(Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->d(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in play video"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

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

    check-cast v0, Lc/c/a/n/j/j/l;

    invoke-virtual {v0}, Lc/c/a/n/j/j/l;->o()V

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

    invoke-virtual {v0, p1}, Lc/c/a/c/c/a;->b(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->Ha:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->Ha:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->Ha:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->Ha:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public hb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->Fa:Z

    return v0
.end method

.method public bridge synthetic jb()Lc/c/a/n/c/d/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->jb()Lc/c/a/n/j/j/l;

    move-result-object v0

    return-object v0
.end method

.method public jb()Lc/c/a/n/j/j/l;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object v0

    const-class v1, Lc/c/a/n/j/j/l;

    invoke-virtual {v0, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast v0, Lc/c/a/n/j/j/l;

    .line 5
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->Da:Lc/c/a/n/j/j/i;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc/c/a/n/j/j/i;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lc/c/a/n/j/j/l;->c(I)V

    .line 6
    invoke-virtual {v0}, Lc/c/a/n/c/d/g;->g()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;

    invoke-direct {v2, p0}, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;-><init>(Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;)V

    invoke-static {p0, v1, v2}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 7
    invoke-virtual {v0}, Lc/c/a/n/j/j/l;->m()Lb/r/t;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/j/j/c;

    invoke-direct {v3, p0}, Lc/c/a/n/j/j/c;-><init>(Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 8
    invoke-virtual {v0}, Lc/c/a/n/j/j/l;->l()Lb/r/r;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/j/j/d;

    invoke-direct {v3, v0}, Lc/c/a/n/j/j/d;-><init>(Lc/c/a/n/j/j/l;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    return-object v0

    :cond_0
    const-string v0, "seriesDetailArgs"

    .line 9
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/d/a/a;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->La()V

    return-void
.end method

.method public qb()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->Ga:Lh/c;

    sget-object v1, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->Ba:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final sb()Lc/c/a/n/j/j/a;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/j/j/a;

    invoke-direct {v0, p0}, Lc/c/a/n/j/j/a;-><init>(Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;)V

    return-object v0
.end method

.method public final tb()Lc/c/a/n/j/j/b;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/j/j/b;

    invoke-direct {v0, p0}, Lc/c/a/n/j/j/b;-><init>(Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;)V

    return-object v0
.end method

.method public final ub()Lc/c/a/n/j/j/e;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/j/j/e;

    invoke-direct {v0, p0}, Lc/c/a/n/j/j/e;-><init>(Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;)V

    return-object v0
.end method

.method public final vb()Lc/c/a/n/j/j/g;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/j/j/g;

    invoke-direct {v0, p0}, Lc/c/a/n/j/j/g;-><init>(Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;)V

    return-object v0
.end method

.method public final wb()V
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

.method public final xb()Lc/c/a/n/j/j/h;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/j/j/h;

    invoke-direct {v0, p0}, Lc/c/a/n/j/j/h;-><init>(Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;)V

    return-object v0
.end method
