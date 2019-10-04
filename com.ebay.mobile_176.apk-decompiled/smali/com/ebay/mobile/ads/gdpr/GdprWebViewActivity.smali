.class public Lcom/ebay/mobile/ads/gdpr/GdprWebViewActivity;
.super Lcom/ebay/mobile/activities/ShowWebViewActivity;
.source "GdprWebViewActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;-><init>()V

    return-void
.end method

.method private static appendUrlParams(Landroid/net/Uri;Lcom/ebay/nautilus/kernel/content/EbayContext;)Landroid/net/Uri;
    .locals 1

    .line 65
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "cguid"

    .line 68
    invoke-static {p1}, Lcom/ebay/nautilus/domain/analytics/cguid/EbayCguidGetter;->getFromLocalStore(Lcom/ebay/nautilus/kernel/content/EbayContext;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 70
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static createIntent(Lcom/ebay/nautilus/kernel/content/EbayContext;)Landroid/content/Intent;
    .locals 4
    .param p0    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    .line 44
    sget-object v1, Lcom/ebay/mobile/dcs/Dcs$Ads$S;->gdprCmpWebViewUrl:Lcom/ebay/mobile/dcs/Dcs$Ads$S;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropString;)Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Landroid/content/Intent;

    invoke-interface {p0}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/ebay/mobile/ads/gdpr/GdprWebViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "url"

    .line 48
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ebay/mobile/ads/gdpr/GdprWebViewActivity;->appendUrlParams(Landroid/net/Uri;Lcom/ebay/nautilus/kernel/content/EbayContext;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p0, "use_sso"

    const/4 v0, 0x1

    .line 49
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v1
.end method


# virtual methods
.method protected onPause()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->onPause()V

    .line 82
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/gdpr/GdprWebViewActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/nautilus/domain/content/dm/ads/gdpr/ConsentDataManager;->setGdprTimeOfLastCheckWithFudgeFactor(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method
