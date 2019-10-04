.class public Lcab/snapp/passenger/data_access_layer/network/responses/CedarSearchResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field private autoMoveToFirst:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "auto_move_to_first"
    .end annotation
.end field

.field private cedarGeocodeResults:Ljava/util/List;
    .annotation runtime Lcom/google/gson/a/c;
        value = "results"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/CedarGeocodeResult;",
            ">;"
        }
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

    .line 10
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    return-void
.end method


# virtual methods
.method public getCedarGeocodeResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/CedarGeocodeResult;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CedarSearchResponse;->cedarGeocodeResults:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CedarSearchResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoMoveToFirst()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CedarSearchResponse;->autoMoveToFirst:Z

    return v0
.end method

.method public setAutoMoveToFirst(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CedarSearchResponse;->autoMoveToFirst:Z

    return-void
.end method

.method public setCedarGeocodeResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/CedarGeocodeResult;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CedarSearchResponse;->cedarGeocodeResults:Ljava/util/List;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CedarSearchResponse;->status:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CedarSearchResponse{cedarGeocodeResults="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CedarSearchResponse;->cedarGeocodeResults:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CedarSearchResponse;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", autoMoveToFirst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/CedarSearchResponse;->autoMoveToFirst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
