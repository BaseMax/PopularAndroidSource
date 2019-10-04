.class Lat/gadermaier/argon2/algorithm/Functions;
.super Ljava/lang/Object;
.source "Functions.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static F(Lat/gadermaier/argon2/model/Block;IIII)V
    .locals 2

    .line 137
    invoke-static {p0, p1, p2}, Lat/gadermaier/argon2/algorithm/Functions;->fBlaMka(Lat/gadermaier/argon2/model/Block;II)V

    const-wide/16 v0, 0x20

    .line 138
    invoke-static {p0, p4, p1, v0, v1}, Lat/gadermaier/argon2/algorithm/Functions;->rotr64(Lat/gadermaier/argon2/model/Block;IIJ)V

    .line 140
    invoke-static {p0, p3, p4}, Lat/gadermaier/argon2/algorithm/Functions;->fBlaMka(Lat/gadermaier/argon2/model/Block;II)V

    const-wide/16 v0, 0x18

    .line 141
    invoke-static {p0, p2, p3, v0, v1}, Lat/gadermaier/argon2/algorithm/Functions;->rotr64(Lat/gadermaier/argon2/model/Block;IIJ)V

    .line 143
    invoke-static {p0, p1, p2}, Lat/gadermaier/argon2/algorithm/Functions;->fBlaMka(Lat/gadermaier/argon2/model/Block;II)V

    const-wide/16 v0, 0x10

    .line 144
    invoke-static {p0, p4, p1, v0, v1}, Lat/gadermaier/argon2/algorithm/Functions;->rotr64(Lat/gadermaier/argon2/model/Block;IIJ)V

    .line 146
    invoke-static {p0, p3, p4}, Lat/gadermaier/argon2/algorithm/Functions;->fBlaMka(Lat/gadermaier/argon2/model/Block;II)V

    const-wide/16 v0, 0x3f

    .line 147
    invoke-static {p0, p2, p3, v0, v1}, Lat/gadermaier/argon2/algorithm/Functions;->rotr64(Lat/gadermaier/argon2/model/Block;IIJ)V

    return-void
.end method

