.class public Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/ride_options/RideOptionsView;

.field private view7f0a0409:Landroid/view/View;

.field private view7f0a040f:Landroid/view/View;

.field private view7f0a0412:Landroid/view/View;

.field private view7f0a0415:Landroid/view/View;

.field private view7f0a0419:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/ride_options/RideOptionsView;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;-><init>(Lcab/snapp/passenger/units/ride_options/RideOptionsView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/ride_options/RideOptionsView;Landroid/view/View;)V
    .locals 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;->target:Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    const v0, 0x7f0a0412

    const-string v1, "field \'secondDestinationLayout\' and method \'onSecondDestinationClick\'"

    .line 42
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 43
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'secondDestinationLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->secondDestinationLayout:Landroid/widget/LinearLayout;

    .line 44
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;->view7f0a0412:Landroid/view/View;

    .line 45
    new-instance v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;Lcab/snapp/passenger/units/ride_options/RideOptionsView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0411

    const-string v2, "field \'secondDestinationIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->secondDestinationIv:Landroid/widget/ImageView;

    .line 52
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0413

    const-string v2, "field \'secondDestinationTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->secondDestinationTv:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a040f

    const-string v1, "field \'roundTripLayout\' and method \'onRoundTripClick\'"

    .line 53
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 54
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'roundTripLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->roundTripLayout:Landroid/widget/LinearLayout;

    .line 55
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;->view7f0a040f:Landroid/view/View;

    .line 56
    new-instance v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;Lcab/snapp/passenger/units/ride_options/RideOptionsView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a040e

    const-string v2, "field \'roundTripIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->roundTripIv:Landroid/widget/ImageView;

    .line 63
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0410

    const-string v2, "field \'roundTripTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->roundTripTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a040d

    const-string v2, "field \'rootRideStopLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->rootRideStopLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0419

    const-string v1, "field \'waitingLayout\' and method \'onWaitingClick\'"

    .line 65
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 66
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'waitingLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->waitingLayout:Landroid/widget/LinearLayout;

    .line 67
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;->view7f0a0419:Landroid/view/View;

    .line 68
    new-instance v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding$3;-><init>(Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;Lcab/snapp/passenger/units/ride_options/RideOptionsView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0418

    const-string v2, "field \'waitingIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->waitingIv:Landroid/widget/ImageView;

    .line 75
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a041a

    const-string v2, "field \'waitingTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->waitingTv:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a0415

    const-string v1, "field \'stopTimeLayout\' and method \'onStopTimeClick\'"

    .line 76
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 77
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'stopTimeLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->stopTimeLayout:Landroid/widget/LinearLayout;

    .line 78
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;->view7f0a0415:Landroid/view/View;

    .line 79
    new-instance v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding$4;-><init>(Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;Lcab/snapp/passenger/units/ride_options/RideOptionsView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0414

    const-string v2, "field \'stopTimeIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->stopTimeIv:Landroid/widget/ImageView;

    .line 86
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0416

    const-string v2, "field \'stopTimeTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->stopTimeTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a040a

    const-string v2, "field \'confirmOptionsLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->confirmOptionsLayout:Landroid/widget/LinearLayout;

    .line 88
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0417

    const-string v2, "field \'userNameTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->userNameTv:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a0409

    const-string v1, "field \'confirmOptionsBtn\' and method \'onConfirmOptionsClick\'"

    .line 89
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 90
    const-class v2, Landroidx/appcompat/widget/AppCompatButton;

    const-string v3, "field \'confirmOptionsBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->confirmOptionsBtn:Landroidx/appcompat/widget/AppCompatButton;

    .line 91
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;->view7f0a0409:Landroid/view/View;

    .line 92
    new-instance v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding$5;-><init>(Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;Lcab/snapp/passenger/units/ride_options/RideOptionsView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const-class v0, Lcab/snapp/snappuikit/SnappLoading;

    const v1, 0x7f0a040b

    const-string v2, "field \'loading\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcab/snapp/snappuikit/SnappLoading;

    iput-object p2, p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->loading:Lcab/snapp/snappuikit/SnappLoading;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;->target:Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 106
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;->target:Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    .line 108
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->secondDestinationLayout:Landroid/widget/LinearLayout;

    .line 109
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->secondDestinationIv:Landroid/widget/ImageView;

    .line 110
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->secondDestinationTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->roundTripLayout:Landroid/widget/LinearLayout;

    .line 112
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->roundTripIv:Landroid/widget/ImageView;

    .line 113
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->roundTripTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 114
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->rootRideStopLayout:Landroid/widget/LinearLayout;

    .line 115
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->waitingLayout:Landroid/widget/LinearLayout;

    .line 116
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->waitingIv:Landroid/widget/ImageView;

    .line 117
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->waitingTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 118
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->stopTimeLayout:Landroid/widget/LinearLayout;

    .line 119
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->stopTimeIv:Landroid/widget/ImageView;

    .line 120
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->stopTimeTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 121
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->confirmOptionsLayout:Landroid/widget/LinearLayout;

    .line 122
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->userNameTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 123
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->confirmOptionsBtn:Landroidx/appcompat/widget/AppCompatButton;

    .line 124
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->loading:Lcab/snapp/snappuikit/SnappLoading;

    .line 126
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;->view7f0a0412:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;->view7f0a0412:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;->view7f0a040f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;->view7f0a040f:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;->view7f0a0419:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;->view7f0a0419:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;->view7f0a0415:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;->view7f0a0415:Landroid/view/View;

    .line 134
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;->view7f0a0409:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;->view7f0a0409:Landroid/view/View;

    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
