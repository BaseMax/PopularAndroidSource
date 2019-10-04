.class final Lcab/snapp/passenger/units/footer/ride_request_footer/c$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;)V
    .locals 0

    .line 926
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 946
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 947
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;

    iget-object p1, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->v(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 949
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;

    iget-object p1, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->w(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->navigateToBoxOptions()V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 931
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 932
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;

    iget-object p1, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->hideServiceTypes()V

    .line 933
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;

    iget-object p1, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->o(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 935
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;

    iget-object p1, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->p(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->scalingOptionsStarted()V

    .line 937
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;

    iget-object p1, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->q(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;

    iget-object p1, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->r(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;

    iget-object p1, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->s(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 939
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;

    iget-object p1, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->u(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->t(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->setTopMargin(I)V

    :cond_1
    return-void
.end method
