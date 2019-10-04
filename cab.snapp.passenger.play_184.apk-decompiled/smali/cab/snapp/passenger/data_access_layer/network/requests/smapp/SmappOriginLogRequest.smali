.class public Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappOriginLogRequest;
.super Lcab/snapp/snappnetwork/model/d;
.source "SourceFile"


# instance fields
.field private action:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "action"
    .end annotation
.end field

.field private location:Lcab/snapp/passenger/data/models/PlaceLatLng;
    .annotation runtime Lcom/google/gson/a/c;
        value = "origin"
    .end annotation
.end field

.field private uuid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "origin_uuid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/d;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappOriginLogRequest;->action:I

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .line 20
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappOriginLogRequest;->action:I

    return v0
.end method

.method public getLocation()Lcab/snapp/passenger/data/models/PlaceLatLng;
    .locals 1

    .line 40
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappOriginLogRequest;->location:Lcab/snapp/passenger/data/models/PlaceLatLng;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappOriginLogRequest;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappOriginLogRequest;->action:I

    return-void
.end method

.method public setLocation(Lcab/snapp/passenger/data/models/PlaceLatLng;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappOriginLogRequest;->location:Lcab/snapp/passenger/data/models/PlaceLatLng;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappOriginLogRequest;->uuid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnappPassengerSmappOriginLogRequest{action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappOriginLogRequest;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappOriginLogRequest;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappOriginLogRequest;->location:Lcab/snapp/passenger/data/models/PlaceLatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
