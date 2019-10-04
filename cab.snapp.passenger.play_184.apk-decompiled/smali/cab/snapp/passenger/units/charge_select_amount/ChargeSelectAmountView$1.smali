.class final Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->showErrorMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView$1;->a:Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 248
    iget-object p1, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView$1;->a:Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    iget-object p1, p1, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->errorRl:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
