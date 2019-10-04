.class public final Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;
.super Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;
.source "PaymentMethodActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected final dialogManager:Lcom/ebay/common/view/util/DialogManager;

.field private paymentMethodsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

.field private result:Lcom/ebay/mobile/activities/ActivityResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;-><init>()V

    .line 48
    const-class v0, Lcom/ebay/common/view/util/DialogManager;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->getShim(Ljava/lang/Class;)Lcom/ebay/nautilus/shell/app/ActivityShim;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/view/util/DialogManager;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->dialogManager:Lcom/ebay/common/view/util/DialogManager;

    return-void
.end method

.method private renderScreen()V
    .locals 16

    move-object/from16 v0, p0

    .line 210
    iget-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->paymentMethodsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    if-eqz v1, :cond_13

    .line 212
    iget-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->paymentMethodsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;->moduleTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->paymentMethodsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;->errors:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->paymentMethodsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;->errors:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->renderErrors(Ljava/util/List;)V

    :cond_0
    const v1, 0x7f0a0bae

    .line 218
    invoke-virtual {v0, v1}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ebay/android/widget/ContainerLayout;

    .line 219
    invoke-virtual {v1}, Lcom/ebay/android/widget/ContainerLayout;->removeAllViews()V

    .line 221
    iget-object v2, v0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->paymentMethodsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;->getPaymentMethods(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    .line 223
    iget-object v4, v0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0d00d5

    const/4 v6, 0x0

    .line 224
    invoke-virtual {v4, v5, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v5, 0x7f0a0b92

    .line 225
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const v7, 0x7f0a0b91

    .line 226
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    const v8, 0x7f0a0b94

    .line 227
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0a0b90

    .line 229
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/ebay/android/widget/RemoteImageView;

    const v10, 0x7f0a0b97

    .line 230
    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0a0b98

    .line 232
    invoke-virtual {v5, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f0a0b9b

    .line 233
    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f0a0b8d

    .line 234
    invoke-virtual {v5, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 236
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    const v15, 0x7f0d016e

    const/4 v6, 0x0

    invoke-virtual {v14, v15, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 238
    iget-object v15, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v15, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->accessibilityText:Ljava/lang/String;

    if-eqz v15, :cond_1

    iget-object v15, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->accessibilityText:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v15, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v15}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v15, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v15}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->ordinal()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 248
    iget-boolean v15, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->available:Z

    if-eqz v15, :cond_2

    .line 249
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 251
    :cond_2
    invoke-virtual {v0, v3, v4, v14, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->renderDisabledPaymentMethod(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    .line 254
    :goto_2
    iget-object v5, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    const/16 v14, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->url:Ljava/lang/String;

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    .line 256
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 257
    iget-object v7, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    invoke-virtual {v7}, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->getImageData()Lcom/ebay/nautilus/domain/data/image/ImageData;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/ebay/android/widget/RemoteImageView;->setImageData(Lcom/ebay/nautilus/domain/data/image/ImageData;)V

    .line 258
    invoke-virtual {v9, v5}, Lcom/ebay/android/widget/RemoteImageView;->setVisibility(I)V

    .line 261
    iget-object v5, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v7, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne v5, v7, :cond_4

    .line 262
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 265
    :cond_3
    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 267
    :cond_4
    :goto_3
    iget-boolean v5, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->available:Z

    if-eqz v5, :cond_b

    iget-object v5, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

    if-eqz v5, :cond_b

    iget-object v5, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;->promotionSummary:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotionSummary;

    if-eqz v5, :cond_b

    .line 269
    iget-object v5, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;->promotionSummary:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotionSummary;

    .line 270
    iget-object v7, v5, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotionSummary;->message:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz v7, :cond_6

    .line 272
    iget-object v7, v5, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotionSummary;->message:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {v0, v7}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 274
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 276
    :cond_5
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 279
    :cond_6
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    :goto_4
    iget-object v7, v5, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotionSummary;->subMessage:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz v7, :cond_8

    .line 283
    iget-object v7, v5, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotionSummary;->subMessage:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {v0, v7}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 285
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 287
    :cond_7
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 290
    :cond_8
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    :goto_5
    iget-object v7, v5, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotionSummary;->actions:Ljava/util/Map;

    if-eqz v7, :cond_9

    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotionSummary;->actions:Ljava/util/Map;

    sget-object v6, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->SEE_TERMS:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    .line 293
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    :cond_9
    if-eqz v6, :cond_a

    .line 296
    iget-object v5, v6, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0a123e

    .line 297
    invoke-virtual {v12, v5, v6}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    const v5, 0x7f0a123f

    .line 298
    invoke-virtual {v6}, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    const v5, 0x7f0a1240

    .line 299
    iget-object v6, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    invoke-virtual {v12, v5, v6}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 300
    iget-boolean v5, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->available:Z

    if-eqz v5, :cond_c

    .line 301
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 304
    :cond_a
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 308
    :cond_b
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    :cond_c
    :goto_6
    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->errors:Ljava/util/List;

    if-eqz v3, :cond_11

    .line 317
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f040160

    const v7, 0x7f0601ce

    .line 319
    invoke-static {v0, v6, v7}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColor(Landroid/content/Context;II)I

    move-result v6

    .line 321
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    const-string v8, "ERROR"

    .line 323
    iget-object v9, v7, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->severity:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "WARNING"

    iget-object v9, v7, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->severity:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    :cond_d
    const v6, 0x7f040156

    const v8, 0x7f0601d9

    .line 324
    invoke-static {v0, v6, v8}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColor(Landroid/content/Context;II)I

    move-result v6

    .line 326
    :cond_e
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 327
    iget-object v7, v7, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->title:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_f
    const-string v8, "line.separator"

    .line 330
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-object v7, v7, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->title:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 335
    :cond_10
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    const/4 v3, 0x0

    .line 337
    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 342
    :cond_11
    invoke-virtual {v1, v4}, Lcom/ebay/android/widget/ContainerLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 344
    :cond_12
    iget-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->paymentMethodsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->trackRenderedModuleView(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    .line 346
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->sendCheckoutPageImpression(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "PaymentOptions"

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 172
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 173
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-static {p1, p2, p3, v0}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->validateOnActivityResult(IILandroid/content/Intent;Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Lcom/ebay/mobile/activities/ActivityResult;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    .line 174
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, -0x3e7

    packed-switch p1, :pswitch_data_0

    if-eq p2, v0, :cond_3

    .line 196
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-nez p1, :cond_4

    goto :goto_0

    :pswitch_0
    if-eq p2, v0, :cond_1

    .line 183
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-nez p1, :cond_2

    .line 185
    :cond_1
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->setResult(I)V

    .line 186
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->finish()V

    :cond_2
    if-eqz p3, :cond_4

    const-string p1, "fundingInstrumentId"

    .line 190
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 192
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->switchResultToCancelAndFinish(I)V

    goto :goto_1

    .line 180
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->switchResultToCancelAndFinish(I)V

    goto :goto_1

    .line 198
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->setResult(I)V

    .line 199
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->finish()V

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7d5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0b9b

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 134
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlertDialog;

    .line 135
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_3

    .line 71
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    goto :goto_1

    .line 73
    :cond_0
    invoke-static {}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->values()[Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    move-result-object v0

    aget-object p1, v0, p1

    goto :goto_0

    .line 77
    :goto_1
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->SELECT_PAYMENT_INSTRUMENT:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    .line 78
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne v2, v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getPaymentMethodWithContingency()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 81
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    .line 82
    invoke-virtual {v1, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->RESOLVE_PAYMENT_CONTINGENCY:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    goto :goto_2

    .line 85
    :cond_1
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL_CREDIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne v2, v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL_CREDIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getPaymentMethod(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;)Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->startPaypalCreditPromotionActivity(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getPaymentMethod(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;)Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 96
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v1, "dialog_payment_method_type_arg"

    .line 97
    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->ordinal()I

    move-result v3

    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->hasActionConfirmation()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    iget-object p1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->actionConfirmation:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ActionConfirmation;

    const-string v0, "dialog_handle_payment_method_selection"

    invoke-virtual {p0, p1, v5, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->showActionConfirmationDialog(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ActionConfirmation;Landroid/os/Bundle;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->dialogCancelAction:Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    return-void

    .line 104
    :cond_3
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->hasTransferMessage()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAY_UPON_INVOICE:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-eq v1, v2, :cond_4

    .line 107
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->actions:Ljava/util/Map;

    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    iget-object v4, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->transferMessage:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    const-string v6, "dialog_handle_payment_method_selection"

    move-object v0, p0

    .line 108
    invoke-virtual/range {v0 .. v6}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->showTransferMessageWarningDialog(Ljava/util/Map;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;Landroid/os/Bundle;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->dialogCancelAction:Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    return-void

    :cond_4
    :goto_2
    if-eqz v2, :cond_6

    .line 115
    invoke-virtual {p0, v2, p1}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->handlePaymentMethodSelectionWithAction(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)V

    goto :goto_3

    :cond_5
    const v0, 0x7f0a123e

    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    .line 120
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->trackExperienceAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;)V

    const v0, 0x7f0a1240

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0a123f

    .line 123
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 124
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.extra.TITLE"

    .line 125
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "url"

    .line 126
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "use_sso"

    const/4 v0, 0x1

    .line 127
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "back"

    .line 128
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "add_device_id"

    const/4 v0, 0x0

    .line 129
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->startActivity(Landroid/content/Intent;)V

    :cond_6
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0b92
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d00d4

    .line 56
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->initContentView(ILandroid/os/Bundle;)V

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

    .line 146
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V

    .line 148
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 149
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    if-eqz p2, :cond_0

    .line 151
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    iget p2, p2, Lcom/ebay/mobile/activities/ActivityResult;->requestCode:I

    iget-object p3, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    iget p3, p3, Lcom/ebay/mobile/activities/ActivityResult;->resultCode:I

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    iget-object v0, v0, Lcom/ebay/mobile/activities/ActivityResult;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p2, p3, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x0

    .line 152
    iput-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->isTaskRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->stopProgress()V

    return-void

    .line 162
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class p2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->paymentMethodsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    .line 163
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->startSepaActivityIfRequested()V

    .line 164
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->removePaymentMandate()V

    .line 165
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->renderScreen()V

    .line 166
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;->stopProgress()V

    return-void
.end method
