.class final Lcab/snapp/passenger/units/request_ride_waiting/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/request_ride_waiting/c;->onInitialize(ZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/request_ride_waiting/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/request_ride_waiting/c;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/c$2;->a:Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 97
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-object v1, p0, Lcab/snapp/passenger/units/request_ride_waiting/c$2;->a:Lcab/snapp/passenger/units/request_ride_waiting/c;

    iget-wide v1, v1, Lcab/snapp/passenger/units/request_ride_waiting/c;->c:J

    sub-long/2addr p1, v1

    const-wide/16 v1, 0x258

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 104
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/c$2;->a:Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p1, Lcab/snapp/passenger/units/request_ride_waiting/c;->c:J

    .line 106
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/c$2;->a:Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/request_ride_waiting/c;->c(Lcab/snapp/passenger/units/request_ride_waiting/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 108
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/c$2;->a:Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/request_ride_waiting/c;->d(Lcab/snapp/passenger/units/request_ride_waiting/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    const/16 p2, 0x5dc

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->scaleUpCancelRequestWithAnimation(I)V

    .line 109
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/c$2;->a:Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/request_ride_waiting/c;->e(Lcab/snapp/passenger/units/request_ride_waiting/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    const/16 p2, 0x12c

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->showHoldToCancelWithAnimation(I)V

    .line 110
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/c$2;->a:Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/request_ride_waiting/c;->f(Lcab/snapp/passenger/units/request_ride_waiting/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    const p2, 0x7f080246

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->setCancelRequestBackground(I)V

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 114
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    .line 115
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    .line 116
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    .line 118
    :cond_2
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/c$2;->a:Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/request_ride_waiting/c;->g(Lcab/snapp/passenger/units/request_ride_waiting/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 120
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/c$2;->a:Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/request_ride_waiting/c;->h(Lcab/snapp/passenger/units/request_ride_waiting/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    const/16 p2, 0x1f4

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->scaleDownCancelRequestWithAnimation(I)V

    .line 121
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/c$2;->a:Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/request_ride_waiting/c;->i(Lcab/snapp/passenger/units/request_ride_waiting/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->hideHoldToCancelWithAnimation(I)V

    .line 122
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/c$2;->a:Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/request_ride_waiting/c;->j(Lcab/snapp/passenger/units/request_ride_waiting/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    const p2, 0x7f080244

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->setCancelRequestBackground(I)V

    :cond_3
    :goto_0
    return v0
.end method
