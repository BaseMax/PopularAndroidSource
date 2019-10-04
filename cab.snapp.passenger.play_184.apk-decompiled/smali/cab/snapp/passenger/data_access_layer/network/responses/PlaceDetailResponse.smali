.class public Lcab/snapp/passenger/data_access_layer/network/responses/PlaceDetailResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field private placeDetail:Lcab/snapp/passenger/data/models/PlaceDetail;
    .annotation runtime Lcom/google/gson/a/c;
        value = "result"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaceDetail()Lcab/snapp/passenger/data/models/PlaceDetail;
    .locals 1

    .line 18
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PlaceDetailResponse;->placeDetail:Lcab/snapp/passenger/data/models/PlaceDetail;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PlaceDetailResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setPlaceDetail(Lcab/snapp/passenger/data/models/PlaceDetail;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PlaceDetailResponse;->placeDetail:Lcab/snapp/passenger/data/models/PlaceDetail;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PlaceDetailResponse;->status:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlaceDetailResponse{placeDetail="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PlaceDetailResponse;->placeDetail:Lcab/snapp/passenger/data/models/PlaceDetail;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PlaceDetailResponse;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
