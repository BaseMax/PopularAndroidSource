.class final Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->scaleDownCancelRequestWithAnimation(I)V
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

    .line 317
    iput-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView$1;->a:Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 321
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 322
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView$1;->a:Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->a(Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;Z)Z

    return-void
.end method
