.class public Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;
.super Lcab/snapp/snappnetwork/model/d;
.source "SourceFile"


# instance fields
.field private formattedAddress:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "formatted_address"
    .end annotation
.end field

.field private lat:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "lat"
    .end annotation
.end field

.field private lng:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "lng"
    .end annotation
.end field

.field private serviceType:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "service_type"
    .end annotation
.end field

.field private vehicles:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "vehicles"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/d;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;->vehicles:I

    .line 22
    iput v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;->formattedAddress:I

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/d;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;->vehicles:I

    .line 22
    iput v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;->formattedAddress:I

    .line 35
    iput-wide p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;->lat:D

    .line 36
    iput-wide p3, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;->lng:D

    return-void
.end method


# virtual methods
.method public getLat()D
    .locals 2

    .line 43
    iget-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;->lat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .line 53
    iget-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;->lng:D

    return-wide v0
.end method

.method public getServiceType()I
    .locals 1

    .line 63
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;->serviceType:I

    return v0
.end method

.method public getVehicles()I
    .locals 1

    .line 73
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;->vehicles:I

    return v0
.end method

.method public setFormattedAddress()V
    .locals 1

    const/4 v0, 0x1

    .line 83
    iput v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;->formattedAddress:I

    return-void
.end method

.method public setLat(D)V
    .locals 0

    .line 48
    iput-wide p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;->lat:D

    return-void
.end method

.method public setLng(D)V
    .locals 0

    .line 58
    iput-wide p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;->lng:D

    return-void
.end method

.method public setServiceType(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;->serviceType:I

    return-void
.end method

.method public setVehicles()V
    .locals 1

    const/4 v0, 0x1

    .line 78
    iput v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;->vehicles:I

    return-void
.end method
