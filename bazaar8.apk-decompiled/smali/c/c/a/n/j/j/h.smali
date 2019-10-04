.class public final Lc/c/a/n/j/j/h;
.super Ljava/lang/Object;
.source "SeriesDetailFragment.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->xb()Lc/c/a/n/j/j/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/j/j/h;->a:Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;

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
    iget-object p1, p0, Lc/c/a/n/j/j/h;->a:Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object p1

    const-string v1, "childFragmentManager"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lc/c/a/d/f/l;->a(Lb/o/a/n;)V

    return-void
.end method

.method public onDownloadClicked(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener$DefaultImpls;->onDownloadClicked(Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V

    return-void
.end method

.method public onGenreClicked(Lcom/farsitel/bazaar/common/model/cinema/GenreItem;)V
    .locals 9

    const-string v0, "genreItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->getSlug()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lc/c/a/n/j/j/h;->a:Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;

    invoke-static {v1}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v8

    .line 4
    sget-object v1, Lc/c/a/n/j/k/p;->a:Lc/c/a/n/j/k/p$b;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video_cat_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 6
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->getReferrer()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 7
    invoke-static/range {v1 .. v7}, Lc/c/a/n/j/k/p$b;->a(Lc/c/a/n/j/k/p$b;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lb/w/p;

    move-result-object p1

    .line 8
    invoke-static {v8, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :cond_1
    return-void
.end method

.method public onPlayClicked(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener$DefaultImpls;->onPlayClicked(Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V

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
    iget-object v0, p0, Lc/c/a/n/j/j/h;->a:Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;

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
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener$DefaultImpls;->onPurchaseClicked(Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V

    return-void
.end method

.method public onStopDownloadClicked(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener$DefaultImpls;->onStopDownloadClicked(Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V

    return-void
.end method

.method public onVideoNameClicked(Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
