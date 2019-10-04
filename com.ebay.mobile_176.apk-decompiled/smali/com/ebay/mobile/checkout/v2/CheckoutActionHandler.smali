.class public Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;
.super Ljava/lang/Object;
.source "CheckoutActionHandler.java"

# interfaces
.implements Lcom/ebay/payments/experience/PaymentsActionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;,
        Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$WebViewIntent;,
        Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$ScreenLauncher;
    }
.end annotation


# static fields
.field public static final EXTRA_EXCHANGE_RATE_ACTION:Ljava/lang/String; = "extra_exchange_rate_action"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$1;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;-><init>()V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 75
    invoke-static {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;->buildP2PayPalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static addReturnUrl(Ljava/util/HashMap;)V
    .locals 2
    .param p0    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "returnURL"

    const-string v1, "https://www.ebay.com/paypalcomplete"

    .line 236
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static addToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 473
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static buildP2PayPalUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 381
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "native_xo"

    const-string v1, "1"

    .line 382
    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "redirect_uri"

    const-string v1, "ebay://xo"

    .line 383
    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildRequestParamsForExchangeRateRefresh(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)Ljava/util/Map;
    .locals 3
    .param p0    # Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/Action;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "Action should not be null"

    .line 450
    invoke-static {p0, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 452
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 453
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object p0

    .line 454
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->PAYMENT_INSTRUMENT_ID:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->PAYMENT_INSTRUMENT_ID:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;

    .line 455
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 454
    invoke-static {v0, v1, v2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;->addToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->PAYMENT_METHOD_ID:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->PAYMENT_METHOD_ID:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;

    .line 457
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 456
    invoke-static {v0, v1, v2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;->addToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->SHOULD_REMEMBER:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->REMEMBER_CARD:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    .line 459
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 458
    invoke-static {v0, v1, p0}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;->addToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    sget-object p0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->IS_SAVED_INSTRUMENT:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;

    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->getKey()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static handleNavAction(Landroid/app/Activity;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Landroid/os/Bundle;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Action should not be null when performing navigation"

    .line 127
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 133
    :cond_0
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->MODULE_NAME:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "Unknown"

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    invoke-static {p0, p1, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$ScreenLauncher;->access$000(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method private static handleOperationAction(Lcom/ebay/nautilus/kernel/content/EbayContext;Landroid/app/Activity;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Landroid/os/Bundle;)V
    .locals 3
    .param p0    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Action should not be null when performing Operation"

    .line 145
    invoke-static {p2, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object v0

    .line 152
    sget-object v1, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$v2$common$ActionEnum:[I

    iget-object v2, p2, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->safeValueOf(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 211
    :pswitch_0
    invoke-static {p2, p0}, Lcom/ebay/payments/checkout/analytics/CheckoutTrackingData;->trackExperienceAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 212
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->clientPresentationMetadata()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string/jumbo p3, "screen"

    .line 213
    invoke-interface {p0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string/jumbo p3, "screen"

    .line 215
    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string/jumbo p3, "splitOrder"

    .line 216
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 218
    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    goto/16 :goto_1

    .line 207
    :pswitch_1
    instance-of p0, p1, Lcom/ebay/payments/checkout/IncentivesHandler;

    if-eqz p0, :cond_5

    .line 208
    check-cast p1, Lcom/ebay/payments/checkout/IncentivesHandler;

    invoke-interface {p1, p2}, Lcom/ebay/payments/checkout/IncentivesHandler;->handleApplyIncentiveV2(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    goto/16 :goto_1

    :pswitch_2
    if-nez v0, :cond_0

    return-void

    .line 189
    :cond_0
    sget-object p0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->MODULE_NAME:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;

    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "extra_checkout_split_module_action"

    .line 190
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 192
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 194
    sget-object p2, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->MODULE_NAME:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 197
    instance-of p0, p1, Lcom/ebay/payments/checkout/IncentivesHandler;

    if-eqz p0, :cond_5

    .line 198
    check-cast p1, Lcom/ebay/payments/checkout/IncentivesHandler;

    invoke-interface {p1}, Lcom/ebay/payments/checkout/IncentivesHandler;->handleIncentivesAction()V

    goto/16 :goto_1

    :cond_1
    const-string/jumbo p2, "splitOrderSuccess"

    .line 200
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    instance-of p2, p1, Lcom/ebay/mobile/checkout/v2/model/OverlayContract;

    if-eqz p2, :cond_2

    .line 201
    check-cast p1, Lcom/ebay/mobile/checkout/v2/model/OverlayContract;

    invoke-interface {p1}, Lcom/ebay/mobile/checkout/v2/model/OverlayContract;->showOverlay()V

    goto :goto_1

    .line 203
    :cond_2
    invoke-static {p1, p0, p3}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$ScreenLauncher;->access$000(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_3
    const-string p0, "billingAddress"

    .line 184
    invoke-static {p1, p0, p3}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$ScreenLauncher;->access$000(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_4
    const/4 p0, 0x0

    if-eqz v0, :cond_3

    .line 163
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->PAYMENT_METHOD_ID:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    sget-object p0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->PAYMENT_METHOD_ID:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;

    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 166
    :cond_3
    sget-object v0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$payment$PaymentMethodType:[I

    invoke-static {p0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->safeValueOf(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_1

    goto :goto_1

    :pswitch_5
    const-string p0, "directDebitDetails"

    .line 177
    invoke-static {p1, p0, p3, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$ScreenLauncher;->access$100(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    goto :goto_1

    .line 173
    :pswitch_6
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;->addReturnUrl(Ljava/util/HashMap;)V

    .line 174
    invoke-static {p1, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;->performOperationAction(Landroid/app/Activity;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    goto :goto_1

    :pswitch_7
    const-string p0, "creditCardDetails"

    .line 169
    invoke-static {p1, p0, p3, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$ScreenLauncher;->access$100(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    goto :goto_1

    :pswitch_8
    const-string p0, "addressFields"

    .line 158
    invoke-static {p1, p0, p3, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$ScreenLauncher;->access$100(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    goto :goto_1

    :pswitch_9
    const-string p0, "expandShippingAddress"

    .line 155
    invoke-static {p1, p0, p3, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$ScreenLauncher;->access$100(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    goto :goto_1

    .line 225
    :cond_4
    :goto_0
    invoke-static {p1, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;->performOperationAction(Landroid/app/Activity;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private static handleWebViewAction(Landroid/app/Activity;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Landroidx/fragment/app/Fragment;)V
    .locals 3
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 257
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;->federationLinking:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;

    .line 258
    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    .line 259
    sget-object v1, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$v2$common$ActionEnum:[I

    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->safeValueOf(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 310
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "url"

    .line 311
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "use_sso"

    const/4 v1, 0x1

    .line 312
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "back"

    .line 313
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "add_device_id"

    const/4 v2, 0x0

    .line 314
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "load_title"

    .line 315
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 316
    new-instance p1, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$WebViewIntent;

    invoke-direct {p1, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$WebViewIntent;-><init>(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_0
    if-eqz v0, :cond_0

    const-string v0, "ebay://fedlink/v2"

    .line 304
    invoke-static {p1, v0}, Lcom/ebay/mobile/checkout/v2/PayPalIntentBuilder;->getActionUrl(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 303
    invoke-static {p0, p1}, Lcom/ebay/mobile/util/CustomTabsUtil;->launchCustomTabs(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 307
    :cond_0
    invoke-static {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;->setupCreditCardChallengeIntent(Landroid/app/Activity;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$WebViewIntent;

    move-result-object p1

    goto :goto_1

    :pswitch_1
    if-eqz v0, :cond_1

    .line 277
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->url:Ljava/lang/String;

    :try_start_0
    const-string v0, "ebay://fedlink/v2"

    const-string v1, "UTF-8"

    .line 280
    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\{redirect_uri\\}"

    .line 281
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ebay/mobile/util/CustomTabsUtil;->launchCustomTabs(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :catch_0
    return-void

    .line 291
    :cond_1
    invoke-static {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;->setupPayPalIntent(Landroid/app/Activity;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$WebViewIntent;

    move-result-object v0

    const/16 v1, 0x7d8

    .line 292
    iput v1, v0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$WebViewIntent;->requestCode:I

    .line 293
    iget-object v1, v0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$WebViewIntent;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 295
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_exchange_rate_action"

    .line 296
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 297
    iget-object p1, v0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$WebViewIntent;->intent:Landroid/content/Intent;

    const-string v2, "proxUserDataBundle"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    move-object p1, v0

    goto :goto_1

    :pswitch_2
    if-eqz v0, :cond_3

    const-string v0, "ebay://fedlink/v2"

    .line 269
    invoke-static {p1, v0}, Lcom/ebay/mobile/checkout/v2/PayPalIntentBuilder;->getActionUrl(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 268
    invoke-static {p0, p1}, Lcom/ebay/mobile/util/CustomTabsUtil;->launchCustomTabs(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 271
    :cond_3
    invoke-static {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;->setupPayPalIntent(Landroid/app/Activity;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$WebViewIntent;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_6

    .line 319
    iget-object v0, p1, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$WebViewIntent;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_6

    .line 321
    iget v0, p1, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$WebViewIntent;->requestCode:I

    if-lez v0, :cond_5

    if-eqz p2, :cond_4

    .line 325
    iget-object p0, p1, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$WebViewIntent;->intent:Landroid/content/Intent;

    iget p1, p1, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$WebViewIntent;->requestCode:I

    invoke-virtual {p2, p0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 328
    :cond_4
    iget-object p2, p1, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$WebViewIntent;->intent:Landroid/content/Intent;

    iget p1, p1, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$WebViewIntent;->requestCode:I

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 332
    :cond_5
    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$WebViewIntent;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_6
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static loadBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string/jumbo v0, "screen"

    .line 369
    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo p0, "title"

    .line 370
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static performOperationAction(Landroid/app/Activity;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 241
    instance-of v0, p0, Lcom/ebay/payments/experience/PaymentsFragmentActivityContract;

    if-eqz v0, :cond_0

    .line 243
    check-cast p0, Lcom/ebay/payments/experience/PaymentsFragmentActivityContract;

    .line 244
    invoke-interface {p0}, Lcom/ebay/payments/experience/PaymentsFragmentActivityContract;->getPaymentsFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 245
    invoke-interface {p0}, Lcom/ebay/payments/experience/PaymentsFragmentActivityContract;->getFragmentContainer()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    .line 246
    instance-of v0, p0, Lcom/ebay/payments/experience/PerformActionCallback;

    if-eqz v0, :cond_0

    .line 247
    check-cast p0, Lcom/ebay/payments/experience/PerformActionCallback;

    invoke-interface {p0, p1}, Lcom/ebay/payments/experience/PerformActionCallback;->performOperationAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    :cond_0
    return-void
.end method

.method private static setupCreditCardChallengeIntent(Landroid/app/Activity;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$WebViewIntent;
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 360
    new-instance v0, Lcom/ebay/mobile/checkout/v2/PayPalIntentBuilder;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/v2/PayPalIntentBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/checkout/v2/PayPalIntentBuilder;->setAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)Lcom/ebay/mobile/checkout/v2/PayPalIntentBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/PayPalIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0

    .line 361
    new-instance p1, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$WebViewIntent;

    const/16 v0, 0x7d3

    invoke-direct {p1, p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$WebViewIntent;-><init>(Landroid/content/Intent;I)V

    return-object p1
.end method

.method private static setupPayPalIntent(Landroid/app/Activity;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$WebViewIntent;
    .locals 2
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 338
    new-instance v0, Lcom/ebay/mobile/checkout/v2/PayPalIntentBuilder;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/v2/PayPalIntentBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/checkout/v2/PayPalIntentBuilder;->setAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)Lcom/ebay/mobile/checkout/v2/PayPalIntentBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/PayPalIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0

    .line 339
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object p1

    .line 340
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->PAYMENT_METHOD_ID:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 343
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7d0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d1

    if-eqz p0, :cond_1

    .line 350
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->PROMOTION_ID:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v1, "extraPromotionId"

    .line 352
    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/16 p1, 0x7d1

    .line 355
    :goto_0
    new-instance v0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$WebViewIntent;

    invoke-direct {v0, p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$WebViewIntent;-><init>(Landroid/content/Intent;I)V

    return-object v0
.end method


# virtual methods
.method public handleAction(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Landroid/os/Bundle;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)Z
    .locals 3
    .param p1    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 100
    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->type:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    if-nez v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    sget-object v1, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$type$base$ActionType:[I

    iget-object v2, p2, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->type:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    return v0

    .line 113
    :pswitch_0
    invoke-static {p4, p2, p5}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;->handleWebViewAction(Landroid/app/Activity;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Landroidx/fragment/app/Fragment;)V

    .line 114
    invoke-static {p2, p1}, Lcom/ebay/payments/checkout/analytics/CheckoutTrackingData;->trackExperienceAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return v2

    .line 110
    :pswitch_1
    invoke-static {p1, p4, p2, p3}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;->handleOperationAction(Lcom/ebay/nautilus/kernel/content/EbayContext;Landroid/app/Activity;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Landroid/os/Bundle;)V

    return v2

    .line 106
    :pswitch_2
    invoke-static {p4, p2, p3}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;->handleNavAction(Landroid/app/Activity;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Landroid/os/Bundle;)V

    .line 107
    invoke-static {p2, p1}, Lcom/ebay/payments/checkout/analytics/CheckoutTrackingData;->trackExperienceAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return v2

    :cond_1
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
