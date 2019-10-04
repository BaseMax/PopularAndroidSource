.class public final Lc/c/a/n/j/c/c;
.super Ljava/lang/Object;
.source "VideoDownloadFragment.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/j/c/c;->a:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;

    iput-object p2, p0, Lc/c/a/n/j/c/c;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/c/c;->a:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;

    invoke-virtual {v0}, Lb/o/a/d;->Na()Landroid/app/Dialog;

    move-result-object v0

    instance-of v1, v0, Lc/e/a/c/f/h;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lc/e/a/c/f/h;

    if-eqz v0, :cond_1

    const v1, 0x7f0a012d

    .line 2
    invoke-virtual {v0, v1}, Lb/b/a/B;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lc/c/a/n/j/c/c;->a:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const-string v2, "BottomSheetBehavior.from(bottomSheet)"

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->a(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lc/c/a/n/j/c/c;->a:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->a(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;)Lc/c/a/n/j/c/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc/c/a/n/c/d/a;->e()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_3

    .line 5
    iget-object v0, p0, Lc/c/a/n/j/c/c;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    return-void
.end method
