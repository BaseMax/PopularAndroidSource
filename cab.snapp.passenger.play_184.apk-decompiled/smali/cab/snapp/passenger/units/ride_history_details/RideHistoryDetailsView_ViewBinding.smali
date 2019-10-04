.class public Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;

.field private view7f0a03f1:Landroid/view/View;

.field private view7f0a0400:Landroid/view/View;

.field private view7f0a0407:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView_ViewBinding;-><init>(Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;Landroid/view/View;)V
    .locals 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView_ViewBinding;->target:Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;

    .line 40
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a03f7

    const-string v2, "field \'mapIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->mapIv:Landroid/widget/ImageView;

    .line 41
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a03f2

    const-string v2, "field \'driverImageIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->driverImageIv:Landroid/widget/ImageView;

    .line 42
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a0406

    const-string v2, "field \'rateLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->rateLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0407

    const-string v1, "field \'rateRideTv\' and method \'onRateRideClick\'"

    .line 43
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 44
    const-class v2, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "field \'rateRideTv\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->rateRideTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 45
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView_ViewBinding;->view7f0a0407:Landroid/view/View;

    .line 46
    new-instance v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView_ViewBinding;Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const-class v0, Landroid/widget/RatingBar;

    const v1, 0x7f0a03fb

    const-string v2, "field \'rideRatingBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->rideRatingBar:Landroid/widget/RatingBar;

    .line 53
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a03f3

    const-string v2, "field \'driverNameLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->driverNameLayout:Landroid/widget/LinearLayout;

    .line 54
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a03f4

    const-string v2, "field \'driverNameTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->driverNameTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 55
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0402

    const-string v2, "field \'vehicleModelLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->vehicleModelLayout:Landroid/widget/LinearLayout;

    .line 56
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0401

    const-string v2, "field \'vehicleModelLabelTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->vehicleModelLabelTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 57
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0403

    const-string v2, "field \'vehicleModelTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->vehicleModelTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 58
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a03f9

    const-string v2, "field \'originLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->originLayout:Landroid/widget/LinearLayout;

    .line 59
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a03f8

    const-string v2, "field \'originAddressTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->originAddressTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a03f0

    const-string v2, "field \'destinationLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->destinationLayout:Landroid/widget/LinearLayout;

    .line 61
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a03ef

    const-string v2, "field \'destinationAddressTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->destinationAddressTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a03ff

    const-string v2, "field \'secondDestinationLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->secondDestinationLayout:Landroid/widget/LinearLayout;

    .line 63
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a03fe

    const-string v2, "field \'secondDestinationAddressTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->secondDestinationAddressTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a03fd

    const-string v2, "field \'roundTripLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->roundTripLayout:Landroid/widget/LinearLayout;

    .line 65
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0404

    const-string v2, "field \'waitingLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->waitingLayout:Landroid/widget/LinearLayout;

    .line 66
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0405

    const-string v2, "field \'waitingTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->waitingTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a03fa

    const-string v2, "field \'parcelLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->parcelLayout:Landroid/widget/LinearLayout;

    .line 68
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a03fc

    const-string v2, "field \'rideDetailsRecycler\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->rideDetailsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a03ed

    const-string v2, "field \'buttonsLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->buttonsLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0400

    const-string v1, "field \'supportBtn\' and method \'onSupportClicked\'"

    .line 70
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 71
    const-class v2, Lcab/snapp/snappuikit/SnappButton;

    const-string v3, "field \'supportBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->supportBtn:Lcab/snapp/snappuikit/SnappButton;

    .line 72
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView_ViewBinding;->view7f0a0400:Landroid/view/View;

    .line 73
    new-instance v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView_ViewBinding;Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03f1

    const-string v1, "field \'downloadReceiptBtn\' and method \'onDownloadReceiptClicked\'"

    .line 79
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 80
    const-class v2, Lcab/snapp/snappuikit/SnappButton;

    const-string v3, "field \'downloadReceiptBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->downloadReceiptBtn:Lcab/snapp/snappuikit/SnappButton;

    .line 81
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView_ViewBinding;->view7f0a03f1:Landroid/view/View;

    .line 82
    new-instance v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView_ViewBinding$3;-><init>(Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView_ViewBinding;Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03ee

    const-string v1, "field \'buttonsDivider\'"

    .line 88
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->buttonsDivider:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView_ViewBinding;->target:Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 96
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView_ViewBinding;->target:Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;

    .line 98
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->mapIv:Landroid/widget/ImageView;

    .line 99
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->driverImageIv:Landroid/widget/ImageView;

    .line 100
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->rateLayout:Landroid/widget/FrameLayout;

    .line 101
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->rateRideTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 102
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->rideRatingBar:Landroid/widget/RatingBar;

    .line 103
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->driverNameLayout:Landroid/widget/LinearLayout;

    .line 104
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->driverNameTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 105
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->vehicleModelLayout:Landroid/widget/LinearLayout;

    .line 106
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->vehicleModelLabelTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 107
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->vehicleModelTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 108
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->originLayout:Landroid/widget/LinearLayout;

    .line 109
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->originAddressTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 110
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->destinationLayout:Landroid/widget/LinearLayout;

    .line 111
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->destinationAddressTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 112
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->secondDestinationLayout:Landroid/widget/LinearLayout;

    .line 113
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->secondDestinationAddressTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 114
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->roundTripLayout:Landroid/widget/LinearLayout;

    .line 115
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->waitingLayout:Landroid/widget/LinearLayout;

    .line 116
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->waitingTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 117
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->parcelLayout:Landroid/widget/LinearLayout;

    .line 118
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->rideDetailsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 119
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->buttonsLayout:Landroid/widget/LinearLayout;

    .line 120
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->supportBtn:Lcab/snapp/snappuikit/SnappButton;

    .line 121
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->downloadReceiptBtn:Lcab/snapp/snappuikit/SnappButton;

    .line 122
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->buttonsDivider:Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView_ViewBinding;->view7f0a0407:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView_ViewBinding;->view7f0a0407:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView_ViewBinding;->view7f0a0400:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView_ViewBinding;->view7f0a0400:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView_ViewBinding;->view7f0a03f1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView_ViewBinding;->view7f0a03f1:Landroid/view/View;

    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
