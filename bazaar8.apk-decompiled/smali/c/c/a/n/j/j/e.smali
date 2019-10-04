.class public final Lc/c/a/n/j/j/e;
.super Ljava/lang/Object;
.source "SeriesDetailFragment.kt"

# interfaces
.implements Lc/c/a/n/j/b/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->ub()Lc/c/a/n/j/j/e;
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
    iput-object p1, p0, Lc/c/a/n/j/j/e;->a:Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/common/EntityScreenshotItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "imageListURL"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;

    invoke-direct {v0}, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;-><init>()V

    .line 10
    new-instance v1, Lc/c/a/n/v/e;

    new-instance v2, Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;

    invoke-direct {v2, p1, p2}, Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;-><init>(ILjava/util/List;)V

    invoke-direct {v1, v2}, Lc/c/a/n/v/e;-><init>(Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;)V

    invoke-virtual {v1}, Lc/c/a/n/v/e;->b()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->m(Landroid/os/Bundle;)V

    .line 11
    iget-object p1, p0, Lc/c/a/n/j/j/e;->a:Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object p1

    const-string p2, "childFragmentManager"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lc/c/a/d/f/l;->a(Lb/o/a/n;)V

    return-void
.end method

.method public a(Lcom/farsitel/bazaar/common/model/cinema/TrailerCoverItem;)V
    .locals 12

    const-string v0, "trailerCover"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->u:Lcom/farsitel/bazaar/player/VideoPlayerActivity$a;

    .line 2
    iget-object v1, p0, Lc/c/a/n/j/j/e;->a:Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;

    .line 3
    new-instance v11, Lc/c/a/l/f;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc/c/a/n/j/j/e;->a:Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;

    invoke-static {v3}, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->b(Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;)Lc/c/a/n/j/j/i;

    move-result-object v3

    invoke-virtual {v3}, Lc/c/a/n/j/j/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_trailer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/TrailerCoverItem;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string p1, "Uri.parse(trailerCover.videoUrl)"

    invoke-static {v4, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x1c

    const/4 v10, 0x0

    move-object v2, v11

    .line 7
    invoke-direct/range {v2 .. v10}, Lc/c/a/l/f;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Lcom/farsitel/bazaar/common/model/cinema/RefreshData;Ljava/lang/String;ILh/f/b/f;)V

    .line 8
    invoke-virtual {v0, v1, v11}, Lcom/farsitel/bazaar/player/VideoPlayerActivity$a;->a(Landroidx/fragment/app/Fragment;Lc/c/a/l/f;)V

    return-void
.end method
