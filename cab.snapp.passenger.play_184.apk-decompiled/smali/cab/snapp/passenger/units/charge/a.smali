.class public Lcab/snapp/passenger/units/charge/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/charge/d;",
        "Lcab/snapp/passenger/units/charge/c;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;

.field b:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;

.field c:Landroid/os/Handler;

.field d:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

.field e:Lcab/snapp/passenger/c/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcab/snapp/passenger/data_access_layer/a/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcab/snapp/passenger/units/charge/a;->a:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;

    .line 66
    iput-object v0, p0, Lcab/snapp/passenger/units/charge/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcab/snapp/passenger/units/charge/a;->c:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    const-string v1, "data1"

    .line 187
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/4 p1, 0x1

    new-array v4, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object v1, v4, p1

    const/4 p1, 0x0

    if-eqz v3, :cond_0

    .line 191
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 194
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 196
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\s+"

    .line 197
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    .line 202
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 205
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v0
.end method

.method static a(I)V
    .locals 2

    .line 436
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ChoiceOperator"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Operator"

    .line 437
    invoke-virtual {v0, v1, p0}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p0

    const-string v0, "EnterPhoneNumber"

    .line 438
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p0

    .line 439
    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object p0

    .line 441
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v0

    const-string v1, "Charge"

    invoke-virtual {v0, v1, p0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;Lcab/snapp/passenger/data/models/charge/QuickCharge;Lcab/snapp/passenger/units/charge/c;Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 342
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTRA_PAYMENT_REQUEST"

    .line 345
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "EXTRA_PAYMENT_RESPONSE"

    .line 346
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 347
    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/charge/QuickCharge;->getOperator()Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    move-result-object p1

    const-string p4, "EXTRA_OPERATOR"

    invoke-virtual {v0, p4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 348
    new-instance p1, Lcab/snapp/passenger/data/models/charge/ChargePackage;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/charge/QuickCharge;->getPersianType()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/charge/QuickCharge;->getType()Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    move-result-object p2

    invoke-direct {p1, p4, p2}, Lcab/snapp/passenger/data/models/charge/ChargePackage;-><init>(Ljava/lang/String;Lcab/snapp/passenger/data/models/charge/SIMChargeType;)V

    const-string p2, "EXTRA_SELECTED_PACKAGE"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 349
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/charge/d;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/charge/d;->navigateToChargeConfirmPayment(Landroid/os/Bundle;)V

    .line 351
    :cond_0
    invoke-virtual {p3}, Lcab/snapp/passenger/units/charge/c;->b()V

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/units/charge/c;Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 233
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;->getOperators()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;->getOperators()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iput-object p2, p0, Lcab/snapp/passenger/units/charge/a;->a:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;

    .line 236
    :cond_0
    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/charge/c;->a(Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;)V

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/units/charge/c;Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 380
    iput-object p2, p0, Lcab/snapp/passenger/units/charge/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;

    .line 381
    iget-object p2, p0, Lcab/snapp/passenger/units/charge/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/charge/c;->a(Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;)V

    return-void
.end method

.method private static synthetic a(Lcab/snapp/passenger/units/charge/c;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    .line 383
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/charge/c;->a(Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;)V

    return-void
.end method

.method static b()V
    .locals 3

    .line 418
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "EnterPhoneNumber"

    const-string v2, "TapOnContinue"

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 419
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Charge"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method private static synthetic b(Lcab/snapp/passenger/units/charge/c;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 355
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/charge/c;->showError(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->b()V

    return-void
.end method

.method static c()V
    .locals 3

    .line 424
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "EnterPhoneNumber"

    const-string v2, "TapOnHistory"

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 425
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Charge"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method private synthetic c(Lcab/snapp/passenger/units/charge/c;Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/a;->c:Landroid/os/Handler;

    new-instance v1, Lcab/snapp/passenger/units/charge/-$$Lambda$dokIJ4lyzHlX4_tAzWmyDug0lr8;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/charge/-$$Lambda$dokIJ4lyzHlX4_tAzWmyDug0lr8;-><init>(Lcab/snapp/passenger/units/charge/a;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 241
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 6263
    invoke-virtual {p1}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6264
    invoke-virtual {p1}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/charge/ChargeView;->showErrorMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static d()V
    .locals 3

    .line 453
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "EnterPhoneNumber"

    const-string v2, "ClearPhoneNumber"

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 454
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Charge"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method static e()V
    .locals 3

    .line 465
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "EnterPhoneNumber"

    const-string v2, "FocusPhoneNumbere"

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 466
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Charge"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method public static synthetic lambda$2TxZrVgUOYHA8ggmixUZUVEFvt4(Lcab/snapp/passenger/units/charge/a;Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;Lcab/snapp/passenger/data/models/charge/QuickCharge;Lcab/snapp/passenger/units/charge/c;Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcab/snapp/passenger/units/charge/a;->a(Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;Lcab/snapp/passenger/data/models/charge/QuickCharge;Lcab/snapp/passenger/units/charge/c;Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;)V

    return-void
.end method

.method public static synthetic lambda$Bk2jaUACXKPGA5DDu276Las92_Y(Lcab/snapp/passenger/units/charge/c;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcab/snapp/passenger/units/charge/a;->b(Lcab/snapp/passenger/units/charge/c;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$GER4bgFvaA9oQ6Pa2WqKYfSGuSo(Lcab/snapp/passenger/units/charge/a;Lcab/snapp/passenger/units/charge/c;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/charge/a;->c(Lcab/snapp/passenger/units/charge/c;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$LhRiCyebnoKLJr819ABR_ELxbuY(Lcab/snapp/passenger/units/charge/a;Lcab/snapp/passenger/units/charge/c;Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/charge/a;->a(Lcab/snapp/passenger/units/charge/c;Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;)V

    return-void
.end method

.method public static synthetic lambda$ZCFiR7B8NKx7NfOZExu8cGwU52Q(Lcab/snapp/passenger/units/charge/c;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcab/snapp/passenger/units/charge/a;->a(Lcab/snapp/passenger/units/charge/c;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$fQxkRkg9MYKdCDgW5hYQWhhBc3A(Lcab/snapp/passenger/units/charge/a;Lcab/snapp/passenger/units/charge/c;Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/charge/a;->a(Lcab/snapp/passenger/units/charge/c;Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 12

    .line 3459
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "EnterPhoneNumber"

    const-string v2, "TapOnImmediatePurchase"

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 3460
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Charge"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    .line 323
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/c;

    .line 324
    iget-object v1, p0, Lcab/snapp/passenger/units/charge/a;->a:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;

    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;->getQuickCharge()Lcab/snapp/passenger/data/models/charge/QuickCharge;

    move-result-object v1

    if-nez v0, :cond_0

    return-void

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcab/snapp/c/f;->isUserConnectedToNetwork(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 331
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/c;->c()V

    return-void

    .line 4338
    :cond_1
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4339
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/charge/ChargeView;

    .line 4610
    iget-object v3, v2, Lcab/snapp/passenger/units/charge/ChargeView;->quickChargeBtn:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4611
    iget-object v3, v2, Lcab/snapp/passenger/units/charge/ChargeView;->chevronView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4612
    iget-object v2, v2, Lcab/snapp/passenger/units/charge/ChargeView;->quickChargeLoading:Lcab/snapp/snappuikit/SnappLoading;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcab/snapp/snappuikit/SnappLoading;->setVisibility(I)V

    .line 337
    :cond_2
    new-instance v2, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/charge/QuickCharge;->getChargeAmount()J

    move-result-wide v5

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/charge/QuickCharge;->getMobileNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/charge/QuickCharge;->getOperator()Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    move-result-object v3

    invoke-virtual {v3}, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/charge/QuickCharge;->getType()Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    move-result-object v10

    .line 5395
    iget-object v3, p0, Lcab/snapp/passenger/units/charge/a;->e:Lcab/snapp/passenger/c/b;

    invoke-virtual {v3}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 5396
    invoke-virtual {v3}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 5397
    invoke-virtual {v3}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getCellphone()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    move-object v11, v3

    const-string v9, "snapp://open/charge"

    move-object v4, v2

    .line 337
    invoke-direct/range {v4 .. v11}, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcab/snapp/passenger/data/models/charge/SIMChargeType;Ljava/lang/String;)V

    .line 338
    iget-object v3, p0, Lcab/snapp/passenger/units/charge/a;->f:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 339
    invoke-virtual {v3, v2}, Lcab/snapp/passenger/data_access_layer/a/d;->rechargeSimCard(Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;)Lio/reactivex/z;

    move-result-object v3

    new-instance v4, Lcab/snapp/passenger/units/charge/-$$Lambda$a$2TxZrVgUOYHA8ggmixUZUVEFvt4;

    invoke-direct {v4, p0, v2, v1, v0}, Lcab/snapp/passenger/units/charge/-$$Lambda$a$2TxZrVgUOYHA8ggmixUZUVEFvt4;-><init>(Lcab/snapp/passenger/units/charge/a;Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;Lcab/snapp/passenger/data/models/charge/QuickCharge;Lcab/snapp/passenger/units/charge/c;)V

    new-instance v1, Lcab/snapp/passenger/units/charge/-$$Lambda$a$Bk2jaUACXKPGA5DDu276Las92_Y;

    invoke-direct {v1, v0}, Lcab/snapp/passenger/units/charge/-$$Lambda$a$Bk2jaUACXKPGA5DDu276Las92_Y;-><init>(Lcab/snapp/passenger/units/charge/c;)V

    .line 340
    invoke-virtual {v3, v4, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 338
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/charge/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method public getChargeOperatorsResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;
    .locals 1

    .line 76
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/a;->a:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;

    return-object v0
.end method

.method public loadRecentlyMobileNumbers()V
    .locals 4

    .line 369
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/c;

    if-nez v0, :cond_0

    return-void

    .line 375
    :cond_0
    iget-object v1, p0, Lcab/snapp/passenger/units/charge/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;

    if-nez v1, :cond_1

    .line 376
    iget-object v1, p0, Lcab/snapp/passenger/units/charge/a;->f:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 377
    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/a/d;->getRecentlyMobileNumbers()Lio/reactivex/z;

    move-result-object v1

    new-instance v2, Lcab/snapp/passenger/units/charge/-$$Lambda$a$LhRiCyebnoKLJr819ABR_ELxbuY;

    invoke-direct {v2, p0, v0}, Lcab/snapp/passenger/units/charge/-$$Lambda$a$LhRiCyebnoKLJr819ABR_ELxbuY;-><init>(Lcab/snapp/passenger/units/charge/a;Lcab/snapp/passenger/units/charge/c;)V

    new-instance v3, Lcab/snapp/passenger/units/charge/-$$Lambda$a$ZCFiR7B8NKx7NfOZExu8cGwU52Q;

    invoke-direct {v3, v0}, Lcab/snapp/passenger/units/charge/-$$Lambda$a$ZCFiR7B8NKx7NfOZExu8cGwU52Q;-><init>(Lcab/snapp/passenger/units/charge/c;)V

    .line 378
    invoke-virtual {v1, v2, v3}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 376
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/charge/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void

    .line 388
    :cond_1
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/charge/c;->a(Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_4

    const/4 p1, -0x1

    if-ne p2, p1, :cond_4

    .line 156
    invoke-direct {p0, p3}, Lcab/snapp/passenger/units/charge/a;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-static {p1}, Lcab/snapp/c/i;->isPhoneNumberValid(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "(\\+98|0)9[0-9]{9}"

    .line 161
    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p2, "\\+989[0-9]{9}"

    .line 164
    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    const-string p3, "+98"

    const-string v0, "0"

    if-nez p2, :cond_1

    .line 165
    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 173
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/charge/c;

    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 3272
    invoke-virtual {p2}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 3273
    invoke-virtual {p2}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/charge/ChargeView;->setMobileNumberEtText(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 177
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 178
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/charge/c;

    const p2, 0x7f12011b

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/charge/c;->showError(I)V

    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 259
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onDestroy()V

    .line 260
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/a;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onUnitCreated()V
    .locals 2

    .line 118
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 119
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/charge/a;)V

    .line 123
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/a;->e:Lcab/snapp/passenger/c/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/charge/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getCellphone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/charge/c;->onInitialize(Ljava/lang/String;)V

    .line 129
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/a;->g:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v0}, Lcab/snapp/passenger/activities/root/RootActivity;->getOverTheMapNavController()Landroidx/navigation/NavController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 133
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/d;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v1}, Lcab/snapp/passenger/activities/root/RootActivity;->getOverTheMapNavController()Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/charge/d;->setNavigationController(Landroidx/navigation/NavController;)V

    .line 137
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->requestLoadOperators()V

    return-void
.end method

.method public onUnitPause()V
    .locals 2

    .line 253
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitPause()V

    .line 254
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/a;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onUnitResume()V
    .locals 3

    .line 143
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 2412
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "EnterPhoneNumber"

    const-string v2, "Show"

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 2413
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Charge"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    .line 148
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/a;->d:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/c;

    iget-object v1, p0, Lcab/snapp/passenger/units/charge/a;->d:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/charge/c;->selectOperator(Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;)V

    :cond_0
    return-void
.end method

.method public pressBack()V
    .locals 3

    .line 1430
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "EnterPhoneNumber"

    const-string v2, "TapOnBack"

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1431
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Charge"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    .line 102
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public requestLoadOperators()V
    .locals 4

    .line 216
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/c;

    if-nez v0, :cond_0

    return-void

    .line 227
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/c;->onBeforeRequest()V

    .line 228
    iget-object v1, p0, Lcab/snapp/passenger/units/charge/a;->a:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;

    if-nez v1, :cond_1

    .line 229
    iget-object v1, p0, Lcab/snapp/passenger/units/charge/a;->f:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 230
    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/a/d;->getChargeOperators()Lio/reactivex/z;

    move-result-object v1

    new-instance v2, Lcab/snapp/passenger/units/charge/-$$Lambda$a$fQxkRkg9MYKdCDgW5hYQWhhBc3A;

    invoke-direct {v2, p0, v0}, Lcab/snapp/passenger/units/charge/-$$Lambda$a$fQxkRkg9MYKdCDgW5hYQWhhBc3A;-><init>(Lcab/snapp/passenger/units/charge/a;Lcab/snapp/passenger/units/charge/c;)V

    new-instance v3, Lcab/snapp/passenger/units/charge/-$$Lambda$a$GER4bgFvaA9oQ6Pa2WqKYfSGuSo;

    invoke-direct {v3, p0, v0}, Lcab/snapp/passenger/units/charge/-$$Lambda$a$GER4bgFvaA9oQ6Pa2WqKYfSGuSo;-><init>(Lcab/snapp/passenger/units/charge/a;Lcab/snapp/passenger/units/charge/c;)V

    .line 231
    invoke-virtual {v1, v2, v3}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 229
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/charge/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void

    .line 246
    :cond_1
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/charge/c;->a(Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;)V

    return-void
.end method

.method public setChargeOperatorsResponse(Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcab/snapp/passenger/units/charge/a;->a:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;

    return-void
.end method
