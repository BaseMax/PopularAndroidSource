.class public Lcom/ebay/android/widget/TrackingWebView;
.super Landroid/webkit/WebView;
.source "TrackingWebView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private assertDebugParams(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public appendUrlParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/android/widget/TrackingWebView;->isContextInstanceOfFwActivity()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/ebay/android/widget/TrackingWebView;->isInitialWebViewTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "2571"

    .line 73
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "srcAppId"

    .line 78
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "srcAppId"

    .line 79
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    const-string/jumbo v2, "trackingSrcAppId"

    .line 82
    invoke-direct {p0, p1, v2}, Lcom/ebay/android/widget/TrackingWebView;->assertDebugParams(Landroid/net/Uri;Ljava/lang/String;)V

    const-string/jumbo v2, "trackingSrcAppId"

    .line 83
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "trackingSrcAppId"

    .line 84
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/android/widget/TrackingWebView;->getDeviceIdString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "trackingNativeAppGuid"

    .line 89
    invoke-direct {p0, p1, v2}, Lcom/ebay/android/widget/TrackingWebView;->assertDebugParams(Landroid/net/Uri;Ljava/lang/String;)V

    const-string/jumbo v2, "trackingNativeAppGuid"

    .line 90
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "trackingNativeAppGuid"

    .line 93
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    const-string/jumbo v0, "trackingApp"

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/ebay/android/widget/TrackingWebView;->assertDebugParams(Landroid/net/Uri;Ljava/lang/String;)V

    const-string/jumbo v0, "trackingApp"

    .line 98
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string/jumbo p1, "trackingApp"

    const-string/jumbo v0, "webview"

    .line 99
    invoke-virtual {v1, p1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 101
    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    return-object p1
.end method

.method public getDeviceIdString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 122
    invoke-static {}, Lcom/ebay/nautilus/kernel/identity/EbayIdentity;->getDeviceIdStringIfAlreadyInitialized()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isContextInstanceOfFwActivity()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 110
    invoke-virtual {p0}, Lcom/ebay/android/widget/TrackingWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/ebay/nautilus/shell/app/FwActivity;

    return v0
.end method

.method public isInitialWebViewTrackingEnabled()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 116
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Nautilus$B;->initialWebviewTracking:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Nautilus$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    return v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 60
    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/TrackingWebView;->appendUrlParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/TrackingWebView;->appendUrlParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
