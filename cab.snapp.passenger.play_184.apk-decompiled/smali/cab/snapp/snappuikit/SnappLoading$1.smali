.class final Lcab/snapp/snappuikit/SnappLoading$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/snappuikit/SnappLoading;->startAnimate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappuikit/SnappLoading;


# direct methods
.method constructor <init>(Lcab/snapp/snappuikit/SnappLoading;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappLoading$1;->a:Lcab/snapp/snappuikit/SnappLoading;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 328
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 329
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappLoading$1;->a:Lcab/snapp/snappuikit/SnappLoading;

    invoke-static {v0}, Lcab/snapp/snappuikit/SnappLoading;->a(Lcab/snapp/snappuikit/SnappLoading;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 330
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappLoading$1;->a:Lcab/snapp/snappuikit/SnappLoading;

    invoke-static {v0}, Lcab/snapp/snappuikit/SnappLoading;->a(Lcab/snapp/snappuikit/SnappLoading;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method
