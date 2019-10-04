.class public Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;
.super Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;
.source "PaymentContingencyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private changePaymentMethodAction:Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

.field private contingencyPi:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

.field private contingencyPm:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

.field private riskChallengeToken:Ljava/lang/String;

.field private validateContentAction:Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;-><init>()V

    return-void
.end method

.method private handleChangePaymentMethod()V
    .locals 4

    .line 266
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    invoke-static {}, Lcom/ebay/nautilus/domain/datamapping/DataMapperFactory;->getCheckoutExperienceIntentMapper()Lcom/ebay/nautilus/kernel/datamapping/IntentMapper;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    .line 268
    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v2

    .line 267
    invoke-interface {v1, v0, v2}, Lcom/ebay/nautilus/kernel/datamapping/IntentMapper;->writeIntentJson(Landroid/content/Intent;Ljava/lang/Object;)V

    const-string/jumbo v1, "xoParams"

    .line 269
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 270
    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private handleConfirm()V
    .locals 9

    const v0, 0x7f0a13bb

    .line 244
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 245
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->contingencyPi:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->paymentInstrumentId:Ljava/lang/String;

    .line 246
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 249
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x1020002

    .line 252
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ebay/mobile/util/Util;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 253
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->startProgress()V

    .line 255
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->contingencyPm:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->CC:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    iget-object v4, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->riskChallengeToken:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v7, 0x0

    move-object v5, v6

    move-object v6, v0

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->validatePaymentInstrument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto :goto_0

    .line 260
    :cond_1
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    iget-object v4, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->riskChallengeToken:Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->DIRECT_DEBIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    .line 261
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->name()Ljava/lang/String;

    move-result-object v7

    move-object v8, p0

    .line 260
    invoke-virtual/range {v2 .. v8}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->validatePaymentInstrument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    :goto_0
    return-void
.end method

.method private renderScreen()V
    .locals 6

    .line 148
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getPaymentMethodWithContingency()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->contingencyPm:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    .line 149
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->contingencyPm:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->finish()V

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->contingencyPm:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getPaymentInstrumentWithContingency()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->contingencyPi:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    .line 155
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->contingencyPi:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    if-nez v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->finish()V

    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->contingencyPi:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getSelectedFundingSource()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;

    move-result-object v0

    if-nez v0, :cond_2

    .line 163
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->finish()V

    return-void

    .line 166
    :cond_2
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->contingencyPi:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getContingencyModuleText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->riskChallengeToken:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 171
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->contingencyPi:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getRiskChallengeToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->riskChallengeToken:Ljava/lang/String;

    .line 176
    :cond_3
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->contingencyPi:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getContingencyError()Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 177
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->name:Ljava/lang/String;

    const-string v3, "HIGH_RISK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 179
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->finish()V

    return-void

    .line 182
    :cond_4
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->renderError(Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;)V

    const v1, 0x7f0a06d4

    .line 185
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a06d6

    .line 186
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 187
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->getSubType()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;

    move-result-object v3

    invoke-static {v1, v3, p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->setCreditCardDrawableFromSubtype(Landroid/widget/ImageView;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-eqz v3, :cond_5

    const/4 v1, 0x0

    .line 188
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->getLabelText(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 191
    :cond_5
    invoke-virtual {v0, v4}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->getLabelText(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0a03a8

    .line 196
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 197
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->validateContentAction:Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    if-eqz v1, :cond_6

    .line 199
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->validateContentAction:Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 200
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 203
    :cond_6
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    const v1, 0x7f0a03a7

    .line 206
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 207
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->changePaymentMethodAction:Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    if-eqz v2, :cond_7

    .line 209
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->changePaymentMethodAction:Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 213
    :cond_7
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    const v1, 0x7f0a13bb

    .line 218
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 219
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->contingencyPi:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getCardPlaceHolderText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 220
    new-instance v2, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity$1;-><init>(Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 238
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 239
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_8
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 74
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, -0x3e7

    if-ne p2, p3, :cond_0

    .line 78
    invoke-virtual {p0, p3}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->setResult(I)V

    .line 79
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->finish()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 98
    :pswitch_0
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->handleConfirm()V

    goto :goto_0

    .line 101
    :pswitch_1
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->handleChangePaymentMethod()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a03a7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d00cf

    .line 56
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->initContentView(ILandroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "riskChallengeToken"

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->riskChallengeToken:Ljava/lang/String;

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->startProgress()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 67
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "riskChallengeToken"

    .line 68
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->riskChallengeToken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;",
            ">;Z)V"
        }
    .end annotation

    .line 111
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V

    .line 112
    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->checkSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 116
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->stopProgress()V

    return-void

    .line 122
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getPaymentMethodWithContingency()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 126
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->setResult(I)V

    .line 127
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->stopProgress()V

    .line 128
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->finish()V

    return-void

    .line 132
    :cond_2
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getPaymentInstrumentWithContingency()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    move-result-object p2

    .line 133
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getContingencyActions()Ljava/util/Map;

    move-result-object p2

    .line 134
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object p3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->DIRECT_DEBIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {p1, p3}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 135
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->VALIDATE_BANK_ACCOUNT:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->validateContentAction:Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    goto :goto_0

    .line 137
    :cond_3
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->VALIDATE_CARD:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->validateContentAction:Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    .line 139
    :goto_0
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->CHANGE_PAYMENT_METHOD:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->changePaymentMethodAction:Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    .line 140
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->renderScreen()V

    .line 141
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->stopProgress()V

    return-void
.end method
