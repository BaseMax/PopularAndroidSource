.class public Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private driverInfo:Lcab/snapp/passenger/data/models/DriverInfo;
    .annotation runtime Lcom/google/gson/a/c;
        value = "driver"
    .end annotation
.end field

.field private driverLocationInfo:Lcab/snapp/passenger/data/models/LocationInfo;
    .annotation runtime Lcom/google/gson/a/c;
        value = "driver_location_info"
    .end annotation
.end field

.field private listWaitingTips:Ljava/util/List;
    .annotation runtime Lcom/google/gson/a/c;
        value = "waitings"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/RideWaiting;",
            ">;"
        }
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

.field private safeCall:Lcab/snapp/passenger/data/models/SafeCall;
    .annotation runtime Lcom/google/gson/a/c;
        value = "call"
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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDriverInfo()Lcab/snapp/passenger/data/models/DriverInfo;
    .locals 1

    .line 45
    iget-object v0, p0, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->driverInfo:Lcab/snapp/passenger/data/models/DriverInfo;

    return-object v0
.end method

.method public getDriverLocationInfo()Lcab/snapp/passenger/data/models/LocationInfo;
    .locals 1

    .line 55
    iget-object v0, p0, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->driverLocationInfo:Lcab/snapp/passenger/data/models/LocationInfo;

    return-object v0
.end method

.method public getListWaitingTips()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/RideWaiting;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->listWaitingTips:Ljava/util/List;

    return-object v0
.end method

.method public getOptions()Lcab/snapp/passenger/data/models/Options;
    .locals 1

    .line 75
    iget-object v0, p0, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->options:Lcab/snapp/passenger/data/models/Options;

    return-object v0
.end method

.method public getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;
    .locals 1

    .line 65
    iget-object v0, p0, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->rideInformation:Lcab/snapp/passenger/data/models/RideInformation;

    return-object v0
.end method

.method public getSafeCall()Lcab/snapp/passenger/data/models/SafeCall;
    .locals 1

    .line 95
    iget-object v0, p0, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->safeCall:Lcab/snapp/passenger/data/models/SafeCall;

    return-object v0
.end method

.method public getServiceTypeModel()Lcab/snapp/passenger/data/models/ServiceTypeModel;
    .locals 1

    .line 85
    iget-object v0, p0, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->serviceTypeModel:Lcab/snapp/passenger/data/models/ServiceTypeModel;

    return-object v0
.end method

.method public setDriverInfo(Lcab/snapp/passenger/data/models/DriverInfo;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->driverInfo:Lcab/snapp/passenger/data/models/DriverInfo;

    return-void
.end method

.method public setDriverLocationInfo(Lcab/snapp/passenger/data/models/LocationInfo;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->driverLocationInfo:Lcab/snapp/passenger/data/models/LocationInfo;

    return-void
.end method

.method public setOptions(Lcab/snapp/passenger/data/models/Options;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->options:Lcab/snapp/passenger/data/models/Options;

    return-void
.end method

.method public setRideInformation(Lcab/snapp/passenger/data/models/RideInformation;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->rideInformation:Lcab/snapp/passenger/data/models/RideInformation;

    return-void
.end method

.method public setSafeCall(Lcab/snapp/passenger/data/models/SafeCall;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->safeCall:Lcab/snapp/passenger/data/models/SafeCall;

    return-void
.end method

.method public setServiceTypeModel(Lcab/snapp/passenger/data/models/ServiceTypeModel;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->serviceTypeModel:Lcab/snapp/passenger/data/models/ServiceTypeModel;

    return-void
.end method
