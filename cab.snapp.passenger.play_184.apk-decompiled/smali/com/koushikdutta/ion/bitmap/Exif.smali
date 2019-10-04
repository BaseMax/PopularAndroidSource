.class public Lcom/koushikdutta/ion/bitmap/Exif;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraExif"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation([BII)I
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    add-int/2addr p2, p1

    :goto_0
    add-int/lit8 v1, p1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x2

    if-ge v1, p2, :cond_6

    add-int/lit8 v1, p1, 0x1

    .line 34
    aget-byte p1, p0, p1

    const/16 v6, 0xff

    and-int/2addr p1, v6

    if-ne p1, v6, :cond_5

    .line 35
    aget-byte p1, p0, v1

    and-int/2addr p1, v6

    if-eq p1, v6, :cond_4

    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0xd8

    if-eq p1, v6, :cond_4

    if-eq p1, v3, :cond_4

    const/16 v6, 0xd9

    if-eq p1, v6, :cond_5

    const/16 v6, 0xda

    if-eq p1, v6, :cond_5

    .line 53
    invoke-static {p0, v1, v5, v0}, Lcom/koushikdutta/ion/bitmap/Exif;->pack([BIIZ)I

    move-result v6

    if-lt v6, v5, :cond_3

    add-int v7, v1, v6

    if-le v7, p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v8, 0xe1

    if-ne p1, v8, :cond_2

    if-lt v6, v4, :cond_2

    add-int/lit8 p1, v1, 0x2

    .line 61
    invoke-static {p0, p1, v2, v0}, Lcom/koushikdutta/ion/bitmap/Exif;->pack([BIIZ)I

    move-result p1

    const v8, 0x45786966

    if-ne p1, v8, :cond_2

    add-int/lit8 p1, v1, 0x6

    .line 62
    invoke-static {p0, p1, v5, v0}, Lcom/koushikdutta/ion/bitmap/Exif;->pack([BIIZ)I

    move-result p1

    if-nez p1, :cond_2

    add-int/lit8 p1, v1, 0x8

    add-int/lit8 p2, v6, -0x8

    goto :goto_2

    :cond_2
    move p1, v7

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    move p1, v1

    goto :goto_0

    :cond_5
    move p1, v1

    :cond_6
    const/4 p2, 0x0

    :goto_2
    if-le p2, v4, :cond_f

    .line 76
    invoke-static {p0, p1, v2, v0}, Lcom/koushikdutta/ion/bitmap/Exif;->pack([BIIZ)I

    move-result v1

    const v6, 0x49492a00    # 823968.0f

    if-eq v1, v6, :cond_7

    const v7, 0x4d4d002a    # 2.14958752E8f

    if-eq v1, v7, :cond_7

    return v0

    :cond_7
    if-ne v1, v6, :cond_8

    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    add-int/lit8 v6, p1, 0x4

    .line 84
    invoke-static {p0, v6, v2, v1}, Lcom/koushikdutta/ion/bitmap/Exif;->pack([BIIZ)I

    move-result v2

    add-int/2addr v2, v5

    const/16 v6, 0xa

    if-lt v2, v6, :cond_f

    if-le v2, p2, :cond_9

    goto :goto_5

    :cond_9
    add-int/2addr p1, v2

    sub-int/2addr p2, v2

    add-int/lit8 v2, p1, -0x2

    .line 93
    invoke-static {p0, v2, v5, v1}, Lcom/koushikdutta/ion/bitmap/Exif;->pack([BIIZ)I

    move-result v2

    :goto_4
    add-int/lit8 v6, v2, -0x1

    if-lez v2, :cond_f

    const/16 v2, 0xc

    if-lt p2, v2, :cond_f

    .line 96
    invoke-static {p0, p1, v5, v1}, Lcom/koushikdutta/ion/bitmap/Exif;->pack([BIIZ)I

    move-result v2

    const/16 v7, 0x112

    if-ne v2, v7, :cond_e

    add-int/2addr p1, v4

    .line 99
    invoke-static {p0, p1, v5, v1}, Lcom/koushikdutta/ion/bitmap/Exif;->pack([BIIZ)I

    move-result p0

    if-eq p0, v3, :cond_d

    const/4 p1, 0x3

    if-eq p0, p1, :cond_c

    const/4 p1, 0x6

    if-eq p0, p1, :cond_b

    if-eq p0, v4, :cond_a

    return v0

    :cond_a
    const/16 p0, 0x10e

    return p0

    :cond_b
    const/16 p0, 0x5a

    return p0

    :cond_c
    const/16 p0, 0xb4

    return p0

    :cond_d
    return v0

    :cond_e
    add-int/lit8 p1, p1, 0xc

    add-int/lit8 p2, p2, -0xc

    move v2, v6

    goto :goto_4

    :cond_f
    :goto_5
    return v0
.end method

.method private static pack([BIIZ)I
    .locals 2

    if-eqz p3, :cond_0

    add-int/lit8 p3, p2, -0x1

    add-int/2addr p1, p3

    const/4 p3, -0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v1, p2, -0x1

    if-lez p2, :cond_1

    shl-int/lit8 p2, v0, 0x8

    .line 132
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, p2

    add-int/2addr p1, p3

    move p2, v1

    goto :goto_1

    :cond_1
    return v0
.end method
