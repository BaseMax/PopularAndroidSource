.class public final Lc/c/a/n/j/c/j;
.super Ljava/lang/Object;
.source "VideoDownloadListFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->a(Landroid/view/View;Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;

.field public final synthetic b:Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;

.field public final synthetic c:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;Landroid/widget/PopupWindow;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/j/c/j;->a:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;

    iput-object p2, p0, Lc/c/a/n/j/c/j;->b:Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;

    iput-object p3, p0, Lc/c/a/n/j/c/j;->c:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lc/c/a/n/j/c/j;->a:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->b(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;)Lc/c/a/n/j/c/l;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/n/j/c/j;->b:Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/c/a/n/j/c/l;->b(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lc/c/a/n/j/c/j;->c:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
