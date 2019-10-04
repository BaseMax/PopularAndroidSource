.class final Lcab/snapp/passenger/units/footer/ride_request_footer/c$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onHideBoxOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)V
    .locals 0

    .line 966
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$5;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 986
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 987
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$5;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->C(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 989
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$5;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    const v0, 0x7f1200b6

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->setActionButtonText(I)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 971
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 972
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$5;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->showServiceTypes()V

    .line 973
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$5;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->y(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 975
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$5;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->z(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->navigateUpBoxOptions()V

    .line 977
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$5;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->A(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 979
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$5;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->B(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->setTopMargin(I)V

    :cond_1
    return-void
.end method
