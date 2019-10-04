.class public final Lcab/snapp/passenger/units/charge_confirm_payment/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;",
        "Lcab/snapp/passenger/units/charge_confirm_payment/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public final init(Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;Lcab/snapp/passenger/data/models/charge/ChargePackage;)V
    .locals 2

    .line 20
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_confirm_payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_confirm_payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;

    invoke-virtual {v0, p3}, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->fillOperator(Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;)V

    .line 22
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_confirm_payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p3

    check-cast p3, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->getAmount()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->fillChargeAmount(J)V

    .line 23
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_confirm_payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p3

    check-cast p3, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;->getAmount()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->fillPayableAmount(J)V

    .line 24
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_confirm_payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p3

    check-cast p3, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->handleTax(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_confirm_payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;

    invoke-virtual {p2, p1, p4}, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->fillChargeTypeAndMobile(Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;Lcab/snapp/passenger/data/models/charge/ChargePackage;)V

    :cond_0
    return-void
.end method

.method public final onBackClicked()V
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_confirm_payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_confirm_payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_confirm_payment/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_confirm_payment/a;->pressBack()V

    :cond_0
    return-void
.end method

.method public final paymentButtonClicked()V
    .locals 5

    .line 40
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_confirm_payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_confirm_payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_confirm_payment/a;

    .line 1096
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, v0, Lcab/snapp/passenger/units/charge_confirm_payment/a;->a:Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;

    invoke-virtual {v3}, Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1097
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_confirm_payment/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    .line 1098
    iput-boolean v1, v0, Lcab/snapp/passenger/units/charge_confirm_payment/a;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1102
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_confirm_payment/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1103
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_confirm_payment/a;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f1200bf

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1101
    invoke-static {v2, v3}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object v2

    .line 1104
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_confirm_payment/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f06004b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object v0

    .line 1105
    invoke-virtual {v0}, Lcab/snapp/snappuikit/b;->show()V

    .line 1106
    invoke-static {v1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
