.class public Lcab/snapp/passenger/units/charge_select_amount/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/charge_select_amount/d;",
        "Lcab/snapp/passenger/units/charge_select_amount/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXTRA_MOBILE_NUMBER:Ljava/lang/String; = "EXTRA_MOBILE_NUMBER"

.field public static final EXTRA_SIM_CHARGE_OPERATOR:Ljava/lang/String; = "EXTRA_SIM_CHARGE_OPERATOR"

.field static a:J = 0x2710L


# instance fields
.field b:Lcab/snapp/passenger/data_access_layer/network/responses/OperatorConfigResponse;

.field c:Lcab/snapp/passenger/data_access_layer/a/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcab/snapp/passenger/c/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private e:Lcab/snapp/passenger/data/models/charge/ChargePackage;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;Lcab/snapp/passenger/units/charge_select_amount/c;Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 202
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTRA_PAYMENT_REQUEST"

    .line 204
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "EXTRA_PAYMENT_RESPONSE"

    .line 205
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 206
    iget-object p1, p0, Lcab/snapp/passenger/units/charge_select_amount/a;->h:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    const-string p3, "EXTRA_OPERATOR"

    invoke-virtual {v0, p3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 207
    iget-object p1, p0, Lcab/snapp/passenger/units/charge_select_amount/a;->e:Lcab/snapp/passenger/data/models/charge/ChargePackage;

    const-string p3, "EXTRA_SELECTED_PACKAGE"

    invoke-virtual {v0, p3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 208
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/charge_select_amount/d;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/charge_select_amount/d;->navigateToChargeConfirmPayment(Landroid/os/Bundle;)V

    .line 8198
    :cond_0
    invoke-virtual {p2}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8199
    invoke-virtual {p2}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->hideSubmitLoading()V

    :cond_1
    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/OperatorConfigResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcab/snapp/passenger/units/charge_select_amount/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/OperatorConfigResponse;

    .line 119
    invoke-direct {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->c()V

    return-void
.end method

.method private static synthetic a(Lcab/snapp/passenger/units/charge_select_amount/c;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 212
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 7210
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7211
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->showErrorMessage(Ljava/lang/String;)V

    .line 7212
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    check-cast p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->hideSubmitLoading()V

    :cond_0
    return-void
.end method

.method static b()V
    .locals 3

    .line 264
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "EnterAmount"

    const-string v2, "FocusOnOtherAmount"

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 265
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Charge"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method private static synthetic b(Lcab/snapp/passenger/units/charge_select_amount/c;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 9123
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9124
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->hideLoading()V

    .line 9125
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    check-cast p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->showErrorMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    .line 134
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/c;

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object v1, p0, Lcab/snapp/passenger/units/charge_select_amount/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/OperatorConfigResponse;

    if-eqz v1, :cond_3

    .line 140
    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/responses/OperatorConfigResponse;->getPackages()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2224
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2225
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->setSelectPackageStatus(Z)V

    .line 143
    :cond_1
    iget-object v1, p0, Lcab/snapp/passenger/units/charge_select_amount/a;->e:Lcab/snapp/passenger/data/models/charge/ChargePackage;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcab/snapp/passenger/units/charge_select_amount/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/OperatorConfigResponse;

    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/responses/OperatorConfigResponse;->getDefaultPackage()Lcab/snapp/passenger/data/models/charge/ChargePackage;

    move-result-object v1

    :cond_2
    invoke-virtual {p0, v1}, Lcab/snapp/passenger/units/charge_select_amount/a;->a(Lcab/snapp/passenger/data/models/charge/ChargePackage;)V

    .line 3116
    :cond_3
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3117
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->hideLoading()V

    :cond_4
    return-void
.end method

.method public static synthetic lambda$96XxI_ISHDX8GsnRWun9pb9ZmWk(Lcab/snapp/passenger/units/charge_select_amount/a;Lcab/snapp/passenger/data_access_layer/network/responses/OperatorConfigResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/charge_select_amount/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/OperatorConfigResponse;)V

    return-void
.end method

.method public static synthetic lambda$E8JRm8hX9qVzBOzkhYWF2KkGaEc(Lcab/snapp/passenger/units/charge_select_amount/a;Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;Lcab/snapp/passenger/units/charge_select_amount/c;Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/passenger/units/charge_select_amount/a;->a(Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;Lcab/snapp/passenger/units/charge_select_amount/c;Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;)V

    return-void
.end method

.method public static synthetic lambda$IaB7DWVfKrCgv8RT8d8_vjVB68U(Lcab/snapp/passenger/units/charge_select_amount/c;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcab/snapp/passenger/units/charge_select_amount/a;->a(Lcab/snapp/passenger/units/charge_select_amount/c;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$S7e9yxkf-OXgtSLr56Snol-z-q4(Lcab/snapp/passenger/units/charge_select_amount/c;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcab/snapp/passenger/units/charge_select_amount/a;->b(Lcab/snapp/passenger/units/charge_select_amount/c;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 10

    .line 185
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/c;

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcab/snapp/c/f;->isUserConnectedToNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/c;

    .line 4230
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4232
    new-instance v1, Lcab/snapp/passenger/f/r;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcab/snapp/passenger/f/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcab/snapp/passenger/f/r;->showNoInternetDialog()V

    :cond_1
    return-void

    .line 5192
    :cond_2
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5193
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->showSubmitLoading()V

    .line 197
    :cond_3
    new-instance v1, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;

    iget-wide v3, p0, Lcab/snapp/passenger/units/charge_select_amount/a;->g:J

    iget-object v5, p0, Lcab/snapp/passenger/units/charge_select_amount/a;->f:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/passenger/units/charge_select_amount/a;->h:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcab/snapp/passenger/units/charge_select_amount/a;->e:Lcab/snapp/passenger/data/models/charge/ChargePackage;

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/charge/ChargePackage;->getType()Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    move-result-object v8

    .line 5245
    iget-object v2, p0, Lcab/snapp/passenger/units/charge_select_amount/a;->d:Lcab/snapp/passenger/c/b;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v2

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    .line 5246
    invoke-virtual {v2}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 5247
    invoke-virtual {v2}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getCellphone()Ljava/lang/String;

    move-result-object v2

    .line 5248
    invoke-static {v2}, Lcab/snapp/c/i;->isPhoneNumberValid(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, v2

    goto :goto_0

    :cond_4
    move-object v9, v7

    :goto_0
    const-string v7, "snapp://open/charge"

    move-object v2, v1

    .line 197
    invoke-direct/range {v2 .. v9}, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcab/snapp/passenger/data/models/charge/SIMChargeType;Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcab/snapp/passenger/units/charge_select_amount/a;->c:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 199
    invoke-virtual {v2, v1}, Lcab/snapp/passenger/data_access_layer/a/d;->rechargeSimCard(Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;)Lio/reactivex/z;

    move-result-object v2

    new-instance v3, Lcab/snapp/passenger/units/charge_select_amount/-$$Lambda$a$E8JRm8hX9qVzBOzkhYWF2KkGaEc;

    invoke-direct {v3, p0, v1, v0}, Lcab/snapp/passenger/units/charge_select_amount/-$$Lambda$a$E8JRm8hX9qVzBOzkhYWF2KkGaEc;-><init>(Lcab/snapp/passenger/units/charge_select_amount/a;Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;Lcab/snapp/passenger/units/charge_select_amount/c;)V

    new-instance v1, Lcab/snapp/passenger/units/charge_select_amount/-$$Lambda$a$IaB7DWVfKrCgv8RT8d8_vjVB68U;

    invoke-direct {v1, v0}, Lcab/snapp/passenger/units/charge_select_amount/-$$Lambda$a$IaB7DWVfKrCgv8RT8d8_vjVB68U;-><init>(Lcab/snapp/passenger/units/charge_select_amount/c;)V

    .line 200
    invoke-virtual {v2, v3, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 198
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/charge_select_amount/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 5284
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "EnterAmount"

    const-string v2, "TapOnContinue"

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 5285
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Charge"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method final a(J)V
    .locals 4

    .line 223
    iput-wide p1, p0, Lcab/snapp/passenger/units/charge_select_amount/a;->g:J

    .line 224
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 225
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/charge_select_amount/c;

    iget-wide v0, p0, Lcab/snapp/passenger/units/charge_select_amount/a;->g:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/charge_select_amount/c;->a(Z)V

    :cond_1
    return-void
.end method

.method final a(Lcab/snapp/passenger/data/models/charge/ChargePackage;)V
    .locals 3

    .line 64
    iput-object p1, p0, Lcab/snapp/passenger/units/charge_select_amount/a;->e:Lcab/snapp/passenger/data/models/charge/ChargePackage;

    .line 65
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 66
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/c;

    if-eqz p1, :cond_1

    .line 2103
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/charge/ChargePackage;->getPersianType()Ljava/lang/String;

    move-result-object v1

    .line 2104
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2105
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    invoke-virtual {v2, v1}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->setChargePackageTypeText(Ljava/lang/String;)V

    .line 2107
    :cond_0
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/charge/ChargePackage;->getAmounts()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2108
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2109
    iget-object v2, v0, Lcab/snapp/passenger/units/charge_select_amount/c;->a:Lcab/snapp/passenger/a/a;

    invoke-virtual {v2, v1}, Lcab/snapp/passenger/a/a;->setItems(Ljava/util/List;)V

    .line 1174
    :cond_1
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1176
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/charge/ChargePackage;->isCustomAmountEnable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1177
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->hideCustomAmount()V

    .line 1179
    :cond_2
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->setSimChargePackage(Lcab/snapp/passenger/data/models/charge/ChargePackage;)V

    :cond_3
    return-void
.end method

.method public onUnitCreated()V
    .locals 3

    .line 72
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 74
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/charge_select_amount/a;)V

    .line 79
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/charge_select_amount/d;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/charge_select_amount/d;->setNavigationController(Landroidx/navigation/NavController;)V

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "EXTRA_MOBILE_NUMBER"

    .line 88
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcab/snapp/passenger/units/charge_select_amount/a;->f:Ljava/lang/String;

    const-string v1, "EXTRA_SIM_CHARGE_OPERATOR"

    .line 89
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    iput-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/a;->h:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    .line 92
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 93
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/c;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/charge_select_amount/c;->init(J)V

    :cond_3
    return-void
.end method

.method public onUnitResume()V
    .locals 5

    .line 231
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 6259
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "EnterAmount"

    const-string v2, "Show"

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 6260
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Charge"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    .line 233
    iget-wide v0, p0, Lcab/snapp/passenger/units/charge_select_amount/a;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 234
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/charge_select_amount/c;->a(Z)V

    .line 236
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/c;

    iget-wide v1, p0, Lcab/snapp/passenger/units/charge_select_amount/a;->g:J

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/charge_select_amount/c;->init(J)V

    .line 7106
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/c;

    if-eqz v0, :cond_2

    .line 7112
    iget-object v1, p0, Lcab/snapp/passenger/units/charge_select_amount/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/OperatorConfigResponse;

    if-nez v1, :cond_1

    .line 7113
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;->onBeforeRequest()V

    .line 7114
    iget-object v1, p0, Lcab/snapp/passenger/units/charge_select_amount/a;->c:Lcab/snapp/passenger/data_access_layer/a/d;

    iget-object v2, p0, Lcab/snapp/passenger/units/charge_select_amount/a;->h:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    .line 7115
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcab/snapp/passenger/data_access_layer/a/d;->getOperatorChargeConfig(J)Lio/reactivex/z;

    move-result-object v1

    new-instance v2, Lcab/snapp/passenger/units/charge_select_amount/-$$Lambda$a$96XxI_ISHDX8GsnRWun9pb9ZmWk;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/charge_select_amount/-$$Lambda$a$96XxI_ISHDX8GsnRWun9pb9ZmWk;-><init>(Lcab/snapp/passenger/units/charge_select_amount/a;)V

    new-instance v3, Lcab/snapp/passenger/units/charge_select_amount/-$$Lambda$a$S7e9yxkf-OXgtSLr56Snol-z-q4;

    invoke-direct {v3, v0}, Lcab/snapp/passenger/units/charge_select_amount/-$$Lambda$a$S7e9yxkf-OXgtSLr56Snol-z-q4;-><init>(Lcab/snapp/passenger/units/charge_select_amount/c;)V

    .line 7116
    invoke-virtual {v1, v2, v3}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 7114
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/charge_select_amount/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void

    .line 7126
    :cond_1
    invoke-direct {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->c()V

    :cond_2
    return-void
.end method

.method public pressBack()V
    .locals 3

    .line 154
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 3279
    :cond_0
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "EnterAmount"

    const-string v2, "TapOnBack"

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 3280
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Charge"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method
