.class public Lcom/ebay/mobile/activities/HybridWebLandingActivity;
.super Lcom/ebay/mobile/activities/ShowWebViewActivity;
.source "HybridWebLandingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/activities/HybridWebLandingActivity$SiteMapper;
    }
.end annotation


# static fields
.field public static EXTRA_FLAG_EXTERNAL:Ljava/lang/String; = null

.field public static final LANDING_PAGE:Ljava/lang/String; = "webview"

.field private static final log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "HybridWeb"

    const-string v2, "Hybrid WebView-based Landing Page"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v0, "external"

    .line 43
    sput-object v0, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->EXTRA_FLAG_EXTERNAL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;-><init>()V

    .line 49
    new-instance v0, Lcom/ebay/mobile/activities/HybridWebLandingActivity$SiteMapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ebay/mobile/activities/HybridWebLandingActivity$SiteMapper;-><init>(Lcom/ebay/mobile/activities/HybridWebLandingActivity$1;)V

    iput-object v0, p0, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->urlRewriter:Lcom/ebay/mobile/activities/ShowWebViewActivity$UrlRewriter;

    return-void
.end method

.method public static varargs buildDeepLink(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "ebay://link/?nav=%s"

    const/4 v1, 0x1

    .line 470
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 471
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 474
    array-length v0, p1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v1, p1, v2

    .line 475
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 477
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildHomeLink()Ljava/lang/String;
    .locals 2

    const-string v0, "home"

    const/4 v1, 0x0

    .line 483
    new-array v1, v1, [Landroid/util/Pair;

    invoke-static {v0, v1}, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->buildDeepLink(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildViewUserDetailsLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "user.view"

    const/4 v1, 0x1

    .line 496
    new-array v1, v1, [Landroid/util/Pair;

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "user"

    invoke-direct {v2, v3, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    aput-object v2, v1, p0

    invoke-static {v0, v1}, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->buildDeepLink(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildViewUserFeedbackLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "user.feedback"

    const/4 v1, 0x1

    .line 489
    new-array v1, v1, [Landroid/util/Pair;

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "user"

    invoke-direct {v2, v3, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    aput-object v2, v1, p0

    invoke-static {v0, v1}, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->buildDeepLink(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static isInDomainList(Ljava/util/List;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    .line 179
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_7

    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 202
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    :cond_3
    sget-object p0, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p0, p0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p0, :cond_4

    .line 206
    sget-object p0, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string p1, "... matches DCS-supplied trusted domain, or an eBay Inc domain"

    invoke-virtual {p0, p1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_4
    const/4 p0, 0x1

    return p0

    .line 212
    :cond_5
    sget-object p0, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p0, p0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p0, :cond_6

    .line 213
    sget-object p0, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string p1, "... UNTRUSTED"

    invoke-virtual {p0, p1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_6
    return v0

    .line 189
    :cond_7
    :goto_0
    sget-object p0, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p0, p0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p0, :cond_8

    .line 190
    sget-object p0, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string p1, "... UNTRUSTED"

    invoke-virtual {p0, p1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_8
    return v0

    .line 181
    :cond_9
    :goto_1
    sget-object p0, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p0, p0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p0, :cond_a

    .line 182
    sget-object p0, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string p1, "... UNTRUSTED"

    invoke-virtual {p0, p1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_a
    return v0
.end method

.method static isTrustedLanding(Ljava/lang/String;)Z
    .locals 5

    .line 131
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 135
    :cond_0
    sget-object v2, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v2, v2, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v2, :cond_1

    .line 136
    sget-object v2, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Validating URL trust: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 139
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    .line 140
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "ebay"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 142
    sget-object p0, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p0, p0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p0, :cond_2

    .line 143
    sget-object p0, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v0, "... native deep link (trusted)"

    invoke-virtual {p0, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_2
    return v3

    .line 148
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    .line 149
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "pages.ebay.com"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 150
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/link/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 152
    sget-object p0, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p0, p0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p0, :cond_4

    .line 153
    sget-object p0, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v0, "... public deep link (trusted)"

    invoke-virtual {p0, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_4
    return v3

    :cond_5
    if-nez p0, :cond_7

    .line 162
    sget-object p0, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p0, p0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p0, :cond_6

    .line 163
    sget-object p0, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v0, "... relative URL (trust implied from current site)"

    invoke-virtual {p0, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_6
    return v1

    .line 168
    :cond_7
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getDeviceConfiguration()Lcom/ebay/mobile/dcs/DcsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/mobile/dcs/DcsHelper;->getWebviewLandingDomainWhitelist()Ljava/util/List;

    move-result-object v0

    const-string v1, "ebaystatic.com"

    .line 172
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-static {v0, p0}, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->isInDomainList(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private launchInExternalBrowser(Landroid/net/Uri;)V
    .locals 3

    .line 118
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 121
    :cond_0
    sget-object v0, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_1

    .line 122
    sget-object v0, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Untrusted URL is being launched in an external browser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 123
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected addToTrackingData(Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;)V
    .locals 2

    const-string/jumbo v0, "url"

    .line 70
    iget-object v1, p0, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v0, "asguid"

    .line 71
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-static {v1}, Lcom/ebay/nautilus/domain/analytics/cguid/EbayCguidGetter;->getFromLocalStore(Lcom/ebay/nautilus/kernel/content/EbayContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    return-void
.end method

.method protected readIntent()V
    .locals 2

    .line 55
    invoke-super {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->readIntent()V

    const-string v0, "WebViewLandingPage"

    .line 56
    iput-object v0, p0, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->impression:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->EXTRA_FLAG_EXTERNAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->launchInExternalBrowser(Landroid/net/Uri;)V

    .line 60
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 86
    sget-object p1, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_0

    .line 87
    sget-object p1, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 103
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http[s]?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->isTrustedLanding(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 107
    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->launchInExternalBrowser(Landroid/net/Uri;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
