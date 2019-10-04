.class public final Lc/c/a/n/j/k/n;
.super Ljava/lang/Object;
.source "VideoDetailFragment.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Bb()Lc/c/a/n/j/k/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/j/k/n;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverImageClicked(Lcom/farsitel/bazaar/common/model/common/EntityScreenshotItem;)V
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lc/c/a/n/j/k/n;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/VideoCoverImageItemClick;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/common/EntityScreenshotItem;->getMainUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/common/EntityScreenshotItem;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lc/c/a/n/j/k/n;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-static {v4}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->d(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)Lc/c/a/n/j/k/o;

    move-result-object v4

    invoke-virtual {v4}, Lc/c/a/n/j/k/o;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/farsitel/bazaar/analytics/model/what/VideoCoverImageItemClick;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;

    invoke-direct {v0}, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;-><init>()V

    .line 3
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

    .line 4
    iget-object p1, p0, Lc/c/a/n/j/k/n;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

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
    iget-object v1, p0, Lc/c/a/n/j/k/n;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/DownloadVideoButtonClick;

    invoke-static {v1}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->d(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)Lc/c/a/n/j/k/o;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/n/j/k/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/farsitel/bazaar/analytics/model/what/DownloadVideoButtonClick;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;

    invoke-direct {v0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;-><init>()V

    .line 3
    new-instance v7, Lc/c/a/n/j/c/d;

    .line 4
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getId()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getName()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getDownloadDescription()Ljava/lang/String;

    move-result-object v4

    .line 7
    iget-object v1, p0, Lc/c/a/n/j/k/n;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->qb()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lc/c/a/c/b/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v8

    .line 8
    :goto_0
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getReferrer()Ljava/lang/String;

    move-result-object v6

    move-object v1, v7

    .line 9
    invoke-direct/range {v1 .. v6}, Lc/c/a/n/j/c/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v7}, Lc/c/a/n/j/c/d;->f()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->m(Landroid/os/Bundle;)V

    .line 11
    iget-object p1, p0, Lc/c/a/n/j/k/n;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object p1

    invoke-virtual {v0, p1, v8}, Lb/o/a/d;->a(Lb/o/a/n;Ljava/lang/String;)V

    return-void
.end method

.method public onGenreClicked(Lcom/farsitel/bazaar/common/model/cinema/GenreItem;)V
    .locals 9

    const-string v0, "genreItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lc/c/a/n/j/k/n;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/VideoGenreItemClick;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->getReferrer()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/farsitel/bazaar/analytics/model/what/VideoGenreItemClick;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->getSlug()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Lc/c/a/n/j/k/n;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-static {v1}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v8

    .line 5
    sget-object v1, Lc/c/a/n/j/k/p;->a:Lc/c/a/n/j/k/p$b;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video_cat_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 7
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->getReferrer()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 8
    invoke-static/range {v1 .. v7}, Lc/c/a/n/j/k/p$b;->a(Lc/c/a/n/j/k/p$b;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lb/w/p;

    move-result-object p1

    .line 9
    invoke-static {v8, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :cond_2
    return-void
.end method

.method public onPlayClicked(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lc/c/a/n/j/k/n;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->i(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V

    return-void
.end method

.method public onPublisherClicked(Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;)V
    .locals 14

    const-string v0, "publisher"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lc/c/a/n/j/k/n;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/PublisherItemClick;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;->getReferrer()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/farsitel/bazaar/analytics/model/what/PublisherItemClick;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;->getSlug()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v8, :cond_2

    if-eqz v10, :cond_2

    .line 3
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lc/c/a/n/j/k/n;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-static {v0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 5
    sget-object v7, Lc/c/a/n/j/k/p;->a:Lc/c/a/n/j/k/p$b;

    const/4 v9, 0x0

    .line 6
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;->getReferrer()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    const/4 v13, 0x0

    .line 7
    invoke-static/range {v7 .. v13}, Lc/c/a/n/j/k/p$b;->a(Lc/c/a/n/j/k/p$b;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lb/w/p;

    move-result-object p1

    .line 8
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :cond_2
    return-void
.end method

.method public onPurchaseClicked(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V
    .locals 8

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lc/c/a/n/j/k/n;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

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
    iget-object v1, p0, Lc/c/a/n/j/k/n;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

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
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lc/c/a/n/j/k/n;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/VideoDownloadClick;

    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->PAUSE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-static {v1}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->d(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)Lc/c/a/n/j/k/o;

    move-result-object v3

    invoke-virtual {v3}, Lc/c/a/n/j/k/o;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/farsitel/bazaar/analytics/model/what/VideoDownloadClick;-><init>(Lcom/farsitel/bazaar/common/model/ui/EntityState;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/j/k/n;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->e(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)Lc/c/a/n/j/k/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/c/a/n/j/k/s;->b(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V

    return-void
.end method

.method public onVideoNameClicked(Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;)V
    .locals 1

    const-string v0, "cinemaInfoItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
