.class public final Lc/c/a/n/j/k/e;
.super Ljava/lang/Object;
.source "VideoDetailFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/j/k/e;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lc/c/a/n/j/k/e;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    sget v0, Lc/c/a/e;->playFloatingButton:I

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/widget/LoadingButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/widget/LoadingButton;->setShowLoading(Z)V

    .line 2
    iget-object p1, p0, Lc/c/a/n/j/k/e;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->i(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V

    return-void
.end method
