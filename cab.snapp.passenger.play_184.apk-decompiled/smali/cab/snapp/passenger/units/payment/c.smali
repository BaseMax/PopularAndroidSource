.class public final Lcab/snapp/passenger/units/payment/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/payment/PaymentView;",
        "Lcab/snapp/passenger/units/payment/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final STEP:I

.field a:Ljava/lang/String;

.field public amountToChargeOnline:D

.field b:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lio/reactivex/b/b;

.field private d:D

.field private e:Lcab/snapp/passenger/data/models/SnappUssd;

.field private f:Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    const v0, 0x186a0

    .line 37
    iput v0, p0, Lcab/snapp/passenger/units/payment/c;->STEP:I

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcab/snapp/passenger/units/payment/c;->amountToChargeOnline:D

    .line 51
    new-instance v0, Lio/reactivex/b/b;

    invoke-direct {v0}, Lio/reactivex/b/b;-><init>()V

    iput-object v0, p0, Lcab/snapp/passenger/units/payment/c;->c:Lio/reactivex/b/b;

    return-void
.end method

.method private a()V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 410
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 416
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/payment/a;->getSelectedPaymentMethod()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne v1, v4, :cond_2

    const v1, 0x7f12018f

    .line 426
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/payment/a;

    iget-wide v4, p0, Lcab/snapp/passenger/units/payment/c;->d:D

    invoke-virtual {v2, v4, v5}, Lcab/snapp/passenger/units/payment/a;->getAmountToChargePlusDonation(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lcab/snapp/c/j;->formatDouble(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    const v1, 0x7f1202ae

    .line 430
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_1

    :cond_4
    :goto_0
    const v1, 0x7f120190

    .line 422
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/payment/a;

    iget-wide v4, p0, Lcab/snapp/passenger/units/payment/c;->amountToChargeOnline:D

    invoke-virtual {v2, v4, v5}, Lcab/snapp/passenger/units/payment/a;->getAmountToChargePlusDonation(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lcab/snapp/c/j;->formatDouble(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 433
    :goto_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-static {v0}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/payment/PaymentView;->setPayButtonText(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private a(IZ)V
    .locals 11

    .line 200
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/a;->getRideReceiptResponse()Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x4

    const-string v1, "\n"

    const v2, 0x7f120121

    const v3, 0x7f120257

    const v4, 0x7f120190

    const-string v5, " "

    const/4 v6, 0x2

    const/4 v7, 0x5

    const/4 v8, 0x0

    const v9, 0x7f060099

    const/4 v10, 0x1

    if-ne p1, v7, :cond_5

    if-nez p2, :cond_1

    .line 208
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->showApWalletActivationLayout()V

    return-void

    .line 211
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/units/payment/c;->f:Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->getStatus()I

    move-result p1

    if-eqz p1, :cond_4

    if-eq p1, v10, :cond_3

    if-eq p1, v6, :cond_2

    goto :goto_0

    .line 239
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    iget-object p2, p0, Lcab/snapp/passenger/units/payment/c;->f:Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->getMessage()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcab/snapp/passenger/units/payment/c;->f:Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->isShowRetryButton()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcab/snapp/passenger/units/payment/PaymentView;->showRetryPanel(Ljava/lang/String;Z)V

    .line 240
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->showOnlyPayButton()V

    .line 241
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 242
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/a;->getFallbackPaymentMethod()I

    move-result v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/payment/c;->getPaymentTypeText(I)I

    move-result v0

    .line 241
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/payment/PaymentView;->setPayButtonText(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 223
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->showRideCostLayout()V

    .line 224
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    iget-object p2, p0, Lcab/snapp/passenger/units/payment/c;->f:Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/payment/PaymentView;->setBottomMessageText(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->showCurrentCreditLayout()V

    .line 226
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1, v9}, Lcab/snapp/passenger/units/payment/PaymentView;->setBottomMessageTextColor(I)V

    .line 227
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->showBottomMessageLayout()V

    .line 228
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->hidePayableCostInCashOrUssdLayout()V

    .line 229
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->hideAmountNeededForChargeLayout()V

    .line 230
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->hideIncreaseAndDecreaseLayout()V

    .line 231
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/payment/PaymentView;->setVisibilityOfIncreaseDecreaseAmountAndPayButton(I)V

    .line 232
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 234
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/payment/PaymentView;->setBottomMessageText(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1, v9}, Lcab/snapp/passenger/units/payment/PaymentView;->setBottomMessageTextColor(I)V

    .line 236
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->showBottomMessageLayout()V

    return-void

    .line 214
    :cond_4
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->showRideCostLayout()V

    .line 215
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->showCurrentCreditLayout()V

    .line 216
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->showAmountNeededForChargeLayout()V

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/payment/a;

    iget-wide v0, p0, Lcab/snapp/passenger/units/payment/c;->amountToChargeOnline:D

    invoke-virtual {p2, v0, v1}, Lcab/snapp/passenger/units/payment/a;->getAmountToChargePlusDonation(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p2}, Lcab/snapp/c/j;->formatDouble(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcab/snapp/passenger/units/payment/c;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/payment/c;->a(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/payment/a;

    iget-wide v2, p0, Lcab/snapp/passenger/units/payment/c;->amountToChargeOnline:D

    invoke-virtual {v1, v2, v3}, Lcab/snapp/passenger/units/payment/a;->getAmountToChargePlusDonation(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcab/snapp/c/j;->formatDouble(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/payment/PaymentView;->setPayButtonText(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->showIncreaseDecreaseAmountAndPayButton()V

    .line 220
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->decideToShowDecreaseButton()V

    return-void

    :cond_5
    if-eq p1, v6, :cond_9

    const/4 p2, -0x1

    if-ne p1, p2, :cond_6

    .line 247
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {p2, v7}, Lcab/snapp/passenger/units/payment/a;->a(I)Z

    move-result p2

    if-nez p2, :cond_6

    goto/16 :goto_1

    :cond_6
    if-ne p1, v10, :cond_7

    .line 276
    iget-object p1, p0, Lcab/snapp/passenger/units/payment/c;->e:Lcab/snapp/passenger/data/models/SnappUssd;

    if-eqz p1, :cond_8

    .line 278
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/SnappUssd;->getUssdText()Ljava/lang/String;

    move-result-object p1

    .line 279
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1201d8

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v10, [Ljava/lang/Object;

    aput-object p1, v0, v8

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 280
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0, p2}, Lcab/snapp/passenger/units/payment/PaymentView;->setBottomMessageText(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p2, v9}, Lcab/snapp/passenger/units/payment/PaymentView;->setBottomMessageTextColor(I)V

    .line 283
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/payment/PaymentView;->hideCurrentCreditLayout()V

    .line 284
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/payment/PaymentView;->hideAmountNeededForChargeLayout()V

    .line 286
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/payment/PaymentView;->hideIncreaseAndDecreaseLayout()V

    .line 287
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/payment/PaymentView;->showBottomMessageLayout()V

    .line 289
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/payment/PaymentView;->hidePaymentButton()V

    .line 290
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/payment/PaymentView;->hidePaymentMethodTitle()V

    .line 291
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/payment/PaymentView;->showPaymentDoneLayout()V

    .line 292
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/payment/PaymentView;->setTypeOfDonePaymentText(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->hidePayButton()V

    return-void

    :cond_7
    if-nez p1, :cond_8

    .line 299
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    const p2, 0x7f12018c

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/payment/PaymentView;->setBottomMessageText(I)V

    .line 300
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1, v9}, Lcab/snapp/passenger/units/payment/PaymentView;->setBottomMessageTextColor(I)V

    .line 302
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->hideCurrentCreditLayout()V

    .line 303
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->hideAmountNeededForChargeLayout()V

    .line 305
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->hideIncreaseAndDecreaseLayout()V

    .line 306
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->showBottomMessageLayout()V

    .line 307
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->hidePaymentButton()V

    .line 308
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->hidePaymentMethodTitle()V

    .line 309
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->showPaymentDoneLayout()V

    .line 310
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    const p2, 0x7f12004d

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/payment/PaymentView;->setTypeOfDonePaymentText(I)V

    .line 312
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->hidePayButton()V

    .line 313
    invoke-direct {p0}, Lcab/snapp/passenger/units/payment/c;->b()V

    :cond_8
    return-void

    .line 249
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->showCurrentCreditLayout()V

    .line 250
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->hidePayableCostInCashOrUssdLayout()V

    .line 251
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/a;->isCurrentCreditSufficient()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 253
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->hideAmountNeededForChargeLayout()V

    .line 255
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 257
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/payment/PaymentView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcab/snapp/passenger/units/payment/PaymentView;->setBottomMessageText(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1, v9}, Lcab/snapp/passenger/units/payment/PaymentView;->setBottomMessageTextColor(I)V

    .line 259
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->showBottomMessageLayout()V

    .line 261
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/payment/PaymentView;->setVisibilityOfIncreaseDecreaseAmountAndPayButton(I)V

    return-void

    .line 265
    :cond_a
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->showAmountNeededForChargeLayout()V

    .line 266
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/payment/a;

    iget-wide v0, p0, Lcab/snapp/passenger/units/payment/c;->amountToChargeOnline:D

    invoke-virtual {p2, v0, v1}, Lcab/snapp/passenger/units/payment/a;->getAmountToChargePlusDonation(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p2}, Lcab/snapp/c/j;->formatDouble(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcab/snapp/passenger/units/payment/c;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/payment/c;->a(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array p2, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/a;

    iget-wide v1, p0, Lcab/snapp/passenger/units/payment/c;->amountToChargeOnline:D

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/payment/a;->getAmountToChargePlusDonation(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/c/j;->formatDouble(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v8

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/payment/PaymentView;->setPayButtonText(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->showIncreaseDecreaseAmountAndPayButton()V

    .line 270
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->decideToShowDecreaseButton()V

    :cond_b
    :goto_2
    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;IZLcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;Lcab/snapp/passenger/data/models/SnappUssd;Ljava/lang/Integer;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 537
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v3}, Lcab/snapp/passenger/units/payment/a;->getCurrentCredit()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcab/snapp/passenger/units/payment/c;->setCurrentCredit(Ljava/lang/Double;)V

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v3}, Lcab/snapp/passenger/units/payment/a;->getMinAmountOfAcceptableCharge()D

    move-result-wide v3

    iput-wide v3, v0, Lcab/snapp/passenger/units/payment/c;->amountToChargeOnline:D

    .line 539
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v3}, Lcab/snapp/passenger/units/payment/PaymentView;->hidePayableCostInCashOrUssdLayout()V

    .line 540
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v3}, Lcab/snapp/passenger/units/payment/PaymentView;->hideAmountNeededForChargeLayout()V

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v3}, Lcab/snapp/passenger/units/payment/PaymentView;->hideBottomMessageLayout()V

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v3}, Lcab/snapp/passenger/units/payment/PaymentView;->hideCurrentCreditLayout()V

    .line 543
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v3}, Lcab/snapp/passenger/units/payment/PaymentView;->hideAmountNeededForChargeLayout()V

    .line 544
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v3}, Lcab/snapp/passenger/units/payment/PaymentView;->hideIncreaseAndDecreaseLayout()V

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v3}, Lcab/snapp/passenger/units/payment/PaymentView;->hideRetryPanel()V

    .line 546
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcab/snapp/passenger/units/payment/PaymentView;->selectPaymentTypeButton(I)V

    .line 547
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v3}, Lcab/snapp/passenger/units/payment/PaymentView;->showRideCostLayout()V

    .line 548
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v3}, Lcab/snapp/passenger/units/payment/PaymentView;->hideApWalletActivationLayout()V

    .line 549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v4

    check-cast v4, Lcab/snapp/passenger/units/payment/a;

    .line 551
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v5

    check-cast v5, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v5}, Lcab/snapp/passenger/units/payment/a;->getRidePrice()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcab/snapp/passenger/units/payment/a;->getAmountToChargePlusDonation(D)D

    move-result-wide v4

    .line 550
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v4}, Lcab/snapp/c/j;->formatDouble(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v4

    .line 549
    invoke-static {v4}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcab/snapp/passenger/units/payment/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v5

    check-cast v5, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v5}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 555
    invoke-virtual/range {p1 .. p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getApReceipt()Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getApReceipt()Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;

    move-result-object v6

    invoke-virtual {v6}, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->canTransferCredit()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 556
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v6}, Lcab/snapp/passenger/units/payment/PaymentView;->showTransferSnappCreditLayout()V

    goto :goto_0

    .line 558
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v6}, Lcab/snapp/passenger/units/payment/PaymentView;->hideTransferSnappCreditLayout()V

    .line 560
    :goto_0
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x5

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v6, :cond_a

    const/4 v10, 0x0

    if-eq v6, v9, :cond_8

    const v3, 0x7f120190

    if-eq v6, v8, :cond_6

    if-eq v6, v7, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eq v1, v7, :cond_5

    if-nez v2, :cond_2

    .line 567
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/payment/PaymentView;->showApWalletActivationLayout()V

    return-void

    .line 570
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->getStatus()I

    move-result v6

    if-eq v6, v8, :cond_4

    .line 576
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v6}, Lcab/snapp/passenger/units/payment/PaymentView;->showCurrentCreditLayout()V

    .line 577
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v6}, Lcab/snapp/passenger/units/payment/a;->isCurrentCreditSufficient()Z

    move-result v6

    if-eqz v6, :cond_3

    const v3, 0x7f120034

    .line 579
    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v5

    check-cast v5, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v5}, Lcab/snapp/passenger/units/payment/PaymentView;->showOnlyPayButton()V

    goto/16 :goto_2

    .line 584
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v6}, Lcab/snapp/passenger/units/payment/PaymentView;->showAmountNeededForChargeLayout()V

    .line 585
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v11

    check-cast v11, Lcab/snapp/passenger/units/payment/a;

    iget-wide v12, v0, Lcab/snapp/passenger/units/payment/c;->amountToChargeOnline:D

    invoke-virtual {v11, v12, v13}, Lcab/snapp/passenger/units/payment/a;->getAmountToChargePlusDonation(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-static {v11}, Lcab/snapp/c/j;->formatDouble(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcab/snapp/passenger/units/payment/c;->a:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcab/snapp/passenger/units/payment/c;->a(Ljava/lang/String;)V

    .line 586
    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/a;

    iget-wide v11, v0, Lcab/snapp/passenger/units/payment/c;->amountToChargeOnline:D

    invoke-virtual {v6, v11, v12}, Lcab/snapp/passenger/units/payment/a;->getAmountToChargePlusDonation(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v6}, Lcab/snapp/c/j;->formatDouble(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v5

    check-cast v5, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v5}, Lcab/snapp/passenger/units/payment/PaymentView;->showIncreaseDecreaseAmountAndPayButton()V

    goto/16 :goto_2

    .line 573
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual/range {p4 .. p4}, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->isShowRetryButton()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcab/snapp/passenger/units/payment/PaymentView;->showRetryPanel(Ljava/lang/String;Z)V

    :cond_5
    :goto_1
    const-string v3, ""

    goto/16 :goto_2

    .line 1698
    :cond_6
    iget-object v6, v0, Lcab/snapp/passenger/units/payment/c;->b:Lcab/snapp/passenger/f/b/b/c;

    sget-object v11, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v12, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v13, "Online payment clicked in-ride"

    invoke-virtual {v6, v11, v12, v13}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v6}, Lcab/snapp/passenger/units/payment/PaymentView;->showCurrentCreditLayout()V

    .line 597
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v6}, Lcab/snapp/passenger/units/payment/a;->isCurrentCreditSufficient()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v3}, Lcab/snapp/passenger/units/payment/PaymentView;->showCurrentCreditLayout()V

    const v3, 0x7f120174

    .line 600
    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 601
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v5

    check-cast v5, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v5}, Lcab/snapp/passenger/units/payment/PaymentView;->showOnlyPayButton()V

    goto/16 :goto_2

    .line 605
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v6}, Lcab/snapp/passenger/units/payment/PaymentView;->showAmountNeededForChargeLayout()V

    .line 606
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v6}, Lcab/snapp/passenger/units/payment/PaymentView;->showIncreaseDecreaseAmountAndPayButton()V

    .line 607
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v11

    check-cast v11, Lcab/snapp/passenger/units/payment/a;

    iget-wide v12, v0, Lcab/snapp/passenger/units/payment/c;->amountToChargeOnline:D

    invoke-virtual {v11, v12, v13}, Lcab/snapp/passenger/units/payment/a;->getAmountToChargePlusDonation(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-static {v11}, Lcab/snapp/c/j;->formatDouble(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcab/snapp/passenger/units/payment/c;->a:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcab/snapp/passenger/units/payment/c;->a(Ljava/lang/String;)V

    .line 608
    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/a;

    iget-wide v11, v0, Lcab/snapp/passenger/units/payment/c;->amountToChargeOnline:D

    invoke-virtual {v6, v11, v12}, Lcab/snapp/passenger/units/payment/a;->getAmountToChargePlusDonation(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v6}, Lcab/snapp/c/j;->formatDouble(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->decideToShowDecreaseButton()V

    goto/16 :goto_2

    .line 1708
    :cond_8
    iget-object v6, v0, Lcab/snapp/passenger/units/payment/c;->b:Lcab/snapp/passenger/f/b/b/c;

    sget-object v11, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v12, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v13, "724 payment clicked in-ride"

    invoke-virtual {v6, v11, v12, v13}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v6}, Lcab/snapp/passenger/units/payment/PaymentView;->showOnlyPayButton()V

    .line 617
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v6}, Lcab/snapp/passenger/units/payment/PaymentView;->showPayableCostInCashOrUssdLayout()V

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v6}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v11, 0x7f120192

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 620
    invoke-virtual/range {p5 .. p5}, Lcab/snapp/passenger/data/models/SnappUssd;->getUssdText()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-virtual/range {p5 .. p5}, Lcab/snapp/passenger/data/models/SnappUssd;->getUssdText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    .line 622
    invoke-virtual/range {p5 .. p5}, Lcab/snapp/passenger/data/models/SnappUssd;->getUssdText()Ljava/lang/String;

    move-result-object v11

    const-string v12, "USSD"

    invoke-virtual {v6, v12, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 625
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v11

    check-cast v11, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v11, v6}, Lcab/snapp/passenger/units/payment/PaymentView;->setPayableCostInCashOrUssdTitleText(Ljava/lang/String;)V

    .line 626
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v6}, Lcab/snapp/passenger/units/payment/PaymentView;->showPayableCostInCashOrUssdLayout()V

    .line 627
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v6, v3}, Lcab/snapp/passenger/units/payment/PaymentView;->setPayableCostInCashOrUssdValueText(Ljava/lang/String;)V

    const v3, 0x7f12018f

    .line 628
    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/a;

    iget-wide v11, v0, Lcab/snapp/passenger/units/payment/c;->d:D

    invoke-virtual {v6, v11, v12}, Lcab/snapp/passenger/units/payment/a;->getAmountToChargePlusDonation(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v6}, Lcab/snapp/c/j;->formatDouble(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 2703
    :cond_a
    iget-object v6, v0, Lcab/snapp/passenger/units/payment/c;->b:Lcab/snapp/passenger/f/b/b/c;

    sget-object v10, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v11, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v12, "Cash payment clicked in-ride"

    invoke-virtual {v6, v10, v11, v12}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v6}, Lcab/snapp/passenger/units/payment/PaymentView;->showOnlyPayButton()V

    .line 634
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v6}, Lcab/snapp/passenger/units/payment/PaymentView;->showPayableCostInCashOrUssdLayout()V

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v10

    check-cast v10, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v10}, Lcab/snapp/passenger/units/payment/PaymentView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f120191

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcab/snapp/passenger/units/payment/PaymentView;->setPayableCostInCashOrUssdTitleText(Ljava/lang/String;)V

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v6, v3}, Lcab/snapp/passenger/units/payment/PaymentView;->setPayableCostInCashOrUssdValueText(Ljava/lang/String;)V

    const v3, 0x7f1202ae

    .line 637
    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 640
    :goto_2
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3353
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v6}, Lcab/snapp/passenger/units/payment/a;->getRideReceiptResponse()Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    move-result-object v6

    if-nez v6, :cond_b

    goto/16 :goto_5

    .line 3358
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v6}, Lcab/snapp/passenger/units/payment/a;->getRideReceiptResponse()Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    move-result-object v6

    .line 3359
    invoke-virtual {v6}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getStatus()I

    move-result v10

    .line 3360
    invoke-virtual {v6}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getDonation()Lcab/snapp/passenger/data/models/Donation;

    move-result-object v11

    invoke-virtual {v11}, Lcab/snapp/passenger/data/models/Donation;->getDonationStatus()Lcab/snapp/passenger/data/models/DonationStatus;

    move-result-object v11

    invoke-virtual {v11}, Lcab/snapp/passenger/data/models/DonationStatus;->isDonationEnabledGenerally()Z

    move-result v11

    .line 3361
    invoke-virtual {v6}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getDonation()Lcab/snapp/passenger/data/models/Donation;

    move-result-object v12

    invoke-virtual {v12}, Lcab/snapp/passenger/data/models/Donation;->getDonationStatus()Lcab/snapp/passenger/data/models/DonationStatus;

    move-result-object v12

    invoke-virtual {v12}, Lcab/snapp/passenger/data/models/DonationStatus;->isDonationEnabledOnOnline()Z

    move-result v12

    .line 3362
    invoke-virtual {v6}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getDonation()Lcab/snapp/passenger/data/models/Donation;

    move-result-object v13

    invoke-virtual {v13}, Lcab/snapp/passenger/data/models/Donation;->getDonationStatus()Lcab/snapp/passenger/data/models/DonationStatus;

    move-result-object v13

    invoke-virtual {v13}, Lcab/snapp/passenger/data/models/DonationStatus;->isDonationEnabledOnUssd()Z

    move-result v13

    .line 3364
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v14

    check-cast v14, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v6}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getDonation()Lcab/snapp/passenger/data/models/Donation;

    move-result-object v15

    invoke-virtual {v15}, Lcab/snapp/passenger/data/models/Donation;->getCampaignText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcab/snapp/passenger/units/payment/PaymentView;->setDonateTitleText(Ljava/lang/String;)V

    .line 3365
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v14

    check-cast v14, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v6}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getDonation()Lcab/snapp/passenger/data/models/Donation;

    move-result-object v15

    invoke-virtual {v15}, Lcab/snapp/passenger/data/models/Donation;->getDonationDesc()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcab/snapp/passenger/units/payment/PaymentView;->setDonateDescText(Ljava/lang/String;)V

    .line 3367
    invoke-virtual {v6}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getDonation()Lcab/snapp/passenger/data/models/Donation;

    move-result-object v6

    invoke-virtual {v6}, Lcab/snapp/passenger/data/models/Donation;->isPaymentDonated()Z

    move-result v6

    if-nez v6, :cond_10

    if-eqz v11, :cond_10

    if-eqz v5, :cond_10

    if-eq v5, v7, :cond_10

    if-eqz v10, :cond_10

    if-eq v10, v9, :cond_10

    if-eq v10, v8, :cond_10

    .line 3374
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v6}, Lcab/snapp/passenger/units/payment/a;->isCurrentCreditSufficient()Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_4

    :cond_c
    if-ne v5, v8, :cond_e

    if-eqz v12, :cond_d

    .line 3385
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v6}, Lcab/snapp/passenger/units/payment/PaymentView;->showDonateLayout()V

    goto :goto_3

    .line 3389
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v6}, Lcab/snapp/passenger/units/payment/PaymentView;->hideDonateLayout()V

    :cond_e
    :goto_3
    if-ne v5, v9, :cond_11

    if-eqz v13, :cond_f

    .line 3397
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v5

    check-cast v5, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v5}, Lcab/snapp/passenger/units/payment/PaymentView;->showDonateLayout()V

    goto :goto_5

    .line 3401
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v5

    check-cast v5, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v5}, Lcab/snapp/passenger/units/payment/PaymentView;->hideDonateLayout()V

    goto :goto_5

    .line 3377
    :cond_10
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v5

    check-cast v5, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v5}, Lcab/snapp/passenger/units/payment/PaymentView;->hideDonateLayout()V

    .line 4320
    :cond_11
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v5

    check-cast v5, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v5}, Lcab/snapp/passenger/units/payment/a;->getRideReceiptResponse()Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    move-result-object v5

    if-nez v5, :cond_12

    goto/16 :goto_7

    .line 4325
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v5

    check-cast v5, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v5}, Lcab/snapp/passenger/units/payment/a;->getRideReceiptResponse()Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    move-result-object v5

    .line 4327
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v6}, Lcab/snapp/passenger/units/payment/a;->getSelectedPaymentMethod()I

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v6}, Lcab/snapp/passenger/units/payment/a;->getSelectedPaymentMethod()I

    move-result v6

    if-ne v6, v7, :cond_13

    goto :goto_6

    .line 4334
    :cond_13
    invoke-virtual {v5}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getDonation()Lcab/snapp/passenger/data/models/Donation;

    move-result-object v6

    invoke-virtual {v6}, Lcab/snapp/passenger/data/models/Donation;->isPaymentDonated()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 4336
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v6}, Lcab/snapp/passenger/units/payment/PaymentView;->showDonateDoneLayout()V

    .line 4338
    invoke-virtual {v5}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getDonation()Lcab/snapp/passenger/data/models/Donation;

    move-result-object v6

    invoke-virtual {v6}, Lcab/snapp/passenger/data/models/Donation;->getCampaignText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4339
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v7

    check-cast v7, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v7, v6}, Lcab/snapp/passenger/units/payment/PaymentView;->setDonateDoneTitleText(Ljava/lang/String;)V

    .line 4341
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getDonation()Lcab/snapp/passenger/data/models/Donation;

    move-result-object v5

    invoke-virtual {v5}, Lcab/snapp/passenger/data/models/Donation;->getDonationAmount()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v5}, Lcab/snapp/c/j;->formatDouble(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v4

    check-cast v4, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v4}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1201d1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4342
    invoke-static {v4}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4343
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v5

    check-cast v5, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v5, v4}, Lcab/snapp/passenger/units/payment/PaymentView;->setDonateDoneAmountText(Ljava/lang/String;)V

    goto :goto_7

    .line 4347
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v4

    check-cast v4, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v4}, Lcab/snapp/passenger/units/payment/PaymentView;->hideDonateDoneLayout()V

    goto :goto_7

    .line 4329
    :cond_15
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v4

    check-cast v4, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v4}, Lcab/snapp/passenger/units/payment/PaymentView;->hideDonateDoneLayout()V

    .line 642
    :cond_16
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v4

    check-cast v4, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-static {v3}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcab/snapp/passenger/units/payment/PaymentView;->setPayButtonText(Ljava/lang/String;)V

    .line 643
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v1, v3, :cond_17

    const/4 v3, -0x1

    if-ne v1, v3, :cond_18

    .line 644
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v8, :cond_18

    .line 646
    :cond_17
    invoke-direct {v0, v1, v2}, Lcab/snapp/passenger/units/payment/c;->a(IZ)V

    :cond_18
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 470
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/payment/PaymentView;->setAmountNeededForChargeTextView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 507
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v3}, Lcab/snapp/passenger/units/payment/a;->getRidePrice()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcab/snapp/passenger/units/payment/a;->getAmountToChargePlusDonation(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lcab/snapp/c/j;->formatDouble(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/payment/PaymentView;->setPayableCostInCashOrUssdValueText(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$G7mfwi5DpqpqtUQfIo7bdXHDKss(Lcab/snapp/passenger/units/payment/c;Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;IZLcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;Lcab/snapp/passenger/data/models/SnappUssd;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcab/snapp/passenger/units/payment/c;->a(Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;IZLcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;Lcab/snapp/passenger/data/models/SnappUssd;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final decideToShowDecreaseButton()V
    .locals 5

    .line 155
    iget-wide v0, p0, Lcab/snapp/passenger/units/payment/c;->amountToChargeOnline:D

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    sub-double/2addr v0, v2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v2}, Lcab/snapp/passenger/units/payment/a;->getMinAmountOfAcceptableCharge()D

    move-result-wide v2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/PaymentView;->hideDecreaseButton()V

    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/PaymentView;->showDecreaseButton()V

    return-void
.end method

.method public final decreaseAmountOfRequestingChargeClicked()V
    .locals 7

    .line 137
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/c;->b:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "Decrease online charge click"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/c;->b:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_PAYMENT_ONLINE_SECTION_MINUS_SIGN:Ljava/lang/String;

    const-string v3, "[tap]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    iget-wide v0, p0, Lcab/snapp/passenger/units/payment/c;->amountToChargeOnline:D

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    sub-double/2addr v0, v2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v4

    check-cast v4, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v4}, Lcab/snapp/passenger/units/payment/a;->getMinAmountOfAcceptableCharge()D

    move-result-wide v4

    cmpl-double v6, v0, v4

    if-ltz v6, :cond_1

    .line 146
    iget-wide v0, p0, Lcab/snapp/passenger/units/payment/c;->amountToChargeOnline:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcab/snapp/passenger/units/payment/c;->amountToChargeOnline:D

    .line 147
    invoke-direct {p0}, Lcab/snapp/passenger/units/payment/c;->a()V

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->decideToShowDecreaseButton()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final dismissLoadingDialog()V
    .locals 1

    .line 779
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/PaymentView;->dismissLoadingDialog()V

    :cond_0
    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 713
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/c;->c:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 715
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/c;->c:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    :cond_0
    return-void
.end method

.method public final donateSwitched(Z)V
    .locals 5

    .line 456
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/a;->getRideReceiptResponse()Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 457
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/a;->getRideReceiptResponse()Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getDonation()Lcab/snapp/passenger/data/models/Donation;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/payment/a;->setUserWantToDonate(Z)V

    .line 463
    invoke-direct {p0}, Lcab/snapp/passenger/units/payment/c;->a()V

    .line 1438
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 1443
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120215

    .line 1445
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/payment/a;

    iget-wide v3, p0, Lcab/snapp/passenger/units/payment/c;->amountToChargeOnline:D

    invoke-virtual {v2, v3, v4}, Lcab/snapp/passenger/units/payment/a;->getAmountToChargePlusDonation(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lcab/snapp/c/j;->formatDouble(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1447
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-static {p1}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/payment/PaymentView;->setAmountNeededForChargeTextView(Ljava/lang/String;)V

    .line 1449
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1201d1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v2}, Lcab/snapp/passenger/units/payment/a;->getRidePrice()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcab/snapp/passenger/units/payment/a;->getAmountToChargePlusDonation(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcab/snapp/c/j;->formatDouble(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1451
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/payment/PaymentView;->setPayableCostInCashOrUssdValueText(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final getPaymentTypeText(I)I
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const p1, 0x7f12018b

    return p1

    :cond_0
    const p1, 0x7f120034

    return p1

    :cond_1
    const p1, 0x7f120172

    return p1

    :cond_2
    const p1, 0x7f120275

    return p1

    :cond_3
    const p1, 0x7f1202ae

    return p1
.end method

.method public final hideTransferSnappCreditLayout()V
    .locals 1

    .line 786
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/PaymentView;->hideTransferSnappCreditLayout()V

    :cond_0
    return-void
.end method

.method public final increaseAmountOfRequestingChargeClicked()V
    .locals 4

    .line 123
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/c;->b:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "Increase online charge click"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/c;->b:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_PAYMENT_ONLINE_SECTION_PLUS_SIGN:Ljava/lang/String;

    const-string v3, "[tap]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget-wide v0, p0, Lcab/snapp/passenger/units/payment/c;->amountToChargeOnline:D

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcab/snapp/passenger/units/payment/c;->amountToChargeOnline:D

    .line 131
    invoke-direct {p0}, Lcab/snapp/passenger/units/payment/c;->a()V

    .line 132
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->decideToShowDecreaseButton()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onApWalletDescriptionMoreInfoClicked(Ljava/lang/String;)V
    .locals 1

    .line 756
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 760
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/payment/a;->onApWalletDescriptionMoreInfoClicked(Ljava/lang/String;)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/a;->finish()V

    :cond_0
    return-void
.end method

.method public final onBeforeCashPaymentRequest()V
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/PaymentView;->showPayLoading()V

    .line 115
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/PaymentView;->hideIncreaseAndDecreaseLayout()V

    :cond_0
    return-void
.end method

.method public final onBeforePaymentRequest()V
    .locals 1

    .line 653
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/PaymentView;->showLoadingDialog()V

    :cond_0
    return-void
.end method

.method public final onCashPaymentSuccessful()V
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/PaymentView;->hidePayLoading()V

    :cond_0
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, v0, v0}, Lcab/snapp/passenger/units/payment/c;->a(IZ)V

    return-void
.end method

.method public final onInitialize(ILjava/util/List;Lcab/snapp/passenger/data/models/SnappUssd;Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;",
            ">;",
            "Lcab/snapp/passenger/data/models/SnappUssd;",
            "Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 520
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/a;->getRideReceiptResponse()Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 524
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/payment/c;->a:Ljava/lang/String;

    .line 525
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getAppComponent()Lcab/snapp/passenger/e/a/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/a;->inject(Lcab/snapp/passenger/units/payment/c;)V

    .line 526
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0, p2}, Lcab/snapp/passenger/units/payment/PaymentView;->setPaymentTypes(Ljava/util/List;)V

    .line 527
    iput-object p3, p0, Lcab/snapp/passenger/units/payment/c;->e:Lcab/snapp/passenger/data/models/SnappUssd;

    .line 528
    iput-object p4, p0, Lcab/snapp/passenger/units/payment/c;->f:Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;

    .line 530
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/payment/a;->getRideReceiptResponse()Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    move-result-object v2

    .line 531
    invoke-virtual {v2}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getRidePrice()D

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/units/payment/c;->d:D

    .line 533
    iget-wide v0, p0, Lcab/snapp/passenger/units/payment/c;->d:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcab/snapp/passenger/units/payment/c;->setCurrentRideCost(Ljava/lang/Double;)V

    .line 534
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p2, p6, p7}, Lcab/snapp/passenger/units/payment/PaymentView;->setApWalletRegistrationContents(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object p2, p0, Lcab/snapp/passenger/units/payment/c;->c:Lio/reactivex/b/b;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p6

    check-cast p6, Lcab/snapp/passenger/units/payment/a;

    iget-object p6, p6, Lcab/snapp/passenger/units/payment/a;->a:Lio/reactivex/j/a;

    new-instance p7, Lcab/snapp/passenger/units/payment/-$$Lambda$c$G7mfwi5DpqpqtUQfIo7bdXHDKss;

    move-object v0, p7

    move-object v1, p0

    move v3, p1

    move v4, p5

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcab/snapp/passenger/units/payment/-$$Lambda$c$G7mfwi5DpqpqtUQfIo7bdXHDKss;-><init>(Lcab/snapp/passenger/units/payment/c;Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;IZLcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;Lcab/snapp/passenger/data/models/SnappUssd;)V

    invoke-virtual {p6, p7}, Lio/reactivex/j/a;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final onNoInternetConnection()V
    .locals 2

    .line 490
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    new-instance v0, Lcab/snapp/passenger/f/r;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->showNoInternetDialog()V

    :cond_0
    return-void
.end method

.method public final onPayError(I)V
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/payment/PaymentView;->showErrorToast(I)V

    .line 60
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->hidePayLoading()V

    :cond_0
    return-void
.end method

.method public final onPayError(Ljava/lang/String;)V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/payment/PaymentView;->showErrorToast(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->hidePayLoading()V

    :cond_0
    return-void
.end method

.method public final onPaymentError(Ljava/lang/String;)V
    .locals 1

    .line 669
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/PaymentView;->hideLoadingDialog()V

    .line 672
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/payment/PaymentView;->showErrorDialog(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/a;->getSelectedPaymentMethod()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 676
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/PaymentView;->showIncreaseAndDecreaseLayout()V

    :cond_0
    return-void
.end method

.method public final onPaymentSuccessful()V
    .locals 1

    .line 661
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/PaymentView;->hideLoadingDialog()V

    :cond_0
    return-void
.end method

.method public final onTransferCreditSuccessful(Ljava/lang/String;)V
    .locals 1

    .line 772
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 774
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/payment/PaymentView;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final payClicked()V
    .locals 4

    .line 1195
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/c;->b:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "Payment confirm button click"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/a;->getSelectedPaymentMethod()I

    move-result v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/payment/a;->getFallbackPaymentMethod()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 176
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/a;

    iget-object v0, v0, Lcab/snapp/passenger/units/payment/a;->a:Lio/reactivex/j/a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/payment/a;->getFallbackPaymentMethod()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/j/a;->onNext(Ljava/lang/Object;)V

    return-void

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/a;->getFallbackPaymentMethod()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 181
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/a;->getFallbackPaymentMethod()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/a;->pay()V

    return-void

    .line 183
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/a;

    iget-wide v1, p0, Lcab/snapp/passenger/units/payment/c;->amountToChargeOnline:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/payment/a;->pay(Ljava/lang/Double;)V

    return-void
.end method

.method public final paymentTypeSelected(I)V
    .locals 1

    .line 721
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 725
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/a;

    iget-object v0, v0, Lcab/snapp/passenger/units/payment/a;->a:Lio/reactivex/j/a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/j/a;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final setCurrentCredit(Ljava/lang/Double;)V
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcab/snapp/c/j;->formatDouble(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/payment/PaymentView;->setCurrentCreditText(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setCurrentRideCost(Ljava/lang/Double;)V
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcab/snapp/c/j;->formatDouble(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/payment/PaymentView;->setRideCostText(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final showNoInternet()V
    .locals 1

    .line 683
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/PaymentView;->showNoInternetError()V

    :cond_0
    return-void
.end method

.method public final transferSnappCreditToAp()V
    .locals 1

    .line 765
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 767
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/a;->transferSnappCreditToAp()V

    return-void
.end method
