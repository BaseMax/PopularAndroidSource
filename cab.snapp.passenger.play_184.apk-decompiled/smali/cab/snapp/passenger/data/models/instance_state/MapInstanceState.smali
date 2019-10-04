.class public Lcab/snapp/passenger/data/models/instance_state/MapInstanceState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private destinationLatitude:D

.field private destinationLongitude:D

.field private latitude:D

.field private longitude:D

.field private originLatitude:D

.field private originLongitude:D

.field private secondDestLatitude:D

.field private secondDestLongitude:D

.field private zoom:F


# direct methods
.method public constructor <init>(DDF)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/instance_state/MapInstanceState;->latitude:D

    .line 22
    iput-wide p3, p0, Lcab/snapp/passenger/data/models/instance_state/MapInstanceState;->longitude:D

    .line 23
    iput p5, p0, Lcab/snapp/passenger/data/models/instance_state/MapInstanceState;->zoom:F

    return-void
.end method


# virtual methods
.method public getDestination()[D
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 75
    iget-wide v1, p0, Lcab/snapp/passenger/data/models/instance_state/MapInstanceState;->destinationLatitude:D

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 76
    iget-wide v1, p0, Lcab/snapp/passenger/data/models/instance_state/MapInstanceState;->destinationLongitude:D

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 32
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/instance_state/MapInstanceState;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 42
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/instance_state/MapInstanceState;->longitude:D

    return-wide v0
.end method

.method public getOrigin()[D
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 66
    iget-wide v1, p0, Lcab/snapp/passenger/data/models/instance_state/MapInstanceState;->originLatitude:D

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 67
    iget-wide v1, p0, Lcab/snapp/passenger/data/models/instance_state/MapInstanceState;->originLongitude:D

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    return-object v0
.end method

.method public getSecondDestination()[D
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 84
    iget-wide v1, p0, Lcab/snapp/passenger/data/models/instance_state/MapInstanceState;->secondDestLatitude:D

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 85
    iget-wide v1, p0, Lcab/snapp/passenger/data/models/instance_state/MapInstanceState;->secondDestLongitude:D

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    return-object v0
.end method

.method public getZoom()F
    .locals 1

    .line 52
    iget v0, p0, Lcab/snapp/passenger/data/models/instance_state/MapInstanceState;->zoom:F

    return v0
.end method

.method public setDestination(DD)V
    .locals 0

    .line 98
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/instance_state/MapInstanceState;->destinationLatitude:D

    .line 99
    iput-wide p3, p0, Lcab/snapp/passenger/data/models/instance_state/MapInstanceState;->destinationLongitude:D

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 37
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/instance_state/MapInstanceState;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/instance_state/MapInstanceState;->longitude:D

    return-void
.end method

.method public setOrigin(DD)V
    .locals 0

    .line 92
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/instance_state/MapInstanceState;->originLatitude:D

    .line 93
    iput-wide p3, p0, Lcab/snapp/passenger/data/models/instance_state/MapInstanceState;->originLongitude:D

    return-void
.end method

.method public setSecondDestination(DD)V
    .locals 0

    .line 104
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/instance_state/MapInstanceState;->secondDestLatitude:D

    .line 105
    iput-wide p3, p0, Lcab/snapp/passenger/data/models/instance_state/MapInstanceState;->secondDestLongitude:D

    return-void
.end method

.method public setZoom(F)V
    .locals 0

    .line 57
    iput p1, p0, Lcab/snapp/passenger/data/models/instance_state/MapInstanceState;->zoom:F

    return-void
.end method
