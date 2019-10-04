.class public abstract Lcom/ebay/mobile/checkout/BaseCheckoutActivity;
.super Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;
.source "BaseCheckoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;
    }
.end annotation


# static fields
.field public static final EXTRA_CHECKOUT_ITEM:Ljava/lang/String; = "item"

.field public static final EXTRA_SHOPPING_CART_ID:Ljava/lang/String; = "shopping_cart_id"

.field public static final EXTRA_TRACKING_KEY_VALUES:Ljava/lang/String; = "tracking_key_values"

.field public static final MAX_QUANTITY:I = 0x5


# instance fields
.field protected checkoutCartApi:Lcom/ebay/common/net/api/cart/EbayCartApi;

.field private contentContainer:Landroid/view/View;

.field public creditCard:Lcom/ebay/nautilus/domain/data/CreditCard;

.field public directDebit:Lcom/ebay/nautilus/domain/data/DirectDebit;

.field private progressContainer:Landroid/view/View;

.field public temporaryFundingInstrumentId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;-><init>()V

    return-void
.end method

.method private loadCheckoutState(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "xo_state_temp_funding_instrument"

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->temporaryFundingInstrumentId:Ljava/lang/String;

    const-string/jumbo v0, "xo_state_fis_credit_card"

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/CreditCard;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->creditCard:Lcom/ebay/nautilus/domain/data/CreditCard;

    const-string/jumbo v0, "xo_state_fis_direct_debit"

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/DirectDebit;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->directDebit:Lcom/ebay/nautilus/domain/data/DirectDebit;

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->loadCheckoutState(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private saveCheckoutState(Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "xo_state_temp_funding_instrument"

    .line 107
    iget-object v1, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->temporaryFundingInstrumentId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "xo_state_fis_credit_card"

    .line 108
    iget-object v1, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->creditCard:Lcom/ebay/nautilus/domain/data/CreditCard;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v0, "xo_state_fis_direct_debit"

    .line 109
    iget-object v1, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->directDebit:Lcom/ebay/nautilus/domain/data/DirectDebit;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected apiAddCreditCard(Lcom/ebay/nautilus/domain/data/CreditCard;)V
    .locals 3

    .line 291
    new-instance v0, Lcom/ebay/common/net/api/fis/AddCreditCardNetLoader;

    .line 292
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->checkoutCartApi:Lcom/ebay/common/net/api/cart/EbayCartApi;

    iget-object v2, v2, Lcom/ebay/common/net/api/cart/EbayCartApi;->iafToken:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/ebay/common/net/api/fis/AddCreditCardNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/CreditCard;)V

    .line 293
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->getFwLoaderManager()Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    move-result-object p1

    sget-object v1, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ADD_CREDIT_CARD:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    invoke-virtual {v1}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->start(ILcom/ebay/nautilus/shell/content/FwLoader;Z)V

    return-void
.end method

.method public apiAddDirectDebit(Lcom/ebay/nautilus/domain/data/DirectDebit;)V
    .locals 3

    .line 323
    new-instance v0, Lcom/ebay/common/net/api/fis/AddDirectDebitNetLoader;

    .line 324
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->checkoutCartApi:Lcom/ebay/common/net/api/cart/EbayCartApi;

    iget-object v2, v2, Lcom/ebay/common/net/api/cart/EbayCartApi;->iafToken:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/ebay/common/net/api/fis/AddDirectDebitNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/DirectDebit;)V

    .line 325
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->getFwLoaderManager()Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    move-result-object p1

    sget-object v1, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ADD_DIRECT_DEBIT:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    invoke-virtual {v1}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->start(ILcom/ebay/nautilus/shell/content/FwLoader;Z)V

    return-void
.end method

.method public apiGetFundingInstrument(Ljava/lang/String;)V
    .locals 3

    .line 301
    new-instance v0, Lcom/ebay/common/net/api/fis/GetFundingInstrumentNetLoader;

    .line 302
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->checkoutCartApi:Lcom/ebay/common/net/api/cart/EbayCartApi;

    iget-object v2, v2, Lcom/ebay/common/net/api/cart/EbayCartApi;->iafToken:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/ebay/common/net/api/fis/GetFundingInstrumentNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->getFwLoaderManager()Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    move-result-object p1

    sget-object v1, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->GET_FUNDING_INSTRUMENT:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    invoke-virtual {v1}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->start(ILcom/ebay/nautilus/shell/content/FwLoader;Z)V

    return-void
.end method

.method protected apiUpdateCreditCard(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/CreditCard;)V
    .locals 3

    .line 312
    new-instance v0, Lcom/ebay/common/net/api/fis/UpdateCreditCardNetLoader;

    .line 313
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->checkoutCartApi:Lcom/ebay/common/net/api/cart/EbayCartApi;

    iget-object v2, v2, Lcom/ebay/common/net/api/cart/EbayCartApi;->iafToken:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/ebay/common/net/api/fis/UpdateCreditCardNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/CreditCard;)V

    .line 315
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->getFwLoaderManager()Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    move-result-object p1

    sget-object p2, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->UPDATE_CREDIT_CARD:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    invoke-virtual {p2}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ordinal()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->start(ILcom/ebay/nautilus/shell/content/FwLoader;Z)V

    return-void
