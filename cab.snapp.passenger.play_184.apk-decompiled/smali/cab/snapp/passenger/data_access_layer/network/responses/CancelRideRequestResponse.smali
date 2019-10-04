.class public Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field private driverInfo:Lcab/snapp/passenger/data/models/DriverInfo;
    .annotation runtime Lcom/google/gson/a/c;
        value = "driver"
    .end annotation
.end field

.field private locationInfo:Lcab/snapp/passenger/data/models/LocationInfo;
    .annotation runtime Lcom/google/gson/a/c;
        value = "driver_location_info"
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "message"
    .end annotation
.end field

.field private options:Lcab/snapp/passenger/data/models/Options;
    .annotation runtime Lcom/google/gson/a/c;
        value = "options"
    .end annotation
.end field

.field private rideInformation:Lcab/snapp/passenger/data/models/RideInformation;
    .annotation runtime Lcom/google/gson/a/c;
        value = "ride_info"
    .end annotation
.end field

.field private serviceTypeModel:Lcab/snapp/passenger/data/models/ServiceTypeModel;
    .annotation runtime Lcom/google/gson/a/c;
        value = "service_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    return-void
.end method


# virtual methods
.method public getDriverInfo()Lcab/snapp/passenger/data/models/DriverInfo;
    .locals 1

    .line 29
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;->driverInfo:Lcab/snapp/passenger/data/models/DriverInfo;

    return-object v0
.end method

.method public getLocationInfo()Lcab/snapp/passenger/data/models/LocationInfo;
    .locals 1

    .line 39
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;->locationInfo:Lcab/snapp/passenger/data/models/LocationInfo;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Lcab/snapp/passenger/data/models/Options;
    .locals 1

    .line 59
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;->options:Lcab/snapp/passenger/data/models/Options;

    return-object v0
.end method

.method public getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;
    .locals 1

    .line 49
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;->rideInformation:Lcab/snapp/passenger/data/models/RideInformation;

    return-object v0
.end method

.method public getServiceTypeModel()Lcab/snapp/passenger/data/models/ServiceTypeModel;
    .locals 1

    .line 79
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;->serviceTypeModel:Lcab/snapp/passenger/data/models/ServiceTypeModel;

    return-object v0
.end method

.method public setDriverInfo(Lcab/snapp/passenger/data/models/DriverInfo;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;->driverInfo:Lcab/snapp/passenger/data/models/DriverInfo;

    return-void
.end method

.method public setLocationInfo(Lcab/snapp/passenger/data/models/LocationInfo;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;->locationInfo:Lcab/snapp/passenger/data/models/LocationInfo;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setOptions(Lcab/snapp/passenger/data/models/Options;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;->options:Lcab/snapp/passenger/data/models/Options;

    return-void
.end method

.method public setRideInformation(Lcab/snapp/passenger/data/models/RideInformation;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;->rideInformation:Lcab/snapp/passenger/data/models/RideInformation;

    return-void
.end method

.method public setServiceTypeModel(Lcab/snapp/passenger/data/models/ServiceTypeModel;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;->serviceTypeModel:Lcab/snapp/passenger/data/models/ServiceTypeModel;

    return-void
.end method
