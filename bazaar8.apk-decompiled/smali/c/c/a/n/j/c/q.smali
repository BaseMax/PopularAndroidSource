.class public final Lc/c/a/n/j/c/q;
.super Lc/c/a/n/c/d/n;
.source "VideoDownloadListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/n<",
        "Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final v:Lc/c/a/n/j/c/p;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/j/c/p;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoDownloadedCommunicator"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p2, p0, Lc/c/a/n/j/c/q;->v:Lc/c/a/n/j/c/p;

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lc/c/a/n/c/d/n;->b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/c/d/n;->B()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/n/j/c/q;->v:Lc/c/a/n/j/c/p;

    const/16 v1, 0x10

    invoke-virtual {p1, v1, v0}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;

    invoke-virtual {p0, p1}, Lc/c/a/n/j/c/q;->a(Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;)V

    return-void
.end method
