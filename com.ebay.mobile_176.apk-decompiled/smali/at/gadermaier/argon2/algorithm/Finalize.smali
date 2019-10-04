.class public Lat/gadermaier/argon2/algorithm/Finalize;
.super Ljava/lang/Object;
.source "Finalize.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finalize(Lat/gadermaier/argon2/model/Instance;Lat/gadermaier/argon2/Argon2;)V
    .locals 5

    .line 11
    iget-object v0, p0, Lat/gadermaier/argon2/model/Instance;->memory:[Lat/gadermaier/argon2/model/Block;

    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getLaneLength()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    const/4 v1, 0x1

    .line 14
    :goto_0
    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getLanes()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 15
    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getLaneLength()I

    move-result v3

    mul-int v3, v3, v1

    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getLaneLength()I

    move-result v4

    sub-int/2addr v4, v2

    add-int/2addr v3, v4

    .line 16
    iget-object v4, p0, Lat/gadermaier/argon2/model/Instance;->memory:[Lat/gadermaier/argon2/model/Block;

    aget-object v3, v4, v3

    invoke-virtual {v0, v3}, Lat/gadermaier/argon2/model/Block;->xorWith(Lat/gadermaier/argon2/model/Block;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Lat/gadermaier/argon2/model/Block;->toBytes()[B

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lat/gadermaier/argon2/Argon2;->getOutputLength()I

    move-result v1

    invoke-static {v0, v1}, Lat/gadermaier/argon2/algorithm/Functions;->blake2bLong([BI)[B

    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Lat/gadermaier/argon2/Argon2;->setOutput([B)V

    .line 24
    invoke-virtual {p1}, Lat/gadermaier/argon2/Argon2;->isClearMemory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->clear()V

    .line 26
    invoke-virtual {p1}, Lat/gadermaier/argon2/Argon2;->clear()V

    :cond_1
    return-void
.end method
