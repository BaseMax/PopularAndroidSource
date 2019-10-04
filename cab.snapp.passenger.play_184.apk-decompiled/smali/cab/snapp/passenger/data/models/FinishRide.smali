.class public Lcab/snapp/passenger/data/models/FinishRide;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private driverInfo:Lcab/snapp/passenger/data/models/DriverInfo;
    .annotation runtime Lcom/google/gson/a/c;
        value = "driver"
    .end annotation
.end field

.field private rideInformation:Lcab/snapp/passenger/data/models/RideInformation;
    .annotation runtime Lcom/google/gson/a/c;
        value = "ride_info"
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
.method public getDriverInfo()Lcab/snapp/passenger/data/models/DriverInfo;
    .locals 1

    .line 19
    iget-object v0, p0, Lcab/snapp/passenger/data/models/FinishRide;->driverInfo:Lcab/snapp/passenger/data/models/DriverInfo;

    return-object v0
.end method

.method public getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;
    .locals 1

    .line 29
    iget-object v0, p0, Lcab/snapp/passenger/data/models/FinishRide;->rideInformation:Lcab/snapp/passenger/data/models/RideInformation;

    return-object v0
.end method

.method public setDriverInfo(Lcab/snapp/passenger/data/models/DriverInfo;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcab/snapp/passenger/data/models/FinishRide;->driverInfo:Lcab/snapp/passenger/data/models/DriverInfo;

    return-void
.end method

.method public setRideInformation(Lcab/snapp/passenger/data/models/RideInformation;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcab/snapp/passenger/data/models/FinishRide;->rideInformation:Lcab/snapp/passenger/data/models/RideInformation;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FinishRide{driverInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data/models/FinishRide;->driverInfo:Lcab/snapp/passenger/data/models/DriverInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rideInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data/models/FinishRide;->rideInformation:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