.end method

.method public apiUpdateDirectDebit(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/DirectDebit;)V
    .locals 3

    .line 333
    new-instance v0, Lcom/ebay/common/net/api/fis/UpdateDirectDebitNetLoader;

    .line 334
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->checkoutCartApi:Lcom/ebay/common/net/api/cart/EbayCartApi;

    iget-object v2, v2, Lcom/ebay/common/net/api/cart/EbayCartApi;->iafToken:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/ebay/common/net/api/fis/UpdateDirectDebitNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/DirectDebit;)V

    .line 336
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->getFwLoaderManager()Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    move-result-object p1

    sget-object p2, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->UPDATE_DIRECT_DEBIT:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    invoke-virtual {p2}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ordinal()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->start(ILcom/ebay/nautilus/shell/content/FwLoader;Z)V

    return-void
.end method

.method protected initializeProgressViews()V
    .locals 1

    const v0, 0x7f0a0cb4

    .line 82
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->progressContainer:Landroid/view/View;

    const v0, 0x7f0a14a0

    .line 83
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->contentContainer:Landroid/view/View;

    return-void
.end method

.method protected loadCheckoutState(Landroid/content/Intent;)V
    .locals 1

    const-string/jumbo v0, "xo_state_temp_funding_instrument"

    .line 136
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "xo_state_temp_funding_instrument"

    .line 137
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->temporaryFundingInstrumentId:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "xo_state_fis_credit_card"

    .line 138
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "xo_state_fis_credit_card"

    .line 139
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/CreditCard;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->creditCard:Lcom/ebay/nautilus/domain/data/CreditCard;

    :cond_1
    const-string/jumbo v0, "xo_state_fis_direct_debit"

    .line 140
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "xo_state_fis_direct_debit"

    .line 141
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/DirectDebit;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->directDebit:Lcom/ebay/nautilus/domain/data/DirectDebit;

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 161
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentUser()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->finish()V

    return-void

    .line 170
    :cond_0
    invoke-static {p0, v0}, Lcom/ebay/mobile/util/EbayApiUtil;->getCartApi(Landroid/content/Context;Lcom/ebay/nautilus/domain/app/Authentication;)Lcom/ebay/common/net/api/cart/EbayCartApi;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->checkoutCartApi:Lcom/ebay/common/net/api/cart/EbayCartApi;

    const/4 v0, 0x1

    .line 172
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->toggleProgressView(Z)V

    .line 173
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->loadCheckoutState(Landroid/os/Bundle;)V

    return-void
.end method

.method public abstract onError(Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;ZLjava/io/IOException;)V
.end method

.method public abstract onPartialFailure(Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;Lcom/ebay/common/model/cart/JsonModel;)V
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 94
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "xo_state_temp_funding_instrument"

    .line 95
    iget-object v1, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->temporaryFundingInstrumentId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "xo_state_fis_credit_card"

    .line 96
    iget-object v1, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->creditCard:Lcom/ebay/nautilus/domain/data/CreditCard;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v0, "xo_state_fis_direct_debit"

    .line 97
    iget-object v1, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->directDebit:Lcom/ebay/nautilus/domain/data/DirectDebit;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public abstract onSuccess(Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;)V
