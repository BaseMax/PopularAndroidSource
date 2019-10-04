.class public Lcom/ebay/mobile/addon/warranty/WarrantyTrackingUtil;
.super Ljava/lang/Object;
.source "WarrantyTrackingUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWarrantyParamsToViewItemTracking(Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;Lcom/ebay/mobile/addon/AvailableAddons;)V
    .locals 1

    const-string/jumbo v0, "warranty"

    .line 27
    invoke-static {p0, p1, v0}, Lcom/ebay/mobile/addon/warranty/WarrantyTrackingUtil;->addWarrantyProviderToTracking(Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;Lcom/ebay/mobile/addon/AvailableAddons;Ljava/lang/String;)V

    return-void
.end method

.method private static addWarrantyProviderToTracking(Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;Lcom/ebay/mobile/addon/AvailableAddons;Ljava/lang/String;)V
    .locals 2

    .line 82
    sget-object v0, Lcom/ebay/mobile/AddOnItem$AddOnType;->WARRANTY:Lcom/ebay/mobile/AddOnItem$AddOnType;

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/addon/AvailableAddons;->getAddonsByType(Lcom/ebay/mobile/AddOnItem$AddOnType;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/AddOnItem;

    iget-object p1, p1, Lcom/ebay/mobile/AddOnItem;->provider:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 87
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    return-void
.end method

.method public static trackWarrantyLearnMore(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/AddOnItem;)V
    .locals 2

    .line 72
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "WarrantyLearnMore"

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 73
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "provider"

    .line 75
    iget-object p1, p1, Lcom/ebay/mobile/AddOnItem;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 76
    :cond_0
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method public static trackWarrantyOverlay(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/addon/AvailableAddons;Z)V
    .locals 2

    .line 39
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "WarrantyDetail"

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 40
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    const-string v1, "overlay"

    if-eqz p2, :cond_0

    const-string p2, "1"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    .line 41
    :goto_0
    invoke-virtual {v0, v1, p2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p2

    const-string/jumbo v0, "provider"

    .line 43
    invoke-static {p2, p1, v0}, Lcom/ebay/mobile/addon/warranty/WarrantyTrackingUtil;->addWarrantyProviderToTracking(Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;Lcom/ebay/mobile/addon/AvailableAddons;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method public static trackWarrantyViAction(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/addon/AvailableAddons;Z)V
    .locals 2

    .line 57
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "WarrantyViOption"

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 58
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    const-string/jumbo v1, "warrantyAct"

    if-eqz p2, :cond_0

    const-string p2, "1"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    .line 59
    :goto_0
    invoke-virtual {v0, v1, p2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p2

    const-string/jumbo v0, "provider"

    .line 60
    invoke-static {p2, p1, v0}, Lcom/ebay/mobile/addon/warranty/WarrantyTrackingUtil;->addWarrantyProviderToTracking(Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;Lcom/ebay/mobile/addon/AvailableAddons;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method
