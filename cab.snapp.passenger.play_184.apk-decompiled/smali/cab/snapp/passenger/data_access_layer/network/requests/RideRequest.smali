.class public Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;
.super Lcab/snapp/snappnetwork/model/d;
.source "SourceFile"


# instance fields
.field private destinationDetails:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "destination_details"
    .end annotation
.end field

.field private destinationLatitude:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "destination_lat"
    .end annotation
.end field

.field private destinationLongitude:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "destination_lng"
    .end annotation
.end field

.field private destinationPlaceId:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "destination_place_id"
    .end annotation
.end field

.field private extraDestinationLatitude:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/a/c;
        value = "extra_destination_lat"
    .end annotation
.end field

.field private extraDestinationLongitude:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/a/c;
        value = "extra_destination_lng"
    .end annotation
.end field

.field private extraInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "extra_info"
    .end annotation
.end field

.field private isPackageDelivery:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "services"
    .end annotation
.end field

.field private isPaidByRecipient:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "is_paid_by_recipient"
    .end annotation
.end field

.field private isRoundTrip:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "round_trip"
    .end annotation
.end field

.field private originDetails:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "origin_details"
    .end annotation
.end field

.field private originLatitude:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "origin_lat"
    .end annotation
.end field

.field private originLongitude:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "origin_lng"
    .end annotation
.end field

.field private packageInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "package_info"
    .end annotation
.end field

.field private packageValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "package_value"
    .end annotation
.end field

.field private recipientCellphone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "recipient_cellphone"
    .end annotation
.end field

.field private recipientName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "recipient_name"
    .end annotation
.end field

.field private serviceType:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "service_type"
    .end annotation
.end field

.field private voucher:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "voucher"
    .end annotation
.end field

.field private voucherCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "voucher_code"
    .end annotation
.end field

.field private waitingKey:Ljava/lang/String;
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
.method public getDestinationDetails()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->destinationDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationLatitude()D
    .locals 2

    .line 104
    iget-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->destinationLatitude:D

    return-wide v0
.end method

.method public getDestinationLongitude()D
    .locals 2

    .line 114
    iget-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->destinationLongitude:D

    return-wide v0
.end method

.method public getDestinationPlaceId()I
    .locals 1

    .line 164
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->destinationPlaceId:I

    return v0
.end method

.method public getExtraDestinationLatitude()Ljava/lang/Double;
    .locals 1

    .line 174
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->extraDestinationLatitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getExtraDestinationLongitude()Ljava/lang/Double;
    .locals 1

    .line 184
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->extraDestinationLongitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->extraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginDetails()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->originDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginLatitude()D
    .locals 2

    .line 74
    iget-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->originLatitude:D

    return-wide v0
.end method

.method public getOriginLongitude()D
    .locals 2

    .line 84
    iget-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->originLongitude:D

    return-wide v0
.end method

.method public getPackageInfo()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->packageInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageValue()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->packageValue:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientCellphone()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->recipientCellphone:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientName()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->recipientName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()I
    .locals 1

    .line 134
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->serviceType:I

    return v0
.end method

.method public getVoucher()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->voucher:Ljava/lang/String;

    return-object v0
.end method

.method public getVoucherCode()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->voucherCode:Ljava/lang/String;

    return-object v0
.end method

.method public getWaitingKey()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->waitingKey:Ljava/lang/String;

    return-object v0
.end method

.method public isPackageDelivery()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->isPackageDelivery:Z

    return v0
.end method

.method public isPaidByRecipient()Z
    .locals 1

    .line 274
    iget-boolean v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->isPaidByRecipient:Z

    return v0
.end method

.method public isRoundTrip()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->isRoundTrip:Z

    return v0
.end method

.method public setDestinationDetails(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->destinationDetails:Ljava/lang/String;

    return-void
.end method

.method public setDestinationLatitude(D)V
    .locals 0

    .line 109
    iput-wide p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->destinationLatitude:D

    return-void
.end method

.method public setDestinationLongitude(D)V
    .locals 0

    .line 119
    iput-wide p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->destinationLongitude:D

    return-void
.end method

.method public setDestinationPlaceId(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->destinationPlaceId:I

    return-void
.end method

.method public setExtraDestinationLatitude(Ljava/lang/Double;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->extraDestinationLatitude:Ljava/lang/Double;

    return-void
.end method

.method public setExtraDestinationLongitude(Ljava/lang/Double;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->extraDestinationLongitude:Ljava/lang/Double;

    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->extraInfo:Ljava/lang/String;

    return-void
.end method

.method public setOriginDetails(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->originDetails:Ljava/lang/String;

    return-void
.end method

.method public setOriginLatitude(D)V
    .locals 0

    .line 79
    iput-wide p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->originLatitude:D

    return-void
.end method

.method public setOriginLongitude(D)V
    .locals 0

    .line 89
    iput-wide p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->originLongitude:D

    return-void
.end method

.method public setPackageDelivery(Z)V
    .locals 0

    .line 219
    iput-boolean p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->isPackageDelivery:Z

    return-void
.end method

.method public setPackageInfo(Ljava/lang/String;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->packageInfo:Ljava/lang/String;

    return-void
.end method

.method public setPackageValue(Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->packageValue:Ljava/lang/String;

    return-void
.end method

.method public setPaidByRecipient(Z)V
    .locals 0

    .line 279
    iput-boolean p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->isPaidByRecipient:Z

    return-void
.end method

.method public setRecipientCellphone(Ljava/lang/String;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->recipientCellphone:Ljava/lang/String;

    return-void
.end method

.method public setRecipientName(Ljava/lang/String;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->recipientName:Ljava/lang/String;

    return-void
.end method

.method public setRoundTrip(Z)V
    .locals 0

    .line 199
    iput-boolean p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->isRoundTrip:Z

    return-void
.end method

.method public setServiceType(I)V
    .locals 0

    .line 139
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->serviceType:I

    return-void
.end method

.method public setVoucher(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->voucher:Ljava/lang/String;

    return-void
.end method

.method public setVoucherCode(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->voucherCode:Ljava/lang/String;

    return-void
.end method

.method public setWaitingKey(Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->waitingKey:Ljava/lang/String;

    return-void
.end method
