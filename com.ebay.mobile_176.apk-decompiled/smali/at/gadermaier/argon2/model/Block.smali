.class public Lat/gadermaier/argon2/model/Block;
.super Ljava/lang/Object;
.source "Block.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public v:[J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    .line 17
    new-array v0, v0, [J

    iput-object v0, p0, Lat/gadermaier/argon2/model/Block;->v:[J

    return-void
.end method


# virtual methods
.method clear()V
    .locals 3

    .line 73
    iget-object v0, p0, Lat/gadermaier/argon2/model/Block;->v:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method public copyBlock(Lat/gadermaier/argon2/model/Block;)V
    .locals 3

    .line 41
    iget-object p1, p1, Lat/gadermaier/argon2/model/Block;->v:[J

    iget-object v0, p0, Lat/gadermaier/argon2/model/Block;->v:[J

    iget-object v1, p0, Lat/gadermaier/argon2/model/Block;->v:[J

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public fromBytes([B)V
    .locals 6

    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-object v1, p0, Lat/gadermaier/argon2/model/Block;->v:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v3, v2, 0x8

    .line 24
    invoke-static {p1, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 25
    iget-object v3, p0, Lat/gadermaier/argon2/model/Block;->v:[J

    invoke-static {v1}, Lat/gadermaier/argon2/Util;->littleEndianBytesToLong([B)J

    move-result-wide v4

    aput-wide v4, v3, v0

    move v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toBytes()[B
    .locals 6

    const/16 v0, 0x400

    .line 30
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 32
    :goto_0
    iget-object v3, p0, Lat/gadermaier/argon2/model/Block;->v:[J

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 33
    iget-object v3, p0, Lat/gadermaier/argon2/model/Block;->v:[J

    aget-wide v4, v3, v2

    invoke-static {v4, v5}, Lat/gadermaier/argon2/Util;->longToLittleEndianBytes(J)[B

    move-result-object v3

    .line 34
    array-length v4, v3

    mul-int v4, v4, v2

    array-length v5, v3

    invoke-static {v3, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    iget-object v1, p0, Lat/gadermaier/argon2/model/Block;->v:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v1, v3

    .line 66
    invoke-static {v4, v5}, Lat/gadermaier/argon2/Util;->longToLittleEndianBytes(J)[B

    move-result-object v4

    invoke-static {v4}, Lat/gadermaier/argon2/Util;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public xor(Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;)V
    .locals 7

    const/4 v0, 0x0

    .line 45
    :goto_0
    iget-object v1, p0, Lat/gadermaier/argon2/model/Block;->v:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 46
    iget-object v1, p0, Lat/gadermaier/argon2/model/Block;->v:[J

    iget-object v2, p1, Lat/gadermaier/argon2/model/Block;->v:[J

    aget-wide v3, v2, v0

    iget-object v2, p2, Lat/gadermaier/argon2/model/Block;->v:[J

    aget-wide v5, v2, v0

    xor-long v2, v3, v5

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public xor(Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;Lat/gadermaier/argon2/model/Block;)V
    .locals 7

    const/4 v0, 0x0

    .line 51
    :goto_0
    iget-object v1, p0, Lat/gadermaier/argon2/model/Block;->v:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 52
    iget-object v1, p0, Lat/gadermaier/argon2/model/Block;->v:[J

    iget-object v2, p1, Lat/gadermaier/argon2/model/Block;->v:[J

    aget-wide v3, v2, v0

    iget-object v2, p2, Lat/gadermaier/argon2/model/Block;->v:[J

    aget-wide v5, v2, v0

    xor-long v2, v3, v5

    iget-object v4, p3, Lat/gadermaier/argon2/model/Block;->v:[J

    aget-wide v5, v4, v0

    xor-long/2addr v2, v5

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public xorWith(Lat/gadermaier/argon2/model/Block;)V
    .locals 7

    const/4 v0, 0x0

    .line 57
    :goto_0
    iget-object v1, p0, Lat/gadermaier/argon2/model/Block;->v:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Lat/gadermaier/argon2/model/Block;->v:[J

    iget-object v2, p0, Lat/gadermaier/argon2/model/Block;->v:[J

    aget-wide v3, v2, v0

    iget-object v2, p1, Lat/gadermaier/argon2/model/Block;->v:[J

    aget-wide v5, v2, v0

    xor-long v2, v3, v5

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
