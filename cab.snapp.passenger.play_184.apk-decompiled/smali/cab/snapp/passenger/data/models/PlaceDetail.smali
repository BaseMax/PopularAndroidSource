.class public Lcab/snapp/passenger/data/models/PlaceDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private address:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "formatted_address"
    .end annotation
.end field

.field private geometry:Lcab/snapp/passenger/data/models/PlaceDetailGeometry;
    .annotation runtime Lcom/google/gson/a/c;
        value = "geometry"
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcab/snapp/passenger/data/models/PlaceDetail;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getGeometry()Lcab/snapp/passenger/data/models/PlaceDetailGeometry;
    .locals 1

    .line 41
    iget-object v0, p0, Lcab/snapp/passenger/data/models/PlaceDetail;->geometry:Lcab/snapp/passenger/data/models/PlaceDetailGeometry;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcab/snapp/passenger/data/models/PlaceDetail;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcab/snapp/passenger/data/models/PlaceDetail;->placeId:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcab/snapp/passenger/data/models/PlaceDetail;->address:Ljava/lang/String;

    return-void
.end method

.method public setGeometry(Lcab/snapp/passenger/data/models/PlaceDetailGeometry;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcab/snapp/passenger/data/models/PlaceDetail;->geometry:Lcab/snapp/passenger/data/models/PlaceDetailGeometry;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcab/snapp/passenger/data/models/PlaceDetail;->name:Ljava/lang/String;

    return-void
.end method

.method public setPlaceId(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcab/snapp/passenger/data/models/PlaceDetail;->placeId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlaceDetail{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data/models/PlaceDetail;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", address=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/PlaceDetail;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", geometry="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/PlaceDetail;->geometry:Lcab/snapp/passenger/data/models/PlaceDetailGeometry;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", placeId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/PlaceDetail;->placeId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
