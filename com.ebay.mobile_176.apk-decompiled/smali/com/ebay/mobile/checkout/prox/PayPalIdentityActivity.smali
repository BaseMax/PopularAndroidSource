.class public Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;
.super Lcom/ebay/mobile/activities/ShowWebViewActivity;
.source "PayPalIdentityActivity.java"


# static fields
.field public static final EXTRA_PAYPAL_CODE:Ljava/lang/String; = "extraPaypalCode"

.field public static final EXTRA_PAYPAL_ERROR:Ljava/lang/String; = "extraPaypalError"

.field public static final EXTRA_PAYPAL_LINK_ID:Ljava/lang/String; = "payPalLinkId"

.field public static final EXTRA_PAYPAL_STATE:Ljava/lang/String; = "extraPaypalState"

.field public static final EXTRA_PROMOTION_ID:Ljava/lang/String; = "extraPromotionId"

.field public static final EXTRA_PROX_ERROR_CODE:Ljava/lang/String; = "proxErrorCode"

.field public static final EXTRA_PROX_ERROR_DESCRIPTION:Ljava/lang/String; = "proxErrorDescription"

.field public static final EXTRA_PROX_KEY:Ljava/lang/String; = "key"

.field public static final EXTRA_PROX_TOKEN:Ljava/lang/String; = "token"

.field public static final EXTRA_PROX_USER_DATA_BUNDLE:Ljava/lang/String; = "proxUserDataBundle"

.field public static final IDL_ERROR_EBAY_USER_LOGGED_OUT:I = 0x7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final IDL_ERROR_SESSION_EXPIRED:I = 0x4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final IDL_ERROR_USER_CANCELED:I = 0xa
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final QUERY_PARAM_CODE:Ljava/lang/String; = "code"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final QUERY_PARAM_ERROR:Ljava/lang/String; = "error"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final QUERY_PARAM_ERROR_DESC:Ljava/lang/String; = "error_description"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final QUERY_PARAM_IDL_ERROR:Ljava/lang/String; = "idlerror"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final QUERY_PARAM_IDL_LINK:Ljava/lang/String; = "idllink"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final QUERY_PARAM_KEY:Ljava/lang/String; = "key"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final QUERY_PARAM_STATE:Ljava/lang/String; = "state"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final QUERY_PARAM_TOKEN:Ljava/lang/String; = "token"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final RESULT_CONTINGENCY_FAILED:I = 0x7

.field public static final RESULT_EBAY_USER_LOGOUT:I = 0x1

.field public static final RESULT_GENERAL_IDL_ERROR:I = 0x2

.field public static final RESULT_HTTP_FAILURE:I = 0x8

.field public static final RESULT_PAYPAL_ACTION_RESOLVED:I = 0x6

.field public static final RESULT_RESET_PAYMENT_METHOD:I = 0x5

.field public static final RESULT_SELECT_PAYMENT_METHOD:I = 0x4

.field public static final RESULT_SESSION_EXPIRED_RETRY:I = 0x3

.field public static final RISK_STATUS_3DS_FAILURE:Ljava/lang/String; = "3ds_failure"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final RISK_STATUS_HTTP_CODE_302:Ljava/lang/String; = "302"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final RISK_STATUS_HTTP_CODE_400:Ljava/lang/String; = "400"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final RISK_STATUS_UNDEFINED:Ljava/lang/String; = "undefined"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final RISK_STATUS_USER_CANCELLED:Ljava/lang/String; = "user_cancelled"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private isFedLinkEnabled:Z

.field private promotionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;-><init>()V

    return-void
.end method

