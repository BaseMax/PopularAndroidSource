.class public Lcab/snapp/passenger/data/models/GeocodeMasterModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private address:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "address"
    .end annotation
.end field

.field private distance:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "distance"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "id"
    .end annotation
.end field

.field private latLng:Lcab/snapp/passenger/data/models/PlaceLatLng;
    .annotation runtime Lcom/google/gson/a/c;
        value = "location"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "name"
    .end annotation
.end field

.field private name_en:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "name_en"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createNullModel()Lcab/snapp/passenger/data/models/GeocodeMasterModel;
    .locals 3

    .line 181
    new-instance v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;-><init>()V

    const-string v1, ""

    .line 182
    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->name:Ljava/lang/String;

    .line 183
    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->name_en:Ljava/lang/String;

    .line 184
    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->address:Ljava/lang/String;

    const/4 v2, 0x0

    .line 185
    iput-object v2, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->latLng:Lcab/snapp/passenger/data/models/PlaceLatLng;

    .line 186
    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->id:Ljava/lang/String;

    .line 187
    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->type:Ljava/lang/String;

    const/4 v1, -0x1

    .line 188
    iput v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->distance:I

    return-object v0
.end method

.method public static from(Lcab/snapp/passenger/data/models/AutocompletePrediction;)Lcab/snapp/passenger/data/models/GeocodeMasterModel;
    .locals 6

    if-nez p0, :cond_0

    .line 153
    invoke-static {}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->createNullModel()Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    move-result-object p0

    return-object p0

    .line 156
    :cond_0
    new-instance v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;-><init>()V

    .line 157
    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/AutocompletePrediction;->getPlaceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->id:Ljava/lang/String;

    .line 158
    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/AutocompletePrediction;->getStructuredFormatting()Lcab/snapp/passenger/data/models/PredictionStructuredFormatting;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/PredictionStructuredFormatting;->getSecondaryText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->address:Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/AutocompletePrediction;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/AutocompletePrediction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/AutocompletePrediction;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->name:Ljava/lang/String;

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/AutocompletePrediction;->getStructuredFormatting()Lcab/snapp/passenger/data/models/PredictionStructuredFormatting;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/PredictionStructuredFormatting;->getPrimaryText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->name:Ljava/lang/String;

    .line 168
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/AutocompletePrediction;->getLatLng()Lcab/snapp/passenger/data/models/PlaceLatLng;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 170
    new-instance v1, Lcab/snapp/passenger/data/models/PlaceLatLng;

    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/AutocompletePrediction;->getLatLng()Lcab/snapp/passenger/data/models/PlaceLatLng;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/PlaceLatLng;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/AutocompletePrediction;->getLatLng()Lcab/snapp/passenger/data/models/PlaceLatLng;

    move-result-object v4

    invoke-virtual {v4}, Lcab/snapp/passenger/data/models/PlaceLatLng;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcab/snapp/passenger/data/models/PlaceLatLng;-><init>(DD)V

    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->latLng:Lcab/snapp/passenger/data/models/PlaceLatLng;

    .line 173
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/AutocompletePrediction;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->type:Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/AutocompletePrediction;->getDistance()I

    move-result p0

    iput p0, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->distance:I

    const-string p0, ""

    .line 175
    iput-object p0, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->name_en:Ljava/lang/String;

    return-object v0
.end method

.method public static from(Lcab/snapp/passenger/data/models/CedarGeocodeResult;)Lcab/snapp/passenger/data/models/GeocodeMasterModel;
    .locals 6

    if-nez p0, :cond_0

    .line 38
    invoke-static {}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->createNullModel()Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    move-result-object p0

    return-object p0

    .line 41
    :cond_0
    new-instance v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->id:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->name:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->address:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->getName_en()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->name_en:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->type:Ljava/lang/String;

    const/4 v1, -0x1

    .line 47
    iput v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->distance:I

    .line 48
    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->getCedarLocation()Lcab/snapp/passenger/data/models/CedarLocation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 50
    new-instance v1, Lcab/snapp/passenger/data/models/PlaceLatLng;

    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->getCedarLocation()Lcab/snapp/passenger/data/models/CedarLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/CedarLocation;->getLatitude()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->getCedarLocation()Lcab/snapp/passenger/data/models/CedarLocation;

    move-result-object p0

    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/CedarLocation;->getLongitude()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcab/snapp/passenger/data/models/PlaceLatLng;-><init>(DD)V

    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->latLng:Lcab/snapp/passenger/data/models/PlaceLatLng;

    :cond_1
    return-object v0
