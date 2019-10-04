.class public Lc/e/a/c/w/f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FabTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$a;FFLjava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/e/a/c/i/f;

.field public final synthetic b:Lcom/google/android/material/transformation/FabTransformationBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lc/e/a/c/i/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/w/f;->b:Lcom/google/android/material/transformation/FabTransformationBehavior;

    iput-object p2, p0, Lc/e/a/c/w/f;->a:Lc/e/a/c/i/f;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lc/e/a/c/w/f;->a:Lc/e/a/c/i/f;

    invoke-interface {p1}, Lc/e/a/c/i/f;->getRevealInfo()Lc/e/a/c/i/f$d;

    move-result-object p1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 2
    iput v0, p1, Lc/e/a/c/i/f$d;->c:F

    .line 3
    iget-object v0, p0, Lc/e/a/c/w/f;->a:Lc/e/a/c/i/f;

    invoke-interface {v0, p1}, Lc/e/a/c/i/f;->setRevealInfo(Lc/e/a/c/i/f$d;)V

    return-void
.end method
