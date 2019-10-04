.class public Lcom/ebay/mobile/addon/AddOnTrackingUtil;
.super Ljava/lang/Object;
.source "AddOnTrackingUtil.java"


# static fields
.field public static final TRACKING_PROPERTY_SELECTION_LIST_VALUE:Ljava/lang/String; = "1"

.field public static final TRACKING_PROPERTY_SELECTION_MAP_VALUE:Ljava/lang/String; = "2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAddOnImpressionToVITracking(Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;Lcom/ebay/mobile/addon/AvailableAddons;)V
    .locals 2

    .line 31
    invoke-virtual {p1}, Lcom/ebay/mobile/addon/AvailableAddons;->getAll()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 32
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/mobile/AddOnItem;

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, v1, Lcom/ebay/mobile/AddOnItem;->type:Lcom/ebay/mobile/AddOnItem$AddOnType;

    invoke-virtual {v1}, Lcom/ebay/mobile/AddOnItem$AddOnType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string p1, "addOnTypes"

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public static trackAddOnMaxView(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;)V
    .locals 3

    .line 86
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "AddOnMV"

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 87
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    const-string v1, "addOnMVSelected"

    const-string v2, "1"

    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    const-string v1, "addOnType"

    .line 89
    invoke-virtual {v0, v1, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method public static trackAddOnSelectionOnMaxView(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;Z)V
    .locals 2

    .line 70
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "AddOnSelectionMV"

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 71
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string p2, "addOnSelected"

    goto :goto_0

    :cond_0
    const-string p2, "addOnUnselected"

    :goto_0
    const-string v1, "1"

    .line 72
    invoke-virtual {v0, p2, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p2

    const-string v0, "addOnType"

    .line 73
    invoke-virtual {p2, v0, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method public static trackAddOnSelectionOnVI(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/AddOnItem;Z)V
    .locals 2

    .line 53
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "AddOnSelectionVI"

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 54
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string p2, "addOnSelected"

    goto :goto_0

    :cond_0
    const-string p2, "addOnUnselected"

    :goto_0
    const-string v1, "1"

    .line 55
    invoke-virtual {v0, p2, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p2

    const-string v0, "addOnType"

    iget-object p1, p1, Lcom/ebay/mobile/AddOnItem;->type:Lcom/ebay/mobile/AddOnItem$AddOnType;

    .line 56
    invoke-virtual {p1}, Lcom/ebay/mobile/AddOnItem$AddOnType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method public static trackContinueInstallation(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;)V
    .locals 2

    .line 166
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "AddOnInstaller"

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    const-string v1, "addOnIC"

    .line 167
    invoke-virtual {v0, v1, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    .line 168
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method public static trackHowItWorks(Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 3

    .line 137
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "AddOnInstaller"

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 138
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    const-string v1, "addOnIHIW"

    const-string v2, "1"

    .line 139
    invoke-virtual {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method public static trackInstallConfirmation(Lcom/ebay/nautilus/kernel/content/EbayContext;Z)V
    .locals 2

    .line 193
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "AddOnInstallerConfirm"

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "addOnCWI"

    goto :goto_0

    :cond_0
    const-string p1, "addOnCWOI"

    :goto_0
    const-string v1, "1"

    .line 194
    invoke-virtual {v0, p1, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method public static trackInstallationPostalCodeUpdate(Lcom/ebay/nautilus/kernel/content/EbayContext;ZZ)V
    .locals 3

    .line 119
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    const-string v1, "AddOnInstaller"

    sget-object v2, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    if-eqz p1, :cond_1

    const-string p1, "addOnPCUpdate"

    if-eqz p2, :cond_0

    const-string p2, "1"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    .line 121
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string p1, "addOnPCUpdate"

    if-eqz p2, :cond_2

    const-string p2, "3"

    goto :goto_1

    :cond_2
    const-string p2, "2"

    .line 123
    :goto_1
    invoke-virtual {v0, p1, p2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string p1, "addOnType"

    .line 125
    sget-object p2, Lcom/ebay/mobile/AddOnItem$AddOnType;->INSTALLATION:Lcom/ebay/mobile/AddOnItem$AddOnType;

    invoke-virtual {p2}, Lcom/ebay/mobile/AddOnItem$AddOnType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method public static trackInstallerSelected(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;)V
    .locals 2

    .line 152
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "AddOnInstaller"

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    const-string v1, "addOnIS"

    .line 153
    invoke-virtual {v0, v1, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method public static trackPostalCodeUpdate(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 103
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    invoke-direct {v0, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 104
    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    const-string v0, "addOnPCUpdate"

    if-eqz p3, :cond_0

    const-string p3, "1"

    goto :goto_0

    :cond_0
    const-string p3, "0"

    .line 105
    :goto_0
    invoke-virtual {p1, v0, p3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    const-string p3, "addOnType"

    .line 106
    invoke-virtual {p1, p3, p2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method public static trackTireInstallMapView(Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 3

    .line 179
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "AddOnInstaller"

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    const-string v1, "addOnMap"

    const-string v2, "1"

    .line 180
    invoke-virtual {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method
