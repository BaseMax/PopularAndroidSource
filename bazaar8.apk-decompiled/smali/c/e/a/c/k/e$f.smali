.class public abstract Lc/e/a/c/k/e$f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonImpl.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/c/k/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "f"
.end annotation


# instance fields
.field public a:Z

.field public b:F

.field public c:F

.field public final synthetic d:Lc/e/a/c/k/e;


# direct methods
.method public constructor <init>(Lc/e/a/c/k/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/k/e$f;->d:Lc/e/a/c/k/e;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/c/k/e;Lc/e/a/c/k/b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lc/e/a/c/k/e$f;-><init>(Lc/e/a/c/k/e;)V

    return-void
.end method


# virtual methods
.method public abstract a()F
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lc/e/a/c/k/e$f;->d:Lc/e/a/c/k/e;

    iget-object p1, p1, Lc/e/a/c/k/e;->o:Lc/e/a/c/q/a;

    iget v0, p0, Lc/e/a/c/k/e$f;->c:F

    invoke-virtual {p1, v0}, Lc/e/a/c/q/a;->b(F)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lc/e/a/c/k/e$f;->a:Z

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lc/e/a/c/k/e$f;->a:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/c/k/e$f;->d:Lc/e/a/c/k/e;

    iget-object v0, v0, Lc/e/a/c/k/e;->o:Lc/e/a/c/q/a;

    invoke-virtual {v0}, Lc/e/a/c/q/a;->c()F

    move-result v0

    iput v0, p0, Lc/e/a/c/k/e$f;->b:F

    .line 3
    invoke-virtual {p0}, Lc/e/a/c/k/e$f;->a()F

    move-result v0

    iput v0, p0, Lc/e/a/c/k/e$f;->c:F

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lc/e/a/c/k/e$f;->a:Z

    .line 5
    :cond_0
    iget-object v0, p0, Lc/e/a/c/k/e$f;->d:Lc/e/a/c/k/e;

    iget-object v0, v0, Lc/e/a/c/k/e;->o:Lc/e/a/c/q/a;

    iget v1, p0, Lc/e/a/c/k/e$f;->b:F

    iget v2, p0, Lc/e/a/c/k/e$f;->c:F

    sub-float/2addr v2, v1

    .line 6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    .line 7
    invoke-virtual {v0, v1}, Lc/e/a/c/q/a;->b(F)V

    return-void
.end method
