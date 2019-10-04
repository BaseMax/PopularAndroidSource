.class public Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;
.super Ljava/lang/Object;
.source "Blake2b.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/gadermaier/argon2/blake2/Blake2b$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LittleEndian"
.end annotation


# static fields
.field private static final HEX_digits:[B

.field private static final hex_digits:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    .line 913
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->hex_digits:[B

    .line 914
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->HEX_digits:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data

    :array_1
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readInt([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 930
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 v1, v0, 0x1

    .line 932
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    add-int/lit8 v0, v1, 0x1

    .line 933
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p1, v1

    .line 934
    aget-byte p0, p0, v0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static readLong([BI)J
    .locals 7

    add-int/lit8 v0, p1, 0x1

    .line 939
    aget-byte p1, p0, p1

    int-to-long v1, p1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    add-int/lit8 p1, v0, 0x1

    .line 941
    aget-byte v0, p0, v0

    int-to-long v5, v0

    and-long/2addr v5, v3

    const/16 v0, 0x8

    shl-long/2addr v5, v0

    or-long v0, v1, v5

    add-int/lit8 v2, p1, 0x1

    .line 942
    aget-byte p1, p0, p1

    int-to-long v5, p1

    and-long/2addr v5, v3

    const/16 p1, 0x10

    shl-long/2addr v5, p1

    or-long/2addr v0, v5

    add-int/lit8 p1, v2, 0x1

    .line 943
    aget-byte v2, p0, v2

    int-to-long v5, v2

    and-long/2addr v5, v3

    const/16 v2, 0x18

    shl-long/2addr v5, v2

    or-long/2addr v0, v5

    add-int/lit8 v2, p1, 0x1

    .line 944
    aget-byte p1, p0, p1

    int-to-long v5, p1

    and-long/2addr v5, v3

    const/16 p1, 0x20

    shl-long/2addr v5, p1

    or-long/2addr v0, v5

    add-int/lit8 p1, v2, 0x1

    .line 945
    aget-byte v2, p0, v2

    int-to-long v5, v2

    and-long/2addr v5, v3

    const/16 v2, 0x28

    shl-long/2addr v5, v2

    or-long/2addr v0, v5

    add-int/lit8 v2, p1, 0x1

    .line 946
    aget-byte p1, p0, p1

    int-to-long v5, p1

    and-long/2addr v3, v5

    const/16 p1, 0x30

    shl-long/2addr v3, p1

    or-long/2addr v0, v3

    .line 947
    aget-byte p0, p0, v2

    int-to-long p0, p0

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static toHexStr([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 917
    invoke-static {p0, v0}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->toHexStr([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHexStr([BZ)Ljava/lang/String;
    .locals 5

    .line 920
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    .line 921
    new-array v1, v1, [B

    if-eqz p1, :cond_0

    .line 922
    sget-object p1, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->HEX_digits:[B

    goto :goto_0

    :cond_0
    sget-object p1, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->hex_digits:[B

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    mul-int/lit8 v3, v2, 0x2

    .line 924
    aget-byte v4, p0, v2

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    aget-byte v4, p1, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    .line 925
    aget-byte v4, p0, v2

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    aget-byte v4, p1, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 927
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method

.method public static writeInt(I[BI)V
    .locals 2

    int-to-byte v0, p0

    .line 964
    aput-byte v0, p1, p2

    ushr-int/lit8 p0, p0, 0x8

    add-int/lit8 v0, p2, 0x1

    int-to-byte v1, p0

    .line 965
    aput-byte v1, p1, v0

    ushr-int/lit8 p0, p0, 0x8

    add-int/lit8 v0, p2, 0x2

    int-to-byte v1, p0

    .line 966
    aput-byte v1, p1, v0

    ushr-int/lit8 p0, p0, 0x8

    add-int/lit8 p2, p2, 0x3

    int-to-byte p0, p0

    .line 967
    aput-byte p0, p1, p2

    return-void
.end method

.method public static writeLong(J[BI)V
    .locals 3

    long-to-int v0, p0

    int-to-byte v0, v0

    .line 953
    aput-byte v0, p2, p3

    const/16 v0, 0x8

    ushr-long/2addr p0, v0

    add-int/lit8 v1, p3, 0x1

    long-to-int v2, p0

    int-to-byte v2, v2

    .line 954
    aput-byte v2, p2, v1

    ushr-long/2addr p0, v0

    add-int/lit8 v1, p3, 0x2

    long-to-int v2, p0

    int-to-byte v2, v2

    .line 955
    aput-byte v2, p2, v1

    ushr-long/2addr p0, v0

    add-int/lit8 v1, p3, 0x3

    long-to-int v2, p0

    int-to-byte v2, v2

    .line 956
    aput-byte v2, p2, v1

    ushr-long/2addr p0, v0

    add-int/lit8 v1, p3, 0x4

    long-to-int v2, p0

    int-to-byte v2, v2

    .line 957
    aput-byte v2, p2, v1

    ushr-long/2addr p0, v0

    add-int/lit8 v1, p3, 0x5

    long-to-int v2, p0

    int-to-byte v2, v2

    .line 958
    aput-byte v2, p2, v1

    ushr-long/2addr p0, v0

    add-int/lit8 v1, p3, 0x6

    long-to-int v2, p0

    int-to-byte v2, v2

    .line 959
    aput-byte v2, p2, v1

    ushr-long/2addr p0, v0

    add-int/lit8 p3, p3, 0x7

    long-to-int p0, p0

    int-to-byte p0, p0

    .line 960
    aput-byte p0, p2, p3

    return-void
.end method