.end method

.method protected onTaskComplete(ILcom/ebay/nautilus/shell/content/FwLoader;)V
    .locals 2

    .line 226
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 229
    :cond_0
    invoke-static {}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->values()[Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    move-result-object v0

    aget-object p1, v0, p1

    .line 236
    move-object v0, p2

    check-cast v0, Lcom/ebay/common/content/EbaySimpleNetLoader;

    .line 237
    invoke-virtual {v0}, Lcom/ebay/common/content/EbaySimpleNetLoader;->isError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    invoke-virtual {v0}, Lcom/ebay/common/content/EbaySimpleNetLoader;->isConnectionError()Z

    move-result p2

    invoke-virtual {v0}, Lcom/ebay/common/content/EbaySimpleNetLoader;->getException()Ljava/io/IOException;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->onError(Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;ZLjava/io/IOException;)V

    return-void

    .line 243
    :cond_1
    sget-object v0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$1;->$SwitchMap$com$ebay$mobile$checkout$BaseCheckoutActivity$Operation:[I

    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 251
    :pswitch_0
    check-cast p2, Lcom/ebay/common/net/api/fis/FundingInstrumentServiceNetLoader;

    .line 252
    invoke-virtual {p2}, Lcom/ebay/common/net/api/fis/FundingInstrumentServiceNetLoader;->getResponse()Lcom/ebay/nautilus/domain/net/EbayResponse;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/net/fis/FundingInstrumentServiceResponse;

    .line 254
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/net/fis/FundingInstrumentServiceResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasWarning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 257
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/net/fis/FundingInstrumentServiceResponse;->getResponseData()Lcom/ebay/nautilus/domain/net/fis/FundingInstrumentServiceResponse$FundingResponseData;

    move-result-object p2

    .line 258
    iget-object v0, p2, Lcom/ebay/nautilus/domain/net/fis/FundingInstrumentServiceResponse$FundingResponseData;->instrumentId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->temporaryFundingInstrumentId:Ljava/lang/String;

    .line 259
    iget-object v0, p2, Lcom/ebay/nautilus/domain/net/fis/FundingInstrumentServiceResponse$FundingResponseData;->creditCard:Lcom/ebay/nautilus/domain/data/CreditCard;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->creditCard:Lcom/ebay/nautilus/domain/data/CreditCard;

    .line 260
    iget-object p2, p2, Lcom/ebay/nautilus/domain/net/fis/FundingInstrumentServiceResponse$FundingResponseData;->bankAccount:Lcom/ebay/nautilus/domain/data/DirectDebit;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->directDebit:Lcom/ebay/nautilus/domain/data/DirectDebit;

    .line 261
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->onSuccess(Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;)V

    goto :goto_0

    .line 267
    :cond_2
    new-instance p2, Lcom/ebay/common/model/cart/ResultStatusJsonModel;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-direct {p2, v1, v0}, Lcom/ebay/common/model/cart/ResultStatusJsonModel;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    invoke-virtual {p0, p1, p2}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->onPartialFailure(Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;Lcom/ebay/common/model/cart/JsonModel;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onTaskStarted(ILcom/ebay/nautilus/shell/content/FwLoader;)V
    .locals 0

    .line 196
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 199
    :cond_0
    invoke-static {}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->values()[Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    move-result-object p2

    aget-object p1, p2, p1

    .line 201
    sget-object p2, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$1;->$SwitchMap$com$ebay$mobile$checkout$BaseCheckoutActivity$Operation:[I

    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x1

    .line 208
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->toggleProgressView(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final setCheckoutResult(ILandroid/content/Intent;)V
    .locals 0

    if-nez p2, :cond_0

    .line 182
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 183
    :cond_0
    invoke-direct {p0, p2}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->saveCheckoutState(Landroid/content/Intent;)V

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    if-ltz p2, :cond_0

    .line 154
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->saveCheckoutState(Landroid/content/Intent;)V

    .line 155
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected toggleProgressView(Z)V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->progressContainer:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->progressContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->contentContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->contentContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v1, 0x4

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method
