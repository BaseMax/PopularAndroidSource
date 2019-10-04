.class public Lcab/snapp/passenger/data/models/Vehicle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bearing:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "bearing"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "id"
    .end annotation
.end field

.field private latestLat:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "lat"
    .end annotation
.end field

.field private latestLng:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "lng"
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
.method public getBearing()I
    .locals 1

    .line 51
    iget v0, p0, Lcab/snapp/passenger/data/models/Vehicle;->bearing:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcab/snapp/passenger/data/models/Vehicle;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestLat()D
    .locals 2

    .line 31
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/Vehicle;->latestLat:D

    return-wide v0
.end method

.method public getLatestLng()D
    .locals 2

    .line 41
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/Vehicle;->latestLng:D

    return-wide v0
.end method

.method public setBearing(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcab/snapp/passenger/data/models/Vehicle;->bearing:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcab/snapp/passenger/data/models/Vehicle;->id:Ljava/lang/String;

    return-void
.end method

.method public setLatestLat(D)V
    .locals 0

    .line 36
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/Vehicle;->latestLat:D

    return-void
.end method

.method public setLatestLng(D)V
    .locals 0

    .line 46
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/Vehicle;->latestLng:D

    return-void
.end method
