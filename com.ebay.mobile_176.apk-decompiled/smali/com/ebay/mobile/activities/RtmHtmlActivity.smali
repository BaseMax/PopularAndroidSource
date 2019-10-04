.class public Lcom/ebay/mobile/activities/RtmHtmlActivity;
.super Lcom/ebay/mobile/activities/CoreActivity;
.source "RtmHtmlActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/activities/RtmHtmlActivity$MarketUriConverter;,
        Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;
    }
.end annotation


# static fields
.field protected static final COMPLETION_STATUS:Ljava/lang/String; = "ebay-mobile-status"

.field private static final log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field private authRedirectUrl:Ljava/lang/String;

.field protected final dialogManager:Lcom/ebay/common/view/util/DialogManager;

.field private historyReset:Z

.field protected isDoneFlag:Z

.field private myWebView:Landroid/webkit/WebView;

.field private returnUrl:Ljava/lang/String;

.field private ssoScope:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "RtmHtmlActivity"

    const-string v2, "RTM webview"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 44
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->myWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    .line 53
    iput-boolean v1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->historyReset:Z

    .line 54
    const-class v2, Lcom/ebay/common/view/util/DialogManager;

    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->getShim(Ljava/lang/Class;)Lcom/ebay/nautilus/shell/app/ActivityShim;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/view/util/DialogManager;

    iput-object v2, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->dialogManager:Lcom/ebay/common/view/util/DialogManager;

    .line 55
    iput-boolean v1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->isDoneFlag:Z

    const-string v1, ""

    .line 57
    iput-object v1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->returnUrl:Ljava/lang/String;

    const-string v1, ""

    .line 58
    iput-object v1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->authRedirectUrl:Ljava/lang/String;

    .line 61
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->title:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->url:Ljava/lang/String;

    const-string v0, "//EBAYSSO/EBAYCLASSIC"

    .line 63
    iput-object v0, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->ssoScope:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100()Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;
    .locals 1

    .line 44
    sget-object v0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ebay/mobile/activities/RtmHtmlActivity;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ebay/mobile/activities/RtmHtmlActivity;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->historyReset:Z

    return p0
.end method

