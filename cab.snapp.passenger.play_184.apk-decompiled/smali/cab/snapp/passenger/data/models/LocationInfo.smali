.class public Lcab/snapp/passenger/data/models/LocationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bearing:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "bearing"
    .end annotation
.end field

.field private lat:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "lat"
    .end annotation
.end field

.field private lng:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "lng"
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
.method public getBearing()I
    .locals 1

    .line 40
    iget v0, p0, Lcab/snapp/passenger/data/models/LocationInfo;->bearing:I

    return v0
.end method

.method public getLat()D
    .locals 2

    .line 20
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/LocationInfo;->lat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .line 30
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/LocationInfo;->lng:D

    return-wide v0
.end method

.method public setBearing(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcab/snapp/passenger/data/models/LocationInfo;->bearing:I

    return-void
.end method

.method public setLat(D)V
    .locals 0

    .line 25
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/LocationInfo;->lat:D

    return-void
.end method

.method public setLng(D)V
    .locals 0

    .line 35
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/LocationInfo;->lng:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationInfo{org_lat="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcab/snapp/passenger/data/models/LocationInfo;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", org_lng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcab/snapp/passenger/data/models/LocationInfo;->lng:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", bearing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcab/snapp/passenger/data/models/LocationInfo;->bearing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
