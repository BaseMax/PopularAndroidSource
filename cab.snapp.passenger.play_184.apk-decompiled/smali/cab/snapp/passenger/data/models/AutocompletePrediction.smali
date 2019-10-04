.class public Lcab/snapp/passenger/data/models/AutocompletePrediction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private areaLength:J
    .annotation runtime Lcom/google/gson/a/c;
        value = "area_length"
    .end annotation
.end field

.field private distance:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "distance"
    .end annotation
.end field

.field private fullAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "description"
    .end annotation
.end field

.field private latLng:Lcab/snapp/passenger/data/models/PlaceLatLng;
    .annotation runtime Lcom/google/gson/a/c;
        value = "location"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "name"
    .end annotation
.end field

.field private placeId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "place_id"
    .end annotation
.end field

.field private structuredFormatting:Lcab/snapp/passenger/data/models/PredictionStructuredFormatting;
    .annotation runtime Lcom/google/gson/a/c;
        value = "structured_formatting"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAreaLength()J
    .locals 2

    .line 103
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/AutocompletePrediction;->areaLength:J

    return-wide v0
.end method

.method public getDistance()I
    .locals 1

    .line 93
    iget v0, p0, Lcab/snapp/passenger/data/models/AutocompletePrediction;->distance:I

    return v0
.end method

.method public getFullAddress()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcab/snapp/passenger/data/models/AutocompletePrediction;->fullAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLatLng()Lcab/snapp/passenger/data/models/PlaceLatLng;
    .locals 1

    .line 83
    iget-object v0, p0, Lcab/snapp/passenger/data/models/AutocompletePrediction;->latLng:Lcab/snapp/passenger/data/models/PlaceLatLng;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcab/snapp/passenger/data/models/AutocompletePrediction;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcab/snapp/passenger/data/models/AutocompletePrediction;->placeId:Ljava/lang/String;

    return-object v0
.end method

.method public getStructuredFormatting()Lcab/snapp/passenger/data/models/PredictionStructuredFormatting;
    .locals 1

    .line 43
    iget-object v0, p0, Lcab/snapp/passenger/data/models/AutocompletePrediction;->structuredFormatting:Lcab/snapp/passenger/data/models/PredictionStructuredFormatting;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcab/snapp/passenger/data/models/AutocompletePrediction;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAreaLength(J)V
    .locals 0

    .line 108
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/AutocompletePrediction;->areaLength:J

    return-void
.end method

.method public setDistance(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcab/snapp/passenger/data/models/AutocompletePrediction;->distance:I

    return-void
.end method

.method public setFullAddress(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcab/snapp/passenger/data/models/AutocompletePrediction;->fullAddress:Ljava/lang/String;

    return-void
.end method

.method public setLatLng(Lcab/snapp/passenger/data/models/PlaceLatLng;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcab/snapp/passenger/data/models/AutocompletePrediction;->latLng:Lcab/snapp/passenger/data/models/PlaceLatLng;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcab/snapp/passenger/data/models/AutocompletePrediction;->name:Ljava/lang/String;

    return-void
.end method

.method public setPlaceId(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcab/snapp/passenger/data/models/AutocompletePrediction;->placeId:Ljava/lang/String;

    return-void
.end method

.method public setStructuredFormatting(Lcab/snapp/passenger/data/models/PredictionStructuredFormatting;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcab/snapp/passenger/data/models/AutocompletePrediction;->structuredFormatting:Lcab/snapp/passenger/data/models/PredictionStructuredFormatting;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcab/snapp/passenger/data/models/AutocompletePrediction;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AutocompletePrediction{placeId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data/models/AutocompletePrediction;->placeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/AutocompletePrediction;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", structuredFormatting="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/AutocompletePrediction;->structuredFormatting:Lcab/snapp/passenger/data/models/PredictionStructuredFormatting;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", fullAddress=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/AutocompletePrediction;->fullAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/AutocompletePrediction;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", latLng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data/models/AutocompletePrediction;->latLng:Lcab/snapp/passenger/data/models/PlaceLatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcab/snapp/passenger/data/models/AutocompletePrediction;->distance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", areaLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcab/snapp/passenger/data/models/AutocompletePrediction;->areaLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
