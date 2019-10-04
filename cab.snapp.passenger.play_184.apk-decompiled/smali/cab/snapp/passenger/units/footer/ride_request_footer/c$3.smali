.class final Lcab/snapp/passenger/units/footer/ride_request_footer/c$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onHideOptions()V
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

    .line 875
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$3;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 879
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 880
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$3;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->showServiceTypes()V

    .line 881
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$3;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->j(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 883
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$3;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->k(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->navigateUpOptions()V

    .line 885
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$3;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->l(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 887
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$3;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->m(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->setTopMargin(I)V

    :cond_1
    return-void
.end method
