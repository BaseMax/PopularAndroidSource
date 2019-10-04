.class public final Lcab/snapp/passenger/units/footer/mainfooter/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;",
        "Lcab/snapp/passenger/units/footer/mainfooter/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleDestinationSelectedState()V
    .locals 0

    return-void
.end method

.method public final handleDriverArrivedState()V
    .locals 0

    return-void
.end method

.method public final handleIdleState()V
    .locals 0

    .line 119
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->showSelectOriginLayout()V

    return-void
.end method

.method public final handleOriginSelectedState()V
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->showDestinationLayout()V

    return-void
.end method

.method public final handlePassengerBoardedState()V
    .locals 0

    return-void
.end method

.method public final handleRequestAcceptedState()V
    .locals 0

    return-void
.end method

.method public final handleRideFinishedState()V
    .locals 0

    return-void
.end method

.method public final handleRideRequestedState()V
    .locals 0

    return-void
.end method

.method public final hideVehiclesLoading()V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->vehiclesProgressBar:Lcab/snapp/snappuikit/SnappCircleProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappCircleProgressBar;->setVisibility(I)V

    .line 36
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->vehiclesTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final setAddress(Ljava/lang/String;)V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->addressTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setDestinationAddress(Ljava/lang/String;)V
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->destAddressTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setVehiclesCount(I)V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;

    iget-object p1, p1, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->vehiclesTextView:Landroid/widget/TextView;

    const v0, 0x7f1200df

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->vehiclesTextView:Landroid/widget/TextView;

    const v1, 0x7f1200d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 69
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->vehiclesTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "%s"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->vehiclesTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->hideVehiclesLoading()V

    :cond_1
    return-void
.end method

.method public final showDestinationLayout()V
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->selectOriginLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->originAddressTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;

    iget-object v1, v1, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->addressTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->selectDestinationLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final showSelectOriginLayout()V
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->selectOriginLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->selectDestinationLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final showVehiclesLoading()V
    .locals 2

    .line 21
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->vehiclesProgressBar:Lcab/snapp/snappuikit/SnappCircleProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappCircleProgressBar;->setVisibility(I)V

    .line 24
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->vehiclesTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