.method private goBackInWebView()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public createUI()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x4
    .end annotation

    .line 100
    invoke-super {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->createUI()V

    .line 101
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 104
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;->federationLinking:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->isFedLinkEnabled:Z

    return-void
.end method

.method public goBackPaypalIdentityWebView()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 306
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->goBackInWebView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public handlePayPalIdentityFedLinkingParams(Landroid/app/Activity;Landroid/net/Uri;)Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 186
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "state"

    .line 188
    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "extraPaypalState"

    .line 190
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "code"

    .line 193
    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "extraPaypalCode"

    .line 196
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->promotionId:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "extraPromotionId"

    .line 198
    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->promotionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v1, "error"

    .line 202
    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "extraPaypalError"

    .line 204
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v1, "error_description"

    .line 207
    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v2, "proxErrorDescription"

    .line 209
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const-string/jumbo v1, "token"

    .line 211
    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string/jumbo v2, "token"

    .line 213
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const-string v1, "key"

    .line 215
    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string v1, "key"

    .line 217
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    const/4 p2, -0x1

    .line 218
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public handlePayPalIdentityParams(Landroid/app/Activity;Landroid/net/Uri;)Z
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "idllink"

    .line 225
    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 228
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v3, "payPalLinkId"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 229
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->promotionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "extraPromotionId"

    .line 230
    iget-object v3, p0, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->promotionId:Ljava/lang/String;

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    :cond_0
    invoke-virtual {p1, v1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return v2

    :cond_1
    const-string v0, "idlerror"

    .line 235
    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x4

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    .line 239
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v5, :cond_4

    if-eq v6, v4, :cond_3

    const/16 v4, 0xa

    if-eq v6, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    .line 255
    :goto_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "proxErrorCode"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "error_description"

    .line 256
    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string/jumbo v3, "proxErrorDescription"

    .line 258
    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    :cond_5
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return v2

    :cond_6
    const-string v0, "code"

    .line 264
    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v0, :cond_9

    const-string v7, "302"

    .line 267
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 269
    invoke-virtual {p1, v5, v6}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return v2

    :cond_7
    const-string v5, "400"

    .line 272
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 p2, 0x5

    .line 274
    invoke-virtual {p1, p2, v6}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return v2

    :cond_8
    const-string/jumbo v5, "undefined"

    .line 278
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p2, 0x6

    .line 280
    invoke-virtual {p1, p2, v6}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return v2

    :cond_9
    const-string v0, "error"

    .line 285
    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    const-string v0, "3ds_failure"

    .line 288
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 290
    invoke-virtual {p1, v4, v6}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return v2

    :cond_a
    const-string/jumbo v0, "user_cancelled"

    .line 293
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 295
    invoke-virtual {p1, v3, v6}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return v2

    .line 299
    :cond_b
    invoke-virtual {p1, v1, v6}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return v2
.end method

.method protected isUrlPastLastPage(Ljava/lang/String;)Z
    .locals 1

    .line 121
    sget-object v0, Lcom/ebay/nautilus/domain/net/api/experience/checkout/CheckoutApiRequest;->PROX_RETURN_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 127
    :cond_0
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->isFedLinkEnabled:Z

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0, p0, p1}, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->handlePayPalIdentityFedLinkingParams(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result p1

    return p1

    .line 130
    :cond_1
    invoke-virtual {p0, p0, p1}, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->handlePayPalIdentityParams(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method protected onDone(Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 142
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 143
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->isHandlingError:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "proxErrorCode"

    .line 146
    iget v1, p0, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->httpErrorCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->httpErrorDescription:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "proxErrorDescription"

    .line 148
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->httpErrorDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/16 v0, 0x8

    .line 149
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 155
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "proxUserDataBundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->isUrlPastLastPage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "proxUserDataBundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "proxUserDataBundle"

    .line 158
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 159
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->setResult(ILandroid/content/Intent;)V

    .line 162
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->finish()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 85
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->goBackPaypalIdentityWebView()Z

    move-result p1

    return p1

    .line 93
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected readIntent()V
    .locals 2

    .line 168
    invoke-super {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->readIntent()V

    .line 169
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extraPromotionId"

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/prox/PayPalIdentityActivity;->promotionId:Ljava/lang/String;

    return-void
.end method
