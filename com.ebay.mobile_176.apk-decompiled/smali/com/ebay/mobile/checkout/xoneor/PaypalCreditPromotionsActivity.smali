.class public Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;
.super Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;
.source "PaypalCreditPromotionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXTRA_PROMOTION_ID:Ljava/lang/String; = "extraPromotionId"


# instance fields
.field private ppcPaymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

.field private result:Lcom/ebay/mobile/activities/ActivityResult;

.field private selectedFinancingCode:Ljava/lang/String;

.field private selectedPromotionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;-><init>()V

    return-void
.end method

.method private renderScreen()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->ppcPaymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;->nonInstallmentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotion;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->renderNonInstallmentsPromotion(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotion;)V

    .line 161
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->ppcPaymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;->installmentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotion;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->renderInstallmentsPromotion(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotion;)V

    .line 163
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->ppcPaymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;->disclosureMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const v0, 0x7f0a0cd5

    .line 165
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0cd6

    .line 166
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 167
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->ppcPaymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;->disclosureMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 286
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 288
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-static {p1, p2, p3, v0}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->validateOnActivityResult(IILandroid/content/Intent;Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Lcom/ebay/mobile/activities/ActivityResult;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    .line 289
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x7d1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    if-nez p3, :cond_3

    :cond_2
    const/4 p1, 0x6

    if-ne p2, p1, :cond_5

    :cond_3
    if-nez p3, :cond_4

    .line 299
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    :cond_4
    const-string p1, "extraPromotionId"

    .line 300
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->selectedPromotionId:Ljava/lang/String;

    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    :goto_0
    const/16 p1, -0x3e7

    if-eq p2, p1, :cond_6

    .line 304
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-nez p2, :cond_7

    .line 306
    :cond_6
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->setResult(I)V

    .line 307
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->finish()V

    :cond_7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0857

    if-eq v0, v1, :cond_4

    const v1, 0x7f0a0a87

    if-eq v0, v1, :cond_4

    const v1, 0x7f0a0bb3

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const v0, 0x7f0a1248

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->selectedPromotionId:Ljava/lang/String;

    const v0, 0x7f0a1242

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->selectedFinancingCode:Ljava/lang/String;

    .line 110
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->selectedPromotionId:Ljava/lang/String;

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 114
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-eqz v0, :cond_2

    .line 115
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL_CREDIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getPaymentMethod(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;)Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_5

    const-string v0, "SAC_OFFER"

    .line 119
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->selectedPromotionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 120
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;->installmentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotion;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;->installmentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotion;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotion;->actionConfirmation:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ActionConfirmation;

    if-eqz v0, :cond_3

    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "dialog_selected_promotion_id_arg"

    .line 125
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->selectedPromotionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dialog_selected_financing_code_arg"

    .line 126
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->selectedFinancingCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;->installmentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotion;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotion;->actionConfirmation:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ActionConfirmation;

    const-string v1, "dialog_paypal_credit_promotion"

    invoke-virtual {p0, p1, v0, v1}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->showActionConfirmationDialog(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ActionConfirmation;Landroid/os/Bundle;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->dialogCancelAction:Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    return-void

    .line 132
    :cond_3
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->selectedFinancingCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->selectedPromotionId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->processPpcPromotionSelection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const v0, 0x7f0a123e

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    .line 140
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->trackExperienceAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;)V

    const v0, 0x7f0a1240

    .line 142
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0a123f

    .line 143
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 144
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.extra.TITLE"

    .line 145
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "url"

    .line 146
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "use_sso"

    const/4 v0, 0x1

    .line 147
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "back"

    .line 148
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "add_device_id"

    const/4 v0, 0x0

    .line 149
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->startActivity(Landroid/content/Intent;)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d00d6

    .line 46
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->initContentView(ILandroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "selectedPromotionId"

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->selectedPromotionId:Ljava/lang/String;

    const-string/jumbo v0, "selectedFinancingCode"

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->selectedFinancingCode:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 94
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "selectedPromotionId"

    .line 95
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->selectedPromotionId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "selectedFinancingCode"

    .line 96
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->selectedFinancingCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dialogCancelAction"

    .line 97
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->dialogCancelAction:Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;",
            ">;Z)V"
        }
    .end annotation

    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V

    .line 60
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 62
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    if-eqz p2, :cond_0

    .line 64
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    iget p2, p2, Lcom/ebay/mobile/activities/ActivityResult;->requestCode:I

    iget-object p3, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    iget p3, p3, Lcom/ebay/mobile/activities/ActivityResult;->resultCode:I

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    iget-object v0, v0, Lcom/ebay/mobile/activities/ActivityResult;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p2, p3, v0}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x0

    .line 65
    iput-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->isTaskRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->stopProgress()V

    return-void

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    sget-object p2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL_CREDIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getPaymentMethod(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;)Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 79
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

    if-eqz p1, :cond_2

    .line 82
    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->ppcPaymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

    .line 83
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->ppcPaymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;->title:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->renderScreen()V

    .line 86
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->stopProgress()V

    :cond_2
    return-void
