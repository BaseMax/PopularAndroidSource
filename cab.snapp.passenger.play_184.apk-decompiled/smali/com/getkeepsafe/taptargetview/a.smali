.class final Lcom/getkeepsafe/taptargetview/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getkeepsafe/taptargetview/a$a;,
        Lcom/getkeepsafe/taptargetview/a$b;
    }
.end annotation


# instance fields
.field final a:Landroid/animation/ValueAnimator;

.field b:Lcom/getkeepsafe/taptargetview/a$a;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Lcom/getkeepsafe/taptargetview/a;-><init>(Z)V

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    new-array p1, v0, [F

    .line 45
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/a;->a:Landroid/animation/ValueAnimator;

    return-void

    :cond_0
    new-array p1, v0, [F

    .line 47
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/a;->a:Landroid/animation/ValueAnimator;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final build()Landroid/animation/ValueAnimator;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/a;->b:Lcom/getkeepsafe/taptargetview/a$a;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/a;->a:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/getkeepsafe/taptargetview/a$2;

    invoke-direct {v1, p0}, Lcom/getkeepsafe/taptargetview/a$2;-><init>(Lcom/getkeepsafe/taptargetview/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/a;->a:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public final delayBy(J)Lcom/getkeepsafe/taptargetview/a;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/a;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    return-object p0
.end method

.method public final duration(J)Lcom/getkeepsafe/taptargetview/a;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/a;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public final interpolator(Landroid/animation/TimeInterpolator;)Lcom/getkeepsafe/taptargetview/a;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/a;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public final onEnd(Lcom/getkeepsafe/taptargetview/a$a;)Lcom/getkeepsafe/taptargetview/a;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/a;->b:Lcom/getkeepsafe/taptargetview/a$a;

    return-object p0
.end method

.method public final onUpdate(Lcom/getkeepsafe/taptargetview/a$b;)Lcom/getkeepsafe/taptargetview/a;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/a;->a:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/getkeepsafe/taptargetview/a$1;

    invoke-direct {v1, p0, p1}, Lcom/getkeepsafe/taptargetview/a$1;-><init>(Lcom/getkeepsafe/taptargetview/a;Lcom/getkeepsafe/taptargetview/a$b;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0
.end method

.method public final repeat(I)Lcom/getkeepsafe/taptargetview/a;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/a;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-object p0
.end method
