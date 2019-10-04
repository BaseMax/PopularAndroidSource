.class public Lf/a/a/e/a/a/b;
.super Ljava/lang/Object;
.source "FadeChangeAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/a/a/c;->b(Lf/a/a/e/a/p;Landroid/view/View;Lf/a/a/e/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/a/p;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lf/a/a/e/g;

.field public final synthetic d:Lf/a/a/e/a/a/c;


# direct methods
.method public constructor <init>(Lf/a/a/e/a/a/c;Lf/a/a/e/a/p;Landroid/view/View;Lf/a/a/e/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/a/a/b;->d:Lf/a/a/e/a/a/c;

    iput-object p2, p0, Lf/a/a/e/a/a/b;->a:Lf/a/a/e/a/p;

    iput-object p3, p0, Lf/a/a/e/a/a/b;->b:Landroid/view/View;

    iput-object p4, p0, Lf/a/a/e/a/a/b;->c:Lf/a/a/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object p1, p0, Lf/a/a/e/a/a/b;->a:Lf/a/a/e/a/p;

    iget-object v0, p0, Lf/a/a/e/a/a/b;->b:Landroid/view/View;

    iget-object v1, p0, Lf/a/a/e/a/a/b;->c:Lf/a/a/e/g;

    invoke-virtual {p1, v0, v1}, Lf/a/a/e/a/p;->b(Landroid/view/View;Lf/a/a/e/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 3
    :goto_0
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const v0, 0x3e4ccccd    # 0.2f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 4
    iget-object v0, p0, Lf/a/a/e/a/a/b;->d:Lf/a/a/e/a/a/c;

    invoke-static {v0}, Lf/a/a/e/a/a/c;->a(Lf/a/a/e/a/a/c;)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 5
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6
    iget-object v0, p0, Lf/a/a/e/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
