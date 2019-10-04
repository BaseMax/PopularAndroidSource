.class public abstract Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;
.super Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;
.source "BaseCheckoutActivity.java"

# interfaces
.implements Lcom/ebay/app/DialogFragmentCallback;
.implements Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;
.implements Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;


# static fields
.field protected static final DIALOG_ACTION_CONFIRMATION:I = 0x3757

.field protected static final DIALOG_HANDLE_PAYMENT_METHOD_SELECTION_TAG:Ljava/lang/String; = "dialog_handle_payment_method_selection"

.field protected static final DIALOG_LINE_ITEM_ID_ARG:Ljava/lang/String; = "dialog_line_item_id_arg"

.field protected static final DIALOG_PAYMENT_METHOD_TYPE_ARG:Ljava/lang/String; = "dialog_payment_method_type_arg"

.field protected static final DIALOG_PAYPAL_CREDIT_PROMOTION:Ljava/lang/String; = "dialog_paypal_credit_promotion"

.field protected static final DIALOG_PROCESS_PAYMENT_METHOD_LINK:Ljava/lang/String; = "dialog_process_payment_method_link"

.field protected static final DIALOG_REMOVE_LINE_ITEM_TAG:Ljava/lang/String; = "dialog_remove_line_item"

.field protected static final DIALOG_SELECTED_FINANCING_CODE_ARG:Ljava/lang/String; = "dialog_selected_financing_code_arg"

.field protected static final DIALOG_SELECTED_PROMOTION_ID_ARG:Ljava/lang/String; = "dialog_selected_promotion_id_arg"

.field public static final EXTRA_CHECKOUT_PARAMS:Ljava/lang/String; = "xoParams"

.field public static final EXTRA_EXCHANGE_RATE_FUNDING_PLAN_ID:Ljava/lang/String; = "exchangeRateFundingPlanId"

.field public static final EXTRA_EXCHANGE_RATE_PAYMENT_METHOD_TYPE:Ljava/lang/String; = "exchangeRatePaymentMethod"

.field public static final EXTRA_TRACKING_ACTION:Ljava/lang/String; = "trackingAction"

.field public static final EXTRA_USE_EXPERIENCE_SERVICE:Ljava/lang/String; = "usingExperienceService"

.field public static final RESULT_CANCEL_CHECKOUT:I = -0x3e7


# instance fields
.field private alreadyShowingSepa:Z

.field protected bannerContainer:Landroid/view/ViewGroup;

.field protected final config:Lcom/ebay/mobile/dcs/DcsHelper;

.field private contentContainer:Landroid/view/View;

.field protected dialogCancelAction:Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

.field protected final dialogManager:Lcom/ebay/common/view/util/DialogManager;

.field protected errorContainer:Landroid/view/ViewGroup;

.field protected inflater:Landroid/view/LayoutInflater;

.field protected isActive:Z

.field private progressContainer:Landroid/view/View;

.field private temporaryFisId:Ljava/lang/String;

.field public xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x4
    .end annotation
.end field

.field protected xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

.field protected xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 132
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;-><init>()V

    .line 150
    const-class v0, Lcom/ebay/common/view/util/DialogManager;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getShim(Ljava/lang/Class;)Lcom/ebay/nautilus/shell/app/ActivityShim;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/view/util/DialogManager;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->dialogManager:Lcom/ebay/common/view/util/DialogManager;

    .line 172
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getDeviceConfiguration()Lcom/ebay/mobile/dcs/DcsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->config:Lcom/ebay/mobile/dcs/DcsHelper;

    return-void
.end method