.end method

.method public static from(Lcab/snapp/passenger/data/models/FavoriteModel;)Lcab/snapp/passenger/data/models/GeocodeMasterModel;
    .locals 7

    if-nez p0, :cond_0

    .line 84
    invoke-static {}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->createNullModel()Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    move-result-object p0

    return-object p0

    .line 87
    :cond_0
    new-instance v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;-><init>()V

    const-string v1, ""

    .line 88
    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->id:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/FavoriteModel;->getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/FavoriteModel;->getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/FormattedAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 92
    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/FavoriteModel;->getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/FormattedAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->address:Ljava/lang/String;

    goto :goto_0

    .line 96
    :cond_1
    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->address:Ljava/lang/String;

    .line 99
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/FavoriteModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->name:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/FavoriteModel;->getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 103
    new-instance v2, Lcab/snapp/passenger/data/models/PlaceLatLng;

    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/FavoriteModel;->getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v3

    invoke-virtual {v3}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLat()D

    move-result-wide v3

    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/FavoriteModel;->getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object p0

    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLng()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcab/snapp/passenger/data/models/PlaceLatLng;-><init>(DD)V

    iput-object v2, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->latLng:Lcab/snapp/passenger/data/models/PlaceLatLng;

    .line 106
    :cond_2
    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->type:Ljava/lang/String;

    const/4 p0, -0x1

    .line 107
    iput p0, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->distance:I

    .line 108
    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->name_en:Ljava/lang/String;

    return-object v0
.end method

.method public static from(Lcab/snapp/passenger/data/models/GeocodeMasterModel;)Lcab/snapp/passenger/data/models/GeocodeMasterModel;
    .locals 2

    .line 201
    new-instance v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;-><init>()V

    .line 202
    iget-object v1, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->id:Ljava/lang/String;

    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->id:Ljava/lang/String;

    .line 203
    iget-object v1, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->latLng:Lcab/snapp/passenger/data/models/PlaceLatLng;

    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->latLng:Lcab/snapp/passenger/data/models/PlaceLatLng;

    .line 204
    iget-object v1, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->name:Ljava/lang/String;

    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->name:Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->type:Ljava/lang/String;

    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->type:Ljava/lang/String;

    .line 206
    iget-object v1, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->address:Ljava/lang/String;

    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->address:Ljava/lang/String;

    .line 207
    iget-object v1, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->name_en:Ljava/lang/String;

    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->name_en:Ljava/lang/String;

    .line 208
    iget p0, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->distance:I

    iput p0, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->distance:I

    return-object v0
.end method

.method public static from(Lcab/snapp/passenger/data/models/PlaceDetail;)Lcab/snapp/passenger/data/models/GeocodeMasterModel;
    .locals 6

    if-nez p0, :cond_0

    .line 59
    invoke-static {}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->createNullModel()Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    move-result-object p0

    return-object p0

    .line 62
    :cond_0
    new-instance v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;-><init>()V

    .line 63
    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/PlaceDetail;->getPlaceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->id:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/PlaceDetail;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->name:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/PlaceDetail;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->address:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/PlaceDetail;->getGeometry()Lcab/snapp/passenger/data/models/PlaceDetailGeometry;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/PlaceDetail;->getGeometry()Lcab/snapp/passenger/data/models/PlaceDetailGeometry;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/PlaceDetailGeometry;->getLocation()Lcab/snapp/passenger/data/models/PlaceDetailLocation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/PlaceDetail;->getGeometry()Lcab/snapp/passenger/data/models/PlaceDetailGeometry;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/PlaceDetailGeometry;->getLocation()Lcab/snapp/passenger/data/models/PlaceDetailLocation;

    move-result-object p0

    .line 71
    new-instance v1, Lcab/snapp/passenger/data/models/PlaceLatLng;

    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/PlaceDetailLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/PlaceDetailLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcab/snapp/passenger/data/models/PlaceLatLng;-><init>(DD)V

    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->latLng:Lcab/snapp/passenger/data/models/PlaceLatLng;

    :cond_1
    const-string p0, ""

    .line 74
    iput-object p0, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->type:Ljava/lang/String;

    const/4 v1, -0x1

    .line 75
    iput v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->distance:I

    .line 76
    iput-object p0, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->name_en:Ljava/lang/String;

    return-object v0
