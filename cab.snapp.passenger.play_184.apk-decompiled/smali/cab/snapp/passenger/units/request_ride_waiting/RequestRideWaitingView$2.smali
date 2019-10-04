.class final Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->scaleUpCancelRequestWithAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView$2;->a:Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 362
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView$2;->a:Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->a(Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;Z)Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 353
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView$2;->a:Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    iget-object p1, p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->a:Lcab/snapp/passenger/units/request_ride_waiting/c;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView$2;->a:Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-static {p1}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->a(Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 355
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView$2;->a:Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    iget-object p1, p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->a:Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/request_ride_waiting/c;->onCancelRequestAnimationEnded()V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 347
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView$2;->a:Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->a(Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;Z)Z

    return-void
.end method
