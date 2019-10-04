.class public Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;
.super Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;
.source "PudoSelectLogisticsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private lineItemId:Ljava/lang/String;

.field private logisticsType:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

.field private selectedShippingServiceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;-><init>()V

    return-void
.end method

.method private launchStorePickerWidget()V
    .locals 2

    .line 166
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 167
    const-class v1, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 168
    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private populateShippingMethod(Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 247
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x7f0d00e2

    .line 248
    invoke-virtual {v0, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    const v0, 0x7f0a0eb2

    .line 250
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a1084

    .line 253
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ebay/android/widget/RemoteImageView;

    .line 254
    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    if-eqz v3, :cond_0

    .line 256
    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->getImageData()Lcom/ebay/nautilus/domain/data/image/ImageData;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ebay/android/widget/RemoteImageView;->setImageData(Lcom/ebay/nautilus/domain/data/image/ImageData;)V

    .line 257
    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ebay/android/widget/RemoteImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 258
    invoke-virtual {v0, v1}, Lcom/ebay/android/widget/RemoteImageView;->setVisibility(I)V

    .line 261
    :cond_0
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->deliveryEstimate:Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const v3, 0x7f0a051c

    .line 263
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 264
    invoke-static {p0, v0, v1}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->getLocalizedDeliveryEstimate(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;Z)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;->accessibilityText:Ljava/lang/String;

    .line 263
    invoke-static {v3, v4, v0, v2}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    :cond_1
    const v0, 0x7f0a051d

    .line 268
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 269
    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->text:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->loyaltyServiceType:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/LoyaltyServiceType;

    sget-object v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/LoyaltyServiceType;->EBAY_PLUS:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/LoyaltyServiceType;

    if-eq v3, v4, :cond_2

    .line 270
    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->text:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 272
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0a051b

    .line 275
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 276
    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->amount:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    if-eqz v3, :cond_3

    .line 277
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->amount:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;->textSpans:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;

    invoke-static {p0, v2}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 279
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    :goto_1
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->pickupAndDropOffDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupAndDropOffDetails;

    if-eqz v0, :cond_4

    .line 284
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupAndDropOffDetails;->shippingServiceId:Ljava/lang/String;

    .line 285
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 286
    iget-boolean p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->selected:Z

    if-eqz p1, :cond_4

    const p1, 0x7f0a1093

    .line 288
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 289
    iput-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->selectedShippingServiceId:Ljava/lang/String;

    .line 292
    :cond_4
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method private renderScreen()V
    .locals 6

    const v0, 0x7f0a0985

    .line 191
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 192
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 195
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->lineItemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getLineItem(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 196
    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->PICKUP_AND_DROPOFF:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    iget-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->logisticsType:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    if-eq v2, v3, :cond_0

    goto/16 :goto_2

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->logisticsType:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->getLogisticsType(Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;)Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 202
    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d00c9

    const/4 v4, 0x0

    .line 203
    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f0a0987

    .line 204
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 207
    iget-object v4, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->pickupDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupServiceDetails;

    if-eqz v4, :cond_2

    .line 210
    iget-object v5, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupServiceDetails;->storeAddress:Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;

    if-eqz v5, :cond_1

    const v5, 0x7f0a0983

    .line 212
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 213
    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupServiceDetails;->storeAddress:Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->addressLines:Ljava/util/List;

    invoke-static {v4}, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->getSpannableFromStringArray(Ljava/util/List;)Landroid/text/Spannable;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_1
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    const/16 v4, 0x8

    .line 218
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v3, 0x7f0a1085

    .line 221
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 222
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 224
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->getSelectableLogisticsPlans()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 226
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 227
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;

    .line 229
    invoke-direct {p0, v4, v3}, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->populateShippingMethod(Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 231
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 234
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_5
    return-void

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 174
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->startProgress()V

    .line 182
    invoke-virtual {p0, p1, p3}, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->setResult(ILandroid/content/Intent;)V

    .line 183
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 107
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->lineItemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getLineItem(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 110
    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->logisticsType:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->getLogisticsType(Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;)Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_6

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0a0987

    if-eq v2, v3, :cond_5

    const v3, 0x7f0a1081

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 118
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 120
    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->getLogisticsPlanByShippingServiceId(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;

    move-result-object v2

    .line 122
    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->PICKUP_AND_DROPOFF:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    iget-object v4, p0, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->logisticsType:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    if-ne v3, v4, :cond_6

    .line 124
    iget-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->selectedShippingServiceId:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 126
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->setResult(I)V

    .line 127
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->finish()V

    return-void

    .line 133
    :cond_2
    iget-object p1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->pickupDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupServiceDetails;

    if-eqz p1, :cond_3

    .line 135
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupServiceDetails;->personalAccountNumber:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    if-eqz v2, :cond_4

    .line 138
    iget-object v1, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->pickupAndDropOffDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupAndDropOffDetails;

    :cond_4
    if-eqz v1, :cond_6

    .line 140
    iget-object v0, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupAndDropOffDetails;->selectedPickupProgramId:Ljava/lang/String;

    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 144
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupAndDropOffDetails;->locationId:Ljava/lang/String;

    iget-object v4, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupAndDropOffDetails;->selectedPickupProgramId:Ljava/lang/String;

    invoke-static {v0, v3, v1, p1, v4}, Lcom/ebay/mobile/util/PickupUtil;->getPudoResultIntentWithShippingServiceId(Landroid/content/Intent;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupAndDropOffDetails;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "logisticsId"

    .line 148
    iget-object v1, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->logisticsId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 149
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->setResult(ILandroid/content/Intent;)V

    .line 150
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->finish()V

    goto :goto_2

    .line 156
    :cond_5
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->launchStorePickerWidget()V

    :cond_6
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d00d8

    .line 53
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->initContentView(ILandroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lineItemId"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->lineItemId:Ljava/lang/String;

    const-string v1, "logisticsType"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->logisticsType:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    const v0, 0x7f121101

    .line 59
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->setTitle(I)V

    if-eqz p1, :cond_0

    const-string v0, "SELECTED_SHIPPING_SERVICE_ID"

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->selectedShippingServiceId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 67
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "SELECTED_SHIPPING_SERVICE_ID"

    .line 68
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->selectedShippingServiceId:Ljava/lang/String;

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

    .line 75
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V

    .line 77
    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->checkSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 82
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->stopProgress()V

    return-void

    .line 87
    :cond_1
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->renderScreen()V

    return-void
.end method

.method protected showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 93
    iget-object p3, p0, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;->dialogManager:Lcom/ebay/common/view/util/DialogManager;

    new-instance v0, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity$1;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity$1;-><init>(Lcom/ebay/mobile/checkout/storepicker/PudoSelectLogisticsActivity;)V

    const/4 v1, 0x0

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/ebay/common/view/util/DialogManager;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
