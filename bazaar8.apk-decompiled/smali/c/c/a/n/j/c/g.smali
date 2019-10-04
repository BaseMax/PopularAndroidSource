.class public final Lc/c/a/n/j/c/g;
.super Ljava/lang/Object;
.source "VideoDownloadListFragment.kt"

# interfaces
.implements Lc/c/a/n/j/c/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->tb()Lc/c/a/n/j/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/j/c/g;->a:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadedVideoItem"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/c/g;->a:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->a(Landroid/view/View;Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;)V

    return-void
.end method

.method public a(Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;)V
    .locals 1

    const-string v0, "downloadedVideoItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/j/c/g;->a:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;

    invoke-virtual {v0, p1}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->a(Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;)V

    return-void
.end method

.method public b(Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;)V
    .locals 1

    const-string v0, "downloadedVideoItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/c/g;->a:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;

    invoke-virtual {v0, p1}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->c(Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;)V

    return-void
.end method

.method public c(Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;)V
    .locals 1

    const-string v0, "downloadedVideoItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/c/g;->a:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;

    invoke-virtual {v0, p1}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->b(Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;)V

    return-void
.end method
