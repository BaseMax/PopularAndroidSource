.class public final La/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "La/a/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final FIRST_BIT_FLAGGED:J = -0x8000000000000000L

.field private static final c:[I

.field private static final d:[C

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:J

.field protected b:B

.field private f:La/a/a/c;

.field private g:La/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 21
    fill-array-data v0, :array_0

    sput-object v0, La/a/a/b;->c:[I

    const/16 v0, 0x20

    new-array v0, v0, [C

    .line 24
    fill-array-data v0, :array_1

    sput-object v0, La/a/a/b;->d:[C

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/a/b;->e:Ljava/util/Map;

    .line 30
    sget-object v0, La/a/a/b;->d:[C

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 32
    sget-object v2, La/a/a/b;->e:Ljava/util/Map;

    sget-object v3, La/a/a/b;->d:[C

    aget-char v3, v3, v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x6as
        0x6bs
        0x6ds
        0x6es
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, La/a/a/b;->a:J

    const/4 v0, 0x0

    .line 41
    iput-byte v0, p0, La/a/a/b;->b:B

    return-void
.end method

.method private constructor <init>(DDI)V
    .locals 5

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, La/a/a/b;->a:J

    const/4 v0, 0x0

    .line 41
    iput-byte v0, p0, La/a/a/b;->b:B

    .line 164
    new-instance v0, La/a/a/c;

    invoke-direct {v0, p1, p2, p3, p4}, La/a/a/c;-><init>(DD)V

    iput-object v0, p0, La/a/a/b;->f:La/a/a/c;

    const/16 v0, 0x40

    .line 165
    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    const/4 v1, 0x2

    new-array v2, v1, [D

    .line 168
    fill-array-data v2, :array_0

    new-array v1, v1, [D

    .line 169
    fill-array-data v1, :array_1

    const/4 v3, 0x1

    .line 171
    :goto_0
    iget-byte v4, p0, La/a/a/b;->b:B

    if-ge v4, p5, :cond_1

    if-eqz v3, :cond_0

    .line 173
    invoke-direct {p0, p3, p4, v1}, La/a/a/b;->a(D[D)V

    goto :goto_1

    .line 175
    :cond_0
    invoke-direct {p0, p1, p2, v2}, La/a/a/b;->a(D[D)V

    :goto_1
    xor-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 180
    :cond_1
    invoke-static {p0, v2, v1}, La/a/a/b;->a(La/a/a/b;[D[D)V

    .line 181
    iget-wide p1, p0, La/a/a/b;->a:J

    sub-int/2addr v0, p5

    shl-long/2addr p1, v0

    iput-wide p1, p0, La/a/a/b;->a:J

    return-void

    nop

    :array_0
    .array-data 8
        -0x3fa9800000000000L    # -90.0
        0x4056800000000000L    # 90.0
    .end array-data

    :array_1
    .array-data 8
        -0x3f99800000000000L    # -180.0
        0x4066800000000000L    # 180.0
    .end array-data
.end method

.method private static a(JI)J
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, p2, :cond_1

    const-wide/high16 v4, -0x8000000000000000L

    and-long v6, p0, v4

    cmp-long v8, v6, v4

    if-nez v8, :cond_0

    const-wide/16 v4, 0x1

    or-long/2addr v0, v4

    :cond_0
    shl-long/2addr v0, v3

    const/4 v3, 0x2

    shl-long/2addr p0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    ushr-long p0, v0, v3

    return-wide p0
.end method

.method private static a(JJ)J
    .locals 2

    const-wide/16 v0, 0x40

    sub-long/2addr v0, p2

    long-to-int p2, v0

    const-wide/16 v0, -0x1

    ushr-long p2, v0, p2

    and-long/2addr p0, p2

    return-wide p0
.end method

.method private static a([J[J)La/a/a/b;
    .locals 13

    .line 361
    new-instance v0, La/a/a/b;

    invoke-direct {v0}, La/a/a/b;-><init>()V

    const/4 v1, 0x0

    .line 363
    aget-wide v2, p0, v1

    const/4 v4, 0x1

    aget-wide v5, p0, v4

    const-wide/16 v7, 0x40

    sub-long v5, v7, v5

    long-to-int v6, v5

    shl-long/2addr v2, v6

    aput-wide v2, p0, v1

    .line 364
    aget-wide v2, p1, v1

    aget-wide v5, p1, v4

    sub-long/2addr v7, v5

    long-to-int v5, v7

    shl-long/2addr v2, v5

    aput-wide v2, p1, v1

    const/4 v2, 0x2

    new-array v3, v2, [D

    .line 365
    fill-array-data v3, :array_0

    new-array v2, v2, [D

    .line 366
    fill-array-data v2, :array_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    int-to-long v7, v5

    .line 368
    aget-wide v9, p0, v4

    aget-wide v11, p1, v4

    add-long/2addr v9, v11

    cmp-long v11, v7, v9

    if-gez v11, :cond_3

    const-wide/high16 v7, -0x8000000000000000L

    if-eqz v6, :cond_1

    .line 370
    aget-wide v9, p0, v1

    and-long/2addr v9, v7

    cmp-long v11, v9, v7

    if-nez v11, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    invoke-static {v0, v3, v7}, La/a/a/b;->a(La/a/a/b;[DZ)V

    .line 371
    aget-wide v7, p0, v1

    shl-long/2addr v7, v4

    aput-wide v7, p0, v1

    goto :goto_3

    .line 373
    :cond_1
    aget-wide v9, p1, v1

    and-long/2addr v9, v7

    cmp-long v11, v9, v7

    if-nez v11, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    invoke-static {v0, v2, v7}, La/a/a/b;->a(La/a/a/b;[DZ)V

    .line 374
    aget-wide v7, p1, v1

    shl-long/2addr v7, v4

    aput-wide v7, p1, v1

    :goto_3
    xor-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 378
    :cond_3
    iget-wide p0, v0, La/a/a/b;->a:J

    iget-byte v1, v0, La/a/a/b;->b:B

    rsub-int/lit8 v1, v1, 0x40

    shl-long/2addr p0, v1

    iput-wide p0, v0, La/a/a/b;->a:J

    .line 379
    invoke-static {v0, v3, v2}, La/a/a/b;->a(La/a/a/b;[D[D)V

    .line 380
    iget-object p0, v0, La/a/a/b;->g:La/a/a/a;

    invoke-virtual {p0}, La/a/a/a;->getCenterPoint()La/a/a/c;

    move-result-object p0

    iput-object p0, v0, La/a/a/b;->f:La/a/a/c;

    return-object v0

    :array_0
    .array-data 8
        -0x3fa9800000000000L    # -90.0
        0x4056800000000000L    # 90.0
    .end array-data

    :array_1
    .array-data 8
        -0x3f99800000000000L    # -180.0
        0x4066800000000000L    # 180.0
    .end array-data
.end method

.method private a(D[D)V
    .locals 6

    const/4 v0, 0x0

    .line 245
    aget-wide v1, p3, v0

    const/4 v3, 0x1

    aget-wide v4, p3, v3

    add-double/2addr v1, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v4

    cmpl-double v4, p1, v1

    if-ltz v4, :cond_0

    .line 247
    invoke-direct {p0}, La/a/a/b;->d()V

    .line 248
    aput-wide v1, p3, v0

    return-void

    .line 250
    :cond_0
    invoke-direct {p0}, La/a/a/b;->e()V

    .line 251
    aput-wide v1, p3, v3

    return-void
.end method

.method private static a(La/a/a/b;[DZ)V
    .locals 6

    const/4 v0, 0x0

    .line 256
    aget-wide v1, p1, v0

    const/4 v3, 0x1

    aget-wide v4, p1, v3

    add-double/2addr v1, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v4

    if-eqz p2, :cond_0

    .line 258
    invoke-direct {p0}, La/a/a/b;->d()V

    .line 259
    aput-wide v1, p1, v0

    return-void

    .line 261
    :cond_0
    invoke-direct {p0}, La/a/a/b;->e()V

    .line 262
    aput-wide v1, p1, v3

    return-void
.end method

.method private static a(La/a/a/b;[D[D)V
    .locals 7

    .line 185
    new-instance v0, La/a/a/a;

    new-instance v1, La/a/a/c;

    const/4 v2, 0x0

    aget-wide v3, p1, v2

    aget-wide v5, p2, v2

    invoke-direct {v1, v3, v4, v5, v6}, La/a/a/c;-><init>(DD)V

    new-instance v2, La/a/a/c;

    const/4 v3, 0x1

    aget-wide v4, p1, v3

    aget-wide p1, p2, v3

    invoke-direct {v2, v4, v5, p1, p2}, La/a/a/c;-><init>(DD)V

    invoke-direct {v0, v1, v2}, La/a/a/a;-><init>(La/a/a/c;La/a/a/c;)V

    iput-object v0, p0, La/a/a/b;->g:La/a/a/a;

    return-void
.end method

.method private a()[J
    .locals 5

    .line 417
    iget-wide v0, p0, La/a/a/b;->a:J

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    .line 418
    invoke-direct {p0}, La/a/a/b;->c()[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v0, v1, v3}, La/a/a/b;->a(JI)J

    move-result-wide v0

    const/4 v3, 0x2

    new-array v3, v3, [J

    aput-wide v0, v3, v4

    .line 419
    invoke-direct {p0}, La/a/a/b;->c()[I

    move-result-object v0

    aget v0, v0, v4

    int-to-long v0, v0

    aput-wide v0, v3, v2

    return-object v3
.end method

.method private b()[J
    .locals 5

    .line 423
    iget-wide v0, p0, La/a/a/b;->a:J

    .line 424
    invoke-direct {p0}, La/a/a/b;->c()[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, La/a/a/b;->a(JI)J

    move-result-wide v0

    const/4 v2, 0x2

    new-array v2, v2, [J

    const/4 v4, 0x0

    aput-wide v0, v2, v4

    .line 425
    invoke-direct {p0}, La/a/a/b;->c()[I

    move-result-object v0

    aget v0, v0, v3

    int-to-long v0, v0

    aput-wide v0, v2, v3

    return-object v2
.end method

.method private c()[I
    .locals 6

    .line 442
    iget-byte v0, p0, La/a/a/b;->b:B

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-nez v1, :cond_0

    new-array v1, v4, [I

    .line 443
    div-int/lit8 v5, v0, 0x2

    aput v5, v1, v2

    div-int/2addr v0, v4

    aput v0, v1, v3

    return-object v1

    :cond_0
    new-array v1, v4, [I

    .line 445
    div-int/lit8 v5, v0, 0x2

    aput v5, v1, v2

    div-int/2addr v0, v4

    add-int/2addr v0, v3

    aput v0, v1, v3

    return-object v1
.end method

.method private d()V
    .locals 4

    .line 450
    iget-byte v0, p0, La/a/a/b;->b:B

    const/4 v1, 0x1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/a/b;->b:B

    .line 451
    iget-wide v2, p0, La/a/a/b;->a:J

    shl-long v0, v2, v1

    iput-wide v0, p0, La/a/a/b;->a:J

    .line 452
    iget-wide v0, p0, La/a/a/b;->a:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, La/a/a/b;->a:J

    return-void
.end method

.method private e()V
    .locals 4

    .line 456
    iget-byte v0, p0, La/a/a/b;->b:B

    const/4 v1, 0x1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/a/b;->b:B

    .line 457
    iget-wide v2, p0, La/a/a/b;->a:J

    shl-long v0, v2, v1

    iput-wide v0, p0, La/a/a/b;->a:J

    return-void
.end method

.method public static fromBinaryString(Ljava/lang/String;)La/a/a/b;
    .locals 4

    .line 74
    new-instance v0, La/a/a/b;

    invoke-direct {v0}, La/a/a/b;-><init>()V

    const/4 v1, 0x0

    .line 75
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    .line 77
    invoke-direct {v0}, La/a/a/b;->d()V

    goto :goto_1

    .line 78
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    .line 79
    invoke-direct {v0}, La/a/a/b;->e()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid geohash as a binary string"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_2
    iget-wide v1, v0, La/a/a/b;->a:J

    iget-byte p0, v0, La/a/a/b;->b:B

    rsub-int/lit8 p0, p0, 0x40

    shl-long/2addr v1, p0

    iput-wide v1, v0, La/a/a/b;->a:J

    .line 85
    invoke-direct {v0}, La/a/a/b;->a()[J

    move-result-object p0

    .line 86
    invoke-direct {v0}, La/a/a/b;->b()[J

    move-result-object v0

    .line 87
    invoke-static {p0, v0}, La/a/a/b;->a([J[J)La/a/a/b;

    move-result-object p0

    return-object p0
.end method

.method public static fromGeohashString(Ljava/lang/String;)La/a/a/b;
    .locals 11

    const/4 v0, 0x2

    new-array v1, v0, [D

    .line 96
    fill-array-data v1, :array_0

    new-array v0, v0, [D

    .line 97
    fill-array-data v0, :array_1

    .line 100
    new-instance v2, La/a/a/b;

    invoke-direct {v2}, La/a/a/b;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 102
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_4

    .line 103
    sget-object v7, La/a/a/b;->e:Ljava/util/Map;

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v8, v6

    const/4 v6, 0x0

    :goto_1
    const/4 v9, 0x5

    if-ge v6, v9, :cond_3

    .line 105
    sget-object v9, La/a/a/b;->c:[I

    aget v9, v9, v6

    if-eqz v8, :cond_1

    and-int/2addr v9, v7

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_2

    :cond_0
    const/4 v9, 0x0

    .line 107
    :goto_2
    invoke-static {v2, v0, v9}, La/a/a/b;->a(La/a/a/b;[DZ)V

    goto :goto_4

    :cond_1
    and-int/2addr v9, v7

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_3

    :cond_2
    const/4 v9, 0x0

    .line 109
    :goto_3
    invoke-static {v2, v1, v9}, La/a/a/b;->a(La/a/a/b;[DZ)V

    :goto_4
    xor-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_0

    .line 115
    :cond_4
    aget-wide v5, v1, v3

    aget-wide v7, v1, v4

    add-double/2addr v5, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    .line 116
    aget-wide v9, v0, v3

    aget-wide v3, v0, v4

    add-double/2addr v9, v3

    div-double/2addr v9, v7

    .line 118
    new-instance p0, La/a/a/c;

    invoke-direct {p0, v5, v6, v9, v10}, La/a/a/c;-><init>(DD)V

    iput-object p0, v2, La/a/a/b;->f:La/a/a/c;

    .line 119
    invoke-static {v2, v1, v0}, La/a/a/b;->a(La/a/a/b;[D[D)V

    .line 120
    iget-wide v0, v2, La/a/a/b;->a:J

    iget-byte p0, v2, La/a/a/b;->b:B

    rsub-int/lit8 p0, p0, 0x40

    shl-long/2addr v0, p0

    iput-wide v0, v2, La/a/a/b;->a:J

    return-object v2

    nop

    :array_0
    .array-data 8
        -0x3fa9800000000000L    # -90.0
        0x4056800000000000L    # 90.0
    .end array-data

    :array_1
    .array-data 8
        -0x3f99800000000000L    # -180.0
        0x4066800000000000L    # 180.0
    .end array-data
.end method

.method public static fromLongValue(JI)La/a/a/b;
    .locals 11

    const/4 v0, 0x2

    new-array v1, v0, [D

    .line 125
    fill-array-data v1, :array_0

    new-array v0, v0, [D

    .line 126
    fill-array-data v0, :array_1

    .line 129
    new-instance v2, La/a/a/b;

    invoke-direct {v2}, La/a/a/b;-><init>()V

    .line 131
    invoke-static {p0, p1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object p0

    .line 132
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0x40

    if-ge p1, v3, :cond_0

    .line 133
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_1
    if-ge v5, p2, :cond_4

    const/16 v7, 0x30

    if-eqz v6, :cond_2

    .line 137
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v7, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    invoke-static {v2, v0, v7}, La/a/a/b;->a(La/a/a/b;[DZ)V

    goto :goto_4

    .line 139
    :cond_2
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v7, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    invoke-static {v2, v1, v7}, La/a/a/b;->a(La/a/a/b;[DZ)V

    :goto_4
    xor-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 144
    :cond_4
    aget-wide v5, v1, p1

    aget-wide v7, v1, v4

    add-double/2addr v5, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    .line 145
    aget-wide p0, v0, p1

    aget-wide v9, v0, v4

    add-double/2addr p0, v9

    div-double/2addr p0, v7

    .line 147
    new-instance p2, La/a/a/c;

    invoke-direct {p2, v5, v6, p0, p1}, La/a/a/c;-><init>(DD)V

    iput-object p2, v2, La/a/a/b;->f:La/a/a/c;

    .line 148
    invoke-static {v2, v1, v0}, La/a/a/b;->a(La/a/a/b;[D[D)V

    .line 149
    iget-wide p0, v2, La/a/a/b;->a:J

    iget-byte p2, v2, La/a/a/b;->b:B

    sub-int/2addr v3, p2

    shl-long/2addr p0, v3

    iput-wide p0, v2, La/a/a/b;->a:J

    return-object v2

    :array_0
    .array-data 8
        -0x3fa9800000000000L    # -90.0
        0x4056800000000000L    # 90.0
    .end array-data

    :array_1
    .array-data 8
        -0x3f99800000000000L    # -180.0
        0x4066800000000000L    # 180.0
    .end array-data
.end method

.method public static fromOrd(JI)La/a/a/b;
    .locals 1

    rsub-int/lit8 v0, p2, 0x40

    shl-long/2addr p0, v0

    .line 224
    invoke-static {p0, p1, p2}, La/a/a/b;->fromLongValue(JI)La/a/a/b;

    move-result-object p0

    return-object p0
.end method

.method public static geoHashStringWithCharacterPrecision(DDI)Ljava/lang/String;
    .locals 0

    .line 159
    invoke-static {p0, p1, p2, p3, p4}, La/a/a/b;->withCharacterPrecision(DDI)La/a/a/b;

    move-result-object p0

    .line 160
    invoke-virtual {p0}, La/a/a/b;->toBase32()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stepsBetween(La/a/a/b;La/a/a/b;)J
    .locals 2

    .line 237
    invoke-virtual {p0}, La/a/a/b;->significantBits()I

    move-result v0

    invoke-virtual {p1}, La/a/a/b;->significantBits()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 241
    invoke-virtual {p1}, La/a/a/b;->ord()J

    move-result-wide v0

    invoke-virtual {p0}, La/a/a/b;->ord()J

    move-result-wide p0

    sub-long/2addr v0, p0

    return-wide v0

    .line 238
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "It is only valid to compare the number of steps between two hashes if they have the same number of significant bits"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static withBitPrecision(DDI)La/a/a/b;
    .locals 11

    const/16 v0, 0x40

    if-gt p4, v0, :cond_1

    .line 67
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_0

    .line 70
    new-instance v0, La/a/a/b;

    move-object v5, v0

    move-wide v6, p0

    move-wide v8, p2

    move v10, p4

    invoke-direct/range {v5 .. v10}, La/a/a/b;-><init>(DDI)V

    return-object v0

    .line 68
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t have lat/lon values out of (-90,90)/(-180/180)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A Geohash can only be 64 bits long!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static withCharacterPrecision(DDI)La/a/a/b;
    .locals 7

    const/16 v0, 0xc

    if-gt p4, v0, :cond_1

    mul-int/lit8 p4, p4, 0x5

    const/16 v0, 0x3c

    if-gt p4, v0, :cond_0

    move v6, p4

    goto :goto_0

    :cond_0
    const/16 v6, 0x3c

    .line 56
    :goto_0
    new-instance p4, La/a/a/b;

    move-object v1, p4

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, La/a/a/b;-><init>(DDI)V

    return-object p4

    .line 53
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A geohash can only be 12 character long."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final compareTo(La/a/a/b;)I
    .locals 6

    .line 526
    iget-wide v0, p0, La/a/a/b;->a:J

    const-wide/high16 v2, -0x8000000000000000L

    xor-long/2addr v0, v2

    iget-wide v4, p1, La/a/a/b;->a:J

    xor-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return v4

    .line 530
    :cond_0
    iget-byte v0, p0, La/a/a/b;->b:B

    iget-byte p1, p1, La/a/a/b;->b:B

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 15
    check-cast p1, La/a/a/b;

    invoke-virtual {p0, p1}, La/a/a/b;->compareTo(La/a/a/b;)I

    move-result p1

    return p1
.end method

.method public final contains(La/a/a/c;)Z
    .locals 1

    .line 331
    iget-object v0, p0, La/a/a/b;->g:La/a/a/a;

    invoke-virtual {v0, p1}, La/a/a/a;->contains(La/a/a/c;)Z

    move-result p1

    return p1
.end method

.method public final enclosesCircleAroundPoint(La/a/a/c;D)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 488
    :cond_0
    instance-of v1, p1, La/a/a/b;

    if-eqz v1, :cond_1

    .line 489
    check-cast p1, La/a/a/b;

    .line 490
    iget-byte v1, p1, La/a/a/b;->b:B

    iget-byte v2, p0, La/a/a/b;->b:B

    if-ne v1, v2, :cond_1

    iget-wide v1, p1, La/a/a/b;->a:J

    iget-wide v3, p0, La/a/a/b;->a:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final getAdjacent()[La/a/a/b;
    .locals 7

    .line 272
    invoke-virtual {p0}, La/a/a/b;->getNorthernNeighbour()La/a/a/b;

    move-result-object v0

    .line 273
    invoke-virtual {p0}, La/a/a/b;->getEasternNeighbour()La/a/a/b;

    move-result-object v1

    .line 274
    invoke-virtual {p0}, La/a/a/b;->getSouthernNeighbour()La/a/a/b;

    move-result-object v2

    .line 275
    invoke-virtual {p0}, La/a/a/b;->getWesternNeighbour()La/a/a/b;

    move-result-object v3

    const/16 v4, 0x8

    new-array v4, v4, [La/a/a/b;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 276
    invoke-virtual {v0}, La/a/a/b;->getEasternNeighbour()La/a/a/b;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2}, La/a/a/b;->getEasternNeighbour()La/a/a/b;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v4, v5

    const/4 v1, 0x4

    aput-object v2, v4, v1

    .line 278
    invoke-virtual {v2}, La/a/a/b;->getWesternNeighbour()La/a/a/b;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v4, v2

    const/4 v1, 0x6

    aput-object v3, v4, v1

    invoke-virtual {v0}, La/a/a/b;->getWesternNeighbour()La/a/a/b;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, v4, v1

    return-object v4
.end method

.method public final getBoundingBox()La/a/a/a;
    .locals 1

    .line 353
    iget-object v0, p0, La/a/a/b;->g:La/a/a/a;

    return-object v0
.end method

.method public final getBoundingBoxCenterPoint()La/a/a/c;
    .locals 1

    .line 349
    iget-object v0, p0, La/a/a/b;->g:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->getCenterPoint()La/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final getCharacterPrecision()I
    .locals 3

    .line 215
    iget-byte v0, p0, La/a/a/b;->b:B

    rem-int/lit8 v1, v0, 0x5

    if-nez v1, :cond_0

    .line 219
    div-int/lit8 v0, v0, 0x5

    return v0

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "precision of GeoHash is not divisble by 5: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getEasternNeighbour()La/a/a/b;
    .locals 7

    .line 401
    invoke-direct {p0}, La/a/a/b;->a()[J

    move-result-object v0

    .line 402
    invoke-direct {p0}, La/a/a/b;->b()[J

    move-result-object v1

    const/4 v2, 0x0

    .line 403
    aget-wide v3, v1, v2

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    aput-wide v3, v1, v2

    .line 404
    aget-wide v3, v1, v2

    const/4 v5, 0x1

    aget-wide v5, v1, v5

    invoke-static {v3, v4, v5, v6}, La/a/a/b;->a(JJ)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 405
    invoke-static {v0, v1}, La/a/a/b;->a([J[J)La/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final getNorthernNeighbour()La/a/a/b;
    .locals 7

    .line 385
    invoke-direct {p0}, La/a/a/b;->a()[J

    move-result-object v0

    .line 386
    invoke-direct {p0}, La/a/a/b;->b()[J

    move-result-object v1

    const/4 v2, 0x0

    .line 387
    aget-wide v3, v0, v2

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    aput-wide v3, v0, v2

    .line 388
    aget-wide v3, v0, v2

    const/4 v5, 0x1

    aget-wide v5, v0, v5

    invoke-static {v3, v4, v5, v6}, La/a/a/b;->a(JJ)J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 389
    invoke-static {v0, v1}, La/a/a/b;->a([J[J)La/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final getPoint()La/a/a/c;
    .locals 1

    .line 340
    iget-object v0, p0, La/a/a/b;->f:La/a/a/c;

    return-object v0
.end method

.method public final getSouthernNeighbour()La/a/a/b;
    .locals 7

    .line 393
    invoke-direct {p0}, La/a/a/b;->a()[J

    move-result-object v0

    .line 394
    invoke-direct {p0}, La/a/a/b;->b()[J

    move-result-object v1

    const/4 v2, 0x0

    .line 395
    aget-wide v3, v0, v2

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    aput-wide v3, v0, v2

    .line 396
    aget-wide v3, v0, v2

    const/4 v5, 0x1

    aget-wide v5, v0, v5

    invoke-static {v3, v4, v5, v6}, La/a/a/b;->a(JJ)J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 397
    invoke-static {v0, v1}, La/a/a/b;->a([J[J)La/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final getWesternNeighbour()La/a/a/b;
    .locals 7

    .line 409
    invoke-direct {p0}, La/a/a/b;->a()[J

    move-result-object v0

    .line 410
    invoke-direct {p0}, La/a/a/b;->b()[J

    move-result-object v1

    const/4 v2, 0x0

    .line 411
    aget-wide v3, v1, v2

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    aput-wide v3, v1, v2

    .line 412
    aget-wide v3, v1, v2

    const/4 v5, 0x1

    aget-wide v5, v1, v5

    invoke-static {v3, v4, v5, v6}, La/a/a/b;->a(JJ)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 413
    invoke-static {v0, v1}, La/a/a/b;->a([J[J)La/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    .line 500
    iget-wide v0, p0, La/a/a/b;->a:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    add-int/lit16 v1, v1, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    .line 501
    iget-byte v0, p0, La/a/a/b;->b:B

    add-int/2addr v1, v0

    return v1
.end method

.method public final longValue()J
    .locals 2

    .line 289
    iget-wide v0, p0, La/a/a/b;->a:J

    return-wide v0
.end method

.method public final next()La/a/a/b;
    .locals 1

    const/4 v0, 0x1

    .line 195
    invoke-virtual {p0, v0}, La/a/a/b;->next(I)La/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final next(I)La/a/a/b;
    .locals 4

    .line 191
    invoke-virtual {p0}, La/a/a/b;->ord()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-byte p1, p0, La/a/a/b;->b:B

    invoke-static {v0, v1, p1}, La/a/a/b;->fromOrd(JI)La/a/a/b;

    move-result-object p1

    return-object p1
.end method

.method public final ord()J
    .locals 3

    .line 203
    iget-byte v0, p0, La/a/a/b;->b:B

    rsub-int/lit8 v0, v0, 0x40

    .line 204
    iget-wide v1, p0, La/a/a/b;->a:J

    ushr-long v0, v1, v0

    return-wide v0
.end method

.method public final prev()La/a/a/b;
    .locals 1

    const/4 v0, -0x1

    .line 199
    invoke-virtual {p0, v0}, La/a/a/b;->next(I)La/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final significantBits()I
    .locals 1

    .line 285
    iget-byte v0, p0, La/a/a/b;->b:B

    return v0
.end method

.method public final toBase32()Ljava/lang/String;
    .locals 9

    .line 301
    iget-byte v0, p0, La/a/a/b;->b:B

    const/4 v1, 0x5

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    iget-wide v2, p0, La/a/a/b;->a:J

    .line 308
    iget-byte v4, p0, La/a/a/b;->b:B

    int-to-double v4, v4

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    const-wide/high16 v6, -0x800000000000000L

    and-long/2addr v6, v2

    const/16 v8, 0x3b

    ushr-long/2addr v6, v8

    long-to-int v7, v6

    .line 312
    sget-object v6, La/a/a/b;->d:[C

    aget-char v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shl-long/2addr v2, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 302
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot convert a geohash to base32 if the precision is not a multiple of 5."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final toBinaryString()Ljava/lang/String;
    .locals 9

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    iget-wide v1, p0, La/a/a/b;->a:J

    const/4 v3, 0x0

    .line 472
    :goto_0
    iget-byte v4, p0, La/a/a/b;->b:B

    if-ge v3, v4, :cond_1

    const-wide/high16 v4, -0x8000000000000000L

    and-long v6, v1, v4

    cmp-long v8, v6, v4

    if-nez v8, :cond_0

    const/16 v4, 0x31

    .line 474
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v4, 0x30

    .line 476
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v4, 0x1

    shl-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 480
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 462
    iget-byte v0, p0, La/a/a/b;->b:B

    rem-int/lit8 v0, v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-nez v0, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    .line 463
    iget-wide v4, p0, La/a/a/b;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v3, p0, La/a/a/b;->g:La/a/a/a;

    aput-object v3, v0, v2

    invoke-virtual {p0}, La/a/a/b;->toBase32()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%s -> %s -> %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v4, [Ljava/lang/Object;

    .line 465
    iget-wide v4, p0, La/a/a/b;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v3, p0, La/a/a/b;->g:La/a/a/a;

    aput-object v3, v0, v2

    iget-byte v2, p0, La/a/a/b;->b:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%s -> %s, bits: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final within(La/a/a/b;)Z
    .locals 6

    .line 322
    iget-wide v0, p0, La/a/a/b;->a:J

    .line 1509
    iget-byte v2, p1, La/a/a/b;->b:B

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    const-wide/high16 v4, -0x8000000000000000L

    sub-int/2addr v2, v3

    shr-long/2addr v4, v2

    :goto_0
    and-long/2addr v0, v4

    .line 322
    iget-wide v4, p1, La/a/a/b;->a:J

    cmp-long p1, v0, v4

    if-nez p1, :cond_1

    return v3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
