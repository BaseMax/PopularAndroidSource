.class public Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/ride_history_details/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/ride_history_details/c;

.field private b:Lcab/snapp/snappuikit/c;

.field buttonsDivider:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03ee
    .end annotation
.end field

.field buttonsLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03ed
    .end annotation
.end field

.field destinationAddressTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03ef
    .end annotation
.end field

.field destinationLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03f0
    .end annotation
.end field

.field downloadReceiptBtn:Lcab/snapp/snappuikit/SnappButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03f1
    .end annotation
.end field

.field driverImageIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03f2
    .end annotation
.end field

.field driverNameLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03f3
    .end annotation
.end field

.field driverNameTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03f4
    .end annotation
.end field

.field mapIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03f7
    .end annotation
.end field

.field originAddressTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03f8
    .end annotation
.end field

.field originLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03f9
    .end annotation
.end field

.field parcelLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03fa
    .end annotation
.end field

.field rateLayout:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0406
    .end annotation
.end field

.field rateRideTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0407
    .end annotation
.end field

.field rideDetailsRecycler:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03fc
    .end annotation
.end field

.field rideRatingBar:Landroid/widget/RatingBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03fb
    .end annotation
.end field

.field roundTripLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03fd
    .end annotation
.end field

.field secondDestinationAddressTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03fe
    .end annotation
.end field

.field secondDestinationLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03ff
    .end annotation
.end field

.field supportBtn:Lcab/snapp/snappuikit/SnappButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0400
    .end annotation
.end field

.field vehicleModelLabelTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0401
    .end annotation
.end field

.field vehicleModelLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0402
    .end annotation
.end field

.field vehicleModelTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0403
    .end annotation
.end field

.field waitingLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0404
    .end annotation
.end field

.field waitingTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0405
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 217
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 229
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 595
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->a:Lcab/snapp/passenger/units/ride_history_details/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/ride_history_details/c;->onBackClicked()V

    return-void
.end method

