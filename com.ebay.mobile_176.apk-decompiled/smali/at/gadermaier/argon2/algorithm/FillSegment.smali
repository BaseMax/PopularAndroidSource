.class Lat/gadermaier/argon2/algorithm/FillSegment;
.super Ljava/lang/Object;
.source "FillSegment.java"


# direct methods
.method static fillSegment(Lat/gadermaier/argon2/model/Instance;Lat/gadermaier/argon2/model/Position;)V
    .locals 13

    .line 20
    invoke-static {p0, p1}, Lat/gadermaier/argon2/algorithm/FillSegment;->isDataIndependentAddressing(Lat/gadermaier/argon2/model/Instance;Lat/gadermaier/argon2/model/Position;)Z

    move-result v7

    .line 21
    invoke-static {p1}, Lat/gadermaier/argon2/algorithm/FillSegment;->getStartingIndex(Lat/gadermaier/argon2/model/Position;)I

    move-result v0

    .line 22
    iget v1, p1, Lat/gadermaier/argon2/model/Position;->lane:I

    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getLaneLength()I

    move-result v2

    mul-int v1, v1, v2

    iget v2, p1, Lat/gadermaier/argon2/model/Position;->slice:I

    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getSegmentLength()I

    move-result v3

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 23
    invoke-static {p0, v1}, Lat/gadermaier/argon2/algorithm/FillSegment;->getPrevOffset(Lat/gadermaier/argon2/model/Instance;I)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v7, :cond_0

    .line 26
    new-instance v3, Lat/gadermaier/argon2/model/Block;

    invoke-direct {v3}, Lat/gadermaier/argon2/model/Block;-><init>()V

    .line 27
    new-instance v4, Lat/gadermaier/argon2/model/Block;

    invoke-direct {v4}, Lat/gadermaier/argon2/model/Block;-><init>()V

    .line 28
    new-instance v5, Lat/gadermaier/argon2/model/Block;

    invoke-direct {v5}, Lat/gadermaier/argon2/model/Block;-><init>()V

    .line 30
    invoke-static {p0, p1, v4, v5, v3}, Lat/gadermaier/argon2/algorithm/FillSegment;->initAddressBlocks(Lat/gadermaier/argon2/model/Instance;Lat/gadermaier/argon2/model/Position;Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;)V

    move-object v8, v3

    move-object v10, v4

    move-object v9, v5

    goto :goto_0

    :cond_0
    move-object v8, v3

    move-object v9, v8

    move-object v10, v9

    .line 33
    :goto_0
    iput v0, p1, Lat/gadermaier/argon2/model/Position;->index:I

    move v11, v1

    :goto_1
    iget v0, p1, Lat/gadermaier/argon2/model/Position;->index:I

    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getSegmentLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 34
    invoke-static {p0, v11, v2}, Lat/gadermaier/argon2/algorithm/FillSegment;->rotatePrevOffset(Lat/gadermaier/argon2/model/Instance;II)I

    move-result v12

    move-object v0, p0

    move-object v1, p1

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move v5, v12

    move v6, v7

    .line 36
    invoke-static/range {v0 .. v6}, Lat/gadermaier/argon2/algorithm/FillSegment;->getPseudoRandom(Lat/gadermaier/argon2/model/Instance;Lat/gadermaier/argon2/model/Position;Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;IZ)J

    move-result-wide v0

    .line 37
    invoke-static {p0, p1, v0, v1}, Lat/gadermaier/argon2/algorithm/FillSegment;->getRefLane(Lat/gadermaier/argon2/model/Instance;Lat/gadermaier/argon2/model/Position;J)I

    move-result v2

    .line 38
    iget v3, p1, Lat/gadermaier/argon2/model/Position;->lane:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    invoke-static {p0, p1, v0, v1, v3}, Lat/gadermaier/argon2/algorithm/FillSegment;->getRefColumn(Lat/gadermaier/argon2/model/Instance;Lat/gadermaier/argon2/model/Position;JZ)I

    move-result v0

    .line 41
    iget-object v1, p0, Lat/gadermaier/argon2/model/Instance;->memory:[Lat/gadermaier/argon2/model/Block;

    aget-object v1, v1, v12

    .line 42
    iget-object v3, p0, Lat/gadermaier/argon2/model/Instance;->memory:[Lat/gadermaier/argon2/model/Block;

    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getLaneLength()I

    move-result v5

    mul-int v5, v5, v2

    add-int/2addr v5, v0

    aget-object v0, v3, v5

    .line 43
    iget-object v2, p0, Lat/gadermaier/argon2/model/Instance;->memory:[Lat/gadermaier/argon2/model/Block;

    aget-object v2, v2, v11

    .line 45
    invoke-static {p0, p1}, Lat/gadermaier/argon2/algorithm/FillSegment;->isWithXor(Lat/gadermaier/argon2/model/Instance;Lat/gadermaier/argon2/model/Position;)Z

    move-result v3

    .line 46
    invoke-static {v1, v0, v2, v3}, Lat/gadermaier/argon2/algorithm/FillBlock;->fillBlock(Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;Z)V

    .line 33
    iget v0, p1, Lat/gadermaier/argon2/model/Position;->index:I

    add-int/2addr v0, v4

    iput v0, p1, Lat/gadermaier/argon2/model/Position;->index:I

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v2, v12, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static getPrevOffset(Lat/gadermaier/argon2/model/Instance;I)I
    .locals 1

    .line 77
    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getLaneLength()I

    move-result v0

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getLaneLength()I

    move-result p0

    add-int/2addr p1, p0

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private static getPseudoRandom(Lat/gadermaier/argon2/model/Instance;Lat/gadermaier/argon2/model/Position;Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;IZ)J
    .locals 0

    if-eqz p6, :cond_1

    .line 111
    iget p0, p1, Lat/gadermaier/argon2/model/Position;->index:I

    rem-int/lit16 p0, p0, 0x80

    if-nez p0, :cond_0

    .line 112
    invoke-static {p4, p3, p2}, Lat/gadermaier/argon2/algorithm/FillSegment;->nextAddresses(Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;)V

    .line 114
    :cond_0
    iget-object p0, p2, Lat/gadermaier/argon2/model/Block;->v:[J

    iget p1, p1, Lat/gadermaier/argon2/model/Position;->index:I

    rem-int/lit16 p1, p1, 0x80

    aget-wide p1, p0, p1

    return-wide p1

    .line 116
    :cond_1
    iget-object p0, p0, Lat/gadermaier/argon2/model/Instance;->memory:[Lat/gadermaier/argon2/model/Block;

    aget-object p0, p0, p5

    iget-object p0, p0, Lat/gadermaier/argon2/model/Block;->v:[J

    const/4 p1, 0x0

    aget-wide p1, p0, p1

    return-wide p1
.end method

.method private static getRefColumn(Lat/gadermaier/argon2/model/Instance;Lat/gadermaier/argon2/model/Position;JZ)I
    .locals 5

    .line 136
    iget v0, p1, Lat/gadermaier/argon2/model/Position;->pass:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-eqz p4, :cond_0

    .line 141
    iget p4, p1, Lat/gadermaier/argon2/model/Position;->slice:I

    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getSegmentLength()I

    move-result v0

    mul-int p4, p4, v0

    iget p1, p1, Lat/gadermaier/argon2/model/Position;->index:I

    add-int/2addr p4, p1

    add-int/lit8 p4, p4, -0x1

    :goto_0
    const/4 v0, 0x0

    goto :goto_3

    .line 144
    :cond_0
    iget p4, p1, Lat/gadermaier/argon2/model/Position;->slice:I

    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getSegmentLength()I

    move-result v0

    mul-int p4, p4, v0

    iget p1, p1, Lat/gadermaier/argon2/model/Position;->index:I

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr p4, v1

    goto :goto_0

    .line 148
    :cond_2
    iget v0, p1, Lat/gadermaier/argon2/model/Position;->slice:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getSegmentLength()I

    move-result v3

    mul-int v0, v0, v3

    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getLaneLength()I

    move-result v3

    rem-int/2addr v0, v3

    if-eqz p4, :cond_3

    .line 151
    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getLaneLength()I

    move-result p4

    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getSegmentLength()I

    move-result v1

    sub-int/2addr p4, v1

    iget p1, p1, Lat/gadermaier/argon2/model/Position;->index:I

    add-int/2addr p4, p1

    add-int/lit8 p4, p4, -0x1

    goto :goto_3

    .line 153
    :cond_3
    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getLaneLength()I

    move-result p4

    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getSegmentLength()I

    move-result v3

    sub-int/2addr p4, v3

    iget p1, p1, Lat/gadermaier/argon2/model/Position;->index:I

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    add-int/2addr p4, v1

    :goto_3
    const-wide v1, 0xffffffffL

    and-long p1, p2, v1

    mul-long p1, p1, p1

    const/16 p3, 0x20

    ushr-long/2addr p1, p3

    add-int/lit8 v1, p4, -0x1

    int-to-long v1, v1

    int-to-long v3, p4

    mul-long v3, v3, p1

    ushr-long p1, v3, p3

    sub-long/2addr v1, p1

    int-to-long p1, v0

    add-long/2addr p1, v1

    long-to-int p1, p1

    .line 162
    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getLaneLength()I

    move-result p0

    rem-int/2addr p1, p0

    return p1
.end method

.method private static getRefLane(Lat/gadermaier/argon2/model/Instance;Lat/gadermaier/argon2/model/Position;J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long/2addr p2, v0

    .line 121
    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getLanes()I

    move-result p0

    int-to-long v0, p0

    rem-long/2addr p2, v0

    long-to-int p0, p2

    .line 123
    iget p2, p1, Lat/gadermaier/argon2/model/Position;->pass:I

    if-nez p2, :cond_0

    iget p2, p1, Lat/gadermaier/argon2/model/Position;->slice:I

    if-nez p2, :cond_0

    .line 125
    iget p0, p1, Lat/gadermaier/argon2/model/Position;->lane:I

    :cond_0
    return p0
.end method

.method private static getStartingIndex(Lat/gadermaier/argon2/model/Position;)I
    .locals 1

    .line 94
    iget v0, p0, Lat/gadermaier/argon2/model/Position;->pass:I

    if-nez v0, :cond_0

    iget p0, p0, Lat/gadermaier/argon2/model/Position;->slice:I

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static initAddressBlocks(Lat/gadermaier/argon2/model/Instance;Lat/gadermaier/argon2/model/Position;Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;)V
    .locals 4

    .line 59
    iget-object v0, p3, Lat/gadermaier/argon2/model/Block;->v:[J

    iget v1, p1, Lat/gadermaier/argon2/model/Position;->pass:I

    invoke-static {v1}, Lat/gadermaier/argon2/Util;->intToLong(I)J

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 60
    iget-object v0, p3, Lat/gadermaier/argon2/model/Block;->v:[J

    iget v1, p1, Lat/gadermaier/argon2/model/Position;->lane:I

    invoke-static {v1}, Lat/gadermaier/argon2/Util;->intToLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    .line 61
    iget-object v0, p3, Lat/gadermaier/argon2/model/Block;->v:[J

    iget v1, p1, Lat/gadermaier/argon2/model/Position;->slice:I

    invoke-static {v1}, Lat/gadermaier/argon2/Util;->intToLong(I)J

    move-result-wide v1

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    .line 62
    iget-object v0, p3, Lat/gadermaier/argon2/model/Block;->v:[J

    iget-object v1, p0, Lat/gadermaier/argon2/model/Instance;->memory:[Lat/gadermaier/argon2/model/Block;

    array-length v1, v1

    invoke-static {v1}, Lat/gadermaier/argon2/Util;->intToLong(I)J

    move-result-wide v1

    const/4 v3, 0x3

    aput-wide v1, v0, v3

    .line 63
    iget-object v0, p3, Lat/gadermaier/argon2/model/Block;->v:[J

    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getIterations()I

    move-result v1

    invoke-static {v1}, Lat/gadermaier/argon2/Util;->intToLong(I)J

    move-result-wide v1

    const/4 v3, 0x4

    aput-wide v1, v0, v3

    .line 64
    iget-object v0, p3, Lat/gadermaier/argon2/model/Block;->v:[J

    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getType()Lat/gadermaier/argon2/model/Argon2Type;

    move-result-object p0

    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Argon2Type;->ordinal()I

    move-result p0

    invoke-static {p0}, Lat/gadermaier/argon2/Util;->intToLong(I)J

    move-result-wide v1

    const/4 p0, 0x5

    aput-wide v1, v0, p0

    .line 66
    iget p0, p1, Lat/gadermaier/argon2/model/Position;->pass:I

    if-nez p0, :cond_0

    iget p0, p1, Lat/gadermaier/argon2/model/Position;->slice:I

    if-nez p0, :cond_0

    .line 68
    invoke-static {p2, p3, p4}, Lat/gadermaier/argon2/algorithm/FillSegment;->nextAddresses(Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;)V

    :cond_0
    return-void
.end method

.method private static isDataIndependentAddressing(Lat/gadermaier/argon2/model/Instance;Lat/gadermaier/argon2/model/Position;)Z
    .locals 2

    .line 51
    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getType()Lat/gadermaier/argon2/model/Argon2Type;

    move-result-object v0

    sget-object v1, Lat/gadermaier/argon2/model/Argon2Type;->Argon2i:Lat/gadermaier/argon2/model/Argon2Type;

    if-eq v0, v1, :cond_1

    .line 52
    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getType()Lat/gadermaier/argon2/model/Argon2Type;

    move-result-object p0

    sget-object v0, Lat/gadermaier/argon2/model/Argon2Type;->Argon2id:Lat/gadermaier/argon2/model/Argon2Type;

    if-ne p0, v0, :cond_0

    iget p0, p1, Lat/gadermaier/argon2/model/Position;->pass:I

    if-nez p0, :cond_0

    iget p0, p1, Lat/gadermaier/argon2/model/Position;->slice:I

    const/4 p1, 0x2

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isWithXor(Lat/gadermaier/argon2/model/Instance;Lat/gadermaier/argon2/model/Position;)Z
    .locals 0

    .line 73
    iget p1, p1, Lat/gadermaier/argon2/model/Position;->pass:I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getVersion()I

    move-result p0

    const/16 p1, 0x10

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static nextAddresses(Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;)V
    .locals 6

    .line 102
    iget-object v0, p1, Lat/gadermaier/argon2/model/Block;->v:[J

    const/4 v1, 0x6

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v0, 0x0

    .line 103
    invoke-static {p0, p1, p2, v0}, Lat/gadermaier/argon2/algorithm/FillBlock;->fillBlock(Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;Z)V

    .line 104
    invoke-static {p0, p2, p2, v0}, Lat/gadermaier/argon2/algorithm/FillBlock;->fillBlock(Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;Z)V

    return-void
.end method

.method private static rotatePrevOffset(Lat/gadermaier/argon2/model/Instance;II)I
    .locals 1

    .line 87
    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getLaneLength()I

    move-result p0

    rem-int p0, p1, p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    add-int/lit8 p2, p1, -0x1

    :cond_0
    return p2
.end method