.end method

.method public renderInstallmentsPromotion(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotion;)V
    .locals 5

    if-eqz p1, :cond_2

    const v0, 0x7f0a0853

    .line 204
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0856

    .line 205
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0a0857

    .line 206
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 208
    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotion;->title:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {p0, v3}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotion;->actions:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotion;->actions:Ljava/util/Map;

    sget-object v4, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->SEE_TERMS:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    .line 210
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 212
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v3, :cond_1

    .line 214
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->ppcPaymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a123e

    .line 217
    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    const v0, 0x7f0a123f

    .line 218
    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    const v0, 0x7f0a1240

    .line 219
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->ppcPaymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;->title:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 220
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const v0, 0x7f0a0855

    .line 223
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 224
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotion;->promotions:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->renderPromotions(Landroid/view/ViewGroup;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public renderNonInstallmentsPromotion(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotion;)V
    .locals 5

    if-eqz p1, :cond_2

    const v0, 0x7f0a0a83

    .line 176
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0a86

    .line 177
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0a0a87

    .line 178
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 180
    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotion;->title:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {p0, v3}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotion;->actions:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotion;->actions:Ljava/util/Map;

    sget-object v4, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->SEE_TERMS:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    .line 182
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 184
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v3, :cond_1

    .line 186
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->ppcPaymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a123e

    .line 189
    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    const v0, 0x7f0a123f

    .line 190
    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    const v0, 0x7f0a1240

    .line 191
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->ppcPaymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;->title:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 192
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const v0, 0x7f0a0a85

    .line 195
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 196
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotion;->promotions:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->renderPromotions(Landroid/view/ViewGroup;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public renderPromotions(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaypalCreditPromotion;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    .line 233
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p2, :cond_4

    .line 235
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaypalCreditPromotion;

    .line 237
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d00d7

    .line 238
    invoke-virtual {v3, v4, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f0a0c51

    .line 240
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v5, 0x7f0a0c52

    .line 242
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    const v6, 0x7f0a0c4f

    .line 243
    invoke-virtual {p0, v6}, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    const v7, 0x7f0a0c50

    .line 244
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0a0c4c

    .line 245
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0a0c53

    .line 246
    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0a0c4e

    .line 249
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    :cond_0
    iget-boolean v0, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaypalCreditPromotion;->applied:Z

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 254
    iget-object v0, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaypalCreditPromotion;->message:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    const/16 v5, 0x8

    if-eqz v0, :cond_3

    .line 256
    iget-object v0, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaypalCreditPromotion;->message:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {p0, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a1248

    .line 257
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaypalCreditPromotion;->promotionId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    const v0, 0x7f0a1242

    .line 258
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaypalCreditPromotion;->financingCode:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 259
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v0, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaypalCreditPromotion;->amountMessage:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaypalCreditPromotion;->amountMessage:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {p0, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 271
    :cond_1
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    :goto_1
    iget-object v0, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaypalCreditPromotion;->subMessage:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaypalCreditPromotion;->subMessage:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {p0, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 276
    :cond_2
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 263
    :cond_3
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 264
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_4
    return-void
.end method