.method public static synthetic lambda$010WxwlYC1LR496qiaqs_dBTPZg(Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public disableDownloadReceiptButton()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->downloadReceiptBtn:Lcab/snapp/snappuikit/SnappButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappButton;->setEnabled(Z)V

    .line 338
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->downloadReceiptBtn:Lcab/snapp/snappuikit/SnappButton;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappButton;->setTextAlpha(F)V

    .line 339
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->downloadReceiptBtn:Lcab/snapp/snappuikit/SnappButton;

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappButton;->setIconStartAlpha(F)V

    .line 340
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->downloadReceiptBtn:Lcab/snapp/snappuikit/SnappButton;

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappButton;->setIconEndAlpha(F)V

    .line 341
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->buttonsDivider:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public enableDownloadReceiptButton()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->downloadReceiptBtn:Lcab/snapp/snappuikit/SnappButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappButton;->setEnabled(Z)V

    .line 350
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->downloadReceiptBtn:Lcab/snapp/snappuikit/SnappButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappButton;->setTextAlpha(F)V

    .line 351
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->downloadReceiptBtn:Lcab/snapp/snappuikit/SnappButton;

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappButton;->setIconStartAlpha(F)V

    .line 352
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->downloadReceiptBtn:Lcab/snapp/snappuikit/SnappButton;

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappButton;->setIconEndAlpha(F)V

    .line 353
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->buttonsDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideDetailsRecycler()V
    .locals 2

    .line 482
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->rideDetailsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public hideParcel()V
    .locals 2

    .line 578
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->parcelLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public hideRateLayout()V
    .locals 2

    .line 313
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->rateLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public hideRateRideButton()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->rateRideTv:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public hideRideRatingBar()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->rideRatingBar:Landroid/widget/RatingBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    return-void
.end method

.method public hideRideWaiting()V
    .locals 2

    .line 562
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->waitingLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public hideRoundTrip()V
    .locals 2

    .line 536
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->roundTripLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public hideSecondDestination()V
    .locals 2

    .line 520
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->secondDestinationLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public hideVehicleModelLayout()V
    .locals 2

    .line 583
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->vehicleModelLabelTv:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public loadRideHistoryDetailsFields(Lcab/snapp/passenger/a/i;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 493
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->rideDetailsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 494
    iget-object p2, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->rideDetailsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onDownloadReceiptClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a03f1
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->a:Lcab/snapp/passenger/units/ride_history_details/c;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/c;->onDownloadRideReceiptClicked()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 591
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 592
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 594
    new-instance v0, Lcab/snapp/snappuikit/c;

    invoke-direct {v0, p0}, Lcab/snapp/snappuikit/c;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->b:Lcab/snapp/snappuikit/c;

    .line 595
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->b:Lcab/snapp/snappuikit/c;

    new-instance v1, Lcab/snapp/passenger/units/ride_history_details/-$$Lambda$RideHistoryDetailsView$010WxwlYC1LR496qiaqs_dBTPZg;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/ride_history_details/-$$Lambda$RideHistoryDetailsView$010WxwlYC1LR496qiaqs_dBTPZg;-><init>(Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;)V

    const v2, 0x7f08005d

    invoke-virtual {v0, v2, v1}, Lcab/snapp/snappuikit/c;->setBackButton(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onRateRideClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0407
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->a:Lcab/snapp/passenger/units/ride_history_details/c;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/c;->onRateRideClicked()V

    :cond_0
    return-void
.end method

.method public onSupportClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0400
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->a:Lcab/snapp/passenger/units/ride_history_details/c;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/c;->onSupportClicked()V

    :cond_0
    return-void
.end method

.method public setDestinationAddress(Ljava/lang/String;)V
    .locals 1

    .line 393
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->destinationAddressTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDriverName(Ljava/lang/String;)V
    .locals 1

    .line 363
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->driverNameTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOriginAddress(Ljava/lang/String;)V
    .locals 1

    .line 383
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->originAddressTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 32
    check-cast p1, Lcab/snapp/passenger/units/ride_history_details/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->setPresenter(Lcab/snapp/passenger/units/ride_history_details/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/ride_history_details/c;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->a:Lcab/snapp/passenger/units/ride_history_details/c;

    return-void
.end method

.method public setRating(I)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->rideRatingBar:Landroid/widget/RatingBar;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setRating(F)V

    return-void
.end method

.method public setRideWaiting(Ljava/lang/String;)V
    .locals 1

    .line 554
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->waitingTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSecondDestinationAddress(Ljava/lang/String;)V
    .locals 1

    .line 512
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->secondDestinationAddressTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setToolbarTitle(Ljava/lang/String;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->b:Lcab/snapp/snappuikit/c;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/c;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setVehicleModel(Ljava/lang/String;)V
    .locals 1

    .line 373
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->vehicleModelTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVehicleModelLabel(I)V
    .locals 1

    .line 413
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->vehicleModelLabelTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    return-void
.end method

.method public showDetailsRecycler()V
    .locals 2

    .line 474
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->rideDetailsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public showDriverImage(Ljava/lang/String;II)V
    .locals 1

    .line 444
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 449
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 458
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 459
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 460
    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/x;

    move-result-object p1

    .line 461
    invoke-virtual {p1, p2}, Lcom/squareup/picasso/x;->placeholder(I)Lcom/squareup/picasso/x;

    move-result-object p1

    .line 462
    invoke-virtual {p1, p3}, Lcom/squareup/picasso/x;->error(I)Lcom/squareup/picasso/x;

    move-result-object p1

    new-instance p2, Lcab/snapp/passenger/f/l;

    invoke-direct {p2}, Lcab/snapp/passenger/f/l;-><init>()V

    .line 463
    invoke-virtual {p1, p2}, Lcom/squareup/picasso/x;->transform(Lcom/squareup/picasso/ae;)Lcom/squareup/picasso/x;

    move-result-object p1

    iget-object p2, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->driverImageIv:Landroid/widget/ImageView;

    .line 464
    invoke-virtual {p1, p2}, Lcom/squareup/picasso/x;->into(Landroid/widget/ImageView;)V

    :cond_2
    return-void

    .line 451
    :cond_3
    :goto_0
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object p1

    .line 452
    invoke-virtual {p1, p3}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/x;

    move-result-object p1

    new-instance p2, Lcab/snapp/passenger/f/l;

    invoke-direct {p2}, Lcab/snapp/passenger/f/l;-><init>()V

    .line 453
    invoke-virtual {p1, p2}, Lcom/squareup/picasso/x;->transform(Lcom/squareup/picasso/ae;)Lcom/squareup/picasso/x;

    move-result-object p1

    iget-object p2, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->driverImageIv:Landroid/widget/ImageView;

    .line 454
    invoke-virtual {p1, p2}, Lcom/squareup/picasso/x;->into(Landroid/widget/ImageView;)V

    return-void
.end method

.method public showParcel()V
    .locals 2

    .line 570
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->parcelLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showRateLayout()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->rateLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public showRateRideButton()V
    .locals 2

    .line 305
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->rateRideTv:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public showRideRatingBar()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->rideRatingBar:Landroid/widget/RatingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    return-void
.end method

.method public showRideWaiting()V
    .locals 2

    .line 544
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->waitingLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showRoundTrip()V
    .locals 2

    .line 528
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->roundTripLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showSecondDestination()V
    .locals 2

    .line 502
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->secondDestinationLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showTopMapImage(Ljava/lang/String;II)V
    .locals 1

    .line 425
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 430
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 431
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/picasso/x;->fit()Lcom/squareup/picasso/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/picasso/x;->centerCrop()Lcom/squareup/picasso/x;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/x;->placeholder(I)Lcom/squareup/picasso/x;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/squareup/picasso/x;->error(I)Lcom/squareup/picasso/x;

    move-result-object p1

    iget-object p2, p0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->mapIv:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/x;->into(Landroid/widget/ImageView;)V

    :cond_1
    return-void
.end method