.end method

.method public static from(Lcab/snapp/passenger/data_access_layer/network/responses/CachedPlaceResponse;)Lcab/snapp/passenger/data/models/GeocodeMasterModel;
    .locals 6

    if-nez p0, :cond_0

    .line 116
    invoke-static {}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->createNullModel()Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    move-result-object p0

    return-object p0

    .line 119
    :cond_0
    new-instance v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;-><init>()V

    .line 120
    invoke-virtual {p0}, Lcab/snapp/passenger/data_access_layer/network/responses/CachedPlaceResponse;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->id:Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lcab/snapp/passenger/data_access_layer/network/responses/CachedPlaceResponse;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->address:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lcab/snapp/passenger/data_access_layer/network/responses/CachedPlaceResponse;->getLatLng()Lcab/snapp/passenger/data/models/PlaceLatLng;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 124
    new-instance v1, Lcab/snapp/passenger/data/models/PlaceLatLng;

    invoke-virtual {p0}, Lcab/snapp/passenger/data_access_layer/network/responses/CachedPlaceResponse;->getLatLng()Lcab/snapp/passenger/data/models/PlaceLatLng;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/PlaceLatLng;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lcab/snapp/passenger/data_access_layer/network/responses/CachedPlaceResponse;->getLatLng()Lcab/snapp/passenger/data/models/PlaceLatLng;

    move-result-object p0

    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/PlaceLatLng;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcab/snapp/passenger/data/models/PlaceLatLng;-><init>(DD)V

    iput-object v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->latLng:Lcab/snapp/passenger/data/models/PlaceLatLng;

    :cond_1
    const-string p0, ""

    .line 127
    iput-object p0, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->type:Ljava/lang/String;

    const/4 v1, -0x1

    .line 128
    iput v1, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->distance:I

    .line 129
    iput-object p0, v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->name_en:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()I
    .locals 1

    .line 283
    iget v0, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->distance:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLatLng()Lcab/snapp/passenger/data/models/PlaceLatLng;
    .locals 3

    .line 259
    iget-object v0, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->latLng:Lcab/snapp/passenger/data/models/PlaceLatLng;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Lcab/snapp/passenger/data/models/PlaceLatLng;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcab/snapp/passenger/data/models/PlaceLatLng;-><init>(DD)V

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getName_en()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->name_en:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hasLatLng()Z
    .locals 5

    .line 214
    iget-object v0, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->latLng:Lcab/snapp/passenger/data/models/PlaceLatLng;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/PlaceLatLng;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->latLng:Lcab/snapp/passenger/data/models/PlaceLatLng;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/PlaceLatLng;->getLongitude()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->address:Ljava/lang/String;

    return-void
.end method

.method public setDistance(I)V
    .locals 0

    .line 288
    iput p1, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->distance:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->id:Ljava/lang/String;

    return-void
.end method

.method public setLatLng(Lcab/snapp/passenger/data/models/PlaceLatLng;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->latLng:Lcab/snapp/passenger/data/models/PlaceLatLng;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setName_en(Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->name_en:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GeocodeMasterModel{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", address=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", latLng="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->latLng:Lcab/snapp/passenger/data/models/PlaceLatLng;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", name_en=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->name_en:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->distance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
