.class public Lc/c/a/c/h/i;
.super Ljava/lang/Object;
.source "UuidUtils.java"


# direct methods
.method public static a(Ljava/util/UUID;)[B
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    const/16 p0, 0x10

    .line 3
    new-array v4, p0, [B

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x8

    if-ge v5, v6, :cond_0

    rsub-int/lit8 v7, v5, 0x7

    mul-int/lit8 v7, v7, 0x8

    ushr-long v6, v0, v7

    long-to-int v7, v6

    int-to-byte v6, v7

    .line 4
    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_1
    if-ge v0, p0, :cond_1

    rsub-int/lit8 v1, v0, 0x7

    mul-int/lit8 v1, v1, 0x8

    ushr-long v7, v2, v1

    long-to-int v1, v7

    int-to-byte v1, v1

    .line 5
    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v4
.end method