.method private static blake2b([B[BI)[B
    .locals 1

    .line 106
    new-instance v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;

    invoke-direct {v0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;-><init>()V

    .line 107
    invoke-virtual {v0, p2}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->setDigestLength(I)Lat/gadermaier/argon2/blake2/Blake2b$Param;

    move-result-object p2

    .line 109
    invoke-static {p2}, Lat/gadermaier/argon2/blake2/Blake2b$Digest;->newInstance(Lat/gadermaier/argon2/blake2/Blake2b$Param;)Lat/gadermaier/argon2/blake2/Blake2b$Digest;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 112
    invoke-interface {p2, p1}, Lat/gadermaier/argon2/blake2/Blake2b;->update([B)V

    .line 114
    :cond_0
    invoke-interface {p2, p0}, Lat/gadermaier/argon2/blake2/Blake2b;->update([B)V

    .line 116
    invoke-interface {p2}, Lat/gadermaier/argon2/blake2/Blake2b;->digest()[B

    move-result-object p0

    return-object p0
.end method

.method static blake2bLong([BI)[B
    .locals 8

    .line 71
    new-array v0, p1, [B

    .line 72
    invoke-static {p1}, Lat/gadermaier/argon2/Util;->intToLittleEndianBytes(I)[B

    move-result-object v1

    const/16 v2, 0x40

    if-gt p1, v2, :cond_0

    .line 77
    invoke-static {p0, v1, p1}, Lat/gadermaier/argon2/algorithm/Functions;->blake2b([B[BI)[B

    move-result-object v0

    goto :goto_2

    .line 82
    :cond_0
    invoke-static {p0, v1, v2}, Lat/gadermaier/argon2/algorithm/Functions;->blake2b([B[BI)[B

    move-result-object p0

    const/16 v1, 0x20

    const/4 v3, 0x0

    .line 83
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    div-int/lit8 v4, p1, 0x20

    rem-int/lit8 v5, p1, 0x20

    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    :goto_0
    add-int/2addr v4, v5

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    const/16 v6, 0x20

    :goto_1
    const/4 v7, 0x0

    if-gt v5, v4, :cond_2

    .line 90
    invoke-static {p0, v7, v2}, Lat/gadermaier/argon2/algorithm/Functions;->blake2b([B[BI)[B

    move-result-object p0

    .line 91
    invoke-static {p0, v3, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x20

    goto :goto_1

    :cond_2
    mul-int/lit8 v4, v4, 0x20

    sub-int/2addr p1, v4

    .line 97
    invoke-static {p0, v7, p1}, Lat/gadermaier/argon2/algorithm/Functions;->blake2b([B[BI)[B

    move-result-object p0

    .line 98
    invoke-static {p0, v3, v0, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    return-object v0
.end method

.method private static fBlaMka(Lat/gadermaier/argon2/model/Block;II)V
    .locals 8

    .line 156
    iget-object v0, p0, Lat/gadermaier/argon2/model/Block;->v:[J

    aget-wide v1, v0, p1

    const-wide v3, 0xffffffffL

    and-long v0, v1, v3

    iget-object v2, p0, Lat/gadermaier/argon2/model/Block;->v:[J

    aget-wide v5, v2, p2

    and-long v2, v5, v3

    mul-long v0, v0, v2

    .line 158
    iget-object v2, p0, Lat/gadermaier/argon2/model/Block;->v:[J

    iget-object v3, p0, Lat/gadermaier/argon2/model/Block;->v:[J

    aget-wide v4, v3, p1

    iget-object p0, p0, Lat/gadermaier/argon2/model/Block;->v:[J

    aget-wide v6, p0, p2

    add-long/2addr v4, v6

    const-wide/16 v6, 0x2

    mul-long v0, v0, v6

    add-long/2addr v4, v0

    aput-wide v4, v2, p1

    return-void
.end method

.method static initialHash([B[B[B[B[B[B[B[B[B[B[B[B[B[B)[B
    .locals 2

    .line 25
    new-instance v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;

    invoke-direct {v0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;-><init>()V

    const/16 v1, 0x40

    .line 26
    invoke-virtual {v0, v1}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->setDigestLength(I)Lat/gadermaier/argon2/blake2/Blake2b$Param;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lat/gadermaier/argon2/blake2/Blake2b$Digest;->newInstance(Lat/gadermaier/argon2/blake2/Blake2b$Param;)Lat/gadermaier/argon2/blake2/Blake2b$Digest;

    move-result-object v0

    .line 30
    invoke-interface {v0, p0}, Lat/gadermaier/argon2/blake2/Blake2b;->update([B)V

    .line 31
    invoke-interface {v0, p1}, Lat/gadermaier/argon2/blake2/Blake2b;->update([B)V

    .line 32
    invoke-interface {v0, p2}, Lat/gadermaier/argon2/blake2/Blake2b;->update([B)V

    .line 33
    invoke-interface {v0, p3}, Lat/gadermaier/argon2/blake2/Blake2b;->update([B)V

    .line 34
    invoke-interface {v0, p4}, Lat/gadermaier/argon2/blake2/Blake2b;->update([B)V

    .line 35
    invoke-interface {v0, p5}, Lat/gadermaier/argon2/blake2/Blake2b;->update([B)V

    .line 37
    invoke-interface {v0, p6}, Lat/gadermaier/argon2/blake2/Blake2b;->update([B)V

    if-eqz p7, :cond_0

    .line 39
    invoke-interface {v0, p7}, Lat/gadermaier/argon2/blake2/Blake2b;->update([B)V

    .line 42
    :cond_0
    invoke-interface {v0, p8}, Lat/gadermaier/argon2/blake2/Blake2b;->update([B)V

    if-eqz p9, :cond_1

    .line 44
    invoke-interface {v0, p9}, Lat/gadermaier/argon2/blake2/Blake2b;->update([B)V

    .line 47
    :cond_1
    invoke-interface {v0, p10}, Lat/gadermaier/argon2/blake2/Blake2b;->update([B)V

    if-eqz p11, :cond_2

    .line 49
    invoke-interface {v0, p11}, Lat/gadermaier/argon2/blake2/Blake2b;->update([B)V

    .line 52
    :cond_2
    invoke-interface {v0, p12}, Lat/gadermaier/argon2/blake2/Blake2b;->update([B)V

    if-eqz p13, :cond_3

    .line 54
    invoke-interface {v0, p13}, Lat/gadermaier/argon2/blake2/Blake2b;->update([B)V

    .line 57
    :cond_3
    invoke-interface {v0}, Lat/gadermaier/argon2/blake2/Blake2b;->digest()[B

    move-result-object p0

    return-object p0
.end method

.method private static rotr64(Lat/gadermaier/argon2/model/Block;IIJ)V
    .locals 6

    .line 162
    iget-object v0, p0, Lat/gadermaier/argon2/model/Block;->v:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lat/gadermaier/argon2/model/Block;->v:[J

    aget-wide v3, v0, p2

    xor-long v0, v1, v3

    .line 163
    iget-object p0, p0, Lat/gadermaier/argon2/model/Block;->v:[J

    long-to-int p2, p3

    ushr-long v2, v0, p2

    const-wide/16 v4, 0x40

    sub-long/2addr v4, p3

    long-to-int p2, v4

    shl-long p2, v0, p2

    or-long/2addr p2, v2

    aput-wide p2, p0, p1

    return-void
.end method

.method static roundFunction(Lat/gadermaier/argon2/model/Block;IIIIIIIIIIIIIIII)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v4, p16

    .line 125
    invoke-static {v0, v1, v5, v9, v13}, Lat/gadermaier/argon2/algorithm/Functions;->F(Lat/gadermaier/argon2/model/Block;IIII)V

    .line 126
    invoke-static {v0, v2, v6, v10, v14}, Lat/gadermaier/argon2/algorithm/Functions;->F(Lat/gadermaier/argon2/model/Block;IIII)V

    .line 127
    invoke-static {v0, v3, v7, v11, v15}, Lat/gadermaier/argon2/algorithm/Functions;->F(Lat/gadermaier/argon2/model/Block;IIII)V

    move v5, v4

    move/from16 v4, p4

    .line 128
    invoke-static {v0, v4, v8, v12, v5}, Lat/gadermaier/argon2/algorithm/Functions;->F(Lat/gadermaier/argon2/model/Block;IIII)V

    .line 130
    invoke-static {v0, v1, v6, v11, v5}, Lat/gadermaier/argon2/algorithm/Functions;->F(Lat/gadermaier/argon2/model/Block;IIII)V

    .line 131
    invoke-static {v0, v2, v7, v12, v13}, Lat/gadermaier/argon2/algorithm/Functions;->F(Lat/gadermaier/argon2/model/Block;IIII)V

    .line 132
    invoke-static {v0, v3, v8, v9, v14}, Lat/gadermaier/argon2/algorithm/Functions;->F(Lat/gadermaier/argon2/model/Block;IIII)V

    move/from16 v1, p5

    .line 133
    invoke-static {v0, v4, v1, v10, v15}, Lat/gadermaier/argon2/algorithm/Functions;->F(Lat/gadermaier/argon2/model/Block;IIII)V

    return-void
.end method
