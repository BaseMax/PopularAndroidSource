.class public Lc/e/a/c/w/e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FabTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transformation/FabTransformationBehavior;->d(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$a;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/e/a/c/i/f;

.field public final synthetic b:Landroid/graphics/drawable/Drawable;

.field public final synthetic c:Lcom/google/android/material/transformation/FabTransformationBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lc/e/a/c/i/f;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/w/e;->c:Lcom/google/android/material/transformation/FabTransformationBehavior;

    iput-object p2, p0, Lc/e/a/c/w/e;->a:Lc/e/a/c/i/f;

    iput-object p3, p0, Lc/e/a/c/w/e;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lc/e/a/c/w/e;->a:Lc/e/a/c/i/f;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lc/e/a/c/i/f;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lc/e/a/c/w/e;->a:Lc/e/a/c/i/f;

    iget-object v0, p0, Lc/e/a/c/w/e;->b:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v0}, Lc/e/a/c/i/f;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