.method protected static getSpannableFromStringArray(Ljava/util/List;)Landroid/text/Spannable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/text/Spannable;"
        }
    .end annotation

    .line 591
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 592
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 594
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "\n"

    .line 595
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 596
    :cond_0
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static sendPurchaseCompleteTracking(Landroid/content/Intent;Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 4

    .line 1506
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "CheckoutPaymentSuccess"

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "charityID"

    const-string v2, "charity_id"

    .line 1507
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    const-string v1, "donate"

    const-string v2, "charity_donation"

    .line 1508
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 1509
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v0

    const-string/jumbo v1, "tracking_key_values"

    .line 1513
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 1514
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1515
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1516
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1518
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method protected static setCreditCardDrawableFromSubtype(Landroid/widget/ImageView;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;Landroid/content/Context;)Z
    .locals 2
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 620
    :cond_0
    sget-object v1, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$payment$FundingSourceSubType:[I

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    return v0

    .line 659
    :pswitch_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p1, 0x7f08038d

    .line 660
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 662
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120a50

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 661
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return v1

    .line 653
    :pswitch_1
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p1, 0x7f080388

    .line 654
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 656
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120a4e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 655
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return v1

    .line 647
    :pswitch_2
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p1, 0x7f08038f

    .line 648
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 650
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120a51

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 649
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return v1

    .line 641
    :pswitch_3
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p1, 0x7f080389

    .line 642
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 644
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120a4f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 643
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return v1

    .line 635
    :pswitch_4
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p1, 0x7f080381

    .line 636
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 638
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120a4d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 637
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return v1

    .line 629
    :pswitch_5
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p1, 0x7f080397

    .line 630
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 632
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120a54

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 631
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return v1

    .line 623
    :pswitch_6
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p1, 0x7f080390

    .line 624
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 626
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120a52

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 625
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setupPayPalIdentityIntent(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1781
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.extra.TITLE"

    .line 1782
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "url"

    .line 1783
    sget-object v1, Lcom/ebay/nautilus/domain/net/api/experience/checkout/CheckoutApiRequest;->PROX_RETURN_URL:Ljava/lang/String;

    .line 1784
    invoke-virtual {p2, p3, p4, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getActionUrl(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1783
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "use_sso"

    const/4 p3, 0x1

    .line 1785
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "back"

    .line 1786
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "num_history_to_skip"

    .line 1787
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->isActionSelectPaymentInstrument()Z

    move-result p2

    xor-int/2addr p2, p3

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "add_device_id"

    const/4 p2, 0x0

    .line 1788
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "layout"

    const p2, 0x7f0d00f0

    .line 1789
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static trackExperienceAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 0
    .param p1    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 1543
    invoke-static {p0, p1}, Lcom/ebay/payments/checkout/analytics/CheckoutTrackingData;->trackExperienceAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return p1

    .line 332
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    .line 333
    invoke-virtual {p3}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->shouldShowLegacyCheckoutFatalDialog()Z

    move-result p3

    if-eqz p3, :cond_1

    const p2, 0x7f1210d8

    .line 335
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 336
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->stopProgress()V

    .line 337
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->hideContent()V

    .line 338
    invoke-virtual {p0, v0, p2, v1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return p1

    .line 343
    :cond_1
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 347
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->stopProgress()V

    .line 348
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->hideContent()V

    .line 350
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p2

    .line 351
    invoke-virtual {p2}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getMessages()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 355
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    if-eqz p3, :cond_4

    .line 357
    invoke-interface {p3}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->displayToUser()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->isActive:Z

    if-eqz v2, :cond_4

    .line 360
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz p2, :cond_3

    .line 361
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->flush()V

    .line 364
    :cond_3
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getSafeLongMessage(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Ljava/lang/String;

    move-result-object p2

    .line 363
    invoke-virtual {p0, v0, p2, v1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return p1

    :cond_4
    if-eqz p3, :cond_2

    .line 367
    iget-boolean p3, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->isActive:Z

    if-eqz p3, :cond_2

    const p2, 0x7f120a38

    .line 371
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 372
    invoke-virtual {p0, v0, p2, v1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return p1

    :cond_5
    return p1

    :cond_6
    return v1
.end method

.method protected createCheckoutIntent(Ljava/lang/Class;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 1720
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo p1, "xoParams"

    .line 1721
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method protected final getPaymentAgreementMandate()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentAgreementMandate;
    .locals 2

    .line 1743
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->DIRECT_DEBIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getPaymentMethod(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;)Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1746
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getDirectDebitInstrumentDetails()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1747
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->paymentAgreement:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentAgreementMandate;

    if-eqz v1, :cond_0

    .line 1748
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->paymentAgreement:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentAgreementMandate;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleExchangeRateAction(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ExchangeRate;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ExchangeRate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Exchange Rate should not be null"

    .line 1796
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Payment method type should not be null"

    .line 1797
    invoke-static {p2, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1799
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ExchangeRate;->moreRatesText:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz p1, :cond_3

    .line 1800
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_2

    .line 1803
    :cond_0
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->url:Ljava/lang/String;

    .line 1804
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v1

    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;->federationLinking:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;

    .line 1805
    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "ebay://fedlink/v1"

    goto :goto_0

    .line 1807
    :cond_1
    sget-object v2, Lcom/ebay/nautilus/domain/net/api/experience/checkout/CheckoutApiRequest;->PROX_RETURN_URL:Ljava/lang/String;

    :goto_0
    :try_start_0
    const-string v3, "UTF-8"

    .line 1810
    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\{redirect_uri\\}"

    .line 1811
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1820
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "exchangeRatePaymentMethod"

    .line 1821
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->ordinal()I

    move-result p2

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "exchangeRateFundingPlanId"

    .line 1822
    invoke-virtual {v2, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 1826
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p1, v2}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setExchangeRateBundle(Landroid/os/Bundle;)V

    .line 1827
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const/16 p2, 0x7d0

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setRequestType(I)V

    .line 1828
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ebay/mobile/util/CustomTabsUtil;->launchCustomTabs(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1

    .line 1832
    :cond_2
    new-instance p2, Lcom/ebay/mobile/checkout/v2/PayPalIntentBuilder;

    invoke-direct {p2, p0}, Lcom/ebay/mobile/checkout/v2/PayPalIntentBuilder;-><init>(Landroid/content/Context;)V

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    invoke-virtual {p2, p1}, Lcom/ebay/mobile/checkout/v2/PayPalIntentBuilder;->setAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)Lcom/ebay/mobile/checkout/v2/PayPalIntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/PayPalIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo p2, "url"

    .line 1833
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "proxUserDataBundle"

    .line 1834
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 p2, 0x7d8

    .line 1835
    invoke-virtual {p0, p1, p2}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void

    :catch_0
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method protected handleExchangeRatePaymentMethodRefresh(Landroid/os/Bundle;)Z
    .locals 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1148
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "exchangeRatePaymentMethod"

    .line 1151
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "exchangeRateFundingPlanId"

    .line 1152
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1154
    invoke-static {}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->values()[Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    move-result-object p1

    aget-object v4, p1, v0

    .line 1155
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->UNKNOWN:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne v4, p1, :cond_1

    return v1

    .line 1158
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p1, v4}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getPaymentMethod(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;)Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1161
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getSelectedPaymentInstrument()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1164
    iget-object v5, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->paymentInstrumentId:Ljava/lang/String;

    .line 1167
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    const/4 v2, 0x1

    if-ne v4, v0, :cond_2

    .line 1169
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const/4 v7, 0x0

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setPaymentMethodPayPal(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    return v2

    .line 1172
    :cond_2
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->CC:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne v4, v0, :cond_3

    .line 1174
    invoke-virtual {p1, v5}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getFundingSource(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1177
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    if-eqz p1, :cond_3

    .line 1180
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    iget-boolean p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->rememberInstrument:Z

    .line 1181
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1180
    invoke-virtual {v0, v4, v5, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setPaymentMethodCard(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Ljava/lang/Boolean;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    return v2

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v1
.end method

.method protected handlePaymentMethodSelection(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;Ljava/lang/String;)V
    .locals 10
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v6, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v0, p6

    move-object/from16 v3, p7

    if-nez v1, :cond_0

    return-void

    .line 991
    :cond_0
    iget-object v4, v6, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz v4, :cond_16

    iget-object v4, v6, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-nez v4, :cond_1

    goto/16 :goto_5

    .line 1001
    :cond_1
    sget-object v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/16 v8, 0x7d3

    if-eq v1, v4, :cond_d

    sget-object v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL_CREDIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne v1, v4, :cond_2

    goto/16 :goto_0

    .line 1065
    :cond_2
    sget-object v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->CC:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    const/4 v9, 0x1

    if-ne v1, v4, :cond_7

    .line 1067
    sget-object v4, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->RESOLVE_CREDIT_CARD_CHALLENGE:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-virtual {v4, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1069
    iget-object v2, v6, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v2, p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getPaymentMethod(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;)Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object v1

    .line 1070
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v2

    sget-object v4, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;->federationLinking:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;

    invoke-interface {v2, v4}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1072
    iget-object v2, v6, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {v2, v8}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setRequestType(I)V

    const-string v2, "ebay://fedlink/v1"

    .line 1074
    invoke-virtual {v1, v0, v3, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getActionUrl(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1073
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ebay/mobile/util/CustomTabsUtil;->launchCustomTabs(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_4

    :cond_3
    const v2, 0x7f1210e2

    .line 1079
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1, v0, v7}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->setupPayPalIdentityIntent(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1082
    invoke-virtual {v1, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->trackExperienceAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;)V

    .line 1083
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->startProgress()V

    .line 1084
    invoke-virtual {p0, v2, v8}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_4

    .line 1089
    :cond_4
    const-class v0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->createCheckoutIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "usingExperienceService"

    .line 1090
    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1092
    iget-object v1, v6, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->CC:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v1, v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getPaymentMethod(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;)Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1095
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getCreditCardInstrumentDetails()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v3, "instrumentDetails"

    .line 1097
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_5
    if-eqz v2, :cond_6

    const-string v1, "fundingInstrumentId"

    .line 1102
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1104
    :cond_6
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->startProgress()V

    const/16 v1, 0x7d2

    .line 1105
    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_4

    .line 1108
    :cond_7
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAY_UPON_INVOICE:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne v1, v0, :cond_8

    .line 1110
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->startProgress()V

    .line 1111
    const-class v0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->createCheckoutIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x7d5

    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_4

    .line 1113
    :cond_8
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->DIRECT_DEBIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne v1, v0, :cond_b

    .line 1115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "usingExperienceService"

    .line 1117
    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1119
    iget-object v1, v6, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->DIRECT_DEBIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v1, v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getPaymentMethod(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;)Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1122
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getDirectDebitInstrumentDetails()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v3, "instrumentDetails"

    .line 1124
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_9
    if-eqz v2, :cond_a

    const-string v1, "fundingInstrumentId"

    .line 1129
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1131
    :cond_a
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->startProgress()V

    const/16 v1, 0x7d6

    .line 1132
    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_4

    .line 1134
    :cond_b
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->CASH_ON_PICKUP:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-eq v1, v0, :cond_c

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->CIP:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-eq v1, v0, :cond_c

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->COD:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-eq v1, v0, :cond_c

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->OTHER:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne v1, v0, :cond_15

    .line 1139
    :cond_c
    iget-object v0, v6, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {v0, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setPaymentMethodByType(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    .line 1140
    invoke-virtual {p0, v5}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->setResult(I)V

    .line 1141
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->finish()V

    goto/16 :goto_4

    :cond_d
    :goto_0
    if-nez v2, :cond_14

    if-nez p3, :cond_14

    if-nez p4, :cond_14

    .line 1005
    iget-object v2, v6, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v2, p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getPaymentMethod(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;)Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object v2

    .line 1007
    invoke-virtual {v2, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 1008
    invoke-virtual {v4}, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->getUrl()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_12

    .line 1010
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v5

    sget-object v9, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;->federationLinking:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;

    invoke-interface {v5, v9}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v5

    const/16 v9, 0x7d0

    if-eqz v5, :cond_f

    .line 1012
    iget-object v5, v6, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {v5, p1}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setSelectedPaymentMethod(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;)V

    .line 1013
    iget-object v1, v6, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    move-object v5, p5

    invoke-virtual {v1, p5}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setPromotionId(Ljava/lang/String;)V

    .line 1014
    iget-object v1, v6, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {v1, v7}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setExchangeRateBundle(Landroid/os/Bundle;)V

    .line 1016
    iget-object v1, v6, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    sget-object v5, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;->WEBVIEW:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    invoke-virtual {v4}, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->getActionType()Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    move-result-object v4

    if-ne v5, v4, :cond_e

    sget-object v4, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->RESOLVE_CREDIT_CARD_CHALLENGE:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    if-ne v4, v0, :cond_e

    goto :goto_1

    :cond_e
    const/16 v8, 0x7d0

    :goto_1
    invoke-virtual {v1, v8}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setRequestType(I)V

    const-string v1, "ebay://fedlink/v1"

    .line 1022
    invoke-virtual {v2, v0, v3, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getActionUrl(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1021
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ebay/mobile/util/CustomTabsUtil;->launchCustomTabs(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_4

    :cond_f
    const v4, 0x7f1210e5

    .line 1027
    invoke-virtual {p0, v4}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v2, v0, v3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->setupPayPalIdentityIntent(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1029
    sget-object v4, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->RESOLVE_CREDIT_CARD_CHALLENGE:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-virtual {v4, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_2

    .line 1032
    :cond_10
    sget-object v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne v1, v4, :cond_11

    const/16 v8, 0x7d0

    goto :goto_2

    :cond_11
    const/16 v1, 0x7d1

    const/16 v8, 0x7d1

    .line 1035
    :goto_2
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->startProgress()V

    .line 1036
    invoke-virtual {v2, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->trackExperienceAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;)V

    .line 1037
    invoke-virtual {p0, v3, v8}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    .line 1045
    :cond_12
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getSelectedPaymentInstrument()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1046
    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->paymentInstrumentId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 1048
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getFirstFundingPlan()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingPlan;

    move-result-object v3

    .line 1049
    iget-object v4, v6, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->paymentInstrumentId:Ljava/lang/String;

    if-eqz v3, :cond_13

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingPlan;->fundingPlanId:Ljava/lang/String;

    goto :goto_3

    :cond_13
    move-object v3, v7

    .line 1050
    :goto_3
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getPromotionId()Ljava/lang/String;

    move-result-object v2

    move-object p2, v4

    move-object p3, p1

    move-object p4, v0

    move-object p5, v3

    move-object/from16 p6, v2

    move-object/from16 p7, p0

    .line 1049
    invoke-virtual/range {p2 .. p7}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setPaymentMethodPayPal(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    .line 1051
    instance-of v0, v6, Lcom/ebay/mobile/checkout/xoneor/PaymentMethodActivity;

    if-eqz v0, :cond_15

    .line 1053
    invoke-virtual {p0, v5}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->setResult(I)V

    .line 1054
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->finish()V

    goto :goto_4

    :cond_14
    move-object v5, p5

    .line 1061
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->startProgress()V

    .line 1062
    iget-object v0, v6, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setPaymentMethodPayPal(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    :cond_15
    :goto_4
    return-void

    :cond_16
    :goto_5
    const/16 v0, -0x3e7

    .line 993
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->setResult(I)V

    .line 994
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->finish()V

    return-void
.end method

.method protected handlePaymentMethodSelectionWithAction(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)V
    .locals 8
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 967
    invoke-virtual/range {v0 .. v7}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->handlePaymentMethodSelection(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;Ljava/lang/String;)V

    return-void
.end method

.method public hideContent()V
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->contentContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->contentContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected initContentView(ILandroid/os/Bundle;)V
    .locals 0

    .line 204
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->setContentView(I)V

    const-string p1, "layout_inflater"

    .line 206
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->inflater:Landroid/view/LayoutInflater;

    const p1, 0x7f0a0cb4

    .line 214
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->progressContainer:Landroid/view/View;

    const p1, 0x7f0a14a0

    .line 215
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->contentContainer:Landroid/view/View;

    const p1, 0x7f0a05f3

    .line 219
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->errorContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a0199

    .line 220
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->bannerContainer:Landroid/view/ViewGroup;

    if-nez p2, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo p2, "xoParams"

    .line 226
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "xoParams"

    .line 230
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    const-string p1, "dialogCancelAction"

    .line 231
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->dialogCancelAction:Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    .line 236
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->showBackButton()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    .line 715
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 717
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->setResult(I)V

    const/16 v3, -0x3e7

    if-ne p2, v3, :cond_0

    .line 721
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->finish()V

    return-void

    .line 724
    :cond_0
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const v4, 0x7f120a38

    const/4 v5, 0x1

    if-nez v3, :cond_1

    const v0, 0x7f12077c

    .line 726
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 727
    invoke-virtual {p0, v4}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 726
    invoke-virtual {p0, v0, v1, v5}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 730
    :cond_1
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-nez v3, :cond_2

    return-void

    .line 733
    :cond_2
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-static {v3, p3, p2}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->reportProxIdlErrorToApls(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Intent;I)V

    const/4 v3, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    if-ne p2, v8, :cond_21

    if-eqz p3, :cond_21

    const-string/jumbo v0, "proxUserDataBundle"

    .line 944
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 943
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->handleExchangeRatePaymentMethodRefresh(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 947
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->startProgress()V

    .line 948
    instance-of v0, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentDetailsActivity;

    if-eqz v0, :cond_21

    .line 949
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->finish()V

    goto/16 :goto_a

    .line 909
    :pswitch_1
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getPaymentAgreementMandate()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentAgreementMandate;

    move-result-object v0

    .line 912
    iput-boolean v6, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->alreadyShowingSepa:Z

    if-ne p2, v8, :cond_6

    if-eqz v0, :cond_3

    .line 916
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentAgreementMandate;->actions:Ljava/util/Map;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentAgreementMandate;->actions:Ljava/util/Map;

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->ACCEPT_PAYMENT_AGREEMENT:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    .line 917
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 918
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentAgreementMandate;->actions:Ljava/util/Map;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->ACCEPT_AGREEMENT:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->trackExperienceAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;)V

    .line 923
    :cond_3
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSelectedPaymentMethod()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 924
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getDirectDebitInstrumentDetails()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    move-result-object v7

    .line 925
    :cond_4
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->DIRECT_DEBIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->temporaryFisId:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v7, :cond_5

    iget-boolean v7, v7, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->rememberInstrument:Z

    if-eqz v7, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    :goto_0
    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->acceptSepa(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    .line 927
    invoke-virtual {p0, v8}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->setResult(I)V

    .line 928
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->finish()V

    goto :goto_1

    :cond_6
    if-nez p2, :cond_8

    if-eqz v0, :cond_7

    .line 932
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentAgreementMandate;->actions:Ljava/util/Map;

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->CANCEL_PAYMENT_AGREEMENT:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 933
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentAgreementMandate;->actions:Ljava/util/Map;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->CANCEL_PAYMENT_AGREEMENT:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->trackExperienceAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;)V

    .line 934
    :cond_7
    iput-boolean v5, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->alreadyShowingSepa:Z

    .line 936
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->stopProgress()V

    goto/16 :goto_a

    :pswitch_2
    if-ne p2, v8, :cond_9

    if-eqz p3, :cond_9

    .line 884
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz v0, :cond_9

    const-string v0, "fundingInstrumentId"

    .line 886
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->temporaryFisId:Ljava/lang/String;

    const-string/jumbo v0, "rememberToggle"

    .line 887
    invoke-virtual {p3, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 888
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->temporaryFisId:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 890
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->DIRECT_DEBIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->temporaryFisId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setPaymentMethodCard(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Ljava/lang/Boolean;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    .line 891
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->startProgress()V

    return-void

    .line 895
    :cond_9
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->stopProgress()V

    goto/16 :goto_a

    .line 905
    :pswitch_3
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->stopProgress()V

    return-void

    :pswitch_4
    if-eq p2, v8, :cond_a

    if-ne p2, v3, :cond_b

    .line 900
    :cond_a
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->finish()V

    .line 901
    :cond_b
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->stopProgress()V

    goto/16 :goto_a

    .line 859
    :pswitch_5
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->startProgress()V

    const-string/jumbo v0, "user_cancelled"

    if-ne p2, v3, :cond_c

    move-object v1, v7

    goto :goto_2

    :cond_c
    const/4 v2, 0x7

    if-ne p2, v2, :cond_d

    const-string v0, "3ds_failure"

    :cond_d
    move-object v1, v0

    .line 865
    :goto_2
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->purchase(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto/16 :goto_a

    :pswitch_6
    if-ne p2, v8, :cond_f

    if-eqz p3, :cond_f

    .line 870
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz v0, :cond_f

    const-string v0, "fundingInstrumentId"

    .line 872
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "rememberToggle"

    .line 873
    invoke-virtual {p3, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_e

    .line 875
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->CC:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setPaymentMethodCard(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Ljava/lang/Boolean;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    .line 876
    :cond_e
    invoke-virtual {p0, v8}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->setResult(I)V

    .line 877
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->finish()V

    return-void

    .line 880
    :cond_f
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->stopProgress()V

    goto/16 :goto_a

    :pswitch_7
    if-eqz p3, :cond_10

    const-string v9, "extraPromotionId"

    .line 742
    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_10
    move-object v9, v7

    :goto_3
    const/16 v10, 0x7d0

    if-ne p1, v10, :cond_11

    .line 744
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    :goto_4
    move-object v10, v0

    goto :goto_5

    :cond_11
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL_CREDIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    goto :goto_4

    :goto_5
    if-ne p2, v8, :cond_13

    if-nez v9, :cond_13

    .line 747
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-eqz v0, :cond_13

    .line 749
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0, v10}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getPaymentMethod(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;)Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 750
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getPromotionId()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_12
    move-object v0, v7

    :goto_6
    move-object v9, v0

    :cond_13
    if-ne p2, v8, :cond_16

    if-eqz p3, :cond_16

    .line 756
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-nez v0, :cond_14

    .line 758
    invoke-virtual {p0, v4}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0, v5}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 761
    :cond_14
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;->federationLinking:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "extraPaypalCode"

    .line 763
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "extraPaypalState"

    .line 764
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "extraPaypalError"

    .line 765
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "proxErrorDescription"

    .line 767
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "token"

    .line 768
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "key"

    .line 769
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 770
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    move-object v1, v10

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v9

    move-object v9, p0

    .line 771
    invoke-virtual/range {v0 .. v9}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setPaymentMethodPayPalFedLinking(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto :goto_7

    :cond_15
    const-string v0, "payPalLinkId"

    .line 776
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 777
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const/4 v3, 0x0

    move-object v1, v10

    move-object v4, v9

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setPaymentMethodPayPal(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    .line 779
    :goto_7
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->finish()V

    goto/16 :goto_9

    :cond_16
    if-ne p2, v5, :cond_18

    .line 783
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-eqz v0, :cond_17

    .line 785
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->stopProgress()V

    .line 786
    invoke-static {p0}, Lcom/ebay/mobile/MyApp;->signOutForIafTokenFailure(Landroid/app/Activity;)V

    .line 787
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->finish()V

    goto/16 :goto_9

    .line 791
    :cond_17
    invoke-virtual {p0, v4}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0, v5}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_18
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1a

    if-eqz p3, :cond_19

    const-string/jumbo v0, "proxErrorCode"

    .line 799
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "proxErrorDescription"

    .line 801
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 802
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const-string v2, "IDENTITY"

    move-object v1, v10

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setPaymentMethodError(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    .line 805
    :cond_19
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->finish()V

    return-void

    :cond_1a
    const/16 v0, 0x8

    if-ne p2, v0, :cond_1b

    const v0, 0x7f120209

    .line 810
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120a55

    .line 811
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 810
    invoke-virtual {p0, v0, v1, v6}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 812
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->finish()V

    return-void

    :cond_1b
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1d

    if-eqz p3, :cond_1c

    const-string/jumbo v0, "proxErrorCode"

    .line 819
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "proxErrorDescription"

    .line 821
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 822
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const-string v2, "IDENTITY"

    move-object v1, v10

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setPaymentMethodError(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    .line 825
    :cond_1c
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->finish()V

    return-void

    :cond_1d
    if-ne p2, v3, :cond_20

    .line 832
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL_CREDIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne v10, v0, :cond_1e

    .line 834
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0, v10}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getPaymentMethod(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;)Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 836
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getSelectedPaymentInstrument()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    move-result-object v7

    goto :goto_8

    .line 841
    :cond_1e
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSelectedPaymentMethod()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 843
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getSelectedPaymentInstrument()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    move-result-object v7

    :cond_1f
    :goto_8
    if-eqz v7, :cond_20

    .line 846
    iget-object v0, v7, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->paymentInstrumentId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 848
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    iget-object v2, v7, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->paymentInstrumentId:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v1, v10

    move-object v4, v9

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setPaymentMethodPayPal(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    .line 849
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->finish()V

    .line 852
    :cond_20
    :goto_9
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->stopProgress()V

    :cond_21
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAddressFieldsChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V
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

    .line 301
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-nez p2, :cond_0

    .line 302
    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    :cond_0
    return-void
.end method

.method public onAddressFieldsSaved(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V
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

    .line 311
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-nez p2, :cond_0

    .line 312
    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    :cond_0
    return-void
.end method

.method public onAddressesChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V
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

    .line 291
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-nez p2, :cond_0

    .line 292
    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    :cond_0
    return-void
.end method

.method public onDialogFragmentResult(Landroidx/fragment/app/DialogFragment;II)V
    .locals 4

    const/16 v0, 0x3757

    if-eq p2, v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 p2, 0x1

    if-ne p3, p2, :cond_9

    .line 1591
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const-string v1, "DIALOG_PARENT_BUNDLE_ARG"

    .line 1594
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    goto :goto_0

    :cond_1
    move-object p3, v0

    .line 1596
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x23dfe766

    const/4 v3, -0x1

    if-eq v1, v2, :cond_5

    const v2, 0x8454f98

    if-eq v1, v2, :cond_4

    const v2, 0x456210b2

    if-eq v1, v2, :cond_3

    const v2, 0x48908807    # 296000.22f

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "dialog_handle_payment_method_selection"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_3
    const-string p2, "dialog_paypal_credit_promotion"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p2, 0x3

    goto :goto_2

    :cond_4
    const-string p2, "dialog_process_payment_method_link"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p2, 0x2

    goto :goto_2

    :cond_5
    const-string p2, "dialog_remove_line_item"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p2, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p2, -0x1

    :goto_2
    packed-switch p2, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    if-eqz p3, :cond_a

    const-string p1, "dialog_selected_promotion_id_arg"

    .line 1633
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "dialog_selected_financing_code_arg"

    .line 1635
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1636
    invoke-virtual {p0, p2, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->processPpcPromotionSelection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_1
    if-eqz p3, :cond_a

    const-string p1, "dialog_payment_method_type_arg"

    .line 1622
    invoke-virtual {p3, p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_7

    goto :goto_3

    .line 1624
    :cond_7
    invoke-static {}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->values()[Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    move-result-object p2

    aget-object v0, p2, p1

    :goto_3
    if-eqz v0, :cond_a

    .line 1626
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->processPaymentMethodLink(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;)V

    goto :goto_5

    :pswitch_2
    if-eqz p3, :cond_a

    const-string p1, "dialog_payment_method_type_arg"

    .line 1612
    invoke-virtual {p3, p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_8

    move-object p1, v0

    goto :goto_4

    .line 1614
    :cond_8
    invoke-static {}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->values()[Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    move-result-object p2

    aget-object p1, p2, p1

    :goto_4
    if-eqz p1, :cond_a

    .line 1616
    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->handlePaymentMethodSelectionWithAction(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)V

    goto :goto_5

    :pswitch_3
    if-eqz p3, :cond_a

    const-string p1, "dialog_line_item_id_arg"

    .line 1601
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1604
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->startProgress()V

    .line 1605
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p2, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->removeLineItem(Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto :goto_5

    .line 1644
    :cond_9
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->dialogCancelAction:Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->trackExperienceAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;)V

    :cond_a
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V
    .locals 1

    .line 250
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V

    .line 251
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    invoke-virtual {p1, v0, p0}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->initialize(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    return-void
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 181
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->isActive:Z

    .line 182
    invoke-super {p0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->isActive:Z

    .line 189
    invoke-super {p0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onResume()V

    .line 190
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->getSessionIfStale(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 242
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "xoParams"

    .line 243
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "dialogCancelAction"

    .line 244
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->dialogCancelAction:Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;",
            ">;Z)V"
        }
    .end annotation

    .line 258
    iget-object p3, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-nez p3, :cond_0

    .line 259
    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    const-class p3, Lcom/ebay/mobile/dagger/AppComponent;

    invoke-interface {p1, p3}, Lcom/ebay/nautilus/kernel/content/EbayContext;->as(Ljava/lang/Class;)Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/dagger/AppComponent;

    invoke-interface {p1}, Lcom/ebay/mobile/dagger/AppComponent;->getPreferences()Lcom/ebay/common/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/common/Preferences;->isSignedIn()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 263
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getMessages()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/ebay/common/util/EbayErrorUtil;->userNotLoggedIn(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 264
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p3

    invoke-static {p0, p1, p3}, Lcom/ebay/common/view/EbayErrorHandler;->handleResultStatus(Landroidx/fragment/app/FragmentActivity;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Z

    .line 269
    :cond_1
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    .line 273
    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getAvailablePaymentMethods(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    .line 275
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL_CREDIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    iget-object v1, p3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->COMPLETE_PAYMENT_METHOD:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    .line 278
    invoke-virtual {p3, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 280
    iput-boolean p2, p3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->selected:Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected populateBranding(Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)V
    .locals 4
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7f0a14a4

    .line 2075
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    .line 2080
    :cond_0
    new-instance v0, Lcom/ebay/mobile/uxcomponents/viewmodel/StyledTextThemeData;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/uxcomponents/viewmodel/StyledTextThemeData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 2084
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;->getIconName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ebay/mobile/uxcomponents/viewmodel/StyledTextThemeData;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2086
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;->getAccessibilityText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2087
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    if-eqz p3, :cond_2

    .line 2091
    invoke-static {p0, p3}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object p3

    .line 2092
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2093
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move-object p3, v2

    :goto_0
    const v0, 0x7f12103d

    .line 2097
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2098
    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    if-nez p2, :cond_3

    const p2, 0x7f0801f8

    .line 2100
    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2102
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method protected processFedLinkOnNewIntent(Landroid/content/Intent;)V
    .locals 11

    if-eqz p1, :cond_3

    .line 2112
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz v0, :cond_3

    .line 2114
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->startProgress()V

    .line 2115
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string/jumbo v0, "state"

    .line 2118
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "code"

    .line 2119
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "error"

    .line 2120
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "error_description"

    .line 2121
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "token"

    .line 2122
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "key"

    .line 2123
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2125
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->getRequestType()I

    move-result p1

    const/16 v0, 0x7d3

    if-ne p1, v0, :cond_2

    const-string/jumbo p1, "user_cancelled"

    const-string/jumbo v0, "undefined"

    .line 2128
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_1
    const-string v0, "3ds_failure"

    .line 2130
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "3ds_failure"

    goto :goto_0

    .line 2132
    :goto_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->purchase(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto :goto_2

    .line 2135
    :cond_2
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->getSelectedPaymentMethod()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    move-result-object v2

    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    .line 2137
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->getPromotionId()Ljava/lang/String;

    move-result-object v7

    move-object v10, p0

    .line 2135
    invoke-virtual/range {v1 .. v10}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setPaymentMethodPayPalFedLinking(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    :cond_3
    :goto_2
    return-void
.end method

.method protected processPaymentMethodLink(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;)V
    .locals 9

    .line 1890
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    .line 1891
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    if-nez v0, :cond_0

    return-void

    .line 1895
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;->getAvailablePaymentMethodWithType(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;)Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 1899
    :cond_1
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->SELECT_PAYMENT_INSTRUMENT:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    .line 1905
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL_CREDIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->ADD_CREDIT_FUNDING_SOURCE:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    .line 1906
    invoke-virtual {p1, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1907
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->ADD_CREDIT_FUNDING_SOURCE:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    :cond_2
    move-object v7, v0

    .line 1909
    iget-boolean v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->selected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 1911
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getSelectedPaymentInstrument()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1914
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->paymentInstrumentId:Ljava/lang/String;

    .line 1916
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getSelectedFundingSource()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1918
    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->fundingSourceId:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v3, v1

    .line 1920
    :goto_0
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getSelectedFundingPlan()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingPlan;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1922
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingPlan;->fundingPlanId:Ljava/lang/String;

    move-object v4, v0

    goto :goto_1

    :cond_4
    move-object v4, v1

    :goto_1
    move-object v5, v3

    move-object v3, v2

    goto :goto_2

    :cond_5
    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    .line 1925
    :goto_2
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    .line 1926
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getPromotionId()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v1, p0

    .line 1925
    invoke-virtual/range {v1 .. v8}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->handlePaymentMethodSelection(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;Ljava/lang/String;)V

    return-void
.end method

.method protected processPpcPromotionSelection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1937
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-eqz v0, :cond_3

    .line 1939
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL_CREDIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getPaymentMethod(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;)Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1946
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getSelectedPaymentInstrument()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1950
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getSelectedFundingSource()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1953
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->startProgress()V

    .line 1954
    sget-object v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL_CREDIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    iget-object v5, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->paymentInstrumentId:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->fundingSourceId:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v3, p0

    move-object v8, p2

    move-object v10, p1

    invoke-virtual/range {v3 .. v10}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->handlePaymentMethodSelection(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 1957
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->setResult(I)V

    .line 1958
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->finish()V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1969
    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->SELECT_PAYMENT_INSTRUMENT:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1970
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->SELECT_PAYMENT_INSTRUMENT:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    :cond_1
    :goto_0
    move-object v8, v1

    goto :goto_1

    .line 1971
    :cond_2
    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->ADD_CREDIT_FUNDING_SOURCE:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1972
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->ADD_CREDIT_FUNDING_SOURCE:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    goto :goto_0

    :goto_1
    if-eqz v8, :cond_3

    .line 1975
    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL_CREDIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v7, p2

    move-object v9, p1

    invoke-virtual/range {v2 .. v9}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->handlePaymentMethodSelection(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected removePaymentMandate()V
    .locals 2

    .line 1759
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->DIRECT_DEBIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getPaymentMethod(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;)Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1762
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getDirectDebitInstrumentDetails()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1764
    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->paymentAgreement:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentAgreementMandate;

    :cond_0
    return-void
.end method

.method public renderBackgroundDisabled(Landroid/view/ViewGroup;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 562
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 563
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f0402f4

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f0600f0

    .line 564
    iput v1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 565
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_2

    .line 566
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/util/TypedValue;->data:I

    .line 567
    :cond_2
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method

.method public renderDisabledCell(Landroid/view/ViewGroup;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 549
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->renderBackgroundDisabled(Landroid/view/ViewGroup;)V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 550
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method protected renderDisabledPaymentMethod(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V
    .locals 6

    const v0, 0x7f0a0b89

    .line 1850
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1851
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    const v3, 0x7f0a0b8b

    if-eq v0, v2, :cond_0

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL_CREDIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne v0, v2, :cond_1

    .line 1854
    :cond_0
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->url:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1855
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1857
    :cond_1
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->disabledMessage:Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;

    if-eqz v0, :cond_3

    .line 1859
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->disabledMessage:Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;

    invoke-static {p0, p3, v0}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->renderToolTip(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;)V

    const/4 v0, 0x0

    .line 1860
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1861
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1862
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1863
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_2
    const p1, 0x7f1208ab

    const/4 v2, 0x0

    .line 1864
    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1865
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f070496

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 1866
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    .line 1867
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1868
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    .line 1865
    invoke-virtual {p3, p1, v4, v2, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1869
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f0a0b93

    .line 1870
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 1871
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 1872
    invoke-virtual {p1, p4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1873
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1876
    :cond_3
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->renderBackgroundDisabled(Landroid/view/ViewGroup;)V

    const p1, 0x7f0a0b91

    .line 1878
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/high16 p3, 0x3f000000    # 0.5f

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 1879
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    const p1, 0x7f0a0b72

    .line 1880
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method protected renderError(Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;)V
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->errorContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->renderError(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;Z)V

    return-void
.end method

.method protected renderErrors(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 482
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 484
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 485
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    .line 487
    iget-wide v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->errorId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->sendErrorCodeImpression(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 488
    invoke-static {p0, p1, v0, v1}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->renderError(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;Z)V

    goto :goto_0

    .line 491
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->errorContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 492
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->errorContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    return-void
.end method

.method public renderErrors(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 522
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->errorContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->renderErrors(Landroid/view/ViewGroup;Ljava/util/List;)V

    goto :goto_0

    .line 524
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->errorContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 525
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->errorContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected renderExchangeRate(Landroid/view/View$OnClickListener;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingPlan;I)Z
    .locals 9
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    const-string v0, "View group must not be null"

    .line 1995
    invoke-static {p2, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Funding source must not be null"

    .line 1996
    invoke-static {p3, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Payment method must not be null"

    .line 1997
    invoke-static {p4, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "OnclickListener must not be null"

    .line 1998
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2001
    iget-object p3, p3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->exchangeRate:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ExchangeRate;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    const v1, 0x7f0a0b7e

    .line 2006
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0b79

    .line 2007
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0a0b7a

    .line 2008
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f0a0b7c

    .line 2009
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    .line 2011
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2012
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2013
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2014
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2017
    invoke-virtual {p3}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ExchangeRate;->getRenderText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2019
    invoke-virtual {p3}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ExchangeRate;->getRenderText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2020
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 2023
    :cond_1
    iget-object v1, p3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ExchangeRate;->exchangeRateTextDisplay:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 2026
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2029
    iget-object v1, p3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ExchangeRate;->exchangeRateTextDisplay:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    .line 2031
    invoke-static {p0, v5}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2032
    iget-object v7, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0d00c3

    invoke-virtual {v7, v8, v6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2033
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2034
    invoke-static {v6, p6}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 2035
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2036
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2045
    :cond_2
    iget-object v1, p3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ExchangeRate;->moreRatesText:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz v1, :cond_4

    const v1, 0x7f0a0b7d

    .line 2047
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 2048
    iget-object v1, p3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ExchangeRate;->moreRatesText:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {p0, v1}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2049
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2050
    invoke-static {p2, p6}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 2051
    invoke-virtual {v3, p3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const p2, 0x7f0a1247

    .line 2052
    iget-object p3, p4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v3, p2, p3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    const p2, 0x7f0a1243

    if-eqz p5, :cond_3

    .line 2053
    iget-object v6, p5, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingPlan;->fundingPlanId:Ljava/lang/String;

    .line 2054
    :cond_3
    invoke-virtual {v3, p2, v6}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 2055
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2056
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2057
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    :cond_4
    :goto_1
    return v0
.end method

.method protected renderInlineErrors(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 505
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 507
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    .line 509
    iget-wide v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->errorId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->sendErrorCodeImpression(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 510
    invoke-static {p0, p1, v0, v1}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->renderError(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected sendCheckoutPageImpression(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1200
    iget-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->useMtsTracking()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-boolean v1, v0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->isActive:Z

    if-nez v1, :cond_0

    goto/16 :goto_d

    .line 1203
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1204
    new-instance v2, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 1205
    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v2

    .line 1206
    invoke-virtual {v2, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->setSourceIdentification(Landroid/content/Intent;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v2

    .line 1211
    instance-of v3, v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;

    if-eqz v3, :cond_12

    const-string/jumbo v3, "prox"

    const-string v4, "1"

    .line 1213
    invoke-virtual {v2, v3, v4}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string/jumbo v3, "pudo"

    const-string v4, "0"

    .line 1214
    invoke-virtual {v2, v3, v4}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v3, "cart_id"

    .line 1215
    iget-object v4, v0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v4}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getCcsCartId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string/jumbo v3, "sessid"

    .line 1216
    iget-object v4, v0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v4}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v3, "ip"

    .line 1231
    iget-object v4, v0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v5, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CartDetailsModule;

    .line 1232
    invoke-virtual {v4, v5}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CartDetailsModule;

    if-eqz v4, :cond_8

    .line 1235
    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CartDetailsModule;->sellerBuckets:Ljava/util/List;

    if-eqz v4, :cond_8

    .line 1236
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 1237
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;

    .line 1239
    iget-object v6, v5, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;->lineItems:Ljava/util/List;

    if-eqz v6, :cond_7

    iget-object v6, v5, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;->lineItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_4

    .line 1242
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1243
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 1244
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 1246
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v9

    .line 1247
    sget-object v10, Lcom/ebay/mobile/dcs/DcsBoolean;->smeSupport:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v9, v10}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v9

    .line 1250
    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/experience/checkout/details/SellerBucket;->lineItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;

    .line 1252
    iget-object v11, v10, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->trackingDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/details/TrackingDetails;

    if-eqz v11, :cond_2

    iget-object v11, v10, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->trackingDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/details/TrackingDetails;

    iget-object v11, v11, Lcom/ebay/nautilus/domain/data/experience/checkout/details/TrackingDetails;->transactionId:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "-1"

    iget-object v12, v10, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->trackingDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/details/TrackingDetails;

    iget-object v12, v12, Lcom/ebay/nautilus/domain/data/experience/checkout/details/TrackingDetails;->transactionId:Ljava/lang/String;

    .line 1253
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string/jumbo v3, "rc"

    .line 1256
    :cond_2
    invoke-virtual {v10}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->getEbayItemId()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 1259
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1260
    iget-object v12, v10, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->promotions:Ljava/util/List;

    if-eqz v12, :cond_4

    .line 1261
    iget-object v10, v10, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->promotions:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ebay/nautilus/domain/data/experience/checkout/details/Promotion;

    .line 1263
    new-instance v13, Lcom/ebay/nautilus/domain/analytics/Tracking$Formatters$SellerOfferItem;

    .line 1264
    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v16, v3

    iget-object v3, v12, Lcom/ebay/nautilus/domain/data/experience/checkout/details/Promotion;->type:Lcom/ebay/nautilus/domain/data/experience/checkout/details/PromotionType;

    .line 1265
    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PromotionType;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v4

    iget-object v4, v12, Lcom/ebay/nautilus/domain/data/experience/checkout/details/Promotion;->type:Lcom/ebay/nautilus/domain/data/experience/checkout/details/PromotionType;

    invoke-virtual {v4}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PromotionType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v13, v14, v15, v3, v4}, Lcom/ebay/nautilus/domain/analytics/Tracking$Formatters$SellerOfferItem;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 1266
    iget-boolean v3, v12, Lcom/ebay/nautilus/domain/data/experience/checkout/details/Promotion;->applied:Z

    if-eqz v3, :cond_3

    move-object v3, v8

    goto :goto_3

    :cond_3
    move-object v3, v7

    :goto_3
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    goto :goto_2

    :cond_4
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    goto :goto_1

    :cond_5
    move-object/from16 v17, v4

    if-eqz v9, :cond_6

    const-string/jumbo v4, "umo"

    .line 1275
    invoke-static {v7}, Lcom/ebay/nautilus/domain/analytics/Tracking$Formatters$SellerOfferItem;->format(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 1274
    invoke-virtual {v2, v4, v5}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v4, "mo"

    .line 1277
    invoke-static {v8}, Lcom/ebay/nautilus/domain/analytics/Tracking$Formatters$SellerOfferItem;->format(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 1276
    invoke-virtual {v2, v4, v5}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    :cond_6
    const-string v4, "cart_itm"

    .line 1281
    invoke-static {v6}, Lcom/ebay/nautilus/domain/analytics/AnalyticsUtil;->getCommaSeparatedStringFromCollection(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    .line 1280
    invoke-virtual {v2, v4, v5}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v4, "itm"

    .line 1285
    invoke-static {v6}, Lcom/ebay/nautilus/domain/analytics/AnalyticsUtil;->getCommaSeparatedStringFromCollection(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    .line 1284
    invoke-virtual {v2, v4, v5}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    goto :goto_5

    :cond_7
    :goto_4
    move-object/from16 v17, v4

    :goto_5
    move-object/from16 v4, v17

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v4, "shopping_cart_id"

    const-wide/16 v5, -0x1

    .line 1291
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v1, v7, v5

    if-eqz v1, :cond_9

    const-string v1, "ebc"

    .line 1294
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "ckfl"

    const-string/jumbo v3, "sc"

    .line 1295
    invoke-virtual {v2, v1, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    goto :goto_6

    :cond_9
    const-string v1, "ckfl"

    .line 1299
    invoke-virtual {v2, v1, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 1302
    :goto_6
    iget-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v3, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;

    invoke-virtual {v1, v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;

    if-eqz v1, :cond_a

    .line 1305
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;->total:Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;->amount:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;->value:Ljava/lang/Object;

    check-cast v1, Lcom/ebay/nautilus/domain/data/cos/base/Amount;

    const-string v3, "chtp"

    const/4 v4, 0x0

    .line 1307
    invoke-virtual {v1, v4}, Lcom/ebay/nautilus/domain/data/cos/base/Amount;->getValue(Z)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    .line 1306
    invoke-virtual {v2, v3, v4}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v3, "chtpc"

    .line 1308
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/cos/base/Amount;->currency:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 1312
    :cond_a
    iget-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->isPaymentMethodSelected()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string/jumbo v1, "unknown"

    .line 1315
    iget-object v3, v0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSelectedPaymentMethod()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 1318
    sget-object v4, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$payment$PaymentMethodType:[I

    iget-object v5, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v5}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_8

    :pswitch_0
    const-string v1, "CC"

    .line 1328
    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getSelectedFundingSourceSubtypes()Ljava/util/List;

    move-result-object v4

    .line 1329
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 1331
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;

    .line 1333
    sget-object v6, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$payment$FundingSourceSubType:[I

    invoke-virtual {v5}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_1

    goto :goto_7

    :pswitch_1
    const-string v1, "cup"

    goto :goto_7

    :pswitch_2
    const-string v1, "maestro"

    goto :goto_7

    :pswitch_3
    const-string v1, "disc"

    goto :goto_7

    :pswitch_4
    const-string v1, "amex"

    goto :goto_7

    :pswitch_5
    const-string/jumbo v1, "visa"

    goto :goto_7

    :pswitch_6
    const-string v1, "mc"

    goto :goto_7

    :pswitch_7
    const-string v1, "PayPalCredit"

    goto :goto_8

    :pswitch_8
    const-string v1, "PayPal"

    :cond_b
    :goto_8
    const-string v4, "paywith"

    .line 1357
    invoke-virtual {v2, v4, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 1359
    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getSelectedPaymentInstrument()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1362
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentInstrument;->getSelectedFundingSource()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1365
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSource;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    if-eqz v1, :cond_f

    .line 1368
    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->CC:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne v3, v4, :cond_d

    const-string/jumbo v3, "spm"

    .line 1369
    iget-boolean v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->savedInstrument:Z

    if-eqz v1, :cond_c

    const-string v1, "1"

    goto :goto_9

    :cond_c
    const-string v1, "0"

    .line 1370
    :goto_9
    invoke-virtual {v2, v3, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    goto :goto_b

    :cond_d
    const-string/jumbo v3, "rmbrme"

    .line 1372
    iget-boolean v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->savedInstrument:Z

    if-eqz v1, :cond_e

    const-string v1, "1"

    goto :goto_a

    :cond_e
    const-string v1, "0"

    .line 1373
    :goto_a
    invoke-virtual {v2, v3, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 1381
    :cond_f
    :goto_b
    iget-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v3, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    invoke-virtual {v1, v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    if-eqz v1, :cond_10

    .line 1382
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->hasActiveDonation()Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "charityID"

    .line 1384
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->charityId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 1385
    iget-object v1, v0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v3, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;

    invoke-virtual {v1, v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;

    if-eqz v1, :cond_10

    .line 1388
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;->getDonationAmount()Lcom/ebay/nautilus/domain/data/cos/base/Amount;

    move-result-object v1

    if-eqz v1, :cond_10

    const-string v3, "donate"

    .line 1390
    iget-wide v4, v1, Lcom/ebay/nautilus/domain/data/cos/base/Amount;->value:D

    .line 1391
    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 1396
    :cond_10
    invoke-static/range {p0 .. p0}, Lcom/ebay/nautilus/domain/analytics/DeviceInfoUtil;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    const-string v3, "ort"

    if-eqz v1, :cond_11

    const-string v1, "p"

    goto :goto_c

    :cond_11
    const-string v1, "l"

    .line 1397
    :goto_c
    invoke-virtual {v2, v3, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 1400
    :cond_12
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void

    :cond_13
    :goto_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected sendErrorCodeImpression(Ljava/lang/String;)V
    .locals 2

    .line 1412
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->useMtsTracking()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1415
    :cond_0
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "PayPalError"

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    const-string v1, "errCode"

    .line 1416
    invoke-virtual {v0, v1, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    .line 1417
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method protected showActionConfirmationDialog(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ActionConfirmation;Landroid/os/Bundle;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;
    .locals 5

    if-eqz p1, :cond_3

    .line 1557
    new-instance v0, Lcom/ebay/app/AlertDialogFragment$Builder;

    invoke-direct {v0}, Lcom/ebay/app/AlertDialogFragment$Builder;-><init>()V

    .line 1558
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ActionConfirmation;->moduleTitle:Ljava/lang/String;

    .line 1559
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ActionConfirmation;->messages:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1560
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ActionConfirmation;->actions:Ljava/util/Map;

    if-eqz p1, :cond_3

    .line 1563
    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->REMOVE_ADVANCED_FEATURES:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    if-eqz v3, :cond_0

    .line 1564
    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const v3, 0x7f1208ab

    invoke-virtual {p0, v3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1565
    :goto_0
    sget-object v4, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->CANCEL_ACTION_CONFIRMATION:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    if-eqz p1, :cond_1

    .line 1566
    iget-object v4, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const v4, 0x7f1202e5

    invoke-virtual {p0, v4}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1568
    :goto_1
    invoke-virtual {v0, v1}, Lcom/ebay/app/AlertDialogFragment$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/ebay/app/AlertDialogFragment$Builder;

    move-result-object v0

    .line 1569
    invoke-virtual {v0, v2}, Lcom/ebay/app/AlertDialogFragment$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/ebay/app/AlertDialogFragment$Builder;

    move-result-object v0

    .line 1570
    invoke-virtual {v0, v3}, Lcom/ebay/app/AlertDialogFragment$Builder;->setPositiveButton(Ljava/lang/CharSequence;)Lcom/ebay/app/AlertDialogFragment$Builder;

    move-result-object v0

    .line 1571
    invoke-virtual {v0, v4}, Lcom/ebay/app/AlertDialogFragment$Builder;->setNegativeButton(Ljava/lang/CharSequence;)Lcom/ebay/app/AlertDialogFragment$Builder;

    move-result-object v0

    const/16 v1, 0x3757

    .line 1572
    invoke-virtual {v0, v1}, Lcom/ebay/app/AlertDialogFragment$Builder;->createFromActivity(I)Lcom/ebay/app/AlertDialogFragment;

    move-result-object v0

    .line 1573
    invoke-virtual {v0}, Lcom/ebay/app/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "DIALOG_PARENT_BUNDLE_ARG"

    .line 1575
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1576
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {v0, p2, p3}, Lcom/ebay/app/AlertDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method protected showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->dialogManager:Lcom/ebay/common/view/util/DialogManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ebay/common/view/util/DialogManager;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 581
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    instance-of p1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;

    if-eqz p1, :cond_0

    .line 582
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->flush()V

    :cond_0
    return-void
.end method

.method protected showTransferMessageWarningDialog(Ljava/util/Map;Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;Landroid/os/Bundle;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;",
            ">;",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;"
        }
    .end annotation

    .line 1671
    invoke-static {p0, p4}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object p4

    .line 1672
    new-instance v0, Lcom/ebay/app/AlertDialogFragment$Builder;

    invoke-direct {v0}, Lcom/ebay/app/AlertDialogFragment$Builder;-><init>()V

    .line 1675
    sget-object v1, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$payment$PaymentMethodType:[I

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->ordinal()I

    move-result p2

    aget p2, v1, p2

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 1690
    :pswitch_0
    sget-object p2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->SAVE_OTHER:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    .line 1691
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->CANCEL_OTHER:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    goto :goto_0

    .line 1686
    :pswitch_1
    sget-object p2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->SAVE_COD:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    .line 1687
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->CANCEL_COD:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    goto :goto_0

    .line 1682
    :pswitch_2
    sget-object p2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->SAVE_CIP:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    .line 1683
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->CANCEL_CIP:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    goto :goto_0

    .line 1678
    :pswitch_3
    sget-object p2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->SAVE_CASH_ON_PICKUP:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    .line 1679
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->CANCEL_CASH_ON_PICKUP:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    :goto_0
    if-eqz p2, :cond_0

    .line 1696
    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const p2, 0x7f1208ab

    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    if-eqz p1, :cond_1

    .line 1697
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    goto :goto_2

    :cond_1
    const v1, 0x7f1202e5

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1699
    :goto_2
    invoke-virtual {v0, p3}, Lcom/ebay/app/AlertDialogFragment$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/ebay/app/AlertDialogFragment$Builder;

    move-result-object p3

    .line 1700
    invoke-virtual {p3, p4}, Lcom/ebay/app/AlertDialogFragment$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/ebay/app/AlertDialogFragment$Builder;

    move-result-object p3

    .line 1701
    invoke-virtual {p3, p2}, Lcom/ebay/app/AlertDialogFragment$Builder;->setPositiveButton(Ljava/lang/CharSequence;)Lcom/ebay/app/AlertDialogFragment$Builder;

    move-result-object p2

    .line 1702
    invoke-virtual {p2, v1}, Lcom/ebay/app/AlertDialogFragment$Builder;->setNegativeButton(Ljava/lang/CharSequence;)Lcom/ebay/app/AlertDialogFragment$Builder;

    move-result-object p2

    const/16 p3, 0x3757

    .line 1703
    invoke-virtual {p2, p3}, Lcom/ebay/app/AlertDialogFragment$Builder;->createFromActivity(I)Lcom/ebay/app/AlertDialogFragment;

    move-result-object p2

    .line 1704
    invoke-virtual {p2}, Lcom/ebay/app/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_2

    const-string p4, "DIALOG_PARENT_BUNDLE_ARG"

    .line 1706
    invoke-virtual {p3, p4, p5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1707
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-virtual {p2, p3, p6}, Lcom/ebay/app/AlertDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected startPaypalCreditPromotionActivity(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;)Z
    .locals 2
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1727
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentPromotions:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;

    .line 1728
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL_CREDIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    .line 1729
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentPromotions;->hasInstallmentPromotions()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1731
    const-class p1, Lcom/ebay/mobile/checkout/xoneor/PaypalCreditPromotionsActivity;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->createCheckoutIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x7d4

    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public startProgress()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->progressContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->progressContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->contentContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->contentContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected startSepaActivityIfRequested()V
    .locals 6

    .line 676
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/error/ErrorsModule;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/error/ErrorsModule;

    if-eqz v0, :cond_1

    .line 677
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/error/ErrorsModule;->errors:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 679
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/error/ErrorsModule;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    const-string v2, "PAYMENT_VALIDATION_ERROR_RETRY"

    .line 681
    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ERROR"

    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->severity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, 0x7f1201aa

    .line 683
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->title:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 689
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getPaymentAgreementMandate()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentAgreementMandate;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 691
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->alreadyShowingSepa:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 694
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ebay/mobile/checkout/prox/SepaConfirmationActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 696
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentAgreementMandate;->getLegalText()Ljava/lang/String;

    move-result-object v2

    .line 697
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentAgreementMandate;->getDetailsLabel()Ljava/lang/String;

    move-result-object v3

    .line 698
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentAgreementMandate;->getWeblinkAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 701
    iget-object v4, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->url:Ljava/lang/String;

    :cond_3
    const-string/jumbo v5, "trackingAction"

    .line 703
    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v0, "usingExperienceService"

    const/4 v5, 0x1

    .line 704
    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "sepaText"

    .line 705
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "sepaButtonText"

    .line 706
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "sepaButtonLink"

    .line 707
    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    iput-boolean v5, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->alreadyShowingSepa:Z

    const/16 v0, 0x7d7

    .line 709
    invoke-virtual {p0, v1, v0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method public stopProgress()V
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->progressContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->progressContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->contentContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->contentContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected switchResultToCancelAndFinish(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1772
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->setResult(I)V

    .line 1773
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected trackCheckoutTransactions()Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v10, p0

    .line 1441
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1443
    iget-object v0, v10, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-eqz v0, :cond_4

    iget-object v0, v10, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->useMtsTracking()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1446
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1451
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "item"

    .line 1453
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/ebay/mobile/CheckoutItem;

    if-eqz v2, :cond_1

    .line 1455
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1459
    :cond_1
    iget-object v2, v10, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v3, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CartDetailsModule;

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CartDetailsModule;

    if-eqz v2, :cond_3

    .line 1462
    iget-object v2, v10, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v3, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;

    if-eqz v2, :cond_3

    .line 1463
    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;->total:Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;->total:Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;->amount:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    if-eqz v3, :cond_3

    .line 1465
    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;->total:Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;->amount:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;->value:Ljava/lang/Object;

    check-cast v2, Lcom/ebay/nautilus/domain/data/cos/base/Amount;

    if-eqz v2, :cond_3

    const-string v3, "com.ebay.mobile.tracking.Referrer"

    .line 1468
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "com.ebay.mobile.tracking.BidSource"

    .line 1469
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1470
    new-instance v14, Lcom/ebay/mobile/viewitem/ItemViewBidTracking$Roi;

    iget-object v0, v10, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/app/Authentication;->iafToken:Ljava/lang/String;

    new-instance v3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/cos/base/Amount;->currency:Ljava/lang/String;

    iget-wide v5, v2, Lcom/ebay/nautilus/domain/data/cos/base/Amount;->value:D

    .line 1471
    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v14, v0, v3}, Lcom/ebay/mobile/viewitem/ItemViewBidTracking$Roi;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    .line 1473
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/ebay/mobile/CheckoutItem;

    if-eqz v9, :cond_2

    .line 1477
    iget-object v0, v10, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iget-wide v1, v9, Lcom/ebay/mobile/CheckoutItem;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Lcom/ebay/mobile/CheckoutItem;->variationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getEbayItem(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;

    move-result-object v16

    if-eqz v16, :cond_2

    .line 1481
    invoke-virtual/range {v16 .. v16}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->getTransactionId()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, v9, Lcom/ebay/mobile/CheckoutItem;->isBidding:Z

    iget-boolean v7, v9, Lcom/ebay/mobile/CheckoutItem;->watched:Z

    .line 1483
    invoke-virtual/range {v16 .. v16}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->getTrackingQuantity()I

    move-result v8

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v10, v9

    move/from16 v9, v17

    .line 1480
    invoke-static/range {v0 .. v9}, Lcom/ebay/mobile/viewitem/ItemViewBidTracking;->sendBidStateForCheckout(Lcom/ebay/nautilus/shell/app/FwActivity;Lcom/ebay/mobile/CheckoutItem;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/mobile/viewitem/ItemViewBidTracking$Roi;Ljava/lang/String;ZZIZ)V

    const-string v0, "itm"

    .line 1485
    iget-wide v1, v10, Lcom/ebay/mobile/CheckoutItem;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bti"

    .line 1486
    invoke-virtual/range {v16 .. v16}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object/from16 v10, p0

    goto :goto_0

    :cond_3
    return-object v11

    :cond_4
    :goto_1
    return-object v11
.end method

.method protected final trackExperienceAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;)V
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1534
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/payments/checkout/analytics/CheckoutTrackingData;->trackExperienceAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method protected final trackRenderedModuleView(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V
    .locals 2
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1526
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->isActive:Z

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/ebay/payments/checkout/analytics/CheckoutTrackingData;->trackRenderedModuleView(ZLcom/ebay/nautilus/domain/data/experience/type/base/IModule;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method public validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 393
    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->modules:Ljava/util/Map;

    if-nez v3, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->hasErrors()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 404
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->hasFatalError()Z

    move-result v3

    .line 408
    iget-object v4, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->errorContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    if-nez v3, :cond_1

    .line 410
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->errorContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    return v2

    :cond_1
    if-eqz v3, :cond_2

    .line 419
    const-class v3, Lcom/ebay/nautilus/domain/data/experience/checkout/error/ErrorsModule;

    invoke-virtual {p1, v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/error/ErrorsModule;

    if-eqz p1, :cond_2

    .line 422
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/error/ErrorsModule;->errors:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    .line 424
    iget-wide v3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->errorId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->sendErrorCodeImpression(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->stopProgress()V

    .line 426
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->hideContent()V

    .line 428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->title:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, v2}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    .line 435
    :cond_2
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->errorContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    .line 436
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->errorContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_3
    return v2

    :cond_4
    :goto_0
    const p1, 0x7f120a38

    .line 395
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 396
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->stopProgress()V

    .line 397
    invoke-virtual {p0, v0, p1, v2}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method
