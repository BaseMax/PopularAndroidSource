.class public Lcab/snapp/passenger/data/models/CedarGeocodeResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private address:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "address"
    .end annotation
.end field

.field private cedarLocation:Lcab/snapp/passenger/data/models/CedarLocation;
    .annotation runtime Lcom/google/gson/a/c;
        value = "location"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "id"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "name"
    .end annotation
.end field

.field private name_en:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "name_en"
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
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getCedarLocation()Lcab/snapp/passenger/data/models/CedarLocation;
    .locals 1

    .line 32
    iget-object v0, p0, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->cedarLocation:Lcab/snapp/passenger/data/models/CedarLocation;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getName_en()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->name_en:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->address:Ljava/lang/String;

    return-void
.end method

.method public setCedarLocation(Lcab/snapp/passenger/data/models/CedarLocation;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->cedarLocation:Lcab/snapp/passenger/data/models/CedarLocation;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->name:Ljava/lang/String;

    return-void
.end method

.method public setName_en(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->name_en:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CedarGeocodeResult{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", address=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cedarLocation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->cedarLocation:Lcab/snapp/passenger/data/models/CedarLocation;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", name_en=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->name_en:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
