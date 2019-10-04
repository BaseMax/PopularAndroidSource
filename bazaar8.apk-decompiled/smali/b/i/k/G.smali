.class public Lb/i/k/G;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/i/k/I;->a(Landroid/view/View;Lb/i/k/J;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/i/k/J;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lb/i/k/I;


# direct methods
.method public constructor <init>(Lb/i/k/I;Lb/i/k/J;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/i/k/G;->c:Lb/i/k/I;

    iput-object p2, p0, Lb/i/k/G;->a:Lb/i/k/J;

    iput-object p3, p0, Lb/i/k/G;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/i/k/G;->a:Lb/i/k/J;

    iget-object v0, p0, Lb/i/k/G;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lb/i/k/J;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/i/k/G;->a:Lb/i/k/J;

    iget-object v0, p0, Lb/i/k/G;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lb/i/k/J;->b(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/i/k/G;->a:Lb/i/k/J;

    iget-object v0, p0, Lb/i/k/G;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lb/i/k/J;->c(Landroid/view/View;)V

    return-void
.end method
