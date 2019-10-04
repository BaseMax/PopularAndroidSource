.class public Lat/gadermaier/argon2/model/Instance;
.super Ljava/lang/Object;
.source "Instance.java"


# instance fields
.field private iterations:I

.field private laneLength:I

.field private lanes:I

.field public memory:[Lat/gadermaier/argon2/model/Block;

.field private segmentLength:I

.field private type:Lat/gadermaier/argon2/model/Argon2Type;

.field private version:I


# direct methods
.method public constructor <init>(Lat/gadermaier/argon2/Argon2;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Lat/gadermaier/argon2/Argon2;->getVersion()I

    move-result v0

    iput v0, p0, Lat/gadermaier/argon2/model/Instance;->version:I

    .line 20
    invoke-virtual {p1}, Lat/gadermaier/argon2/Argon2;->getIterations()I

    move-result v0

    iput v0, p0, Lat/gadermaier/argon2/model/Instance;->iterations:I

    .line 21
    invoke-virtual {p1}, Lat/gadermaier/argon2/Argon2;->getLanes()I

    move-result v0

    iput v0, p0, Lat/gadermaier/argon2/model/Instance;->lanes:I

    .line 22
    invoke-virtual {p1}, Lat/gadermaier/argon2/Argon2;->getType()Lat/gadermaier/argon2/model/Argon2Type;

    move-result-object v0

    iput-object v0, p0, Lat/gadermaier/argon2/model/Instance;->type:Lat/gadermaier/argon2/model/Argon2Type;

    .line 26
    invoke-virtual {p1}, Lat/gadermaier/argon2/Argon2;->getMemory()I

    move-result v0

    .line 28
    invoke-virtual {p1}, Lat/gadermaier/argon2/Argon2;->getLanes()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    if-ge v0, v1, :cond_0

    .line 29
    invoke-virtual {p1}, Lat/gadermaier/argon2/Argon2;->getLanes()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    .line 32
    :cond_0
    invoke-virtual {p1}, Lat/gadermaier/argon2/Argon2;->getLanes()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/2addr v0, v1

    iput v0, p0, Lat/gadermaier/argon2/model/Instance;->segmentLength:I

    .line 33
    iget v0, p0, Lat/gadermaier/argon2/model/Instance;->segmentLength:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lat/gadermaier/argon2/model/Instance;->laneLength:I

    .line 35
    iget v0, p0, Lat/gadermaier/argon2/model/Instance;->segmentLength:I

    invoke-virtual {p1}, Lat/gadermaier/argon2/Argon2;->getLanes()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    mul-int v0, v0, p1

    .line 37
    invoke-direct {p0, v0}, Lat/gadermaier/argon2/model/Instance;->initMemory(I)V

    return-void
.end method

.method private initMemory(I)V
    .locals 2

    .line 41
    new-array p1, p1, [Lat/gadermaier/argon2/model/Block;

    iput-object p1, p0, Lat/gadermaier/argon2/model/Instance;->memory:[Lat/gadermaier/argon2/model/Block;

    const/4 p1, 0x0

    .line 43
    :goto_0
    iget-object v0, p0, Lat/gadermaier/argon2/model/Instance;->memory:[Lat/gadermaier/argon2/model/Block;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 44
    iget-object v0, p0, Lat/gadermaier/argon2/model/Instance;->memory:[Lat/gadermaier/argon2/model/Block;

    new-instance v1, Lat/gadermaier/argon2/model/Block;

    invoke-direct {v1}, Lat/gadermaier/argon2/model/Block;-><init>()V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 49
    iget-object v0, p0, Lat/gadermaier/argon2/model/Instance;->memory:[Lat/gadermaier/argon2/model/Block;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 50
    invoke-virtual {v3}, Lat/gadermaier/argon2/model/Block;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lat/gadermaier/argon2/model/Instance;->memory:[Lat/gadermaier/argon2/model/Block;

    return-void
.end method

.method public getIterations()I
    .locals 1

    .line 65
    iget v0, p0, Lat/gadermaier/argon2/model/Instance;->iterations:I

    return v0
.end method

.method public getLaneLength()I
    .locals 1

    .line 73
    iget v0, p0, Lat/gadermaier/argon2/model/Instance;->laneLength:I

    return v0
.end method

.method public getLanes()I
    .locals 1

    .line 77
    iget v0, p0, Lat/gadermaier/argon2/model/Instance;->lanes:I

    return v0
.end method

.method public getMemory()[Lat/gadermaier/argon2/model/Block;
    .locals 1

    .line 57
    iget-object v0, p0, Lat/gadermaier/argon2/model/Instance;->memory:[Lat/gadermaier/argon2/model/Block;

    return-object v0
.end method

.method public getSegmentLength()I
    .locals 1

    .line 69
    iget v0, p0, Lat/gadermaier/argon2/model/Instance;->segmentLength:I

    return v0
.end method

.method public getType()Lat/gadermaier/argon2/model/Argon2Type;
    .locals 1

    .line 81
    iget-object v0, p0, Lat/gadermaier/argon2/model/Instance;->type:Lat/gadermaier/argon2/model/Argon2Type;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 61
    iget v0, p0, Lat/gadermaier/argon2/model/Instance;->version:I

    return v0
.end method
