.class public Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "SourceFile"


# instance fields
.field protected a:Lbutterknife/Unbinder;

.field private b:Lcab/snapp/passenger/units/charge_recently/a;

.field private c:Lcab/snapp/passenger/units/charge_recently/e;

.field private d:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;
    .locals 1

    .line 21
    new-instance v0, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;

    invoke-direct {v0}, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getChargeRecentlyMobileNumbersResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;
    .locals 1

    .line 108
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->d:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x7f1300c6

    .line 45
    invoke-virtual {p0, p1, v0}, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00a4

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;

    .line 57
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->a:Lbutterknife/Unbinder;

    .line 58
    new-instance p2, Lcab/snapp/passenger/units/charge_recently/c;

    invoke-direct {p2}, Lcab/snapp/passenger/units/charge_recently/c;-><init>()V

    .line 59
    new-instance p3, Lcab/snapp/passenger/units/charge_recently/a;

    invoke-direct {p3}, Lcab/snapp/passenger/units/charge_recently/a;-><init>()V

    iput-object p3, p0, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->b:Lcab/snapp/passenger/units/charge_recently/a;

    .line 60
    iget-object p3, p0, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->b:Lcab/snapp/passenger/units/charge_recently/a;

    iget-object v0, p0, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->d:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;

    invoke-virtual {p3, v0}, Lcab/snapp/passenger/units/charge_recently/a;->setChargeRecentlyMobileNumbersResponse(Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;)V

    .line 61
    new-instance p3, Lcab/snapp/passenger/units/charge_recently/d;

    invoke-direct {p3}, Lcab/snapp/passenger/units/charge_recently/d;-><init>()V

    .line 63
    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/charge_recently/c;->setView(Lcab/snapp/arch/protocol/BaseView;)V

    .line 64
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->b:Lcab/snapp/passenger/units/charge_recently/a;

    invoke-virtual {p2, v0}, Lcab/snapp/passenger/units/charge_recently/c;->setInteractor(Lcab/snapp/arch/protocol/BaseInteractor;)V

    .line 65
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->b:Lcab/snapp/passenger/units/charge_recently/a;

    invoke-virtual {v0, p2}, Lcab/snapp/passenger/units/charge_recently/a;->setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V

    .line 66
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->b:Lcab/snapp/passenger/units/charge_recently/a;

    invoke-virtual {v0, p3}, Lcab/snapp/passenger/units/charge_recently/a;->setRouter(Lcab/snapp/arch/protocol/BaseRouter;)V

    .line 67
    iget-object p3, p0, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->b:Lcab/snapp/passenger/units/charge_recently/a;

    invoke-virtual {p3, p0}, Lcab/snapp/passenger/units/charge_recently/a;->setController(Landroidx/fragment/app/Fragment;)V

    .line 68
    iget-object p3, p0, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->b:Lcab/snapp/passenger/units/charge_recently/a;

    invoke-virtual {p3}, Lcab/snapp/passenger/units/charge_recently/a;->onUnitCreated()V

    .line 69
    iget-object p3, p0, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->b:Lcab/snapp/passenger/units/charge_recently/a;

    iget-object v0, p0, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->c:Lcab/snapp/passenger/units/charge_recently/e;

    invoke-virtual {p3, v0}, Lcab/snapp/passenger/units/charge_recently/a;->setOnRecentMobileNumberSelectedListener(Lcab/snapp/passenger/units/charge_recently/e;)V

    .line 70
    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;->setPresenter(Lcab/snapp/passenger/units/charge_recently/c;)V

    .line 71
    invoke-virtual {p1, p0}, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;->setController(Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;)V

    .line 73
    iget-object p3, p0, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->d:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;->getMobileNumbers()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->d:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;

    invoke-virtual {p3}, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;->getMobileNumbers()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    .line 74
    iget-object p3, p0, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->d:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;

    .line 1062
    iget-object v0, p2, Lcab/snapp/passenger/units/charge_recently/c;->a:Lcab/snapp/passenger/a/d;

    invoke-virtual {p3}, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;->getMobileNumbers()Ljava/util/List;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcab/snapp/passenger/a/d;->addItems(Ljava/util/List;)V

    .line 1063
    invoke-virtual {p2}, Lcab/snapp/passenger/units/charge_recently/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 1064
    invoke-virtual {p2}, Lcab/snapp/passenger/units/charge_recently/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;->hideNotFoundError()V

    goto :goto_0

    .line 1069
    :cond_0
    invoke-virtual {p2}, Lcab/snapp/passenger/units/charge_recently/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 1070
    invoke-virtual {p2}, Lcab/snapp/passenger/units/charge_recently/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;->showNotFoundError()V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->b:Lcab/snapp/passenger/units/charge_recently/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_recently/a;->onUnitPause()V

    .line 90
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->b:Lcab/snapp/passenger/units/charge_recently/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_recently/a;->onUnitResume()V

    .line 97
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->b:Lcab/snapp/passenger/units/charge_recently/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_recently/a;->onUnitStop()V

    .line 104
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onStop()V

    return-void
.end method

.method public setChargeRecentlyMobileNumbersResponse(Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->d:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;

    return-void
.end method

.method public setOnRecentMobileNumberSelectedListener(Lcab/snapp/passenger/units/charge_recently/e;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->c:Lcab/snapp/passenger/units/charge_recently/e;

    return-void
.end method
