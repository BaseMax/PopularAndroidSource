.class final Lcab/snapp/snappdialog/widgets/SnappLoading$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/snappdialog/widgets/SnappLoading;->startAnimate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappdialog/widgets/SnappLoading;


# direct methods
.method constructor <init>(Lcab/snapp/snappdialog/widgets/SnappLoading;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcab/snapp/snappdialog/widgets/SnappLoading$1;->a:Lcab/snapp/snappdialog/widgets/SnappLoading;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 211
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 212
    iget-object v0, p0, Lcab/snapp/snappdialog/widgets/SnappLoading$1;->a:Lcab/snapp/snappdialog/widgets/SnappLoading;

    invoke-static {v0}, Lcab/snapp/snappdialog/widgets/SnappLoading;->a(Lcab/snapp/snappdialog/widgets/SnappLoading;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 213
    iget-object v0, p0, Lcab/snapp/snappdialog/widgets/SnappLoading$1;->a:Lcab/snapp/snappdialog/widgets/SnappLoading;

    invoke-static {v0}, Lcab/snapp/snappdialog/widgets/SnappLoading;->a(Lcab/snapp/snappdialog/widgets/SnappLoading;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method
