.class public final Lc/c/a/n/j/h/d;
.super Ljava/lang/Object;
.source "SeasonPickerFragment.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/j/h/e;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/j/h/e;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lc/c/a/n/j/h/e;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/j/h/d;->a:Lc/c/a/n/j/h/e;

    iput-object p2, p0, Lc/c/a/n/j/h/d;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/h/d;->a:Lc/c/a/n/j/h/e;

    invoke-virtual {v0}, Lb/o/a/d;->Na()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lc/e/a/c/f/h;

    const v1, 0x7f0a012d

    .line 2
    invoke-virtual {v0, v1}, Lb/b/a/B;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 3
    iget-object v1, p0, Lc/c/a/n/j/h/d;->a:Lc/c/a/n/j/h/e;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const-string v2, "BottomSheetBehavior.from(bottomSheet)"

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lc/c/a/n/j/h/e;->a(Lc/c/a/n/j/h/e;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    .line 4
    iget-object v0, p0, Lc/c/a/n/j/h/d;->a:Lc/c/a/n/j/h/e;

    invoke-static {v0}, Lc/c/a/n/j/h/e;->a(Lc/c/a/n/j/h/e;)Lc/c/a/n/j/h/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/n/c/d/a;->e()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    .line 5
    iget-object v0, p0, Lc/c/a/n/j/h/d;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void

    .line 6
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
