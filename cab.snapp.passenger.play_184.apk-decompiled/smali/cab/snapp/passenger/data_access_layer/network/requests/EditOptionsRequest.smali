.class public Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;
.super Lcab/snapp/snappnetwork/model/d;
.source "SourceFile"


# instance fields
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

.field private packageDelivery:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/a/c;
        value = "services"
    .end annotation
.end field

.field private roundTrip:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/a/c;
        value = "round_trip"
    .end annotation
.end field

.field private tag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "tag"
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
.method public getExtraDestinationLat()Ljava/lang/Double;
    .locals 1

    .line 30
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->extraDestinationLat:Ljava/lang/Double;

    return-object v0
.end method

.method public getExtraDestinationLng()Ljava/lang/Double;
    .locals 1

    .line 40
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->extraDestinationLng:Ljava/lang/Double;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getWaiting()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->waiting:Ljava/lang/String;

    return-object v0
.end method

.method public isPackageDelivery()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->packageDelivery:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isRoundTrip()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->roundTrip:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setExtraDestinationLat(Ljava/lang/Double;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->extraDestinationLat:Ljava/lang/Double;

    return-void
.end method

.method public setExtraDestinationLng(Ljava/lang/Double;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->extraDestinationLng:Ljava/lang/Double;

    return-void
.end method

.method public setPackageDelivery(Z)V
    .locals 0

    .line 75
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->packageDelivery:Ljava/lang/Boolean;

    return-void
.end method

.method public setRoundTrip(Ljava/lang/Boolean;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->roundTrip:Ljava/lang/Boolean;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->tag:Ljava/lang/String;

    return-void
.end method

.method public setWaiting(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->waiting:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnappPassengerEditOptionsRequest{extraDestinationLat="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->extraDestinationLat:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extraDestinationLng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->extraDestinationLng:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", roundTrip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->roundTrip:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", waiting=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->waiting:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageDelivery="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->packageDelivery:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", tag=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
