.class public Lat/gadermaier/argon2/algorithm/Initialize;
.super Ljava/lang/Object;
.source "Initialize.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fillFirstBlocks(Lat/gadermaier/argon2/model/Instance;[B)V
    .locals 8

    const/4 v0, 0x4

    .line 38
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 39
    new-array v2, v0, [B

    fill-array-data v2, :array_1

    .line 41
    invoke-static {p1, v1}, Lat/gadermaier/argon2/algorithm/Initialize;->getInitialHashLong([B[B)[B

    move-result-object v1

    .line 42
    invoke-static {p1, v2}, Lat/gadermaier/argon2/algorithm/Initialize;->getInitialHashLong([B[B)[B

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 44
    :goto_0
    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getLanes()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 46
    invoke-static {v3}, Lat/gadermaier/argon2/Util;->intToLittleEndianBytes(I)[B

    move-result-object v4

    const/16 v5, 0x44

    .line 48
    invoke-static {v4, v2, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    invoke-static {v4, v2, p1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x400

    .line 51
    invoke-static {v1, v4}, Lat/gadermaier/argon2/algorithm/Functions;->blake2bLong([BI)[B

    move-result-object v5

    .line 52
    iget-object v6, p0, Lat/gadermaier/argon2/model/Instance;->memory:[Lat/gadermaier/argon2/model/Block;

    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getLaneLength()I

    move-result v7

    mul-int v7, v7, v3

    add-int/2addr v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v6, v5}, Lat/gadermaier/argon2/model/Block;->fromBytes([B)V

    .line 54
    invoke-static {p1, v4}, Lat/gadermaier/argon2/algorithm/Functions;->blake2bLong([BI)[B

    move-result-object v4

    .line 55
    iget-object v5, p0, Lat/gadermaier/argon2/model/Instance;->memory:[Lat/gadermaier/argon2/model/Block;

    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getLaneLength()I

    move-result v6

    mul-int v6, v6, v3

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5, v4}, Lat/gadermaier/argon2/model/Block;->fromBytes([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static getInitialHashLong([B[B)[B
    .locals 3

    const/16 v0, 0x48

    .line 60
    new-array v0, v0, [B

    const/16 v1, 0x40

    const/4 v2, 0x0

    .line 62
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x4

    .line 63
    invoke-static {p1, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static initialize(Lat/gadermaier/argon2/model/Instance;Lat/gadermaier/argon2/Argon2;)V
    .locals 15

    .line 14
    invoke-virtual/range {p1 .. p1}, Lat/gadermaier/argon2/Argon2;->getLanes()I

    move-result v0

    invoke-static {v0}, Lat/gadermaier/argon2/Util;->intToLittleEndianBytes(I)[B

    move-result-object v1

    .line 15
    invoke-virtual/range {p1 .. p1}, Lat/gadermaier/argon2/Argon2;->getOutputLength()I

    move-result v0

    invoke-static {v0}, Lat/gadermaier/argon2/Util;->intToLittleEndianBytes(I)[B

    move-result-object v2

    .line 16
    invoke-virtual/range {p1 .. p1}, Lat/gadermaier/argon2/Argon2;->getMemory()I

    move-result v0

    invoke-static {v0}, Lat/gadermaier/argon2/Util;->intToLittleEndianBytes(I)[B

    move-result-object v3

    .line 17
    invoke-virtual/range {p1 .. p1}, Lat/gadermaier/argon2/Argon2;->getIterations()I

    move-result v0

    invoke-static {v0}, Lat/gadermaier/argon2/Util;->intToLittleEndianBytes(I)[B

    move-result-object v4

    .line 18
    invoke-virtual/range {p1 .. p1}, Lat/gadermaier/argon2/Argon2;->getVersion()I

    move-result v0

    invoke-static {v0}, Lat/gadermaier/argon2/Util;->intToLittleEndianBytes(I)[B

    move-result-object v5

    .line 19
    invoke-virtual/range {p1 .. p1}, Lat/gadermaier/argon2/Argon2;->getType()Lat/gadermaier/argon2/model/Argon2Type;

    move-result-object v0

    invoke-virtual {v0}, Lat/gadermaier/argon2/model/Argon2Type;->ordinal()I

    move-result v0

    invoke-static {v0}, Lat/gadermaier/argon2/Util;->intToLittleEndianBytes(I)[B

    move-result-object v6

    .line 20
    invoke-virtual/range {p1 .. p1}, Lat/gadermaier/argon2/Argon2;->getPasswordLength()I

    move-result v0

    invoke-static {v0}, Lat/gadermaier/argon2/Util;->intToLittleEndianBytes(I)[B

    move-result-object v7

    .line 21
    invoke-virtual/range {p1 .. p1}, Lat/gadermaier/argon2/Argon2;->getPassword()[B

    move-result-object v8

    .line 22
    invoke-virtual/range {p1 .. p1}, Lat/gadermaier/argon2/Argon2;->getSaltLength()I

    move-result v0

    invoke-static {v0}, Lat/gadermaier/argon2/Util;->intToLittleEndianBytes(I)[B

    move-result-object v9

    .line 23
    invoke-virtual/range {p1 .. p1}, Lat/gadermaier/argon2/Argon2;->getSalt()[B

    move-result-object v10

    .line 24
    invoke-virtual/range {p1 .. p1}, Lat/gadermaier/argon2/Argon2;->getSecretLength()I

    move-result v0

    invoke-static {v0}, Lat/gadermaier/argon2/Util;->intToLittleEndianBytes(I)[B

    move-result-object v11

    .line 25
    invoke-virtual/range {p1 .. p1}, Lat/gadermaier/argon2/Argon2;->getSecret()[B

    move-result-object v12

    .line 26
    invoke-virtual/range {p1 .. p1}, Lat/gadermaier/argon2/Argon2;->getAdditionalLength()I

    move-result v0

    invoke-static {v0}, Lat/gadermaier/argon2/Util;->intToLittleEndianBytes(I)[B

    move-result-object v13

    .line 27
    invoke-virtual/range {p1 .. p1}, Lat/gadermaier/argon2/Argon2;->getAdditional()[B

    move-result-object v14

    .line 13
    invoke-static/range {v1 .. v14}, Lat/gadermaier/argon2/algorithm/Functions;->initialHash([B[B[B[B[B[B[B[B[B[B[B[B[B[B)[B

    move-result-object v0

    move-object v1, p0

    .line 29
    invoke-static {p0, v0}, Lat/gadermaier/argon2/algorithm/Initialize;->fillFirstBlocks(Lat/gadermaier/argon2/model/Instance;[B)V

    return-void
.end method
