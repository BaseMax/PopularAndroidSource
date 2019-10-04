.class public final La/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p5, p6, p7, p8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, La/a/a/a;->c:D

    .line 29
    invoke-static {p5, p6, p7, p8}, Ljava/lang/Math;->max(DD)D

    move-result-wide p5

    iput-wide p5, p0, La/a/a/a;->d:D

    .line 30
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide p5

    iput-wide p5, p0, La/a/a/a;->a:D

    .line 31
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, La/a/a/a;->b:D

    return-void
.end method

.method public constructor <init>(La/a/a/a;)V
    .locals 9

    .line 35
    iget-wide v1, p1, La/a/a/a;->a:D

    iget-wide v3, p1, La/a/a/a;->b:D

    iget-wide v5, p1, La/a/a/a;->c:D

    iget-wide v7, p1, La/a/a/a;->d:D

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, La/a/a/a;-><init>(DDDD)V

    return-void
.end method

.method public constructor <init>(La/a/a/c;La/a/a/c;)V
    .locals 9

    .line 24
    invoke-virtual {p1}, La/a/a/c;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p2}, La/a/a/c;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, La/a/a/c;->getLongitude()D

    move-result-wide v5

    invoke-virtual {p2}, La/a/a/c;->getLongitude()D

    move-result-wide v7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, La/a/a/a;-><init>(DDDD)V

    return-void
.end method

.method private static a(D)I
    .locals 2

    .line 78
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method


# virtual methods
.method public final contains(La/a/a/c;)Z
    .locals 5

    .line 83
    invoke-virtual {p1}, La/a/a/c;->getLatitude()D

    move-result-wide v0

    iget-wide v2, p0, La/a/a/a;->a:D

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    invoke-virtual {p1}, La/a/a/c;->getLongitude()D

    move-result-wide v0

    iget-wide v2, p0, La/a/a/a;->c:D

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    invoke-virtual {p1}, La/a/a/c;->getLatitude()D

    move-result-wide v0

    iget-wide v2, p0, La/a/a/a;->b:D

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    .line 84
    invoke-virtual {p1}, La/a/a/c;->getLongitude()D

    move-result-wide v0

    iget-wide v2, p0, La/a/a/a;->d:D

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 59
    :cond_0
    instance-of v1, p1, La/a/a/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 60
    check-cast p1, La/a/a/a;

    .line 61
    iget-wide v3, p0, La/a/a/a;->a:D

    iget-wide v5, p1, La/a/a/a;->a:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, La/a/a/a;->c:D

    iget-wide v5, p1, La/a/a/a;->c:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, La/a/a/a;->b:D

    iget-wide v5, p1, La/a/a/a;->b:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, La/a/a/a;->d:D

    iget-wide v5, p1, La/a/a/a;->d:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final expandToInclude(La/a/a/a;)V
    .locals 5

    .line 103
    iget-wide v0, p1, La/a/a/a;->c:D

    iget-wide v2, p0, La/a/a/a;->c:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 104
    iput-wide v0, p0, La/a/a/a;->c:D

    .line 106
    :cond_0
    iget-wide v0, p1, La/a/a/a;->d:D

    iget-wide v2, p0, La/a/a/a;->d:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 107
    iput-wide v0, p0, La/a/a/a;->d:D

    .line 109
    :cond_1
    iget-wide v0, p1, La/a/a/a;->a:D

    iget-wide v2, p0, La/a/a/a;->a:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_2

    .line 110
    iput-wide v0, p0, La/a/a/a;->a:D

    .line 112
    :cond_2
    iget-wide v0, p1, La/a/a/a;->b:D

    iget-wide v2, p0, La/a/a/a;->b:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_3

    .line 113
    iput-wide v0, p0, La/a/a/a;->b:D

    :cond_3
    return-void
.end method

.method public final getCenterPoint()La/a/a/c;
    .locals 8

    .line 97
    iget-wide v0, p0, La/a/a/a;->a:D

    iget-wide v2, p0, La/a/a/a;->b:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 98
    iget-wide v4, p0, La/a/a/a;->c:D

    iget-wide v6, p0, La/a/a/a;->d:D

    add-double/2addr v4, v6

    div-double/2addr v4, v2

    .line 99
    new-instance v2, La/a/a/c;

    invoke-direct {v2, v0, v1, v4, v5}, La/a/a/c;-><init>(DD)V

    return-object v2
.end method

.method public final getLatitudeSize()D
    .locals 4

    .line 47
    iget-wide v0, p0, La/a/a/a;->b:D

    iget-wide v2, p0, La/a/a/a;->a:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public final getLongitudeSize()D
    .locals 4

    .line 51
    iget-wide v0, p0, La/a/a/a;->d:D

    iget-wide v2, p0, La/a/a/a;->c:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public final getLowerRight()La/a/a/c;
    .locals 5

    .line 43
    new-instance v0, La/a/a/c;

    iget-wide v1, p0, La/a/a/a;->a:D

    iget-wide v3, p0, La/a/a/a;->d:D

    invoke-direct {v0, v1, v2, v3, v4}, La/a/a/c;-><init>(DD)V

    return-object v0
.end method

.method public final getMaxLat()D
    .locals 2

    .line 126
    iget-wide v0, p0, La/a/a/a;->b:D

    return-wide v0
.end method

.method public final getMaxLon()D
    .locals 2

    .line 130
    iget-wide v0, p0, La/a/a/a;->d:D

    return-wide v0
.end method

.method public final getMinLat()D
    .locals 2

    .line 122
    iget-wide v0, p0, La/a/a/a;->a:D

    return-wide v0
.end method

.method public final getMinLon()D
    .locals 2

    .line 118
    iget-wide v0, p0, La/a/a/a;->c:D

    return-wide v0
.end method

.method public final getUpperLeft()La/a/a/c;
    .locals 5

    .line 39
    new-instance v0, La/a/a/c;

    iget-wide v1, p0, La/a/a/a;->b:D

    iget-wide v3, p0, La/a/a/a;->c:D

    invoke-direct {v0, v1, v2, v3, v4}, La/a/a/c;-><init>(DD)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 70
    iget-wide v0, p0, La/a/a/a;->a:D

    invoke-static {v0, v1}, La/a/a/a;->a(D)I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    .line 71
    iget-wide v1, p0, La/a/a/a;->b:D

    invoke-static {v1, v2}, La/a/a/a;->a(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 72
    iget-wide v1, p0, La/a/a/a;->c:D

    invoke-static {v1, v2}, La/a/a/a;->a(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 73
    iget-wide v1, p0, La/a/a/a;->d:D

    invoke-static {v1, v2}, La/a/a/a;->a(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final intersects(La/a/a/a;)Z
    .locals 5

    .line 88
    iget-wide v0, p1, La/a/a/a;->c:D

    iget-wide v2, p0, La/a/a/a;->d:D

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_0

    iget-wide v0, p1, La/a/a/a;->d:D

    iget-wide v2, p0, La/a/a/a;->c:D

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v0, p1, La/a/a/a;->a:D

    iget-wide v2, p0, La/a/a/a;->b:D

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_0

    iget-wide v0, p1, La/a/a/a;->b:D

    iget-wide v2, p0, La/a/a/a;->a:D

    cmpg-double p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, La/a/a/a;->getUpperLeft()La/a/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, La/a/a/a;->getLowerRight()La/a/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
