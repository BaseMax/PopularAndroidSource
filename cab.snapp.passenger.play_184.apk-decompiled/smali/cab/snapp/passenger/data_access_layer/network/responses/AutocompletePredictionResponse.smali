.class public Lcab/snapp/passenger/data_access_layer/network/responses/AutocompletePredictionResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field private poweredBy:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "powered-by"
    .end annotation
.end field

.field private predictions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/a/c;
        value = "predictions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/AutocompletePrediction;",
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
.method public getPoweredBy()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/AutocompletePredictionResponse;->poweredBy:Ljava/lang/String;

    return-object v0
.end method

.method public getPredictions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/AutocompletePrediction;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/AutocompletePredictionResponse;->predictions:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/AutocompletePredictionResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setPoweredBy(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/AutocompletePredictionResponse;->poweredBy:Ljava/lang/String;

    return-void
.end method

.method public setPredictions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/AutocompletePrediction;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/AutocompletePredictionResponse;->predictions:Ljava/util/List;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/AutocompletePredictionResponse;->status:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AutocompletePredictionResponse{predictions="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/AutocompletePredictionResponse;->predictions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/AutocompletePredictionResponse;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", poweredBy=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/AutocompletePredictionResponse;->poweredBy:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
