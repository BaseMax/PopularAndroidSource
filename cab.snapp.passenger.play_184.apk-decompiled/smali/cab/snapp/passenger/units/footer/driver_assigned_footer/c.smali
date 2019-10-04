.class public final Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;",
        "Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/f/o;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public final OnRideRatingUnitIsOnForeground()V
    .locals 1

    .line 239
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->dismissDialog()V

    return-void
.end method

.method public final bridge synthetic getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 1

    .line 5031
    invoke-super {p0}, Lcab/snapp/arch/protocol/BasePresenter;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;

    return-object v0
.end method

.method public final getPayCostTextView()Landroid/view/View;
    .locals 2

    .line 142
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    const v1, 0x7f0a0136

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onBeforeGetReceipt()V
    .locals 1

    .line 191
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->showPayCostLoading()V

    :cond_0
    return-void
.end method

.method public final onCallDriverClicked()V
    .locals 1

    .line 3031
    invoke-super {p0}, Lcab/snapp/arch/protocol/BasePresenter;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;

    if-eqz v0, :cond_0

    .line 4031
    invoke-super {p0}, Lcab/snapp/arch/protocol/BasePresenter;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;

    .line 55
    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->callDriver()V

    :cond_0
    return-void
.end method

.method public final onDataReady(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcab/snapp/passenger/data/models/PlateNumber;)V
    .locals 7

    .line 103
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 105
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    invoke-virtual {v0, p2}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->setDriverName(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    invoke-virtual {p2, p3}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->setVehicleType(Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_2

    .line 112
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    invoke-virtual {p2, p4}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->loadDriverAvatar(Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    const p3, 0x7f0801d3

    invoke-virtual {p2, p3}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->loadDriverAvatar(I)V

    :goto_1
    if-eqz p5, :cond_3

    .line 122
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    .line 123
    invoke-virtual {p5}, Lcab/snapp/passenger/data/models/PlateNumber;->getType()I

    move-result v1

    .line 125
    invoke-virtual {p5}, Lcab/snapp/passenger/data/models/PlateNumber;->getPartA()Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-virtual {p5}, Lcab/snapp/passenger/data/models/PlateNumber;->getPartB()Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-virtual {p5}, Lcab/snapp/passenger/data/models/PlateNumber;->getIranId()Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-virtual {p5}, Lcab/snapp/passenger/data/models/PlateNumber;->getCharacter()Ljava/lang/String;

    move-result-object v6

    move v2, p1

    .line 122
    invoke-virtual/range {v0 .. v6}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->setPlateNumber(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final onGetReceiptFailed()V
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->hidePayCostLoading()V

    .line 219
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->showReceiptFailedDialog()V

    :cond_0
    return-void
.end method

.method public final onGetReceiptSuccess()V
    .locals 1

    .line 228
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->hidePayCostLoading()V

    :cond_0
    return-void
.end method

.method public final onInitialize()V
    .locals 3

    .line 155
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getAppComponent()Lcab/snapp/passenger/e/a/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/a;->inject(Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;)V

    .line 162
    new-instance v0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;-><init>()V

    .line 163
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->setActivity(Landroid/app/Activity;)V

    .line 164
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getPayCostTextView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->setView(Landroid/view/View;)V

    .line 165
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12018e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->setTitle(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120260

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->setDescription(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->a:Lcab/snapp/passenger/f/o;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/f/o;->showTapTargetForPayment(Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onNotAuthorizedForInRidePayment(Ljava/lang/String;)V
    .locals 1

    .line 204
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->hidePayCostLoading()V

    .line 207
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onPayCostClicked()V
    .locals 1

    .line 1031
    invoke-super {p0}, Lcab/snapp/arch/protocol/BasePresenter;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;

    if-eqz v0, :cond_0

    .line 2031
    invoke-super {p0}, Lcab/snapp/arch/protocol/BasePresenter;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;

    .line 44
    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->payCost()V

    :cond_0
    return-void
.end method

.method public final onReallotment(ZZ)V
    .locals 0

    .line 180
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 182
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->showMessageOfDriverReallotment(Z)V

    :cond_0
    return-void
.end method

.method public final onRideIsFree()V
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->displayRideIsFreeDialog()V

    .line 67
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->hidePayCostLoading()V

    :cond_0
    return-void
.end method

.method public final onViewVisibilityUpdate(Ljava/lang/Boolean;)V
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 84
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->translateUpBaseView()V

    return-void

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->translateDownBaseView()V

    return-void
.end method
