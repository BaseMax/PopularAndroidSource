.class public Lcab/snapp/passenger/data/models/PinCacheConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cacheGeohashCharacters:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "cache_geohash_characters"
    .end annotation
.end field

.field private cacheReverseGeocodeTtl:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "cache_reverse_geocode_ttl"
    .end annotation
.end field

.field private cacheVehiclesTtl:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "cache_vehicles_ttl"
    .end annotation
.end field

.field private delayInRequest:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "delay_in_request"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheGeohashCharacters()I
    .locals 1

    .line 45
    iget v0, p0, Lcab/snapp/passenger/data/models/PinCacheConfig;->cacheGeohashCharacters:I

    return v0
.end method

.method public getCacheReverseGeocodeTtl()I
    .locals 1

    .line 35
    iget v0, p0, Lcab/snapp/passenger/data/models/PinCacheConfig;->cacheReverseGeocodeTtl:I

    return v0
.end method

.method public getCacheVehiclesTtl()I
    .locals 1

    .line 25
    iget v0, p0, Lcab/snapp/passenger/data/models/PinCacheConfig;->cacheVehiclesTtl:I

    return v0
.end method

.method public getDelayInRequest()I
    .locals 1

    .line 55
    iget v0, p0, Lcab/snapp/passenger/data/models/PinCacheConfig;->delayInRequest:I

    return v0
.end method

.method public setCacheGeohashCharacters(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcab/snapp/passenger/data/models/PinCacheConfig;->cacheGeohashCharacters:I

    return-void
.end method

.method public setCacheReverseGeocodeTtl(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcab/snapp/passenger/data/models/PinCacheConfig;->cacheReverseGeocodeTtl:I

    return-void
.end method

.method public setCacheVehiclesTtl(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcab/snapp/passenger/data/models/PinCacheConfig;->cacheVehiclesTtl:I

    return-void
.end method

.method public setDelayInRequest(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcab/snapp/passenger/data/models/PinCacheConfig;->delayInRequest:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PinCacheConfig{cacheVehiclesTtl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcab/snapp/passenger/data/models/PinCacheConfig;->cacheVehiclesTtl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cacheReverseGeocodeTtl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcab/snapp/passenger/data/models/PinCacheConfig;->cacheReverseGeocodeTtl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cacheGeohashCharacters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcab/snapp/passenger/data/models/PinCacheConfig;->cacheGeohashCharacters:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delayInRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcab/snapp/passenger/data/models/PinCacheConfig;->delayInRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
