.class public Lcab/snapp/passenger/units/payment/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/f/a/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/payment/e;",
        "Lcab/snapp/passenger/units/payment/c;",
        ">;",
        "Lcab/snapp/passenger/f/a/a$a;"
    }
.end annotation


# static fields
.field public static final MINIMUM_POSSIBLE_AMOUNT_TO_CHARGE:D = 10000.0

.field public static final RIDE_RECEIPT_ARGUMENT_KEY:Ljava/lang/String; = "RIDE_RECEIPT_ARGUMENT_KEY"


# instance fields
.field a:Lio/reactivex/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

.field c:Lcab/snapp/passenger/c/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcab/snapp/passenger/data_access_layer/a/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcab/snapp/passenger/c/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcab/snapp/passenger/c/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field public ridePrice:Ljava/lang/Double;

.field public userHaveToDonate:Z

.field public userWantToDonate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcab/snapp/passenger/units/payment/a;->userWantToDonate:Z

    .line 60
    iput-boolean v0, p0, Lcab/snapp/passenger/units/payment/a;->userHaveToDonate:Z

    .line 61
    invoke-static {}, Lio/reactivex/j/a;->create()Lio/reactivex/j/a;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/payment/a;->a:Lio/reactivex/j/a;

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/TransferCreditResponse;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 754
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/TransferCreditResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/payment/a;->i:Ljava/lang/String;

    .line 758
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/payment/a;->d:Lcab/snapp/passenger/data_access_layer/a/d;

    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->f:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getRideId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->getRideReceipt(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/ApWalletRegistrationResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 814
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ApWalletRegistrationResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/payment/a;->b(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->finish()V

    return-void
.end method

.method private a(Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;)V
    .locals 9

    .line 156
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getRidePrice()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/payment/a;->ridePrice:Ljava/lang/Double;

    .line 157
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getDonation()Lcab/snapp/passenger/data/models/Donation;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Donation;->isPaymentDonated()Z

    move-result v0

    iput-boolean v0, p0, Lcab/snapp/passenger/units/payment/a;->userHaveToDonate:Z

    .line 159
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getPaymentTypes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/payment/a;->h:Ljava/util/List;

    .line 160
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getCanPayInCash()Z

    move-result v0

    .line 161
    iget-object v1, p0, Lcab/snapp/passenger/units/payment/a;->g:Lcab/snapp/passenger/c/b;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getSnappUssd()Lcab/snapp/passenger/data/models/SnappUssd;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/SnappUssd;->isEnabled()Z

    move-result v1

    .line 163
    iget-object v2, p0, Lcab/snapp/passenger/units/payment/a;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 164
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 166
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;

    .line 167
    invoke-virtual {v3}, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    if-nez v1, :cond_1

    .line 169
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 171
    :cond_1
    invoke-virtual {v3}, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;->getType()I

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    .line 173
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->a:Lio/reactivex/j/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/j/a;->onNext(Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getStatus()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 180
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->a:Lio/reactivex/j/a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getFallbackPaymentMethod()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/j/a;->onNext(Ljava/lang/Object;)V

    .line 182
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 184
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getCurrentCredit()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/payment/c;->setCurrentCredit(Ljava/lang/Double;)V

    .line 185
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcab/snapp/passenger/units/payment/c;

    .line 186
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getStatus()I

    move-result v2

    iget-object v3, p0, Lcab/snapp/passenger/units/payment/a;->h:Ljava/util/List;

    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->g:Lcab/snapp/passenger/c/b;

    .line 188
    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getSnappUssd()Lcab/snapp/passenger/data/models/SnappUssd;

    move-result-object v4

    .line 189
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getApReceipt()Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;

    move-result-object v5

    .line 190
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->isApWalletRegistered()Z

    move-result v6

    iget-object p1, p0, Lcab/snapp/passenger/units/payment/a;->g:Lcab/snapp/passenger/c/b;

    .line 191
    invoke-virtual {p1}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getPaymentTexts()Lcab/snapp/passenger/data/models/PaymentTexts;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/PaymentTexts;->getAppWalletRegistrationContent()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcab/snapp/passenger/units/payment/a;->g:Lcab/snapp/passenger/c/b;

    .line 192
    invoke-virtual {p1}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getPaymentTexts()Lcab/snapp/passenger/data/models/PaymentTexts;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/PaymentTexts;->getAppWalletRegistrationLink()Ljava/lang/String;

    move-result-object v8

    .line 185
    invoke-virtual/range {v1 .. v8}, Lcab/snapp/passenger/units/payment/c;->onInitialize(ILjava/util/List;Lcab/snapp/passenger/data/models/SnappUssd;Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private synthetic a(Ljava/lang/Double;Lcab/snapp/passenger/data_access_layer/network/responses/InRidePaymentResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 302
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 3364
    iget-object p1, p0, Lcab/snapp/passenger/units/payment/a;->f:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->updatePaymentStatus()V

    .line 3366
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getFallbackPaymentMethod()I

    move-result p1

    if-nez p1, :cond_0

    .line 3368
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3370
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/c;->onCashPaymentSuccessful()V

    const-string p1, "cash"

    .line 3371
    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/payment/a;->a(Ljava/lang/String;)V

    return-void

    .line 3376
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getFallbackPaymentMethod()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 3378
    iget-object p1, p0, Lcab/snapp/passenger/units/payment/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->RIDE:Ljava/lang/String;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->PAYMENT:Ljava/lang/String;

    const-string v2, "In-ride payment redirecting to BG"

    invoke-virtual {p1, v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "online"

    .line 3379
    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/payment/a;->a(Ljava/lang/String;)V

    .line 3381
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/16 v0, 0x3e9

    iget-object v1, p0, Lcab/snapp/passenger/units/payment/a;->d:Lcab/snapp/passenger/data_access_layer/a/d;

    iget-object v2, p0, Lcab/snapp/passenger/units/payment/a;->e:Lcab/snapp/passenger/f/b/b/c;

    .line 3380
    invoke-static {p1, v0, p0, v1, v2}, Lcab/snapp/passenger/f/a/a;->buildSnappPayment(Landroid/app/Activity;ILcab/snapp/passenger/f/a/a$a;Lcab/snapp/passenger/data_access_layer/a/d;Lcab/snapp/passenger/f/b/b/c;)Lcab/snapp/passenger/f/a/b;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 3387
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/InRidePaymentResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3389
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/InRidePaymentResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcab/snapp/passenger/f/a/b;->openIPG(Ljava/lang/String;)V

    .line 3391
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->finish()V

    return-void

    .line 3393
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getFallbackPaymentMethod()I

    move-result p1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_4

    const-string p1, "ap_wallet"

    .line 3396
    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/payment/a;->a(Ljava/lang/String;)V

    .line 3398
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/16 v0, 0x3ec

    iget-object v1, p0, Lcab/snapp/passenger/units/payment/a;->d:Lcab/snapp/passenger/data_access_layer/a/d;

    iget-object v2, p0, Lcab/snapp/passenger/units/payment/a;->e:Lcab/snapp/passenger/f/b/b/c;

    .line 3397
    invoke-static {p1, v0, p0, v1, v2}, Lcab/snapp/passenger/f/a/a;->buildSnappPayment(Landroid/app/Activity;ILcab/snapp/passenger/f/a/a$a;Lcab/snapp/passenger/data_access_layer/a/d;Lcab/snapp/passenger/f/b/b/c;)Lcab/snapp/passenger/f/a/b;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 3404
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/InRidePaymentResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3406
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/InRidePaymentResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcab/snapp/passenger/f/a/b;->openIPG(Ljava/lang/String;)V

    .line 3408
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->finish()V

    return-void

    .line 3410
    :cond_4
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getFallbackPaymentMethod()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    const-string p1, "ussd"

    .line 3412
    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/payment/a;->a(Ljava/lang/String;)V

    .line 3414
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/16 p2, 0x3ea

    iget-object v2, p0, Lcab/snapp/passenger/units/payment/a;->d:Lcab/snapp/passenger/data_access_layer/a/d;

    iget-object v3, p0, Lcab/snapp/passenger/units/payment/a;->e:Lcab/snapp/passenger/f/b/b/c;

    .line 3413
    invoke-static {p1, p2, p0, v2, v3}, Lcab/snapp/passenger/f/a/a;->buildSnappPayment(Landroid/app/Activity;ILcab/snapp/passenger/f/a/a$a;Lcab/snapp/passenger/data_access_layer/a/d;Lcab/snapp/passenger/f/b/b/c;)Lcab/snapp/passenger/f/a/b;

    move-result-object p1

    if-eqz p1, :cond_5

    double-to-int p2, v0

    .line 3422
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcab/snapp/passenger/f/a/b;->performPayCall(Ljava/lang/String;)V

    .line 3423
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->finish()V

    :cond_5
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 431
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "currentPaymentType"

    .line 432
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object p1, p0, Lcab/snapp/passenger/units/payment/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$e;->METHOD_OF_PAYMENT:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 818
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 822
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 824
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/c;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/payment/c;->onPayError(Ljava/lang/String;)V

    return-void

    .line 828
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/c;

    const v0, 0x7f12002c

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/payment/c;->onPayError(I)V

    return-void
.end method

.method private synthetic b(Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 761
    iput-object p1, p0, Lcab/snapp/passenger/units/payment/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    .line 762
    iget-object p1, p0, Lcab/snapp/passenger/units/payment/a;->f:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->updatePaymentStatus()V

    .line 764
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 766
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/c;->dismissLoadingDialog()V

    .line 767
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/c;

    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/payment/c;->onTransferCreditSuccessful(Ljava/lang/String;)V

    .line 768
    iget-object p1, p0, Lcab/snapp/passenger/units/payment/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/payment/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .line 792
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 794
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 795
    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 796
    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 797
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 799
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/c;

    .line 2747
    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2751
    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    const v0, 0x7f1200bf

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/payment/PaymentView;->showToast(I)V

    :cond_2
    return-void
.end method

.method private synthetic b(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 772
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 777
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/c;->dismissLoadingDialog()V

    .line 778
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 780
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/c;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/payment/c;->onPayError(Ljava/lang/String;)V

    return-void

    .line 784
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/c;

    const v0, 0x7f1200c3

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/payment/c;->onPayError(I)V

    return-void
.end method

.method private synthetic c(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 309
    :cond_0
    move-object v0, p1

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v0

    const/16 v1, 0x418

    if-eq v0, v1, :cond_3

    const/16 v1, 0x419

    if-eq v0, v1, :cond_3

    const/16 v1, 0x42d

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x414

    if-ne v0, p1, :cond_2

    .line 316
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/c;

    const v0, 0x7f12014b

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/payment/c;->onPayError(I)V

    return-void

    .line 320
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/c;

    const v0, 0x7f1200c2

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/payment/c;->onPayError(I)V

    return-void

    .line 312
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/c;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/payment/c;->onPayError(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$5c3YrBbOuzTBoM8XD-t_UouNrnE(Lcab/snapp/passenger/units/payment/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/payment/a;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$O3xddtOsILbdQYDqtoVO5e9_7bA(Lcab/snapp/passenger/units/payment/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/payment/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$SusHmxifh25TFIMpBiYhXfBHhoo(Lcab/snapp/passenger/units/payment/a;Lcab/snapp/passenger/data_access_layer/network/responses/TransferCreditResponse;)Lio/reactivex/z;
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/payment/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/TransferCreditResponse;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$YFCnbouK0ZvDqURIR8zX9oHL6qM(Lcab/snapp/passenger/units/payment/a;Ljava/lang/Double;Lcab/snapp/passenger/data_access_layer/network/responses/InRidePaymentResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/payment/a;->a(Ljava/lang/Double;Lcab/snapp/passenger/data_access_layer/network/responses/InRidePaymentResponse;)V

    return-void
.end method

.method public static synthetic lambda$e3kBPtSFWdwnVzRu28QMljtfl6g(Lcab/snapp/passenger/units/payment/a;Lcab/snapp/passenger/data_access_layer/network/responses/ApWalletRegistrationResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/payment/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/ApWalletRegistrationResponse;)V

    return-void
.end method

.method public static synthetic lambda$g4RpbtG7o-f7t8YDhfZ4PeX7p54(Lcab/snapp/passenger/units/payment/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/payment/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$h3k0yoVapgwPrfIpr6w0kW7E2-g(Lcab/snapp/passenger/units/payment/a;Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/payment/a;->b(Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;)V

    return-void
.end method


# virtual methods
.method final a(I)Z
    .locals 1

    .line 745
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;-><init>()V

    .line 746
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;->setType(I)V

    .line 747
    iget-object p1, p0, Lcab/snapp/passenger/units/payment/a;->h:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public apWalletActivationRequested()V
    .locals 3

    .line 812
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->d:Lcab/snapp/passenger/data_access_layer/a/d;

    iget-object v1, p0, Lcab/snapp/passenger/units/payment/a;->c:Lcab/snapp/passenger/c/f;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/f;->getProfile()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getCellphone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/a/d;->sendApWalletRegistration(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/payment/-$$Lambda$a$e3kBPtSFWdwnVzRu28QMljtfl6g;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/payment/-$$Lambda$a$e3kBPtSFWdwnVzRu28QMljtfl6g;-><init>(Lcab/snapp/passenger/units/payment/a;)V

    new-instance v2, Lcab/snapp/passenger/units/payment/-$$Lambda$a$g4RpbtG7o-f7t8YDhfZ4PeX7p54;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/payment/-$$Lambda$a$g4RpbtG7o-f7t8YDhfZ4PeX7p54;-><init>(Lcab/snapp/passenger/units/payment/a;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/payment/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method public creditNeededToEqualizeCurrentRideCost()D
    .locals 5

    .line 204
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getCurrentCredit()D

    move-result-wide v0

    iget-object v2, p0, Lcab/snapp/passenger/units/payment/a;->ridePrice:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 210
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->ridePrice:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getCurrentCredit()D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public donateDescription()V
    .locals 4

    .line 615
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    if-eqz v0, :cond_2

    .line 616
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getDonation()Lcab/snapp/passenger/data/models/Donation;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    .line 617
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getDonation()Lcab/snapp/passenger/data/models/Donation;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Donation;->getDonationLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    .line 618
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getDonation()Lcab/snapp/passenger/data/models/Donation;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Donation;->getDonationLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2629
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "Donate link clicked"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->f:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2632
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_PAYMENT_DONATE_DESCRIPTION:Ljava/lang/String;

    const-string v3, "[tap]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2636
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_PAYMENT_DONATE_DESCRIPTION:Ljava/lang/String;

    const-string v3, "donate linked clicked"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/e;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/units/payment/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    invoke-virtual {v2}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getDonation()Lcab/snapp/passenger/data/models/Donation;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/Donation;->getDonationLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/payment/e;->routToDonateDescriptionUrl(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public finish()V
    .locals 4

    .line 678
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_PAYMENT:Ljava/lang/String;

    const-string v3, "[back]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public getAmountToChargePlusDonation(D)D
    .locals 2

    .line 216
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getSelectedPaymentMethod()I

    move-result v0

    if-nez v0, :cond_0

    return-wide p1

    .line 221
    :cond_0
    iget-boolean v0, p0, Lcab/snapp/passenger/units/payment/a;->userHaveToDonate:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcab/snapp/passenger/units/payment/a;->userWantToDonate:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-wide p1

    .line 223
    :cond_2
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getDonation()Lcab/snapp/passenger/data/models/Donation;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Donation;->getDonationAmount()D

    move-result-wide v0

    add-double/2addr p1, v0

    return-wide p1
.end method

.method public getCurrentCredit()D
    .locals 2

    .line 733
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->a:Lio/reactivex/j/a;

    invoke-virtual {v0}, Lio/reactivex/j/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 735
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getApReceipt()Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->getCredit()D

    move-result-wide v0

    return-wide v0

    .line 739
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getCurrentCredit()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFallbackPaymentMethod()I
    .locals 4

    .line 337
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->a:Lio/reactivex/j/a;

    invoke-virtual {v0}, Lio/reactivex/j/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;->getType()I

    move-result v0

    return v0

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getSelectedPaymentMethod()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    .line 342
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getApReceipt()Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->getStatus()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 344
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->isApWalletRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 348
    :cond_1
    invoke-virtual {p0, v3}, Lcab/snapp/passenger/units/payment/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    .line 352
    :cond_2
    invoke-virtual {p0, v1}, Lcab/snapp/passenger/units/payment/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 357
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getSelectedPaymentMethod()I

    move-result v0

    return v0
.end method

.method public getMinAmountOfAcceptableCharge()D
    .locals 4

    .line 688
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->creditNeededToEqualizeCurrentRideCost()D

    move-result-wide v0

    const-wide v2, 0x40c3880000000000L    # 10000.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRidePrice()Ljava/lang/Double;
    .locals 1

    .line 231
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->ridePrice:Ljava/lang/Double;

    return-object v0
.end method

.method public getRideReceiptResponse()Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;
    .locals 1

    .line 693
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    return-object v0
.end method

.method public getSelectedPaymentMethod()I
    .locals 1

    .line 329
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->a:Lio/reactivex/j/a;

    invoke-virtual {v0}, Lio/reactivex/j/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isCurrentCreditSufficient()Z
    .locals 5

    .line 199
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getCurrentCredit()D

    move-result-wide v0

    iget-object v2, p0, Lcab/snapp/passenger/units/payment/a;->ridePrice:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUserWantToDonate()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcab/snapp/passenger/units/payment/a;->userWantToDonate:Z

    return v0
.end method

.method public onApWalletDescriptionMoreInfoClicked(Ljava/lang/String;)V
    .locals 0

    .line 805
    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/payment/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 147
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onDestroy()V

    .line 148
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/c;->dispose()V

    :cond_0
    return-void
.end method

.method public onPaymentError(Ljava/lang/String;I)V
    .locals 1

    .line 718
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0x44d

    if-ne p2, v0, :cond_0

    .line 722
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/c;->showNoInternet()V

    return-void

    .line 726
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/payment/c;

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/payment/c;->onPaymentError(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onPaymentStart()V
    .locals 1

    .line 699
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/c;->onBeforePaymentRequest()V

    :cond_0
    return-void
.end method

.method public onPaymentSucceed(J)V
    .locals 0

    .line 708
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 710
    iget-object p1, p0, Lcab/snapp/passenger/units/payment/a;->f:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->updatePaymentStatus()V

    .line 711
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/c;->onPaymentSuccessful()V

    :cond_0
    return-void
.end method

.method public onUnitCreated()V
    .locals 2

    .line 90
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 91
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/payment/a;)V

    .line 97
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-nez v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->finish()V

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RIDE_RECEIPT_ARGUMENT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    iput-object v0, p0, Lcab/snapp/passenger/units/payment/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    .line 125
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    invoke-direct {p0, v0}, Lcab/snapp/passenger/units/payment/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;)V

    return-void

    .line 129
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->finish()V

    return-void
.end method

.method public onUnitResume()V
    .locals 2

    .line 138
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 140
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->e:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, "Payment Page"

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return-void
.end method

.method public pay()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->ridePrice:Ljava/lang/Double;

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/payment/a;->pay(Ljava/lang/Double;)V

    return-void
.end method

.method public pay(Ljava/lang/Double;)V
    .locals 13

    .line 255
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1438
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->isUserWantToDonate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1440
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "Donation is ON on in-ride payment"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getFallbackPaymentMethod()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "Boarded"

    const-string v3, "driverArrived"

    const/4 v4, 0x6

    const-string v5, "driverAssigned"

    const-string v6, "[donateOn]"

    const-string v7, "[donateOff]"

    const/4 v8, 0x5

    const/4 v9, 0x4

    const-string v10, "In-ride"

    const-string v11, "payment"

    if-ne v0, v1, :cond_7

    .line 1445
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->isUserWantToDonate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1447
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->f:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-ne v0, v9, :cond_2

    .line 1449
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v7, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v12, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_PAYMENT_ONLINE_SECTION_ONLINE_CHARGE:Ljava/lang/String;

    invoke-virtual {v0, v7, v12, v6}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1453
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v7, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v12, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_PAYMENT_ONLINE_SECTION_ONLINE_CHARGE:Ljava/lang/String;

    invoke-virtual {v0, v7, v12, v6}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1458
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->f:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-ne v0, v9, :cond_4

    .line 1460
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v6, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v12, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_PAYMENT_ONLINE_SECTION_ONLINE_CHARGE:Ljava/lang/String;

    invoke-virtual {v0, v6, v12, v7}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1464
    :cond_4
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v6, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v12, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_PAYMENT_ONLINE_SECTION_ONLINE_CHARGE:Ljava/lang/String;

    invoke-virtual {v0, v6, v12, v7}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->f:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const-string v6, "online[onlineCharge]"

    if-ne v0, v9, :cond_5

    .line 1555
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1556
    invoke-virtual {v0, v11, v6}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 1557
    invoke-virtual {v0, v5}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 1558
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1559
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v10, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    goto/16 :goto_3

    .line 1561
    :cond_5
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->f:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-ne v0, v8, :cond_6

    .line 1563
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1564
    invoke-virtual {v0, v11, v6}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 1565
    invoke-virtual {v0, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 1566
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1567
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v10, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    goto/16 :goto_3

    .line 1569
    :cond_6
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->f:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-ne v0, v4, :cond_11

    .line 1571
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1572
    invoke-virtual {v0, v11, v6}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 1573
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 1574
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1575
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v10, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    goto/16 :goto_3

    .line 1472
    :cond_7
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getFallbackPaymentMethod()I

    move-result v0

    if-nez v0, :cond_b

    .line 1474
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->f:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const-string v6, "confirm button clicked"

    if-ne v0, v9, :cond_8

    .line 1476
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v7, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v12, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_PAYMENT_CASH_PAY_CASH:Ljava/lang/String;

    invoke-virtual {v0, v7, v12, v6}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1480
    :cond_8
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v7, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v12, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_PAYMENT_CASH_PAY_CASH:Ljava/lang/String;

    invoke-virtual {v0, v7, v12, v6}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    :goto_1
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->f:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const-string v6, "offline[wantPayOffline]"

    if-ne v0, v9, :cond_9

    .line 1587
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1588
    invoke-virtual {v0, v11, v6}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 1589
    invoke-virtual {v0, v5}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 1590
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1591
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v10, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    goto/16 :goto_3

    .line 1593
    :cond_9
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->f:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-ne v0, v8, :cond_a

    .line 1595
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1596
    invoke-virtual {v0, v11, v6}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 1597
    invoke-virtual {v0, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 1598
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1599
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v10, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    goto/16 :goto_3

    .line 1601
    :cond_a
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->f:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-ne v0, v4, :cond_11

    .line 1603
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1604
    invoke-virtual {v0, v11, v6}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 1605
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 1606
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1607
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v10, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    goto/16 :goto_3

    .line 1485
    :cond_b
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getFallbackPaymentMethod()I

    move-result v0

    const/4 v12, 0x1

    if-ne v0, v12, :cond_11

    .line 1487
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->isUserWantToDonate()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1489
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->f:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-ne v0, v9, :cond_c

    .line 1491
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v7, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v12, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_PAYMENT_USSD_PAY:Ljava/lang/String;

    invoke-virtual {v0, v7, v12, v6}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1495
    :cond_c
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v7, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v12, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_PAYMENT_USSD_PAY:Ljava/lang/String;

    invoke-virtual {v0, v7, v12, v6}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1500
    :cond_d
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->f:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-ne v0, v9, :cond_e

    .line 1502
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v6, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v12, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_PAYMENT_USSD_PAY:Ljava/lang/String;

    invoke-virtual {v0, v6, v12, v7}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1506
    :cond_e
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v6, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v12, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_PAYMENT_USSD_PAY:Ljava/lang/String;

    invoke-virtual {v0, v6, v12, v7}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2521
    :goto_2
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->f:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const-string v6, "ussd[onlineCharge]"

    if-ne v0, v9, :cond_f

    .line 2523
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 2524
    invoke-virtual {v0, v11, v6}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 2525
    invoke-virtual {v0, v5}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 2526
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 2527
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v10, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    goto :goto_3

    .line 2529
    :cond_f
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->f:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-ne v0, v8, :cond_10

    .line 2531
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 2532
    invoke-virtual {v0, v11, v6}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 2533
    invoke-virtual {v0, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 2534
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 2535
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v10, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    goto :goto_3

    .line 2537
    :cond_10
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->f:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-ne v0, v4, :cond_11

    .line 2539
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 2540
    invoke-virtual {v0, v11, v6}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 2541
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 2542
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 2543
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v10, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    .line 261
    :cond_11
    :goto_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/c/f;->isUserConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 263
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/c;->onNoInternetConnection()V

    return-void

    .line 267
    :cond_12
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 269
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/c;->onBeforeCashPaymentRequest()V

    .line 272
    :cond_13
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getFallbackPaymentMethod()I

    move-result v0

    if-ne v0, v8, :cond_14

    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->isApWalletRegistered()Z

    move-result v0

    if-nez v0, :cond_14

    .line 273
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->apWalletActivationRequested()V

    return-void

    .line 278
    :cond_14
    iget-boolean v0, p0, Lcab/snapp/passenger/units/payment/a;->userWantToDonate:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcab/snapp/passenger/units/payment/a;->userHaveToDonate:Z

    if-eqz v0, :cond_16

    .line 280
    :cond_15
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object p1, p0, Lcab/snapp/passenger/units/payment/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getDonation()Lcab/snapp/passenger/data/models/Donation;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Donation;->getDonationAmount()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 284
    :cond_16
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getFallbackPaymentMethod()I

    move-result v0

    if-eq v0, v1, :cond_17

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getFallbackPaymentMethod()I

    move-result v0

    if-ne v0, v8, :cond_18

    .line 286
    :cond_17
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->isCurrentCreditSufficient()Z

    move-result v0

    if-eqz v0, :cond_18

    const-wide/16 v0, 0x0

    .line 288
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :cond_18
    const/4 v0, 0x0

    .line 293
    iget-boolean v1, p0, Lcab/snapp/passenger/units/payment/a;->userWantToDonate:Z

    if-eqz v1, :cond_19

    .line 295
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->b:Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getDonation()Lcab/snapp/passenger/data/models/Donation;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Donation;->getOrganizationId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 299
    :cond_19
    iget-object v1, p0, Lcab/snapp/passenger/units/payment/a;->d:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 300
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/a;->getFallbackPaymentMethod()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->postInRidePayment(DILjava/lang/Integer;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/payment/-$$Lambda$a$YFCnbouK0ZvDqURIR8zX9oHL6qM;

    invoke-direct {v1, p0, p1}, Lcab/snapp/passenger/units/payment/-$$Lambda$a$YFCnbouK0ZvDqURIR8zX9oHL6qM;-><init>(Lcab/snapp/passenger/units/payment/a;Ljava/lang/Double;)V

    new-instance p1, Lcab/snapp/passenger/units/payment/-$$Lambda$a$5c3YrBbOuzTBoM8XD-t_UouNrnE;

    invoke-direct {p1, p0}, Lcab/snapp/passenger/units/payment/-$$Lambda$a$5c3YrBbOuzTBoM8XD-t_UouNrnE;-><init>(Lcab/snapp/passenger/units/payment/a;)V

    .line 301
    invoke-virtual {v0, v1, p1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    .line 299
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/payment/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method public setUserWantToDonate(Z)V
    .locals 0

    .line 245
    iput-boolean p1, p0, Lcab/snapp/passenger/units/payment/a;->userWantToDonate:Z

    return-void
.end method

.method public transferSnappCreditToAp()V
    .locals 3

    .line 752
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/a;->d:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 753
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/d;->getTransferCreditToAp()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/payment/-$$Lambda$a$SusHmxifh25TFIMpBiYhXfBHhoo;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/payment/-$$Lambda$a$SusHmxifh25TFIMpBiYhXfBHhoo;-><init>(Lcab/snapp/passenger/units/payment/a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/payment/-$$Lambda$a$h3k0yoVapgwPrfIpr6w0kW7E2-g;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/payment/-$$Lambda$a$h3k0yoVapgwPrfIpr6w0kW7E2-g;-><init>(Lcab/snapp/passenger/units/payment/a;)V

    new-instance v2, Lcab/snapp/passenger/units/payment/-$$Lambda$a$O3xddtOsILbdQYDqtoVO5e9_7bA;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/payment/-$$Lambda$a$O3xddtOsILbdQYDqtoVO5e9_7bA;-><init>(Lcab/snapp/passenger/units/payment/a;)V

    .line 759
    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 752
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/payment/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method
