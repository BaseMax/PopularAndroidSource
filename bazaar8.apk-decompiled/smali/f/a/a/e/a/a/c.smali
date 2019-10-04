.class public Lf/a/a/e/a/a/c;
.super Lf/a/a/e/a/a/a;
.source "FadeChangeAnimation.java"


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lf/a/a/e/a/a/a;-><init>()V

    const-wide/16 v0, 0x2bc

    .line 2
    iput-wide v0, p0, Lf/a/a/e/a/a/c;->a:J

    return-void
.end method

.method public static synthetic a(Lf/a/a/e/a/a/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lf/a/a/e/a/a/c;->a:J

    return-wide v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lf/a/a/e/a/p;Landroid/view/View;Lf/a/a/e/g;)V
    .locals 6

    .line 1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2
    iget-wide v2, p0, Lf/a/a/e/a/a/c;->a:J

    const-wide/16 v4, 0x3

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4
    new-instance v1, Lf/a/a/e/a/a/b;

    invoke-direct {v1, p0, p1, p2, p3}, Lf/a/a/e/a/a/b;-><init>(Lf/a/a/e/a/a/c;Lf/a/a/e/a/p;Landroid/view/View;Lf/a/a/e/g;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
