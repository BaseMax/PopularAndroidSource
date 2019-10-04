.class public Lcom/ebay/common/view/util/BarcodeScanUtil;
.super Ljava/lang/Object;
.source "BarcodeScanUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleBarcodeResultForSearch(ILandroid/content/Intent;Lcom/ebay/mobile/activities/CoreActivity;)V
    .locals 8

    const/4 v0, -0x1

    if-ne p0, v0, :cond_7

    const-string p0, "productid"

    .line 40
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "productidtype"

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 42
    new-instance v0, Lcom/ebay/mobile/util/ScanResult;

    invoke-direct {v0, p0, p1}, Lcom/ebay/mobile/util/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v1, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v2, "EnterSearch"

    const-string/jumbo v3, "sm"

    const-string/jumbo v4, "scan"

    invoke-direct {v1, v2, v3, v4}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v2

    .line 50
    sget-object v3, Lcom/ebay/mobile/dcs/Dcs$Search$B;->qrcodeViewItemLink:Lcom/ebay/mobile/dcs/Dcs$Search$B;

    invoke-interface {v2, v3}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "QRC"

    .line 52
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 55
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/net/Uri;->isAbsolute()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 66
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const-string v6, "http"

    .line 68
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "www.ebay.com"

    .line 69
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    .line 71
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    :cond_0
    const-string v6, "itm"

    .line 72
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 76
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/NumberUtil;->safeParseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "SF"

    .line 80
    invoke-static {p0, p1, v2, p2}, Lcom/ebay/common/view/util/BarcodeScanUtil;->trackQrCodeScan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/mobile/activities/CoreActivity;)V

    .line 82
    new-instance v2, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v0, Lcom/ebay/common/ConstantsCommon$ItemKind;->Found:Lcom/ebay/common/ConstantsCommon$ItemKind;

    invoke-direct {v2, v5, v6, v0, p2}, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;-><init>(JLcom/ebay/common/ConstantsCommon$ItemKind;Landroid/content/Context;)V

    .line 84
    invoke-virtual {v2, v1}, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;->setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;

    .line 85
    invoke-virtual {v2}, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;->buildAndStartActivity()V

    .line 86
    invoke-virtual {p2}, Lcom/ebay/mobile/activities/CoreActivity;->finish()V

    goto :goto_0

    :cond_1
    const-string v5, "http"

    .line 92
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "pages.ebay.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const-string v5, "ebay"

    .line 93
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string v2, "item.view"

    const-string v5, "nav"

    .line 94
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "SF"

    .line 96
    invoke-static {p0, p1, v2, p2}, Lcom/ebay/common/view/util/BarcodeScanUtil;->trackQrCodeScan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/mobile/activities/CoreActivity;)V

    .line 97
    new-instance v2, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;

    const-string/jumbo v3, "qrcode"

    invoke-direct {v2, v0, v3}, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2, v1}, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p2}, Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;->launch(Landroid/content/Context;)V

    .line 101
    invoke-virtual {p2}, Lcom/ebay/mobile/activities/CoreActivity;->finish()V

    :goto_0
    const/4 v3, 0x1

    :cond_4
    if-nez v3, :cond_7

    const v0, 0x7f120beb

    .line 108
    invoke-static {p2, v0}, Lcom/ebay/common/view/util/DialogManager;->createAlertDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const-string v0, "SN"

    .line 109
    invoke-static {p0, p1, v0, p2}, Lcom/ebay/common/view/util/BarcodeScanUtil;->trackQrCodeScan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/mobile/activities/CoreActivity;)V

    goto :goto_2

    .line 114
    :cond_5
    instance-of p0, p2, Lcom/ebay/mobile/search/landing/TrkpProvider;

    if-eqz p0, :cond_6

    move-object p0, p2

    check-cast p0, Lcom/ebay/mobile/search/landing/TrkpProvider;

    invoke-interface {p0}, Lcom/ebay/mobile/search/landing/TrkpProvider;->getTrkp()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    .line 115
    :goto_1
    new-instance p1, Lcom/ebay/mobile/search/SearchIntentBuilder;

    invoke-direct {p1, p2}, Lcom/ebay/mobile/search/SearchIntentBuilder;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {p1, v0}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setBarcodeScan(Lcom/ebay/mobile/util/ScanResult;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object p1

    .line 118
    invoke-virtual {p1, v1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object p1

    .line 119
    invoke-virtual {p1, p0}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setTrackingParameters(Ljava/lang/String;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object p0

    .line 120
    invoke-virtual {p0}, Lcom/ebay/mobile/search/SearchIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0

    .line 115
    invoke-virtual {p2, p0}, Lcom/ebay/mobile/activities/CoreActivity;->startActivity(Landroid/content/Intent;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public static isProductQuery(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    const-string v0, "EAN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UPC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static trackQrCodeScan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/mobile/activities/CoreActivity;)V
    .locals 2

    .line 128
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "BarcodeScanning"

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    const-string v1, "mfls"

    .line 129
    invoke-virtual {v0, v1, p2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p2

    const-string v0, "bct"

    .line 130
    invoke-virtual {p2, v0, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    const-string p2, "bcd"

    .line 131
    invoke-virtual {p1, p2, p0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p0

    .line 132
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p0

    invoke-virtual {p3}, Lcom/ebay/mobile/activities/CoreActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method
