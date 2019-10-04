.class public final Lc/c/a/n/j/d/n;
.super Ljava/lang/Object;
.source "EpisodeDetailFragment.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Bb()Lc/c/a/n/j/d/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/j/d/n;->a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverImageClicked(Lcom/farsitel/bazaar/common/model/common/EntityScreenshotItem;)V
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;

    invoke-direct {v0}, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;-><init>()V

    .line 2
    new-instance v1, Lc/c/a/n/v/e;

    new-instance v2, Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;

    invoke-static {p1}, Lh/a/k;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1}, Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;-><init>(ILjava/util/List;)V

    invoke-direct {v1, v2}, Lc/c/a/n/v/e;-><init>(Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;)V

    invoke-virtual {v1}, Lc/c/a/n/v/e;->b()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->m(Landroid/os/Bundle;)V

    .line 3
    iget-object p1, p0, Lc/c/a/n/j/d/n;->a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object p1

    const-string v1, "childFragmentManager"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lc/c/a/d/f/l;->a(Lb/o/a/n;)V

    return-void
.end method

.method public onDownloadClicked(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V
    .locals 9

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;

    invoke-direct {v0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;-><init>()V

    .line 2
    new-instance v7, Lc/c/a/n/j/c/d;

    .line 3
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getId()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getName()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getDownloadDescription()Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object v1, p0, Lc/c/a/n/j/d/n;->a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->qb()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lc/c/a/c/b/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v8

    .line 7
    :goto_0
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getReferrer()Ljava/lang/String;

    move-result-object v6

    move-object v1, v7

    .line 8
    invoke-direct/range {v1 .. v6}, Lc/c/a/n/j/c/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v7}, Lc/c/a/n/j/c/d;->f()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->m(Landroid/os/Bundle;)V

    .line 10
    iget-object p1, p0, Lc/c/a/n/j/d/n;->a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object p1

    invoke-virtual {v0, p1, v8}, Lb/o/a/d;->a(Lb/o/a/n;Ljava/lang/String;)V

    return-void
.end method

.method public onGenreClicked(Lcom/farsitel/bazaar/common/model/cinema/GenreItem;)V
    .locals 1

    const-string v0, "genreItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener$DefaultImpls;->onGenreClicked(Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;Lcom/farsitel/bazaar/common/model/cinema/GenreItem;)V

    return-void
.end method

.method public onPlayClicked(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/d/n;->a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->b(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)Lc/c/a/n/j/b/c/b;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/n/j/d/n;->a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-static {v1}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->e(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)Lc/c/a/n/j/d/t;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc/c/a/n/j/d/t;->a(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)Lcom/farsitel/bazaar/common/model/PlayedVideoModel;

    move-result-object v1

    sget-object v2, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;->EPISODE:Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getReferrer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lc/c/a/n/j/b/c/b;->a(Lcom/farsitel/bazaar/common/model/PlayedVideoModel;Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/j/d/n;->a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->e(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)Lc/c/a/n/j/d/t;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/c/a/n/j/d/t;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onPublisherClicked(Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;)V
    .locals 8

    const-string v0, "publisher"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;->getSlug()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    .line 2
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lc/c/a/n/j/d/n;->a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-static {v0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 4
    sget-object v1, Lc/c/a/n/j/k/p;->a:Lc/c/a/n/j/k/p$b;

    const/4 v3, 0x0

    .line 5
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;->getReferrer()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 6
    invoke-static/range {v1 .. v7}, Lc/c/a/n/j/k/p$b;->a(Lc/c/a/n/j/k/p$b;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lb/w/p;

    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :cond_1
    return-void
.end method

.method public onPurchaseClicked(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V
    .locals 8

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lc/c/a/n/j/d/n;->a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/what/PurchaseVideoButtonClick;

    .line 3
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getId()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getDownloadDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    move-object v4, v2

    .line 5
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getPrice()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v5, v2

    goto :goto_1

    :cond_1
    const-wide/16 v5, -0x1

    .line 6
    :goto_1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getReferrer()Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    .line 7
    invoke-direct/range {v2 .. v7}, Lcom/farsitel/bazaar/analytics/model/what/PurchaseVideoButtonClick;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 8
    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 9
    sget-object v0, Lcom/farsitel/bazaar/ui/payment/PaymentActivity;->w:Lcom/farsitel/bazaar/ui/payment/PaymentActivity$a;

    .line 10
    iget-object v1, p0, Lc/c/a/n/j/d/n;->a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    .line 11
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getId()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getName()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {v0, v1, v2, p1}, Lcom/farsitel/bazaar/ui/payment/PaymentActivity$a;->b(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStopDownloadClicked(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/d/n;->a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->e(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)Lc/c/a/n/j/d/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/c/a/n/j/d/t;->c(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V

    return-void
.end method

.method public onVideoNameClicked(Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;)V
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/c/a/n/j/d/n;->a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-static {v0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 3
    sget-object v1, Lc/c/a/d;->a:Lc/c/a/d$l;

    .line 4
    move-object v2, p1

    check-cast v2, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getSeriesId()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lc/c/a/n/j/d/n;->a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-virtual {v3}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->Za()Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;->b()I

    move-result v3

    .line 6
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {v1, v2, v3, p1}, Lc/c/a/d$l;->c(Ljava/lang/String;ILjava/lang/String;)Lb/w/p;

    move-result-object p1

    .line 8
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :cond_0
    return-void
.end method
