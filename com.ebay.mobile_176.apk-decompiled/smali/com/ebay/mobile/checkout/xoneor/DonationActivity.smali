.class public Lcom/ebay/mobile/checkout/xoneor/DonationActivity;
.super Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;
.source "DonationActivity.java"


# static fields
.field public static final EXTRA_DONATION_AMOUNT:Ljava/lang/String; = "donation_amount"

.field public static final EXTRA_DONATION_AMOUNT_CURRENCY:Ljava/lang/String; = "donation_amount_currency"


# instance fields
.field charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

.field radioButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    .line 136
    new-instance v0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity$1;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity$1;-><init>(Lcom/ebay/mobile/checkout/xoneor/DonationActivity;)V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->radioButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "MakeADonation"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d00bf

    .line 36
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->initContentView(ILandroid/os/Bundle;)V

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

    .line 42
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->checkSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->stopProgress()V

    return-void

    .line 50
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 51
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->stopProgress()V

    return-void

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class p2, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    .line 58
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    if-nez p1, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->finish()V

    return-void

    .line 64
    :cond_2
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->secondaryTitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->renderScreen()V

    .line 66
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->stopProgress()V

    return-void
.end method

.method protected renderScreen()V
    .locals 8

    .line 78
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSelectedPaymentMethod()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object v0

    const v1, 0x7f0a0585

    const/16 v2, 0x8

    const v3, 0x7f0a0586

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 79
    iget-object v5, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v6, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-eq v5, v6, :cond_0

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v5, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL_CREDIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne v0, v5, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->amounts:Ljava/util/List;

    if-nez v0, :cond_3

    .line 83
    :cond_1
    invoke-virtual {p0, v3}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->disabledNote:Lcom/ebay/nautilus/domain/data/experience/checkout/common/ModuleNote;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->disabledNote:Lcom/ebay/nautilus/domain/data/experience/checkout/common/ModuleNote;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/common/ModuleNote;->text:Ljava/lang/String;

    const v3, 0x7f0a0bb4

    .line 87
    invoke-virtual {p0, v3}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_2
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 94
    :cond_3
    invoke-virtual {p0, v3}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0390

    .line 97
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a037a

    .line 98
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0381

    .line 99
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->charitySubTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a057c

    .line 100
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->amountSubTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0eb7

    .line 101
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->moreOptionsText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a057d

    .line 104
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 105
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->removeAllViews()V

    const/4 v1, 0x0

    .line 107
    :goto_0
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->amounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 109
    new-instance v2, Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;)V

    .line 110
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->amounts:Ljava/util/List;

    .line 111
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityAmount;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityAmount;->displayValue:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;->textSpans:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;

    invoke-static {p0, v3}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 113
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701de

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 114
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0701e0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 113
    invoke-virtual {v2, v5, v4, v6, v4}, Landroidx/appcompat/widget/AppCompatRadioButton;->setPadding(IIII)V

    .line 115
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/AppCompatRadioButton;->setId(I)V

    .line 116
    iget-object v5, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->radioButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/AppCompatRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatRadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    iget-object v6, v6, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->amountSubTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatRadioButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->amounts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityAmount;

    iget-boolean v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityAmount;->selected:Z

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 120
    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/AppCompatRadioButton;->setChecked(Z)V

    .line 122
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 124
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->amounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_5

    .line 126
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d00c0

    const/4 v5, 0x0

    .line 127
    invoke-virtual {v2, v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 128
    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 132
    :cond_6
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->trackRenderedModuleView(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    .line 133
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->sendCheckoutPageImpression(Ljava/lang/String;)V

    return-void
.end method

.method public seeMore(Landroid/view/View;)V
    .locals 2

    .line 163
    new-instance p1, Lcom/ebay/nautilus/domain/data/Nonprofit;

    invoke-direct {p1}, Lcom/ebay/nautilus/domain/data/Nonprofit;-><init>()V

    .line 164
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->charityId:Ljava/lang/String;

    iput-object v0, p1, Lcom/ebay/nautilus/domain/data/Nonprofit;->externalId:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->name:Ljava/lang/String;

    iput-object v0, p1, Lcom/ebay/nautilus/domain/data/Nonprofit;->name:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->info:Ljava/lang/String;

    iput-object v0, p1, Lcom/ebay/nautilus/domain/data/Nonprofit;->mission:Ljava/lang/String;

    .line 167
    const-class v0, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->createCheckoutIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "charity_nonprofit"

    .line 168
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "charity_selection_enabled"

    const/4 v1, 0x0

    .line 169
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p1, "toolbar_title"

    .line 170
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->charityDetailsTitle:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method selectedAmountChanged(D)Z
    .locals 5

    .line 177
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    .line 178
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->amounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityAmount;

    .line 180
    iget-boolean v4, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityAmount;->selected:Z

    if-eqz v4, :cond_1

    .line 181
    iget-object v2, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityAmount;->displayValue:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;->value:Ljava/lang/Object;

    check-cast v2, Lcom/ebay/nautilus/domain/data/cos/base/Amount;

    iget-wide v2, v2, Lcom/ebay/nautilus/domain/data/cos/base/Amount;->value:D

    cmpl-double v2, v2, p1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method
