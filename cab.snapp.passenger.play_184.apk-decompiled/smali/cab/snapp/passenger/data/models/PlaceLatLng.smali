.class public Lcab/snapp/passenger/data/models/PlaceLatLng;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private latitude:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "latitude"
    .end annotation
.end field

.field private longitude:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "longitude"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/PlaceLatLng;->latitude:D

    .line 20
    iput-wide p3, p0, Lcab/snapp/passenger/data/models/PlaceLatLng;->longitude:D

    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    .line 25
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/PlaceLatLng;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 35
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/PlaceLatLng;->longitude:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 0

    .line 30
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/PlaceLatLng;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 40
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/PlaceLatLng;->longitude:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlaceLatLng{latitude="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcab/snapp/passenger/data/models/PlaceLatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcab/snapp/passenger/data/models/PlaceLatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
