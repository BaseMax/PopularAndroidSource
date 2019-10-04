.class final Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$Coordinate;
.super Ljava/lang/Object;
.source "LookupAvailabilityResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Coordinate"
.end annotation


# instance fields
.field lat:D

.field lon:D


# direct methods
.method constructor <init>(DD)V
    .locals 0

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-wide p1, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$Coordinate;->lat:D

    .line 333
    iput-wide p3, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$Coordinate;->lon:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 341
    instance-of v0, p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$Coordinate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 343
    check-cast p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$Coordinate;

    .line 345
    iget-wide v2, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$Coordinate;->lat:D

    iget-wide v4, p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$Coordinate;->lat:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$Coordinate;->lon:D

    iget-wide v4, p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$Coordinate;->lon:D

    cmpl-double p1, v2, v4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 354
    iget-wide v0, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$Coordinate;->lat:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    .line 356
    iget-wide v3, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$Coordinate;->lon:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method
