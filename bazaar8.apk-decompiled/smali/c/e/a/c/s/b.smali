.class public Lc/e/a/c/s/b;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/s/b;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lc/e/a/c/s/b;->a:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    invoke-static {}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/e/a/c/s/b;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->f:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    iget v1, p0, Lc/e/a/c/s/b;->a:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Lb/i/k/z;->e(Landroid/view/View;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/c/s/b;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->f:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 5
    :goto_0
    iput p1, p0, Lc/e/a/c/s/b;->a:I

    return-void
.end method
