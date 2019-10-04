.class public Lc/e/a/c/l/l;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/c/l/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/e/a/c/l/m;


# direct methods
.method public constructor <init>(Lc/e/a/c/l/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/l/l;->a:Lc/e/a/c/l/m;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/c/l/l;->a:Lc/e/a/c/l/m;

    iget-object v1, v0, Lc/e/a/c/l/m;->c:Landroid/animation/ValueAnimator;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, v0, Lc/e/a/c/l/m;->c:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method
