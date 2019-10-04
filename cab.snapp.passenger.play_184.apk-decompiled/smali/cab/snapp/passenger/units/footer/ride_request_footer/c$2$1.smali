.class final Lcab/snapp/passenger/units/footer/ride_request_footer/c$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/footer/ride_request_footer/c$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/footer/ride_request_footer/c$2;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/footer/ride_request_footer/c$2;)V
    .locals 0

    .line 835
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$2$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 855
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 856
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$2$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c$2;

    iget-object p1, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c$2;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->g(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 858
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$2$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c$2;

    iget-object p1, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c$2;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->h(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->navigateToOptions()V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 840
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 841
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$2$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c$2;

    iget-object p1, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c$2;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->hideServiceTypes()V

    .line 842
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$2$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c$2;

    iget-object p1, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c$2;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->c(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 844
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$2$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c$2;

    iget-object p1, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c$2;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->d(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->scalingOptionsStarted()V

    .line 846
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$2$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c$2;

    iget-object p1, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c$2;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->e(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$2$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c$2;

    iget-object p1, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c$2;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->f(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object p1, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->promoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 848
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$2$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c$2;

    iget-object p1, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c$2;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->a()V

    :cond_1
    return-void
.end method
