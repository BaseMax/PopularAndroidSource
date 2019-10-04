.class public final Lc/c/a/n/j/k/k;
.super Ljava/lang/Object;
.source "VideoDetailFragment.kt"

# interfaces
.implements Lc/c/a/n/j/b/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->xb()Lc/c/a/n/j/k/k;
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
    iput-object p1, p0, Lc/c/a/n/j/k/k;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;)V
    .locals 7
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

    .line 10
    iget-object v1, p0, Lc/c/a/n/j/k/k;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/ScreenShotClick;

    invoke-static {v1}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->d(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)Lc/c/a/n/j/k/o;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/n/j/k/o;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lc/c/a/n/j/k/k;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-static {v3}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->d(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)Lc/c/a/n/j/k/o;

    move-result-object v3

    invoke-virtual {v3}, Lc/c/a/n/j/k/o;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, p1, v3}, Lcom/farsitel/bazaar/analytics/model/what/ScreenShotClick;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 11
    new-instance v0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;

    invoke-direct {v0}, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;-><init>()V

    .line 12
    new-instance v1, Lc/c/a/n/v/e;

    new-instance v2, Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;

    invoke-direct {v2, p1, p2}, Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;-><init>(ILjava/util/List;)V

    invoke-direct {v1, v2}, Lc/c/a/n/v/e;-><init>(Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;)V

    invoke-virtual {v1}, Lc/c/a/n/v/e;->b()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->m(Landroid/os/Bundle;)V

    .line 13
    iget-object p1, p0, Lc/c/a/n/j/k/k;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object p1

    const-string p2, "childFragmentManager"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lc/c/a/d/f/l;->a(Lb/o/a/n;)V

    return-void
.end method

.method public a(Lcom/farsitel/bazaar/common/model/cinema/TrailerCoverItem;)V
    .locals 11

    const-string v0, "trailerCover"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc/c/a/n/j/k/k;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->Za()Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "_trailer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object v4, p0, Lc/c/a/n/j/k/k;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    new-instance v5, Lcom/farsitel/bazaar/analytics/model/what/TrailerClick;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/TrailerCoverItem;->getPreviewUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/n/j/k/k;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-static {v1}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->d(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)Lc/c/a/n/j/k/o;

    move-result-object v1

    invoke-virtual {v1}, Lc/c/a/n/j/k/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v0, v3, v1}, Lcom/farsitel/bazaar/analytics/model/what/TrailerClick;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->u:Lcom/farsitel/bazaar/player/VideoPlayerActivity$a;

    .line 4
    iget-object v1, p0, Lc/c/a/n/j/k/k;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->Ga()Lb/o/a/i;

    move-result-object v1

    const-string v2, "requireActivity()"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/TrailerCoverItem;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string p1, "Uri.parse(this)"

    invoke-static {v4, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v8

    .line 8
    new-instance p1, Lc/c/a/l/f;

    const/4 v5, 0x0

    const/16 v9, 0x1c

    const/4 v10, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lc/c/a/l/f;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Lcom/farsitel/bazaar/common/model/cinema/RefreshData;Ljava/lang/String;ILh/f/b/f;)V

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity$a;->a(Landroid/app/Activity;Lc/c/a/l/f;)V

    return-void
.end method
