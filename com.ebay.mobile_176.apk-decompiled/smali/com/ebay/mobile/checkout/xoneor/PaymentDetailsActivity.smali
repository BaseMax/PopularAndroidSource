.class public final Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;
.super Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;
.source "PaymentDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected final dialogManager:Lcom/ebay/common/view/util/DialogManager;

.field private paymentMethodsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

.field private result:Lcom/ebay/mobile/activities/ActivityResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;-><init>()V

    .line 68
    const-class v0, Lcom/ebay/common/view/util/DialogManager;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->getShim(Ljava/lang/Class;)Lcom/ebay/nautilus/shell/app/ActivityShim;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/view/util/DialogManager;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->dialogManager:Lcom/ebay/common/view/util/DialogManager;

    return-void
.end method

.method private backPressedLogic()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1023
    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->setResult(ILandroid/content/Intent;)V

    .line 1024
    invoke-super {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onBackPressed()V

    return-void
.end method

.method private hideOptionsOverlay()V
    .locals 2

    const v0, 0x7f0a0ba8

    .line 1012
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a14a0

    .line 1013
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method private renderOtherAvailablePaymentMethods(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    const v0, 0x7f0a0ba0

    .line 765
    invoke-virtual {v7, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/ebay/android/widget/ContainerLayout;

    .line 766
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v9, 0x8

    if-nez v0, :cond_0

    .line 767
    invoke-virtual {v8, v9}, Lcom/ebay/android/widget/ContainerLayout;->setVisibility(I)V

    .line 768
    :cond_0
    invoke-virtual {v8}, Lcom/ebay/android/widget/ContainerLayout;->removeAllViews()V

    .line 770
    iget-object v0, v7, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSelectedPaymentMethod()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object v10

    .line 771
    iget-object v0, v7, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->paymentMethodsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;->getPaymentMethods(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    .line 773
    iget-object v0, v7, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d00d5

    .line 774
    invoke-virtual {v0, v1, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0b92

    .line 775
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/view/ViewGroup;

    const v1, 0x7f0a0b94

    .line 776
    invoke-virtual {v13, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0b91

    .line 777
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f0a0b90

    .line 779
    invoke-virtual {v13, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/ebay/android/widget/RemoteImageView;

    const v5, 0x7f0a0b97

    .line 780
    invoke-virtual {v13, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a0b98

    .line 782
    invoke-virtual {v13, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v14, 0x7f0a0b9b

    .line 783
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 784
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    const v11, 0x7f0d016e

    const/4 v9, 0x0

    invoke-virtual {v15, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 786
    iget-object v15, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 787
    iget-object v15, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    invoke-virtual {v13, v15}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    const v15, 0x7f0a1247

    .line 788
    invoke-virtual {v13, v15, v4}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 789
    iget-object v15, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v15}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->ordinal()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 797
    iget-boolean v15, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->available:Z

    if-eqz v15, :cond_1

    .line 799
    invoke-virtual {v13, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v15, 0x8

    .line 800
    invoke-virtual {v11, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 803
    :cond_1
    invoke-virtual {v7, v4, v0, v11, v7}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->renderDisabledPaymentMethod(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    .line 806
    :goto_1
    iget-object v11, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    if-eqz v11, :cond_2

    iget-object v11, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    iget-object v11, v11, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->url:Ljava/lang/String;

    if-eqz v11, :cond_2

    const/4 v11, 0x0

    .line 808
    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 809
    iget-object v15, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    invoke-virtual {v15}, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->getImageData()Lcom/ebay/nautilus/domain/data/image/ImageData;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/ebay/android/widget/RemoteImageView;->setImageData(Lcom/ebay/nautilus/domain/data/image/ImageData;)V

    .line 810
    invoke-virtual {v3, v11}, Lcom/ebay/android/widget/RemoteImageView;->setVisibility(I)V

    .line 814
    iget-object v11, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v15, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne v11, v15, :cond_3

    const/16 v11, 0x8

    .line 815
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    const/16 v11, 0x8

    .line 818
    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 820
    :cond_3
    :goto_2
    iget-object v11, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

    if-eqz v11, :cond_b

    iget-object v11, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

    iget-object v11, v11, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;->promotionSummary:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotionSummary;

    if-eqz v11, :cond_b

    .line 822
    iget-object v11, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

    iget-object v11, v11, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;->promotionSummary:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotionSummary;

    .line 823
    iget-object v15, v11, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotionSummary;->message:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz v15, :cond_5

    .line 825
    iget-object v15, v11, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotionSummary;->message:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {v7, v15}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 827
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v15, 0x8

    goto :goto_3

    :cond_4
    const/16 v15, 0x8

    .line 829
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_5
    const/16 v15, 0x8

    .line 832
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 834
    :goto_3
    iget-object v5, v11, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotionSummary;->subMessage:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz v5, :cond_7

    .line 836
    iget-object v5, v11, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotionSummary;->subMessage:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {v7, v5}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 838
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 840
    :cond_6
    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 843
    :cond_7
    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 845
    :goto_4
    iget-object v5, v11, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotionSummary;->actions:Ljava/util/Map;

    if-eqz v5, :cond_8

    iget-object v5, v11, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotionSummary;->actions:Ljava/util/Map;

    sget-object v6, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->SEE_TERMS:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    .line 846
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    goto :goto_5

    :cond_8
    move-object v5, v9

    :goto_5
    if-eqz v5, :cond_a

    .line 849
    iget-object v6, v5, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f0a123e

    .line 850
    invoke-virtual {v14, v6, v5}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    const v6, 0x7f0a123f

    .line 851
    invoke-virtual {v5}, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v6, v5}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    const v5, 0x7f0a1240

    .line 852
    iget-object v6, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    invoke-virtual {v14, v5, v6}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 853
    iget-boolean v5, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->available:Z

    if-eqz v5, :cond_9

    .line 854
    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    const/16 v11, 0x8

    goto :goto_6

    :cond_a
    const/16 v11, 0x8

    .line 857
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_b
    const/16 v11, 0x8

    .line 861
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 862
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 863
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 865
    :goto_6
    invoke-virtual {v8, v0}, Lcom/ebay/android/widget/ContainerLayout;->addView(Landroid/view/View;)V

    .line 870
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    iget-object v5, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v0, v5}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x4

    const v14, 0x7f0a0b89

    if-eqz v0, :cond_c

    if-eqz v10, :cond_c

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL_CREDIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    iget-object v5, v10, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    .line 871
    invoke-virtual {v0, v5}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 873
    invoke-virtual {v13, v9}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 874
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0b8e

    .line 875
    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0b72

    .line 876
    invoke-virtual {v8, v0}, Lcom/ebay/android/widget/ContainerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 877
    invoke-virtual {v4}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getSelectedPaymentInstrument()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    move-result-object v5

    invoke-direct {v7, v0, v4, v5}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->renderPayPalFundingPlansAndOptions(Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;)V

    .line 882
    :cond_c
    invoke-virtual {v4}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->isSettable()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 884
    invoke-virtual {v4}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getSelectedPaymentInstrument()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 887
    iget-object v5, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v6, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne v5, v6, :cond_e

    .line 889
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getAccountLoginName()Ljava/lang/String;

    move-result-object v0

    .line 890
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    const v1, 0x7f0a0b96

    .line 892
    invoke-virtual {v13, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 893
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 894
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 896
    :cond_d
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 898
    :cond_e
    iget-object v5, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v6, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->CC:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne v5, v6, :cond_12

    .line 900
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getSelectedFundingSource()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 904
    iget-object v0, v7, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v6, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;

    invoke-virtual {v0, v6}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;

    .line 905
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;->total:Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;->amount:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;->textSpans:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;

    invoke-static {v7, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v9, 0x0

    .line 907
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 909
    invoke-virtual {v5}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->getSubType()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;

    move-result-object v6

    .line 908
    invoke-static {v3, v6, v7}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->setCreditCardDrawableFromSubtype(Landroid/widget/ImageView;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;Landroid/content/Context;)Z

    move-result v3

    const/4 v6, 0x2

    const/4 v15, 0x1

    if-nez v3, :cond_f

    const/16 v3, 0x8

    .line 911
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    const-string v2, "%1$s %2$s, %3$s"

    const/4 v3, 0x3

    .line 912
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v11, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    aput-object v11, v3, v9

    .line 913
    invoke-virtual {v5}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->getAccountNumber()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v15

    aput-object v0, v3, v6

    .line 912
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_f
    const-string v2, "%1$s, %2$s"

    .line 916
    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->getAccountNumber()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v9

    aput-object v0, v3, v15

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    const/4 v6, 0x0

    const v11, 0x7f13023e

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object v2, v13

    const/16 v15, 0x8

    move-object v3, v5

    move-object v5, v6

    move v6, v11

    .line 918
    invoke-virtual/range {v0 .. v6}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->renderExchangeRate(Landroid/view/View$OnClickListener;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingPlan;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 920
    invoke-static {v13}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->setBottomPaddingToZero(Landroid/view/ViewGroup;)V

    goto :goto_8

    :cond_10
    const/4 v9, 0x0

    const/16 v15, 0x8

    .line 922
    :cond_11
    :goto_8
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_12
    :goto_9
    const/4 v9, 0x0

    const/16 v15, 0x8

    :goto_a
    const/16 v9, 0x8

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_13
    return-void
.end method

.method private renderPayPalFundingPlansAndOptions(Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;)V
    .locals 9

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 932
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 935
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 936
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 942
    iget-object v1, p3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->fundingPlans:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 943
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 944
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingPlan;

    xor-int/2addr v3, v2

    .line 946
    invoke-direct {p0, p1, v4, v3, p2}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->renderPaypalFundingPlan(Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingPlan;ZLcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;)V

    const/4 v3, 0x0

    goto :goto_0

    .line 951
    :cond_1
    invoke-virtual {p3}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getFundingSourceOptions()Ljava/util/List;

    move-result-object p3

    .line 952
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 954
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d00d1

    .line 955
    invoke-virtual {v1, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v3, 0x7f0a0b69

    .line 957
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f0a0b66

    .line 958
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    const v5, 0x7f0a0b6f

    .line 959
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    const v5, 0x7f0a0b6b

    .line 960
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 961
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const v5, 0x7f0a1241

    .line 962
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 963
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 965
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 966
    iget-object v5, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0d00d2

    .line 967
    invoke-virtual {v5, v6, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const v6, 0x7f0a0b74

    .line 968
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a0b64

    .line 970
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    const v8, 0x7f0a0b61

    .line 971
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 972
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    const v7, 0x7f0a0b73

    .line 973
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    const v7, 0x7f0a0b68

    .line 974
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    const v7, 0x7f0a0b6a

    .line 975
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    const v7, 0x7f121103

    .line 977
    new-array v8, v2, [Ljava/lang/Object;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    aput-object p2, v8, v0

    invoke-virtual {p0, v7, v8}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f040162

    .line 978
    invoke-static {p0, p2}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f130236

    .line 979
    invoke-static {v6, p2}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    const/4 p2, 0x5

    .line 980
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 982
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 983
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p1, 0x7f0a0ba8

    .line 985
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0b72

    .line 986
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 987
    invoke-virtual {p0, v4}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    const p1, 0x7f0a0ba7

    .line 990
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 991
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 992
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    .line 994
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d00cc

    .line 995
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0a123e

    .line 996
    invoke-virtual {v1, v2, p3}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 997
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 998
    iget-object p3, p3, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    invoke-virtual {v1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 999
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method private renderPaypalFundingPlan(Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingPlan;ZLcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;)V
    .locals 6
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingPlan;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 648
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x7f0d00d1

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v2, 0x7f0a0b6b

    .line 649
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    const v3, 0x7f0a0b69

    .line 650
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x1

    if-eqz p3, :cond_0

    const p3, 0x7f0a0b66

    .line 653
    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p3, v4}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 655
    :cond_0
    iget-object p3, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p3}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSelectedPaymentMethod()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 656
    iget-object v5, p4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    iget-object p3, p3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    .line 657
    invoke-virtual {v5, p3}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    .line 658
    :cond_1
    iget-boolean p3, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingPlan;->selected:Z

    if-eqz p3, :cond_2

    if-eqz v1, :cond_2

    .line 659
    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_2
    const p3, 0x7f0a1243

    .line 661
    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingPlan;->fundingPlanId:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    const p3, 0x7f0a1247

    .line 662
    invoke-virtual {v0, p3, p4}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 663
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 666
    iget-object p3, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingPlan;->fundingSources:Ljava/util/List;

    if-eqz p3, :cond_3

    .line 667
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 668
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;

    .line 669
    invoke-direct {p0, v3, v1, p4, p2}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->renderPaypalFundingSource(Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingPlan;)V

    goto :goto_0

    .line 671
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private renderPaypalFundingSource(Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingPlan;)V
    .locals 18
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingPlan;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 684
    iget-object v0, v7, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->inflater:Landroid/view/LayoutInflater;

    const/4 v11, 0x0

    const v1, 0x7f0d00d2

    .line 685
    invoke-virtual {v0, v1, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/view/ViewGroup;

    const v0, 0x7f0a0b68

    .line 686
    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/ImageView;

    const v0, 0x7f0a0b74

    .line 687
    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/TextView;

    const v0, 0x7f0a0b61

    .line 688
    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0b64

    .line 689
    invoke-virtual {v12, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0b65

    .line 690
    invoke-virtual {v12, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/view/ViewGroup;

    const v2, 0x7f0a0b6a

    .line 691
    invoke-virtual {v12, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    .line 693
    iget-object v2, v9, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->backupFundingSource:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;

    const/4 v5, 0x1

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    .line 695
    iget-object v2, v9, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->backupFundingSource:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;

    invoke-virtual {v2, v5}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->getLabelText(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 699
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 701
    :goto_0
    iget-object v0, v9, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->description:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 702
    iget-object v0, v9, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->description:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 704
    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const v16, 0x7f13023e

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v17, v6

    move/from16 v6, v16

    .line 709
    invoke-virtual/range {v0 .. v6}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->renderExchangeRate(Landroid/view/View$OnClickListener;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingPlan;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 710
    invoke-static/range {p1 .. p1}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->setBottomPaddingToZero(Landroid/view/ViewGroup;)V

    :cond_2
    const v0, 0x7f0a0b73

    .line 712
    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 713
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->SEE_TERMS:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-virtual {v9, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->getAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 716
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a123e

    .line 717
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    const v2, 0x7f0a123f

    .line 718
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    const v1, 0x7f0a1240

    .line 719
    iget-object v2, v10, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 720
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x8

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    .line 724
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 726
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->getSubType()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;

    move-result-object v0

    invoke-static {v13, v0, v7}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->setCreditCardDrawableFromSubtype(Landroid/widget/ImageView;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 727
    invoke-virtual {v9, v11}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->getLabelText(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    .line 730
    invoke-virtual {v9, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->getLabelText(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceType;->PAY_AFTER_DELIVERY:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceType;

    invoke-virtual/range {p2 .. p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->getType()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0a0b60

    .line 733
    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 734
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 735
    invoke-virtual/range {p2 .. p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->getAccountText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    :cond_5
    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 742
    :goto_3
    iget-boolean v0, v10, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->available:Z

    if-nez v0, :cond_7

    .line 744
    iget-object v0, v10, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->disabledMessage:Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;

    if-eqz v0, :cond_6

    .line 745
    iget-object v0, v10, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->disabledMessage:Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;

    invoke-static {v7, v15, v0}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->renderToolTip(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;)V

    goto :goto_4

    .line 747
    :cond_6
    invoke-virtual {v15, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 748
    :goto_4
    invoke-virtual {v7, v12}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->renderDisabledCell(Landroid/view/ViewGroup;)V

    .line 752
    :cond_7
    iget-object v0, v9, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->infoText:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz v0, :cond_8

    .line 753
    iget-object v0, v9, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->infoText:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {v7, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v2, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_8
    move-object/from16 v2, v17

    .line 755
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 757
    :goto_5
    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private renderScreen()V
    .locals 2

    .line 370
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->hideOptionsOverlay()V

    .line 371
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->paymentMethodsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->paymentMethodsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;->moduleTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->paymentMethodsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;->errors:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->paymentMethodsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;->errors:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->renderErrors(Ljava/util/List;)V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->paymentMethodsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;->getSelectedPaymentMethod()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->renderSelectedPaymentMethodAndOptions(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;)V

    .line 377
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->paymentMethodsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;->getAvailablePaymentMethods(Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->renderOtherAvailablePaymentMethods(Ljava/util/List;)V

    .line 378
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->paymentMethodsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->trackRenderedModuleView(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->sendCheckoutPageImpression(Ljava/lang/String;)V

    return-void
.end method

.method private renderSelectedPaymentMethodAndOptions(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;)V
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const v0, 0x7f0a0b71

    .line 391
    invoke-virtual {v7, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/ViewGroup;

    const v0, 0x7f0a0b75

    .line 392
    invoke-virtual {v7, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const v0, 0x7f0a0b76

    .line 393
    invoke-virtual {v7, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/ebay/android/widget/RemoteImageView;

    const v0, 0x7f0a0b60

    .line 394
    invoke-virtual {v7, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    const v0, 0x7f0a0b62

    .line 395
    invoke-virtual {v7, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/ImageView;

    const v0, 0x7f0a0b98

    .line 396
    invoke-virtual {v7, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0b9b

    .line 397
    invoke-virtual {v7, v1}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0b67

    .line 398
    invoke-virtual {v7, v2}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    const v2, 0x7f040156

    const v3, 0x7f0601d9

    .line 400
    invoke-static {v7, v2, v3}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColor(Landroid/content/Context;II)I

    move-result v2

    if-nez v8, :cond_0

    return-void

    :cond_0
    const/16 v15, 0x8

    .line 405
    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 409
    iget-object v3, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    const v5, 0x7f0a0b66

    const/4 v6, 0x0

    if-ne v3, v4, :cond_3

    .line 411
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 412
    invoke-virtual {v7, v5}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 413
    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 414
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    iget-object v0, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    if-eqz v0, :cond_1

    iget-object v0, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->url:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 417
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    invoke-virtual {v11, v6}, Lcom/ebay/android/widget/RemoteImageView;->setVisibility(I)V

    .line 419
    iget-object v0, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->getImageData()Lcom/ebay/nautilus/domain/data/image/ImageData;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/ebay/android/widget/RemoteImageView;->setImageData(Lcom/ebay/nautilus/domain/data/image/ImageData;)V

    .line 420
    iget-object v0, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    invoke-virtual {v11, v0}, Lcom/ebay/android/widget/RemoteImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 424
    :cond_1
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    invoke-virtual {v11, v15}, Lcom/ebay/android/widget/RemoteImageView;->setVisibility(I)V

    .line 426
    iget-object v0, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v3, 0x7f0a0b72

    .line 429
    invoke-virtual {v7, v3}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 430
    invoke-virtual/range {p1 .. p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getSelectedPaymentInstrument()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    move-result-object v1

    invoke-direct {v7, v0, v8, v1}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->renderPayPalFundingPlansAndOptions(Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;)V

    :cond_2
    :goto_1
    const/4 v14, 0x0

    goto/16 :goto_d

    :cond_3
    const v3, 0x7f0a0b72

    .line 432
    iget-object v4, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v15, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL_CREDIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    const v5, 0x7f0a1247

    if-ne v4, v15, :cond_a

    .line 435
    invoke-virtual {v7, v3}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 436
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 438
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->setClickable(Z)V

    const v3, 0x7f0a0b66

    .line 439
    invoke-virtual {v7, v3}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 440
    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    iget-object v3, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

    .line 443
    iget-object v14, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    if-eqz v14, :cond_4

    iget-object v14, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    iget-object v14, v14, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->url:Ljava/lang/String;

    if-eqz v14, :cond_4

    .line 445
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    invoke-virtual {v11, v6}, Lcom/ebay/android/widget/RemoteImageView;->setVisibility(I)V

    .line 447
    iget-object v4, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    invoke-virtual {v4}, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->getImageData()Lcom/ebay/nautilus/domain/data/image/ImageData;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/ebay/android/widget/RemoteImageView;->setImageData(Lcom/ebay/nautilus/domain/data/image/ImageData;)V

    .line 448
    iget-object v4, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    invoke-virtual {v11, v4}, Lcom/ebay/android/widget/RemoteImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 452
    :cond_4
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    invoke-virtual {v11, v4}, Lcom/ebay/android/widget/RemoteImageView;->setVisibility(I)V

    if-eqz v3, :cond_5

    .line 455
    iget-object v4, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;->title:Ljava/lang/String;

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 457
    :cond_5
    iget-object v4, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    :goto_2
    sget-object v4, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->COMPLETE_PAYMENT_METHOD:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-virtual {v8, v4}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 466
    iget-object v0, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 471
    :cond_6
    iget-object v2, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v3, :cond_9

    .line 474
    iget-object v2, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;->promotionSummary:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotionSummary;

    if-eqz v2, :cond_9

    .line 476
    iget-object v2, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;->promotionSummary:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotionSummary;

    .line 477
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotionSummary;->message:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz v4, :cond_7

    .line 479
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotionSummary;->message:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {v7, v4}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 482
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    :cond_7
    iget-object v0, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotionSummary;->actions:Ljava/util/Map;

    if-eqz v0, :cond_8

    iget-object v0, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotionSummary;->actions:Ljava/util/Map;

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->SEE_TERMS:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    .line 488
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_9

    .line 491
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a123e

    .line 492
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    const v2, 0x7f0a123f

    .line 493
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    const v0, 0x7f0a1240

    .line 494
    iget-object v2, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 495
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    :goto_4
    if-eqz v3, :cond_2

    .line 500
    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;->hasInstallmentPromotions()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    invoke-virtual {v13, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 503
    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 504
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    invoke-virtual {v9, v5, v8}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 508
    :cond_a
    iget-object v1, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->CC:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne v1, v2, :cond_11

    .line 510
    invoke-virtual/range {p1 .. p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getSelectedPaymentInstrument()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 513
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getSelectedFundingSources()Ljava/util/List;

    move-result-object v0

    .line 514
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 516
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;

    .line 521
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v0}, Lcom/ebay/android/widget/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    iget-object v0, v7, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;

    .line 527
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;->total:Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;->amount:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;->textSpans:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;

    invoke-static {v7, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v3, :cond_b

    .line 530
    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->getSubType()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;

    move-result-object v1

    .line 529
    invoke-static {v11, v1, v7}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->setCreditCardDrawableFromSubtype(Landroid/widget/ImageView;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 532
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x8

    .line 533
    invoke-virtual {v11, v1}, Lcom/ebay/android/widget/RemoteImageView;->setVisibility(I)V

    .line 534
    iget-object v1, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->label:Ljava/lang/String;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 539
    :cond_b
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070499

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 541
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_6
    const v4, 0x7f0a0b72

    .line 544
    invoke-virtual {v7, v4}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a0b66

    .line 545
    invoke-virtual {v7, v1}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 546
    invoke-virtual {v13, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 547
    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v3, :cond_c

    .line 549
    iget-object v2, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->exchangeRate:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ExchangeRate;

    if-eqz v2, :cond_c

    .line 551
    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->getAccountNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v16, 0x1

    goto :goto_8

    :cond_c
    const-string v2, "%1$s, %2$s"

    const/4 v4, 0x2

    .line 556
    new-array v4, v4, [Ljava/lang/Object;

    if-eqz v3, :cond_d

    .line 557
    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->getAccountNumber()Ljava/lang/String;

    move-result-object v16

    goto :goto_7

    :cond_d
    const-string v16, ""

    :goto_7
    aput-object v16, v4, v6

    const/16 v16, 0x1

    aput-object v0, v4, v16

    .line 556
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    :goto_8
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a1244

    if-eqz v3, :cond_e

    .line 560
    iget-object v2, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->fundingSourceId:Ljava/lang/String;

    goto :goto_9

    :cond_e
    const/4 v2, 0x0

    :goto_9
    invoke-virtual {v9, v0, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 562
    invoke-virtual {v9, v5, v8}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    if-eqz v3, :cond_f

    const/16 v17, 0x0

    const v18, 0x7f130232

    move-object/from16 v0, p0

    const v20, 0x7f0a0b66

    move-object/from16 v1, p0

    move-object v2, v9

    const v19, 0x7f0a0b72

    move-object/from16 v4, p1

    move-object/from16 v21, v14

    const v14, 0x7f0a1247

    const v16, 0x7f0a0b66

    move-object/from16 v5, v17

    const/4 v14, 0x0

    const v17, 0x7f0a0b72

    move/from16 v6, v18

    .line 565
    invoke-virtual/range {v0 .. v6}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->renderExchangeRate(Landroid/view/View$OnClickListener;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingPlan;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f0a0b5f

    .line 571
    invoke-virtual {v7, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->setBottomPaddingToZero(Landroid/view/ViewGroup;)V

    goto :goto_a

    :cond_f
    move-object/from16 v21, v14

    const/4 v14, 0x0

    const v16, 0x7f0a0b66

    const v17, 0x7f0a0b72

    :cond_10
    :goto_a
    move-object/from16 v14, v21

    const v5, 0x7f0a1247

    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_11
    const/4 v14, 0x0

    .line 577
    iget-object v1, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAY_UPON_INVOICE:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne v1, v2, :cond_12

    .line 579
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x8

    .line 580
    invoke-virtual {v11, v0}, Lcom/ebay/android/widget/RemoteImageView;->setVisibility(I)V

    .line 581
    iget-object v1, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 583
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a1247

    .line 584
    invoke-virtual {v9, v0, v8}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_d

    .line 586
    :cond_12
    iget-object v1, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->DIRECT_DEBIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne v1, v2, :cond_16

    .line 589
    invoke-virtual/range {p1 .. p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getSelectedPaymentInstrument()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 593
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getFirstFundingSourceFromSummary()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;

    move-result-object v5

    if-nez v5, :cond_14

    .line 596
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getSelectedFundingSource()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;

    move-result-object v5

    goto :goto_b

    :cond_13
    const/4 v5, 0x0

    .line 599
    :cond_14
    :goto_b
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x8

    .line 600
    invoke-virtual {v11, v1}, Lcom/ebay/android/widget/RemoteImageView;->setVisibility(I)V

    .line 601
    iget-object v2, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_15

    .line 604
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x1

    .line 605
    invoke-virtual {v5, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->getLabelText(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 608
    :cond_15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 609
    :goto_c
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a1247

    .line 610
    invoke-virtual {v9, v0, v8}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    goto :goto_d

    .line 612
    :cond_16
    iget-object v0, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->CASH_ON_PICKUP:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-eq v0, v1, :cond_17

    iget-object v0, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->CIP:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-eq v0, v1, :cond_17

    iget-object v0, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->OTHER:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-eq v0, v1, :cond_17

    iget-object v0, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->COD:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-eq v0, v1, :cond_17

    iget-object v0, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->GENERIC_CREDIT_CARD:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne v0, v1, :cond_18

    .line 618
    :cond_17
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x8

    .line 619
    invoke-virtual {v11, v0}, Lcom/ebay/android/widget/RemoteImageView;->setVisibility(I)V

    .line 620
    iget-object v1, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x0

    .line 622
    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    invoke-virtual {v9, v14}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 624
    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 629
    :cond_18
    :goto_d
    iget-boolean v0, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->available:Z

    if-nez v0, :cond_19

    .line 631
    invoke-virtual {v7, v9}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->renderDisabledCell(Landroid/view/ViewGroup;)V

    .line 632
    invoke-virtual {v9, v14}, Landroid/view/ViewGroup;->setClickable(Z)V

    :cond_19
    return-void
.end method

.method private showOptionsOverlay()V
    .locals 2

    const v0, 0x7f0a0ba8

    .line 1006
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a14a0

    .line 1007
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

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

    .line 323
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 325
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-static {p1, p2, p3, v0}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->validateOnActivityResult(IILandroid/content/Intent;Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Lcom/ebay/mobile/activities/ActivityResult;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    .line 326
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, -0x3e7

    packed-switch p1, :pswitch_data_0

    if-eq p2, v0, :cond_3

    .line 348
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-nez p1, :cond_4

    goto :goto_0

    :pswitch_0
    if-eq p2, v0, :cond_1

    .line 335
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-nez p1, :cond_2

    .line 337
    :cond_1
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->setResult(I)V

    .line 338
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->finish()V

    :cond_2
    if-eqz p3, :cond_4

    if-eqz p2, :cond_4

    const-string p1, "fundingInstrumentId"

    .line 342
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 344
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->switchResultToCancelAndFinish(I)V

    goto :goto_1

    .line 332
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->switchResultToCancelAndFinish(I)V

    goto :goto_1

    .line 350
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->setResult(I)V

    .line 351
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->finish()V

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

.method public onBackPressed()V
    .locals 0

    .line 360
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->backPressedLogic()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a1243

    const v2, 0x7f0a123e

    const v3, 0x7f0a1247

    const/4 v4, -0x1

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_4

    .line 245
    :sswitch_0
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->hideOptionsOverlay()V

    goto/16 :goto_4

    .line 249
    :sswitch_1
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->hideOptionsOverlay()V

    .line 251
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    .line 252
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->trackExperienceAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;)V

    .line 254
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->getXoActionType()Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->handlePaymentMethodSelectionWithAction(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)V

    goto/16 :goto_4

    .line 274
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlertDialog;

    .line 275
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_4

    .line 110
    :sswitch_3
    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    if-eqz p1, :cond_10

    .line 113
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    .line 117
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->isSettable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getSelectedPaymentInstrument()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->SET_PAYMENT_INSTRUMENT:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-virtual {p1, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object p1

    .line 123
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->startProgress()V

    .line 124
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->paymentInstrumentId:Ljava/lang/String;

    const-string/jumbo v3, "rememberPaymentInstrument"

    .line 125
    invoke-virtual {p1, v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 124
    invoke-virtual {v2, v0, v1, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setRememberedPaymentMethod(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Ljava/lang/Boolean;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    .line 126
    invoke-virtual {p0, v4}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->setResult(I)V

    .line 127
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->finish()V

    return-void

    .line 132
    :cond_0
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL_CREDIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v1, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    .line 133
    invoke-virtual {v1, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 135
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string v1, "dialog_payment_method_type_arg"

    .line 136
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->ordinal()I

    move-result v2

    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->hasActionConfirmation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->actionConfirmation:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ActionConfirmation;

    const-string v0, "dialog_process_payment_method_link"

    invoke-virtual {p0, p1, v11, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->showActionConfirmationDialog(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ActionConfirmation;Landroid/os/Bundle;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->dialogCancelAction:Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    return-void

    .line 143
    :cond_1
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->hasTransferMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAY_UPON_INVOICE:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-eq v1, v0, :cond_2

    .line 146
    iget-object v7, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->actions:Ljava/util/Map;

    iget-object v9, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    iget-object v10, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->transferMessage:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    const-string v12, "dialog_process_payment_method_link"

    move-object v6, p0

    move-object v8, v0

    invoke-virtual/range {v6 .. v12}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->showTransferMessageWarningDialog(Ljava/util/Map;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;Landroid/os/Bundle;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->dialogCancelAction:Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    return-void

    .line 150
    :cond_2
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->processPaymentMethodLink(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;)V

    goto/16 :goto_4

    .line 154
    :cond_3
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->startPaypalCreditPromotionActivity(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 157
    :cond_4
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getSelectedPaymentInstrument()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 160
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getSelectedFundingSource()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;

    move-result-object v2

    .line 161
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getSelectedFundingPlan()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingPlan;

    move-result-object v3

    if-eqz v2, :cond_5

    .line 165
    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->fundingSourceId:Ljava/lang/String;

    move-object v10, v2

    goto :goto_0

    :cond_5
    move-object v10, v5

    :goto_0
    if-eqz v3, :cond_6

    .line 169
    iget-object v5, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingPlan;->fundingPlanId:Ljava/lang/String;

    :cond_6
    move-object v9, v5

    .line 173
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 175
    :cond_7
    iget-object v8, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->paymentInstrumentId:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getPromotionId()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, p0

    move-object v7, v0

    .line 175
    invoke-virtual/range {v6 .. v13}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->handlePaymentMethodSelection(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0, v4}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->setResult(I)V

    .line 178
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->finish()V

    return-void

    .line 182
    :cond_8
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->processPaymentMethodLink(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;)V

    goto/16 :goto_4

    .line 279
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ExchangeRate;

    .line 280
    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    .line 281
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 282
    invoke-virtual {p0, v0, v2, p1}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->handleExchangeRateAction(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ExchangeRate;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 259
    :sswitch_5
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    .line 260
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->trackExperienceAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;)V

    const v0, 0x7f0a1240

    .line 262
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0a123f

    .line 263
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 264
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.extra.TITLE"

    .line 265
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "url"

    .line 266
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "use_sso"

    const/4 v0, 0x1

    .line 267
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "back"

    .line 268
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "add_device_id"

    const/4 v0, 0x0

    .line 269
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 193
    :sswitch_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 195
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v2, 0x7f0a1241

    if-ne v0, v2, :cond_9

    .line 196
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->showOptionsOverlay()V

    goto/16 :goto_4

    .line 199
    :cond_9
    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    if-eqz v0, :cond_10

    .line 202
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->startPaypalCreditPromotionActivity(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;)Z

    move-result v2

    if-eqz v2, :cond_a

    return-void

    .line 205
    :cond_a
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->ordinal()I

    move-result v2

    if-ne v2, v4, :cond_b

    move-object v7, v5

    goto :goto_1

    .line 207
    :cond_b
    invoke-static {}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->values()[Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    move-result-object v3

    aget-object v2, v3, v2

    move-object v7, v2

    .line 209
    :goto_1
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getSelectedPaymentInstrument()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 215
    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->paymentInstrumentId:Ljava/lang/String;

    const v6, 0x7f0a1244

    .line 216
    invoke-virtual {p1, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 219
    invoke-virtual {v2, v6}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getFundingSource(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;

    move-result-object v8

    if-nez v8, :cond_c

    move-object v6, v5

    .line 223
    :cond_c
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 226
    invoke-virtual {v2, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getFundingPlan(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingPlan;

    move-result-object v2

    if-nez v2, :cond_d

    move-object v8, v3

    move-object v9, v5

    goto :goto_2

    :cond_d
    move-object v9, v1

    move-object v8, v3

    :goto_2
    move-object v10, v6

    goto :goto_3

    :cond_e
    move-object v8, v5

    move-object v9, v8

    move-object v10, v9

    :goto_3
    if-eqz v7, :cond_f

    .line 233
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getPromotionId()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, p0

    .line 232
    invoke-virtual/range {v6 .. v13}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->handlePaymentMethodSelection(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;Ljava/lang/String;)V

    .line 234
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0b6e

    if-ne p1, v0, :cond_10

    .line 236
    invoke-virtual {p0, v4}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->setResult(I)V

    .line 237
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->finish()V

    :cond_10
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0b6e -> :sswitch_6
        0x7f0a0b71 -> :sswitch_6
        0x7f0a0b73 -> :sswitch_5
        0x7f0a0b7a -> :sswitch_4
        0x7f0a0b92 -> :sswitch_3
        0x7f0a0b93 -> :sswitch_2
        0x7f0a0b9b -> :sswitch_5
        0x7f0a0ba5 -> :sswitch_1
        0x7f0a0ba8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 75
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d00d0

    .line 76
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->initContentView(ILandroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 79
    invoke-static {}, Lcom/ebay/nautilus/domain/datamapping/DataMapperFactory;->getCheckoutExperienceBundleMapper()Lcom/ebay/nautilus/kernel/datamapping/BundleMapper;

    move-result-object v0

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    invoke-interface {v0, p1, v1}, Lcom/ebay/nautilus/kernel/datamapping/BundleMapper;->readBundleJson(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->paymentMethodsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    :cond_0
    return-void
.end method

.method public onMenuHomeClicked(Landroid/view/MenuItem;)Z
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 93
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->backPressedLogic()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 86
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 87
    invoke-static {}, Lcom/ebay/nautilus/domain/datamapping/DataMapperFactory;->getCheckoutExperienceBundleMapper()Lcom/ebay/nautilus/kernel/datamapping/BundleMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->paymentMethodsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    invoke-interface {v0, p1, v1}, Lcom/ebay/nautilus/kernel/datamapping/BundleMapper;->writeBundleJson(Landroid/os/Bundle;Ljava/lang/Object;)V

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

    .line 290
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V

    .line 292
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 294
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    if-eqz p2, :cond_0

    .line 296
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    iget p2, p2, Lcom/ebay/mobile/activities/ActivityResult;->requestCode:I

    iget-object p3, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    iget p3, p3, Lcom/ebay/mobile/activities/ActivityResult;->resultCode:I

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    iget-object v0, v0, Lcom/ebay/mobile/activities/ActivityResult;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p2, p3, v0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x0

    .line 297
    iput-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    if-eqz p1, :cond_0

    .line 298
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->isTaskRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 302
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->stopProgress()V

    return-void

    .line 307
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class p2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->paymentMethodsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    .line 308
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->startSepaActivityIfRequested()V

    .line 309
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->removePaymentMandate()V

    .line 310
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->renderScreen()V

    .line 311
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;->stopProgress()V

    return-void
.end method
