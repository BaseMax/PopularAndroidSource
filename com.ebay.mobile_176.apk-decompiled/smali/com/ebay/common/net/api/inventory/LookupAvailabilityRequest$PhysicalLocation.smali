.class public final Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;
.super Ljava/lang/Object;
.source "LookupAvailabilityRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhysicalLocation"
.end annotation


# static fields
.field private static postalCodeGeoLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field private geocoder:Landroid/location/Geocoder;

.field latitude:Ljava/lang/Double;

.field longitude:Ljava/lang/Double;

.field postalCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 116
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "PostalCodeGeo"

    const-string v2, "Log postal code geocoding events."

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->postalCodeGeoLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->geocoder:Landroid/location/Geocoder;

    .line 69
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->latitude:Ljava/lang/Double;

    .line 70
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->longitude:Ljava/lang/Double;

    .line 71
    iput-object v0, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->postalCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->geocoder:Landroid/location/Geocoder;

    .line 85
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 88
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v1

    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$ViewItem$B;->paidPudoAttemptGeocode:Lcom/ebay/nautilus/domain/dcs/DcsDomain$ViewItem$B;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->translatePostalCodeToLatLong(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 96
    sget-object p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->postalCodeGeoLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_0

    .line 97
    sget-object p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->postalCodeGeoLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string p3, "Unable to geocode postal code. Falling back to using postal code: %s directly."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->logAsWarning(Ljava/lang/String;)V

    .line 100
    :cond_0
    iput-object p2, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->postalCode:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->longitude:Ljava/lang/Double;

    iput-object v0, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->latitude:Ljava/lang/Double;

    goto :goto_0

    .line 106
    :cond_1
    iput-object p2, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->postalCode:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->longitude:Ljava/lang/Double;

    iput-object v0, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->latitude:Ljava/lang/Double;

    :cond_2
    :goto_0
    return-void

    .line 86
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "invalid postal code"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private translatePostalCodeToLatLong(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 126
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 130
    iget-object v0, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->geocoder:Landroid/location/Geocoder;

    if-nez v0, :cond_1

    .line 132
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 133
    invoke-static {p3}, Lcom/ebay/nautilus/domain/EbaySite;->getInstanceFromId(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbaySite;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 135
    invoke-virtual {p3}, Lcom/ebay/nautilus/domain/EbaySite;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 136
    :cond_0
    new-instance p3, Landroid/location/Geocoder;

    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p3, v2, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object p3, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->geocoder:Landroid/location/Geocoder;

    :cond_1
    const/4 p3, 0x1

    .line 141
    :try_start_0
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v2, "GeoCodeEvent"

    invoke-direct {v0, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    const-string v2, "gccount"

    const-string v3, "1"

    .line 142
    invoke-virtual {v0, v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 145
    iget-object p1, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->geocoder:Landroid/location/Geocoder;

    invoke-virtual {p1, p2, p3}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 146
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 148
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    .line 149
    invoke-virtual {p1}, Landroid/location/Address;->hasLatitude()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/location/Address;->hasLongitude()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->postalCode:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->latitude:Ljava/lang/Double;

    .line 153
    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->longitude:Ljava/lang/Double;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    :try_start_1
    sget-object p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->postalCodeGeoLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_2

    .line 156
    sget-object p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->postalCodeGeoLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Replacing postal code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " with geocoded lat/long "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->latitude:Ljava/lang/Double;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->longitude:Ljava/lang/Double;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 167
    :cond_3
    sget-object p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->postalCodeGeoLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_4

    .line 168
    sget-object p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->postalCodeGeoLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string p2, "Geocoder not present."

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->logAsWarning(Ljava/lang/String;)V

    :catch_1
    :cond_4
    :goto_0
    return v1
.end method


# virtual methods
.method public getLatitude()Ljava/lang/Double;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method isPostalCode()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->postalCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
