.class public Lcom/ebay/mobile/checkout/v2/PayPalIntentBuilder;
.super Ljava/lang/Object;
.source "PayPalIntentBuilder.java"


# instance fields
.field private action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

.field final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/PayPalIntentBuilder;->context:Landroid/content/Context;

    return-void
.end method

.method public static getActionUrl(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0    # Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x3
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->url:Ljava/lang/String;

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object p0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p0, :cond_3

    .line 74
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->IDP_DISPLAY_PLACEHOLDER:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->RETURN_URL_PLACEHOLDER:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 76
    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->FINANCING_CODE_PLACEHOLDER:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;

    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 77
    sget-object v4, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->FINANCING_CODE:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;

    invoke-virtual {v4}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v4, "3"

    .line 79
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :cond_0
    if-eqz v2, :cond_1

    const-string v1, "UTF-8"

    .line 81
    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    :cond_1
    if-eqz v3, :cond_3

    .line 83
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, v3, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :cond_3
    return-object v0

    .line 90
    :catch_0
    const-class p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed encoding URL "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/PayPalIntentBuilder;->context:Landroid/content/Context;

    const-string v1, "Context cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/PayPalIntentBuilder;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    sget-object v1, Lcom/ebay/nautilus/domain/net/api/experience/checkout/CheckoutApiRequest;->PROX_RETURN_URL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ebay/mobile/checkout/v2/PayPalIntentBuilder;->getActionUrl(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/PayPalIntentBuilder;->context:Landroid/content/Context;

    const-class v3, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.extra.TITLE"

    .line 54
    iget-object v3, p0, Lcom/ebay/mobile/checkout/v2/PayPalIntentBuilder;->context:Landroid/content/Context;

    const v4, 0x7f1210e5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "url"

    .line 55
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "use_sso"

    const/4 v2, 0x1

    .line 56
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "back"

    .line 57
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "num_history_to_skip"

    const/4 v2, 0x0

    .line 58
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "add_device_id"

    .line 59
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "layout"

    const v2, 0x7f0d00f0

    .line 60
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v1
.end method

.method public setAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)Lcom/ebay/mobile/checkout/v2/PayPalIntentBuilder;
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/PayPalIntentBuilder;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    return-object p0
.end method
