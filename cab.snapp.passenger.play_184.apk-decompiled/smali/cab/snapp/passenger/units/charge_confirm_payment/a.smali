.class public Lcab/snapp/passenger/units/charge_confirm_payment/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/charge_confirm_payment/d;",
        "Lcab/snapp/passenger/units/charge_confirm_payment/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXTRA_OPERATOR:Ljava/lang/String; = "EXTRA_OPERATOR"

.field public static final EXTRA_PAYMENT_REQUEST:Ljava/lang/String; = "EXTRA_PAYMENT_REQUEST"

.field public static final EXTRA_PAYMENT_RESPONSE:Ljava/lang/String; = "EXTRA_PAYMENT_RESPONSE"

.field public static final EXTRA_SELECTED_PACKAGE:Ljava/lang/String; = "EXTRA_SELECTED_PACKAGE"


# instance fields
.field a:Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;

.field b:Z

.field c:Lcab/snapp/passenger/data_access_layer/a/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcab/snapp/passenger/f/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private e:Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;

.field private f:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

.field private g:Lcab/snapp/passenger/data/models/charge/ChargePackage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcab/snapp/passenger/units/charge_confirm_payment/a;->b:Z

    return-void
.end method


# virtual methods
.method public onUnitCreated()V
    .locals 5

    .line 59
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 61
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_confirm_payment/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/charge_confirm_payment/a;)V

    .line 63
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_confirm_payment/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_confirm_payment/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_confirm_payment/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_confirm_payment/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/charge_confirm_payment/d;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/charge_confirm_payment/d;->setNavigationController(Landroidx/navigation/NavController;)V

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_confirm_payment/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "EXTRA_PAYMENT_REQUEST"

    .line 72
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;

    iput-object v1, p0, Lcab/snapp/passenger/units/charge_confirm_payment/a;->e:Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;

    const-string v1, "EXTRA_PAYMENT_RESPONSE"

    .line 73
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;

    iput-object v1, p0, Lcab/snapp/passenger/units/charge_confirm_payment/a;->a:Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;

    const-string v1, "EXTRA_OPERATOR"

    .line 74
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    iput-object v1, p0, Lcab/snapp/passenger/units/charge_confirm_payment/a;->f:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    const-string v1, "EXTRA_SELECTED_PACKAGE"

    .line 75
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/charge/ChargePackage;

    iput-object v0, p0, Lcab/snapp/passenger/units/charge_confirm_payment/a;->g:Lcab/snapp/passenger/data/models/charge/ChargePackage;

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_confirm_payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 79
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_confirm_payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_confirm_payment/c;

    iget-object v1, p0, Lcab/snapp/passenger/units/charge_confirm_payment/a;->e:Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;

    iget-object v2, p0, Lcab/snapp/passenger/units/charge_confirm_payment/a;->a:Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;

    iget-object v3, p0, Lcab/snapp/passenger/units/charge_confirm_payment/a;->f:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    iget-object v4, p0, Lcab/snapp/passenger/units/charge_confirm_payment/a;->g:Lcab/snapp/passenger/data/models/charge/ChargePackage;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcab/snapp/passenger/units/charge_confirm_payment/c;->init(Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;Lcab/snapp/passenger/data/models/charge/ChargePackage;)V

    :cond_2
    return-void
.end method

.method public onUnitResume()V
    .locals 4

    .line 115
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 118
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_confirm_payment/a;->d:Lcab/snapp/passenger/f/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b;->hasPendingDeepLink()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_confirm_payment/a;->d:Lcab/snapp/passenger/f/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b;->getDeepLink()Lcab/snapp/deeplink/models/a;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object v2

    sget-object v3, Lcab/snapp/deeplink/models/types/Host;->Open:Lcab/snapp/deeplink/models/types/Host;

    invoke-virtual {v2, v3}, Lcab/snapp/deeplink/models/types/Host;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath1()Lcab/snapp/deeplink/models/c;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath1()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/c;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "charge"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_confirm_payment/a;->d:Lcab/snapp/passenger/f/b;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b;->setHasPendingDeepLink(Z)V

    .line 123
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_confirm_payment/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_confirm_payment/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_confirm_payment/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_confirm_payment/d;->finish()V

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    .line 129
    iget-boolean v0, p0, Lcab/snapp/passenger/units/charge_confirm_payment/a;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_confirm_payment/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_confirm_payment/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_confirm_payment/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_confirm_payment/d;->navigateUp()V

    .line 2141
    :cond_1
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "Invoice"

    const-string v2, "Show"

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 2142
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Charge"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method public pressBack()V
    .locals 3

    .line 88
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_confirm_payment/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_confirm_payment/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_confirm_payment/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 1148
    :cond_0
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "Invoice"

    const-string v2, "TapOnBack"

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1149
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Charge"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method