.method static synthetic access$302(Lcom/ebay/mobile/activities/RtmHtmlActivity;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->historyReset:Z

    return p1
.end method

.method static synthetic access$400(Lcom/ebay/mobile/activities/RtmHtmlActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->myWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ebay/mobile/activities/RtmHtmlActivity;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ebay/mobile/activities/RtmHtmlActivity;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->getIntentForUrl(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/ebay/mobile/activities/RtmHtmlActivity;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->returnUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/ebay/mobile/activities/RtmHtmlActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->returnUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/ebay/mobile/activities/RtmHtmlActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->authRedirectUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/ebay/mobile/activities/RtmHtmlActivity;Lcom/ebay/nautilus/domain/app/Authentication;Ljava/lang/String;)Z
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->launchSso(Lcom/ebay/nautilus/domain/app/Authentication;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private getIntentForUrl(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 189
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 199
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 200
    invoke-static {p0, v2}, Lcom/ebay/motors/videos/FwContextUtil;->getLocalActivity(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 201
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_2

    .line 208
    new-instance v3, Lcom/ebay/mobile/activities/RtmHtmlActivity$MarketUriConverter;

    invoke-direct {v3}, Lcom/ebay/mobile/activities/RtmHtmlActivity$MarketUriConverter;-><init>()V

    .line 209
    invoke-virtual {v3, v0}, Lcom/ebay/mobile/activities/RtmHtmlActivity$MarketUriConverter;->convertUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 211
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :cond_2
    if-nez v2, :cond_4

    const-string v3, "http"

    .line 218
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "https"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 220
    :cond_3
    invoke-static {p1}, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->isTrustedLanding(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 221
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1

    :cond_4
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_5

    .line 231
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 232
    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_5

    move-object p1, v1

    :cond_5
    return-object p1
.end method

.method private launchSso(Lcom/ebay/nautilus/domain/app/Authentication;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 482
    new-instance v1, Lcom/ebay/common/SsoScopeLoader;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v2

    iget-object v3, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->ssoScope:Ljava/lang/String;

    invoke-direct {v1, v2, p1, v3, p2}, Lcom/ebay/common/SsoScopeLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/app/Authentication;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->getFwLoaderManager()Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v1, v0}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->start(ILcom/ebay/nautilus/shell/content/FwLoader;Z)V

    return p2

    :cond_0
    return v0
.end method

.method private loadUrl(Ljava/lang/String;)V
    .locals 2

    .line 172
    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->getIntentForUrl(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->startActivity(Landroid/content/Intent;)V

    .line 176
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->finish()V

    return-void

    .line 180
    :cond_0
    sget-object v0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_1

    .line 181
    sget-object v0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "  Handle as a regular link"

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "RtmHtml"

    return-object v0
.end method

.method protected isUrlLastPage(Ljava/lang/String;)Z
    .locals 2

    .line 331
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 338
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "ebay-mobile-status"

    .line 339
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    return v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 145
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/activities/CoreActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 152
    sget-object p1, Lcom/ebay/mobile/activities/RtmHtmlActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_1

    .line 153
    sget-object p1, Lcom/ebay/mobile/activities/RtmHtmlActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string p2, "Sign in successful, launching SSO"

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 154
    :cond_1
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object p1

    iget-object p2, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->returnUrl:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->launchSso(Lcom/ebay/nautilus/domain/app/Authentication;Ljava/lang/String;)Z

    goto :goto_0

    .line 158
    :cond_2
    sget-object p1, Lcom/ebay/mobile/activities/RtmHtmlActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_3

    .line 159
    sget-object p1, Lcom/ebay/mobile/activities/RtmHtmlActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string p2, "Sign in failed, doing nothing"

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 69
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.intent.extra.TITLE"

    .line 75
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->title:Ljava/lang/String;

    const-string/jumbo v1, "url"

    .line 76
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->url:Ljava/lang/String;

    const-string/jumbo v1, "ssoScope"

    const-string v2, "//EBAYSSO/EBAYCLASSIC"

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->ssoScope:Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v0, "ru"

    .line 82
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->returnUrl:Ljava/lang/String;

    const-string v0, "com.ebay.redirect_url"

    .line 83
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->authRedirectUrl:Ljava/lang/String;

    :cond_1
    const p1, 0x7f0d04fb

    .line 86
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->setContentView(I)V

    const p1, 0x7f0a1473

    .line 88
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->myWebView:Landroid/webkit/WebView;

    .line 94
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->myWebView:Landroid/webkit/WebView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 96
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->myWebView:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 97
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->myWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;-><init>(Lcom/ebay/mobile/activities/RtmHtmlActivity;Lcom/ebay/mobile/activities/RtmHtmlActivity$1;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const p1, 0x7f0a0cb9

    .line 99
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 100
    iget-object v1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->myWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/ebay/mobile/activities/RtmHtmlActivity$1;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lcom/ebay/mobile/activities/RtmHtmlActivity$1;-><init>(Lcom/ebay/mobile/activities/RtmHtmlActivity;Lcom/ebay/nautilus/kernel/content/EbayContext;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 110
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    .line 111
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    const/4 v1, 0x1

    .line 112
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 113
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 114
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 115
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 116
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 117
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 118
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 119
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 120
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 122
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->url:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->loadUrl(Ljava/lang/String;)V

    const p1, 0x7f0a0a1e

    .line 124
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 127
    new-instance v0, Lcom/ebay/mobile/activities/RtmHtmlActivity$2;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/activities/RtmHtmlActivity$2;-><init>(Lcom/ebay/mobile/activities/RtmHtmlActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 275
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->isDoneFlag:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x1

    return p1

    .line 281
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ebay/mobile/activities/CoreActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 263
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->isDoneFlag:Z

    if-nez v0, :cond_0

    const v0, 0x102002c

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x1

    return p1

    .line 268
    :cond_0
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 257
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 3

    .line 242
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onResume()V

    .line 243
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 249
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "ru"

    .line 250
    iget-object v1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->returnUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.ebay.redirect_url"

    .line 251
    iget-object v1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->authRedirectUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onTaskComplete(ILcom/ebay/nautilus/shell/content/FwLoader;)V
    .locals 1

    .line 287
    invoke-super {p0, p1, p2}, Lcom/ebay/mobile/activities/CoreActivity;->onTaskComplete(ILcom/ebay/nautilus/shell/content/FwLoader;)V

    .line 289
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 295
    :cond_1
    check-cast p2, Lcom/ebay/common/SsoScopeLoader;

    .line 297
    invoke-virtual {p2}, Lcom/ebay/common/SsoScopeLoader;->isError()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 299
    invoke-static {p0}, Lcom/ebay/mobile/util/Util;->hasNetwork(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->authRedirectUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 302
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->myWebView:Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->authRedirectUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string p1, ""

    .line 303
    iput-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->authRedirectUrl:Ljava/lang/String;

    goto :goto_0

    .line 307
    :cond_2
    new-instance p1, Lcom/ebay/common/view/EbayErrorHandler;

    invoke-direct {p1, p0}, Lcom/ebay/common/view/EbayErrorHandler;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const/4 v0, 0x0

    .line 308
    invoke-virtual {p1, v0, p2}, Lcom/ebay/common/view/EbayErrorHandler;->handleEbayError(Ljava/util/List;Lcom/ebay/nautilus/shell/content/FwNetLoader;)Z

    .line 309
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->finish()V

    goto :goto_0

    .line 314
    :cond_3
    invoke-virtual {p2}, Lcom/ebay/common/SsoScopeLoader;->getSsoUrl()Ljava/lang/String;

    move-result-object p1

    .line 316
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->historyReset:Z

    .line 317
    iget-object p2, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
