.class public Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView_ViewBinding;-><init>(Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;Landroid/view/View;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView_ViewBinding;->target:Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    .line 28
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a03e7

    const-string v2, "field \'waitingGifIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->waitingGifIv:Landroid/widget/ImageView;

    .line 29
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a03ec

    const-string v2, "field \'titleTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->titleTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 30
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a03eb

    const-string v2, "field \'titleTvReallotement\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->titleTvReallotement:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a03e8

    const-string v2, "field \'holdToCancelTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->holdToCancelTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 32
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a03e5

    const-string v2, "field \'cancelRequestBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->cancelRequestBtn:Landroid/widget/FrameLayout;

    .line 33
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a03e4

    const-string v2, "field \'cancelRequestBackground\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->cancelRequestBackground:Landroid/widget/FrameLayout;

    .line 34
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a03e6

    const-string v2, "field \'cancelRequestTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->cancelRequestTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 35
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a03ea

    const-string v2, "field \'messageTitleTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->messageTitleTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 36
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a03e9

    const-string v2, "field \'messageContentTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p2, p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->messageContentTv:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView_ViewBinding;->target:Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView_ViewBinding;->target:Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    .line 46
    iput-object v1, v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->waitingGifIv:Landroid/widget/ImageView;

    .line 47
    iput-object v1, v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->titleTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    iput-object v1, v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->titleTvReallotement:Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    iput-object v1, v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->holdToCancelTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    iput-object v1, v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->cancelRequestBtn:Landroid/widget/FrameLayout;

    .line 51
    iput-object v1, v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->cancelRequestBackground:Landroid/widget/FrameLayout;

    .line 52
    iput-object v1, v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->cancelRequestTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    iput-object v1, v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->messageTitleTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 54
    iput-object v1, v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->messageContentTv:Landroidx/appcompat/widget/AppCompatTextView;

    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
