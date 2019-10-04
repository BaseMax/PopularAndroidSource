.class public final Lcab/snapp/passenger/units/charge_select_amount/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;",
        "Lcab/snapp/passenger/units/charge_select_amount/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/a/a;

.field private b:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    invoke-static {}, Lcab/snapp/passenger/units/charge_select_amount/a;->b()V

    :cond_0
    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data/models/charge/ChargePackage;)V
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/a;

    .line 2181
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/charge_select_amount/a;->a(Lcab/snapp/passenger/data/models/charge/ChargePackage;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/lang/Long;)V
    .locals 3

    .line 49
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->setAmountOnEditText(J)V

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/a;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/charge_select_amount/a;->a(J)V

    :cond_1
    return-void
.end method

.method private synthetic b(J)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/c;->a:Lcab/snapp/passenger/a/a;

    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/a/a;->setSelectedAmount(J)V

    .line 61
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/a;

    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/units/charge_select_amount/a;->a(J)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$WRvEqavaBQAdPWCaaYuWL56zb1o(Lcab/snapp/passenger/units/charge_select_amount/c;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/charge_select_amount/c;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic lambda$egHMe-4Liiiku9yW6hsLpI7D8JA(Lcab/snapp/passenger/units/charge_select_amount/c;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/charge_select_amount/c;->b(J)V

    return-void
.end method

.method public static synthetic lambda$q4InLCX8UVPHbpkSPx_avrukp_0(Lcab/snapp/passenger/units/charge_select_amount/c;Lcab/snapp/passenger/data/models/charge/ChargePackage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/charge_select_amount/c;->a(Lcab/snapp/passenger/data/models/charge/ChargePackage;)V

    return-void
.end method

.method public static synthetic lambda$rEJX-BEZXuEYQB8opPeB1UJKsGc(Lcab/snapp/passenger/units/charge_select_amount/c;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/charge_select_amount/c;->a(Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 151
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->b()V

    .line 152
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/a;

    .line 1175
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcab/snapp/passenger/units/charge_select_amount/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/OperatorConfigResponse;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcab/snapp/passenger/units/charge_select_amount/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/OperatorConfigResponse;

    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/responses/OperatorConfigResponse;->getPackages()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1176
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/charge_select_amount/c;

    iget-object v0, v0, Lcab/snapp/passenger/units/charge_select_amount/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/OperatorConfigResponse;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/OperatorConfigResponse;->getPackages()Ljava/util/ArrayList;

    move-result-object v0

    .line 2159
    invoke-static {v0}, Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;->newInstance(Ljava/util/ArrayList;)Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;

    move-result-object v0

    .line 2160
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2161
    iget-object v2, v1, Lcab/snapp/passenger/units/charge_select_amount/c;->b:Landroidx/fragment/app/FragmentManager;

    const-string v3, "select_charge_type_bottom_sheet_dialog_fragment"

    invoke-virtual {v0, v2, v3}, Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 2164
    :cond_0
    new-instance v2, Lcab/snapp/passenger/units/charge_select_amount/-$$Lambda$c$q4InLCX8UVPHbpkSPx_avrukp_0;

    invoke-direct {v2, v1}, Lcab/snapp/passenger/units/charge_select_amount/-$$Lambda$c$q4InLCX8UVPHbpkSPx_avrukp_0;-><init>(Lcab/snapp/passenger/units/charge_select_amount/c;)V

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;->setOnChargePackageSelectedListener(Lcab/snapp/passenger/units/charge_select_type/d;)V

    :cond_1
    return-void
.end method

.method final a(J)V
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->changeChargeAmountBy(J)V

    :cond_0
    return-void
.end method

.method final a(Z)V
    .locals 1

    .line 204
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->setSubmitButtonEnable(Z)V

    :cond_0
    return-void
.end method

.method final b()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/c;->view:Lcab/snapp/arch/protocol/BaseView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/charge_select_amount/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcab/snapp/c/c;->tryHideKeyboard(Landroid/content/Context;Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public final init(J)V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lcab/snapp/passenger/a/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcab/snapp/passenger/a/a;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/c;->a:Lcab/snapp/passenger/a/a;

    .line 46
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/c;->a:Lcab/snapp/passenger/a/a;

    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/a/a;->setSelectedAmount(J)V

    .line 47
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    iget-object v1, p0, Lcab/snapp/passenger/units/charge_select_amount/c;->a:Lcab/snapp/passenger/a/a;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->setAdapter(Lcab/snapp/passenger/a/a;)V

    .line 48
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/c;->a:Lcab/snapp/passenger/a/a;

    new-instance v1, Lcab/snapp/passenger/units/charge_select_amount/-$$Lambda$c$rEJX-BEZXuEYQB8opPeB1UJKsGc;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/charge_select_amount/-$$Lambda$c$rEJX-BEZXuEYQB8opPeB1UJKsGc;-><init>(Lcab/snapp/passenger/units/charge_select_amount/c;)V

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/a/a;->setOnAmountSelectedListener(Lcab/snapp/passenger/g/b;)V

    .line 58
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    iget-object v0, v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->etAmount:Lcab/snapp/snappuikit/MoneyAmountEditText;

    new-instance v1, Lcab/snapp/passenger/units/charge_select_amount/-$$Lambda$c$egHMe-4Liiiku9yW6hsLpI7D8JA;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/charge_select_amount/-$$Lambda$c$egHMe-4Liiiku9yW6hsLpI7D8JA;-><init>(Lcab/snapp/passenger/units/charge_select_amount/c;)V

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/MoneyAmountEditText;->setMoneyAmountChangedListener(Lcab/snapp/snappuikit/MoneyAmountEditText$a;)V

    .line 67
    new-instance v0, Lcab/snapp/passenger/units/charge_select_amount/-$$Lambda$c$WRvEqavaBQAdPWCaaYuWL56zb1o;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/charge_select_amount/-$$Lambda$c$WRvEqavaBQAdPWCaaYuWL56zb1o;-><init>(Lcab/snapp/passenger/units/charge_select_amount/c;)V

    .line 74
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->setMobileNumberEtFocusListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/a;

    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/units/charge_select_amount/a;->a(J)V

    :cond_1
    return-void
.end method

.method public final onBackClicked()V
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->b()V

    .line 89
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/a;->pressBack()V

    :cond_0
    return-void
.end method

.method public final onBeforeRequest()V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->showLoading()V

    :cond_0
    return-void
.end method

.method public final setFragmentManager(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcab/snapp/passenger/units/charge_select_amount/c;->b:Landroidx/fragment/app/FragmentManager;

    return-void
.end method
