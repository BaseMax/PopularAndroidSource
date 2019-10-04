.class public final Lc/c/a/n/j/c/i;
.super Ljava/lang/Object;
.source "VideoDownloadListFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->jb()Lc/c/a/n/j/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/r/u<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/j/c/i;->a:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lc/c/a/n/j/c/i;->a:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->a(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "position"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->c(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lc/c/a/n/j/c/i;->a(Ljava/lang/Integer;)V

    return-void
.end method
