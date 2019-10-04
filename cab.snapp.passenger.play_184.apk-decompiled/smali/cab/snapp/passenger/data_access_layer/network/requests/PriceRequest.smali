.class public Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;
.super Lcab/snapp/snappnetwork/model/d;
.source "SourceFile"


# instance fields
.field private destinationLat:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "destination_lat"
    .end annotation
.end field

.field private destinationLng:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "destination_lng"
    .end annotation
.end field

.field private destinationPlaceID:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "destination_place_id"
    .end annotation
.end field

.field private extraDestinationLat:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/a/c;
        value = "extra_destination_lat"
    .end annotation
.end field

.field private extraDestinationLng:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/a/c;
        value = "extra_destination_lng"
    .end annotation
.end field

.field private originLat:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "origin_lat"
    .end annotation
.end field

.field private originLng:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "origin_lng"
    .end annotation
.end field

.field private packageDelivery:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "services"
    .end annotation
.end field

.field private roundTrip:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "round_trip"
    .end annotation
.end field

.field private serviceType:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "service_type"
    .end annotation
.end field

.field private tag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "tag"
    .end annotation
.end field

.field private voucherCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "voucher_code"
    .end annotation
.end field

.field private waiting:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "waiting"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/d;-><init>()V

    return-void
.end method


# virtual methods
.method public getDestinationLat()D
    .locals 2

    .line 70
    iget-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->destinationLat:D

    return-wide v0
.end method

.method public getDestinationLng()D
    .locals 2

    .line 80
    iget-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->destinationLng:D

    return-wide v0
.end method

.method public getDestinationPlaceID()I
    .locals 1

    .line 110
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->destinationPlaceID:I

    return v0
.end method

.method public getExtraDestinationLat()Ljava/lang/Double;
    .locals 1

    .line 160
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->extraDestinationLat:Ljava/lang/Double;

    return-object v0
.end method

.method public getExtraDestinationLng()Ljava/lang/Double;
    .locals 1

    .line 150
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->extraDestinationLng:Ljava/lang/Double;

    return-object v0
.end method

.method public getOriginLat()D
    .locals 2

    .line 50
    iget-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->originLat:D

    return-wide v0
.end method

.method public getOriginLng()D
    .locals 2

    .line 60
    iget-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->originLng:D

    return-wide v0
.end method

.method public getServiceType()I
    .locals 1

    .line 90
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->serviceType:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoucherCode()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->voucherCode:Ljava/lang/String;

    return-object v0
.end method

.method public getWaiting()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->waiting:Ljava/lang/String;

    return-object v0
.end method

.method public isPackageDelivery()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->packageDelivery:Z

    return v0
.end method

.method public isRoundTrip()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->roundTrip:Z

    return v0
.end method

.method public setDestinationLat(D)V
    .locals 0

    .line 75
    iput-wide p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->destinationLat:D

    return-void
.end method

.method public setDestinationLng(D)V
    .locals 0

    .line 85
    iput-wide p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->destinationLng:D

    return-void
.end method

.method public setDestinationPlaceID(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->destinationPlaceID:I

    return-void
.end method

.method public setExtraDestinationLat(Ljava/lang/Double;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->extraDestinationLat:Ljava/lang/Double;

    return-void
.end method

.method public setExtraDestinationLng(Ljava/lang/Double;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->extraDestinationLng:Ljava/lang/Double;

    return-void
.end method

.method public setOriginLat(D)V
    .locals 0

    .line 55
    iput-wide p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->originLat:D

    return-void
.end method

.method public setOriginLng(D)V
    .locals 0

    .line 65
    iput-wide p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->originLng:D

    return-void
.end method

.method public setPackageDelivery(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->packageDelivery:Z

    return-void
.end method

.method public setRoundTrip(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->roundTrip:Z

    return-void
.end method

.method public setServiceType(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->serviceType:I

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->tag:Ljava/lang/String;

    return-void
.end method

.method public setVoucherCode(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->voucherCode:Ljava/lang/String;

    return-void
.end method

.method public setWaiting(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->waiting:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnappPassengerPriceRequest{originLat="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->originLat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", originLng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->originLng:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", destinationLat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->destinationLat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", destinationLng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->destinationLng:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", serviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->serviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", voucherCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->voucherCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", destinationPlaceID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->destinationPlaceID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extraDestinationLat="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->extraDestinationLat:Ljava/lang/Double;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", extraDestinationLng="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->extraDestinationLng:Ljava/lang/Double;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", roundTrip="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->roundTrip:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", waiting=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->waiting:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageDelivery="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->packageDelivery:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", tag=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
