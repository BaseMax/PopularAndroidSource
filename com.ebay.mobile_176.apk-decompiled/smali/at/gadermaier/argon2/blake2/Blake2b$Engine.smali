.class public Lat/gadermaier/argon2/blake2/Blake2b$Engine;
.super Ljava/lang/Object;
.source "Blake2b.java"

# interfaces
.implements Lat/gadermaier/argon2/blake2/Blake2b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/gadermaier/argon2/blake2/Blake2b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Engine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;,
        Lat/gadermaier/argon2/blake2/Blake2b$Engine$Assert;,
        Lat/gadermaier/argon2/blake2/Blake2b$Engine$Debug;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final sig_g00:[I

.field static final sig_g01:[I

.field static final sig_g10:[I

.field static final sig_g11:[I

.field static final sig_g20:[I

.field static final sig_g21:[I

.field static final sig_g30:[I

.field static final sig_g31:[I

.field static final sig_g40:[I

.field static final sig_g41:[I

.field static final sig_g50:[I

.field static final sig_g51:[I

.field static final sig_g60:[I

.field static final sig_g61:[I

.field static final sig_g70:[I

.field static final sig_g71:[I

.field private static zeropad:[B


# instance fields
.field private final buffer:[B

.field private buflen:I

.field private final f:[J

.field private final h:[J

.field private last_node:Z

.field private final m:[J

.field private oneByte:[B

.field private final outlen:I

.field private final param:Lat/gadermaier/argon2/blake2/Blake2b$Param;

.field private final t:[J

.field private final v:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 248
    const-class v0, Lat/gadermaier/argon2/blake2/Blake2b;

    const/16 v0, 0xc

    .line 251
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g00:[I

    .line 252
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g01:[I

    .line 255
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g10:[I

    .line 256
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g11:[I

    .line 259
    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g20:[I

    .line 260
    new-array v1, v0, [I

    fill-array-data v1, :array_5

    sput-object v1, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g21:[I

    .line 263
    new-array v1, v0, [I

    fill-array-data v1, :array_6

    sput-object v1, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g30:[I

    .line 264
    new-array v1, v0, [I

    fill-array-data v1, :array_7

    sput-object v1, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g31:[I

    .line 267
    new-array v1, v0, [I

    fill-array-data v1, :array_8

    sput-object v1, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g40:[I

    .line 268
    new-array v1, v0, [I

    fill-array-data v1, :array_9

    sput-object v1, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g41:[I

    .line 271
    new-array v1, v0, [I

    fill-array-data v1, :array_a

    sput-object v1, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g50:[I

    .line 272
    new-array v1, v0, [I

    fill-array-data v1, :array_b

    sput-object v1, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g51:[I

    .line 275
    new-array v1, v0, [I

    fill-array-data v1, :array_c

    sput-object v1, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g60:[I

    .line 276
    new-array v1, v0, [I

    fill-array-data v1, :array_d

    sput-object v1, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g61:[I

    .line 279
    new-array v1, v0, [I

    fill-array-data v1, :array_e

    sput-object v1, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g70:[I

    .line 280
    new-array v0, v0, [I

    fill-array-data v0, :array_f

    sput-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g71:[I

    const/16 v0, 0x80

    .line 289
    new-array v0, v0, [B

    sput-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->zeropad:[B

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xe
        0xb
        0x7
        0x9
        0x2
        0xc
        0xd
        0x6
        0xa
        0x0
        0xe
    .end array-data

    :array_1
    .array-data 4
        0x1
        0xa
        0x8
        0x9
        0x0
        0xc
        0x5
        0xb
        0xf
        0x2
        0x1
        0xa
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x4
        0xc
        0x3
        0x5
        0x6
        0x1
        0x7
        0xe
        0x8
        0x2
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x8
        0x0
        0x1
        0x7
        0xa
        0xf
        0xe
        0x9
        0x4
        0x3
        0x8
    .end array-data

    :array_4
    .array-data 4
        0x4
        0x9
        0x5
        0xd
        0x2
        0x0
        0xe
        0xc
        0xb
        0x7
        0x4
        0x9
    .end array-data

    :array_5
    .array-data 4
        0x5
        0xf
        0x2
        0xc
        0x4
        0xb
        0xd
        0x1
        0x3
        0x6
        0x5
        0xf
    .end array-data

    :array_6
    .array-data 4
        0x6
        0xd
        0xf
        0xb
        0xa
        0x8
        0x4
        0x3
        0x0
        0x1
        0x6
        0xd
    .end array-data

    :array_7
    .array-data 4
        0x7
        0x6
        0xd
        0xe
        0xf
        0x3
        0xa
        0x9
        0x8
        0x5
        0x7
        0x6
    .end array-data

    :array_8
    .array-data 4
        0x8
        0x1
        0xa
        0x2
        0xe
        0x4
        0x0
        0x5
        0xc
        0xf
        0x8
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x9
        0xc
        0xe
        0x6
        0x1
        0xd
        0x7
        0x0
        0x2
        0xb
        0x9
        0xc
    .end array-data

    :array_a
    .array-data 4
        0xa
        0x0
        0x3
        0x5
        0xb
        0x7
        0x6
        0xf
        0xd
        0x9
        0xa
        0x0
    .end array-data

    :array_b
    .array-data 4
        0xb
        0x2
        0x6
        0xa
        0xc
        0x5
        0x3
        0x4
        0x7
        0xe
        0xb
        0x2
    .end array-data

    :array_c
    .array-data 4
        0xc
        0xb
        0x7
        0x4
        0x6
        0xf
        0x9
        0x8
        0x1
        0x3
        0xc
        0xb
    .end array-data

    :array_d
    .array-data 4
        0xd
        0x7
        0x1
        0x0
        0x8
        0xe
        0x2
        0x6
        0x4
        0xc
        0xd
        0x7
    .end array-data

    :array_e
    .array-data 4
        0xe
        0x5
        0x9
        0xf
        0x3
        0x1
        0x8
        0x2
        0xa
        0xd
        0xe
        0x5
    .end array-data

    :array_f
    .array-data 4
        0xf
        0x3
        0x4
        0x8
        0xd
        0x9
        0xb
        0xa
        0x5
        0x0
        0xf
        0x3
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .line 322
    new-instance v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;

    invoke-direct {v0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;-><init>()V

    invoke-direct {p0, v0}, Lat/gadermaier/argon2/blake2/Blake2b$Engine;-><init>(Lat/gadermaier/argon2/blake2/Blake2b$Param;)V

    return-void
.end method

.method constructor <init>(Lat/gadermaier/argon2/blake2/Blake2b$Param;)V
    .locals 5

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 293
    new-array v0, v0, [J

    iput-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->h:[J

    const/4 v0, 0x2

    .line 295
    new-array v1, v0, [J

    iput-object v1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->t:[J

    .line 297
    new-array v0, v0, [J

    iput-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->f:[J

    const/16 v0, 0x10

    .line 299
    new-array v1, v0, [J

    iput-object v1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    .line 301
    new-array v0, v0, [J

    iput-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->last_node:Z

    .line 332
    iput-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->param:Lat/gadermaier/argon2/blake2/Blake2b$Param;

    const/16 v0, 0x80

    .line 333
    new-array v0, v0, [B

    iput-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->buffer:[B

    const/4 v0, 0x1

    .line 334
    new-array v1, v0, [B

    iput-object v1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->oneByte:[B

    .line 335
    invoke-virtual {p1}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->getDigestLength()I

    move-result v1

    iput v1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->outlen:I

    .line 337
    invoke-virtual {p1}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->getDepth()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 338
    invoke-virtual {p1}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->getNodeDepth()I

    move-result v1

    .line 339
    invoke-virtual {p1}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->getNodeOffset()J

    .line 340
    invoke-virtual {p1}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->getDepth()I

    move-result v2

    sub-int/2addr v2, v0

    if-ne v1, v2, :cond_0

    .line 341
    iput-boolean v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->last_node:Z

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {p1}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->getNodeOffset()J

    move-result-wide v1

    invoke-virtual {p1}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->getFanout()I

    move-result p1

    sub-int/2addr p1, v0

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    .line 344
    iput-boolean v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->last_node:Z

    .line 348
    :cond_1
    :goto_0
    invoke-direct {p0}, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->initialize()V

    return-void
.end method

.method static synthetic access$200(Lat/gadermaier/argon2/blake2/Blake2b$Engine;)[J
    .locals 0

    .line 248
    iget-object p0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->t:[J

    return-object p0
.end method

.method static synthetic access$300(Lat/gadermaier/argon2/blake2/Blake2b$Engine;)[J
    .locals 0

    .line 248
    iget-object p0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->h:[J

    return-object p0
.end method

.method static synthetic access$400(Lat/gadermaier/argon2/blake2/Blake2b$Engine;)[J
    .locals 0

    .line 248
    iget-object p0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->f:[J

    return-object p0
.end method

.method static synthetic access$500(Lat/gadermaier/argon2/blake2/Blake2b$Engine;)I
    .locals 0

    .line 248
    iget p0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->buflen:I

    return p0
.end method

.method private compress([BI)V
    .locals 17

    move-object/from16 v0, p0

    .line 525
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-byte v4, p1, p2

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    const/4 v8, 0x0

    aput-wide v4, v3, v8

    .line 526
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v8

    add-int/lit8 v9, p2, 0x1

    aget-byte v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v6

    const/16 v11, 0x8

    shl-long/2addr v9, v11

    or-long/2addr v4, v9

    aput-wide v4, v3, v8

    .line 527
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v8

    add-int/lit8 v9, p2, 0x2

    aget-byte v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v6

    const/16 v12, 0x10

    shl-long/2addr v9, v12

    or-long/2addr v4, v9

    aput-wide v4, v3, v8

    .line 528
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v8

    add-int/lit8 v9, p2, 0x3

    aget-byte v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v6

    const/16 v13, 0x18

    shl-long/2addr v9, v13

    or-long/2addr v4, v9

    aput-wide v4, v3, v8

    .line 529
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v8

    add-int/lit8 v9, p2, 0x4

    aget-byte v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v6

    const/16 v13, 0x20

    shl-long/2addr v9, v13

    or-long/2addr v4, v9

    aput-wide v4, v3, v8

    .line 530
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v8

    add-int/lit8 v9, p2, 0x5

    aget-byte v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v6

    const/16 v14, 0x28

    shl-long/2addr v9, v14

    or-long/2addr v4, v9

    aput-wide v4, v3, v8

    .line 531
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v8

    add-int/lit8 v9, p2, 0x6

    aget-byte v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v6

    const/16 v14, 0x30

    shl-long/2addr v9, v14

    or-long/2addr v4, v9

    aput-wide v4, v3, v8

    .line 532
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v8

    add-int/lit8 v9, p2, 0x7

    aget-byte v9, p1, v9

    int-to-long v9, v9

    const/16 v14, 0x38

    shl-long/2addr v9, v14

    or-long/2addr v4, v9

    aput-wide v4, v3, v8

    .line 534
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    add-int/lit8 v4, p2, 0x8

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    const/4 v9, 0x1

    aput-wide v4, v3, v9

    .line 535
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x9

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    shl-long/2addr v14, v11

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 536
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0xa

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    shl-long/2addr v14, v12

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 537
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0xb

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    const/16 v10, 0x18

    shl-long/2addr v14, v10

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 538
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0xc

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    shl-long/2addr v14, v13

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 539
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0xd

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    const/16 v10, 0x28

    shl-long/2addr v14, v10

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 540
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0xe

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    const/16 v10, 0x30

    shl-long/2addr v14, v10

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 541
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0xf

    aget-byte v10, p1, v10

    int-to-long v14, v10

    const/16 v10, 0x38

    shl-long/2addr v14, v10

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 543
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    add-int/lit8 v4, p2, 0x10

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    const/4 v10, 0x2

    aput-wide v4, v3, v10

    .line 544
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v10

    add-int/lit8 v14, p2, 0x11

    aget-byte v14, p1, v14

    int-to-long v14, v14

    and-long/2addr v14, v6

    shl-long/2addr v14, v11

    or-long/2addr v4, v14

    aput-wide v4, v3, v10

    .line 545
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v10

    add-int/lit8 v14, p2, 0x12

    aget-byte v14, p1, v14

    int-to-long v14, v14

    and-long/2addr v14, v6

    shl-long/2addr v14, v12

    or-long/2addr v4, v14

    aput-wide v4, v3, v10

    .line 546
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v10

    add-int/lit8 v14, p2, 0x13

    aget-byte v14, p1, v14

    int-to-long v14, v14

    and-long/2addr v14, v6

    const/16 v16, 0x18

    shl-long v14, v14, v16

    or-long/2addr v4, v14

    aput-wide v4, v3, v10

    .line 547
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v10

    add-int/lit8 v14, p2, 0x14

    aget-byte v14, p1, v14

    int-to-long v14, v14

    and-long/2addr v14, v6

    shl-long/2addr v14, v13

    or-long/2addr v4, v14

    aput-wide v4, v3, v10

    .line 548
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v10

    add-int/lit8 v14, p2, 0x15

    aget-byte v14, p1, v14

    int-to-long v14, v14

    and-long/2addr v14, v6

    const/16 v16, 0x28

    shl-long v14, v14, v16

    or-long/2addr v4, v14

    aput-wide v4, v3, v10

    .line 549
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v10

    add-int/lit8 v14, p2, 0x16

    aget-byte v14, p1, v14

    int-to-long v14, v14

    and-long/2addr v14, v6

    const/16 v16, 0x30

    shl-long v14, v14, v16

    or-long/2addr v4, v14

    aput-wide v4, v3, v10

    .line 550
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v10

    add-int/lit8 v14, p2, 0x17

    aget-byte v14, p1, v14

    int-to-long v14, v14

    const/16 v16, 0x38

    shl-long v14, v14, v16

    or-long/2addr v4, v14

    aput-wide v4, v3, v10

    .line 552
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    add-int/lit8 v4, p2, 0x18

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    const/4 v14, 0x3

    aput-wide v4, v3, v14

    .line 553
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    const/4 v4, 0x3

    aget-wide v14, v3, v4

    add-int/lit8 v5, p2, 0x19

    aget-byte v5, p1, v5

    int-to-long v9, v5

    and-long/2addr v9, v6

    shl-long/2addr v9, v11

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 554
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v9, v3, v4

    add-int/lit8 v5, p2, 0x1a

    aget-byte v5, p1, v5

    int-to-long v14, v5

    and-long/2addr v14, v6

    shl-long/2addr v14, v12

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 555
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v9, v3, v4

    add-int/lit8 v5, p2, 0x1b

    aget-byte v5, p1, v5

    int-to-long v14, v5

    and-long/2addr v14, v6

    const/16 v5, 0x18

    shl-long/2addr v14, v5

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 556
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v9, v3, v4

    add-int/lit8 v5, p2, 0x1c

    aget-byte v5, p1, v5

    int-to-long v14, v5

    and-long/2addr v14, v6

    shl-long/2addr v14, v13

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 557
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v9, v3, v4

    add-int/lit8 v5, p2, 0x1d

    aget-byte v5, p1, v5

    int-to-long v14, v5

    and-long/2addr v14, v6

    const/16 v5, 0x28

    shl-long/2addr v14, v5

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 558
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v9, v3, v4

    add-int/lit8 v5, p2, 0x1e

    aget-byte v5, p1, v5

    int-to-long v14, v5

    and-long/2addr v14, v6

    const/16 v5, 0x30

    shl-long/2addr v14, v5

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 559
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v9, v3, v4

    add-int/lit8 v5, p2, 0x1f

    aget-byte v5, p1, v5

    int-to-long v14, v5

    const/16 v5, 0x38

    shl-long/2addr v14, v5

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 561
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    add-int/lit8 v4, p2, 0x20

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    const/4 v9, 0x4

    aput-wide v4, v3, v9

    .line 562
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x21

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    shl-long/2addr v14, v11

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 563
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x22

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    shl-long/2addr v14, v12

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 564
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x23

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    const/16 v10, 0x18

    shl-long/2addr v14, v10

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 565
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x24

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    shl-long/2addr v14, v13

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 566
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x25

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    const/16 v10, 0x28

    shl-long/2addr v14, v10

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 567
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x26

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    const/16 v10, 0x30

    shl-long/2addr v14, v10

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 568
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x27

    aget-byte v10, p1, v10

    int-to-long v14, v10

    const/16 v10, 0x38

    shl-long/2addr v14, v10

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 570
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    add-int/lit8 v4, p2, 0x28

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    const/4 v10, 0x5

    aput-wide v4, v3, v10

    .line 571
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v10

    add-int/lit8 v14, p2, 0x29

    aget-byte v14, p1, v14

    int-to-long v14, v14

    and-long/2addr v14, v6

    shl-long/2addr v14, v11

    or-long/2addr v4, v14

    aput-wide v4, v3, v10

    .line 572
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v10

    add-int/lit8 v14, p2, 0x2a

    aget-byte v14, p1, v14

    int-to-long v14, v14

    and-long/2addr v14, v6

    shl-long/2addr v14, v12

    or-long/2addr v4, v14

    aput-wide v4, v3, v10

    .line 573
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v10

    add-int/lit8 v14, p2, 0x2b

    aget-byte v14, p1, v14

    int-to-long v14, v14

    and-long/2addr v14, v6

    const/16 v16, 0x18

    shl-long v14, v14, v16

    or-long/2addr v4, v14

    aput-wide v4, v3, v10

    .line 574
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v10

    add-int/lit8 v14, p2, 0x2c

    aget-byte v14, p1, v14

    int-to-long v14, v14

    and-long/2addr v14, v6

    shl-long/2addr v14, v13

    or-long/2addr v4, v14

    aput-wide v4, v3, v10

    .line 575
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v10

    add-int/lit8 v14, p2, 0x2d

    aget-byte v14, p1, v14

    int-to-long v14, v14

    and-long/2addr v14, v6

    const/16 v16, 0x28

    shl-long v14, v14, v16

    or-long/2addr v4, v14

    aput-wide v4, v3, v10

    .line 576
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v10

    add-int/lit8 v14, p2, 0x2e

    aget-byte v14, p1, v14

    int-to-long v14, v14

    and-long/2addr v14, v6

    const/16 v16, 0x30

    shl-long v14, v14, v16

    or-long/2addr v4, v14

    aput-wide v4, v3, v10

    .line 577
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v10

    add-int/lit8 v14, p2, 0x2f

    aget-byte v14, p1, v14

    int-to-long v14, v14

    const/16 v16, 0x38

    shl-long v14, v14, v16

    or-long/2addr v4, v14

    aput-wide v4, v3, v10

    .line 579
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    add-int/lit8 v4, p2, 0x30

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    const/4 v14, 0x6

    aput-wide v4, v3, v14

    .line 580
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v14

    add-int/lit8 v15, p2, 0x31

    aget-byte v15, p1, v15

    int-to-long v9, v15

    and-long/2addr v9, v6

    shl-long/2addr v9, v11

    or-long/2addr v4, v9

    aput-wide v4, v3, v14

    .line 581
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v14

    add-int/lit8 v9, p2, 0x32

    aget-byte v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v6

    shl-long/2addr v9, v12

    or-long/2addr v4, v9

    aput-wide v4, v3, v14

    .line 582
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v14

    add-int/lit8 v9, p2, 0x33

    aget-byte v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v6

    const/16 v15, 0x18

    shl-long/2addr v9, v15

    or-long/2addr v4, v9

    aput-wide v4, v3, v14

    .line 583
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v14

    add-int/lit8 v9, p2, 0x34

    aget-byte v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v6

    shl-long/2addr v9, v13

    or-long/2addr v4, v9

    aput-wide v4, v3, v14

    .line 584
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v14

    add-int/lit8 v9, p2, 0x35

    aget-byte v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v6

    const/16 v15, 0x28

    shl-long/2addr v9, v15

    or-long/2addr v4, v9

    aput-wide v4, v3, v14

    .line 585
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v14

    add-int/lit8 v9, p2, 0x36

    aget-byte v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v6

    const/16 v15, 0x30

    shl-long/2addr v9, v15

    or-long/2addr v4, v9

    aput-wide v4, v3, v14

    .line 586
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v14

    add-int/lit8 v9, p2, 0x37

    aget-byte v9, p1, v9

    int-to-long v9, v9

    const/16 v15, 0x38

    shl-long/2addr v9, v15

    or-long/2addr v4, v9

    aput-wide v4, v3, v14

    .line 588
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    add-int/lit8 v4, p2, 0x38

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    const/4 v9, 0x7

    aput-wide v4, v3, v9

    .line 589
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x39

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    shl-long/2addr v14, v11

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 590
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x3a

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    shl-long/2addr v14, v12

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 591
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x3b

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    const/16 v10, 0x18

    shl-long/2addr v14, v10

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 592
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x3c

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    shl-long/2addr v14, v13

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 593
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x3d

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    const/16 v10, 0x28

    shl-long/2addr v14, v10

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 594
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x3e

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    const/16 v10, 0x30

    shl-long/2addr v14, v10

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 595
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x3f

    aget-byte v10, p1, v10

    int-to-long v14, v10

    const/16 v10, 0x38

    shl-long/2addr v14, v10

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 597
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    add-int/lit8 v4, p2, 0x40

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    aput-wide v4, v3, v11

    .line 598
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v11

    add-int/lit8 v10, p2, 0x41

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    shl-long/2addr v14, v11

    or-long/2addr v4, v14

    aput-wide v4, v3, v11

    .line 599
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v11

    add-int/lit8 v10, p2, 0x42

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    shl-long/2addr v14, v12

    or-long/2addr v4, v14

    aput-wide v4, v3, v11

    .line 600
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v11

    add-int/lit8 v10, p2, 0x43

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    const/16 v10, 0x18

    shl-long/2addr v14, v10

    or-long/2addr v4, v14

    aput-wide v4, v3, v11

    .line 601
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v11

    add-int/lit8 v10, p2, 0x44

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    shl-long/2addr v14, v13

    or-long/2addr v4, v14

    aput-wide v4, v3, v11

    .line 602
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v11

    add-int/lit8 v10, p2, 0x45

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    const/16 v10, 0x28

    shl-long/2addr v14, v10

    or-long/2addr v4, v14

    aput-wide v4, v3, v11

    .line 603
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v11

    add-int/lit8 v10, p2, 0x46

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    const/16 v10, 0x30

    shl-long/2addr v14, v10

    or-long/2addr v4, v14

    aput-wide v4, v3, v11

    .line 604
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v11

    add-int/lit8 v10, p2, 0x47

    aget-byte v10, p1, v10

    int-to-long v14, v10

    const/16 v10, 0x38

    shl-long/2addr v14, v10

    or-long/2addr v4, v14

    aput-wide v4, v3, v11

    .line 606
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    add-int/lit8 v4, p2, 0x48

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    const/16 v10, 0x9

    aput-wide v4, v3, v10

    .line 607
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    const/16 v4, 0x9

    aget-wide v14, v3, v4

    add-int/lit8 v5, p2, 0x49

    aget-byte v5, p1, v5

    int-to-long v9, v5

    and-long/2addr v9, v6

    shl-long/2addr v9, v11

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 608
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v9, v3, v4

    add-int/lit8 v5, p2, 0x4a

    aget-byte v5, p1, v5

    int-to-long v14, v5

    and-long/2addr v14, v6

    shl-long/2addr v14, v12

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 609
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v9, v3, v4

    add-int/lit8 v5, p2, 0x4b

    aget-byte v5, p1, v5

    int-to-long v14, v5

    and-long/2addr v14, v6

    const/16 v5, 0x18

    shl-long/2addr v14, v5

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 610
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v9, v3, v4

    add-int/lit8 v5, p2, 0x4c

    aget-byte v5, p1, v5

    int-to-long v14, v5

    and-long/2addr v14, v6

    shl-long/2addr v14, v13

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 611
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v9, v3, v4

    add-int/lit8 v5, p2, 0x4d

    aget-byte v5, p1, v5

    int-to-long v14, v5

    and-long/2addr v14, v6

    const/16 v5, 0x28

    shl-long/2addr v14, v5

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 612
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v9, v3, v4

    add-int/lit8 v5, p2, 0x4e

    aget-byte v5, p1, v5

    int-to-long v14, v5

    and-long/2addr v14, v6

    const/16 v5, 0x30

    shl-long/2addr v14, v5

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 613
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v9, v3, v4

    add-int/lit8 v5, p2, 0x4f

    aget-byte v5, p1, v5

    int-to-long v14, v5

    const/16 v5, 0x38

    shl-long/2addr v14, v5

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 615
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    add-int/lit8 v4, p2, 0x50

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    const/16 v9, 0xa

    aput-wide v4, v3, v9

    .line 616
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    const/16 v4, 0xa

    aget-wide v9, v3, v4

    add-int/lit8 v5, p2, 0x51

    aget-byte v5, p1, v5

    int-to-long v14, v5

    and-long/2addr v14, v6

    shl-long/2addr v14, v11

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 617
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v9, v3, v4

    add-int/lit8 v5, p2, 0x52

    aget-byte v5, p1, v5

    int-to-long v14, v5

    and-long/2addr v14, v6

    shl-long/2addr v14, v12

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 618
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v9, v3, v4

    add-int/lit8 v5, p2, 0x53

    aget-byte v5, p1, v5

    int-to-long v14, v5

    and-long/2addr v14, v6

    const/16 v5, 0x18

    shl-long/2addr v14, v5

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 619
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v9, v3, v4

    add-int/lit8 v5, p2, 0x54

    aget-byte v5, p1, v5

    int-to-long v14, v5

    and-long/2addr v14, v6

    shl-long/2addr v14, v13

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 620
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v9, v3, v4

    add-int/lit8 v5, p2, 0x55

    aget-byte v5, p1, v5

    int-to-long v14, v5

    and-long/2addr v14, v6

    const/16 v5, 0x28

    shl-long/2addr v14, v5

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 621
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v9, v3, v4

    add-int/lit8 v5, p2, 0x56

    aget-byte v5, p1, v5

    int-to-long v14, v5

    and-long/2addr v14, v6

    const/16 v5, 0x30

    shl-long/2addr v14, v5

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 622
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v9, v3, v4

    add-int/lit8 v5, p2, 0x57

    aget-byte v5, p1, v5

    int-to-long v14, v5

    const/16 v5, 0x38

    shl-long/2addr v14, v5

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 624
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    add-int/lit8 v4, p2, 0x58

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    const/16 v9, 0xb

    aput-wide v4, v3, v9

    .line 625
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    const/16 v4, 0xb

    aget-wide v9, v3, v4

    add-int/lit8 v5, p2, 0x59

    aget-byte v5, p1, v5

    int-to-long v14, v5

    and-long/2addr v14, v6

    shl-long/2addr v14, v11

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 626
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v9, v3, v4

    add-int/lit8 v5, p2, 0x5a

    aget-byte v5, p1, v5

    int-to-long v14, v5

    and-long/2addr v14, v6

    shl-long/2addr v14, v12

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 627
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v9, v3, v4

    add-int/lit8 v5, p2, 0x5b

    aget-byte v5, p1, v5

    int-to-long v14, v5

    and-long/2addr v14, v6

    const/16 v5, 0x18

    shl-long/2addr v14, v5

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 628
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v9, v3, v4

    add-int/lit8 v5, p2, 0x5c

    aget-byte v5, p1, v5

    int-to-long v14, v5

    and-long/2addr v14, v6

    shl-long/2addr v14, v13

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 629
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v9, v3, v4

    add-int/lit8 v5, p2, 0x5d

    aget-byte v5, p1, v5

    int-to-long v14, v5

    and-long/2addr v14, v6

    const/16 v5, 0x28

    shl-long/2addr v14, v5

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 630
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v9, v3, v4

    add-int/lit8 v5, p2, 0x5e

    aget-byte v5, p1, v5

    int-to-long v14, v5

    and-long/2addr v14, v6

    const/16 v5, 0x30

    shl-long/2addr v14, v5

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 631
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v9, v3, v4

    add-int/lit8 v5, p2, 0x5f

    aget-byte v5, p1, v5

    int-to-long v14, v5

    const/16 v5, 0x38

    shl-long/2addr v14, v5

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    .line 633
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    add-int/lit8 v4, p2, 0x60

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    const/16 v9, 0xc

    aput-wide v4, v3, v9

    .line 634
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x61

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    shl-long/2addr v14, v11

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 635
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x62

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    shl-long/2addr v14, v12

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 636
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x63

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    const/16 v10, 0x18

    shl-long/2addr v14, v10

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 637
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x64

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    shl-long/2addr v14, v13

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 638
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x65

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    const/16 v10, 0x28

    shl-long/2addr v14, v10

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 639
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x66

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    const/16 v10, 0x30

    shl-long/2addr v14, v10

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 640
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x67

    aget-byte v10, p1, v10

    int-to-long v14, v10

    const/16 v10, 0x38

    shl-long/2addr v14, v10

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 642
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    add-int/lit8 v4, p2, 0x68

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    const/16 v10, 0xd

    aput-wide v4, v3, v10

    .line 643
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v10

    add-int/lit8 v14, p2, 0x69

    aget-byte v14, p1, v14

    int-to-long v14, v14

    and-long/2addr v14, v6

    shl-long/2addr v14, v11

    or-long/2addr v4, v14

    aput-wide v4, v3, v10

    .line 644
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v10

    add-int/lit8 v14, p2, 0x6a

    aget-byte v14, p1, v14

    int-to-long v14, v14

    and-long/2addr v14, v6

    shl-long/2addr v14, v12

    or-long/2addr v4, v14

    aput-wide v4, v3, v10

    .line 645
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v10

    add-int/lit8 v14, p2, 0x6b

    aget-byte v14, p1, v14

    int-to-long v14, v14

    and-long/2addr v14, v6

    const/16 v16, 0x18

    shl-long v14, v14, v16

    or-long/2addr v4, v14

    aput-wide v4, v3, v10

    .line 646
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v10

    add-int/lit8 v14, p2, 0x6c

    aget-byte v14, p1, v14

    int-to-long v14, v14

    and-long/2addr v14, v6

    shl-long/2addr v14, v13

    or-long/2addr v4, v14

    aput-wide v4, v3, v10

    .line 647
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v10

    add-int/lit8 v14, p2, 0x6d

    aget-byte v14, p1, v14

    int-to-long v14, v14

    and-long/2addr v14, v6

    const/16 v16, 0x28

    shl-long v14, v14, v16

    or-long/2addr v4, v14

    aput-wide v4, v3, v10

    .line 648
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v10

    add-int/lit8 v14, p2, 0x6e

    aget-byte v14, p1, v14

    int-to-long v14, v14

    and-long/2addr v14, v6

    const/16 v16, 0x30

    shl-long v14, v14, v16

    or-long/2addr v4, v14

    aput-wide v4, v3, v10

    .line 649
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v10

    add-int/lit8 v14, p2, 0x6f

    aget-byte v14, p1, v14

    int-to-long v14, v14

    const/16 v16, 0x38

    shl-long v14, v14, v16

    or-long/2addr v4, v14

    aput-wide v4, v3, v10

    .line 651
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    add-int/lit8 v4, p2, 0x70

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    const/16 v14, 0xe

    aput-wide v4, v3, v14

    .line 652
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v14

    add-int/lit8 v15, p2, 0x71

    aget-byte v15, p1, v15

    int-to-long v9, v15

    and-long/2addr v9, v6

    shl-long/2addr v9, v11

    or-long/2addr v4, v9

    aput-wide v4, v3, v14

    .line 653
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v14

    add-int/lit8 v9, p2, 0x72

    aget-byte v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v6

    shl-long/2addr v9, v12

    or-long/2addr v4, v9

    aput-wide v4, v3, v14

    .line 654
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v14

    add-int/lit8 v9, p2, 0x73

    aget-byte v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v6

    const/16 v15, 0x18

    shl-long/2addr v9, v15

    or-long/2addr v4, v9

    aput-wide v4, v3, v14

    .line 655
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v14

    add-int/lit8 v9, p2, 0x74

    aget-byte v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v6

    shl-long/2addr v9, v13

    or-long/2addr v4, v9

    aput-wide v4, v3, v14

    .line 656
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v14

    add-int/lit8 v9, p2, 0x75

    aget-byte v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v6

    const/16 v15, 0x28

    shl-long/2addr v9, v15

    or-long/2addr v4, v9

    aput-wide v4, v3, v14

    .line 657
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v14

    add-int/lit8 v9, p2, 0x76

    aget-byte v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v6

    const/16 v15, 0x30

    shl-long/2addr v9, v15

    or-long/2addr v4, v9

    aput-wide v4, v3, v14

    .line 658
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v14

    add-int/lit8 v9, p2, 0x77

    aget-byte v9, p1, v9

    int-to-long v9, v9

    const/16 v15, 0x38

    shl-long/2addr v9, v15

    or-long/2addr v4, v9

    aput-wide v4, v3, v14

    .line 660
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    add-int/lit8 v4, p2, 0x78

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    const/16 v9, 0xf

    aput-wide v4, v3, v9

    .line 661
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x79

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    shl-long/2addr v14, v11

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 662
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x7a

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    shl-long/2addr v14, v12

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 663
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x7b

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    const/16 v10, 0x18

    shl-long/2addr v14, v10

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 664
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x7c

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    shl-long/2addr v14, v13

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 665
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x7d

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v14, v6

    const/16 v10, 0x28

    shl-long/2addr v14, v10

    or-long/2addr v4, v14

    aput-wide v4, v3, v9

    .line 666
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v10, p2, 0x7e

    aget-byte v10, p1, v10

    int-to-long v14, v10

    and-long/2addr v6, v14

    const/16 v10, 0x30

    shl-long/2addr v6, v10

    or-long/2addr v4, v6

    aput-wide v4, v3, v9

    .line 667
    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    aget-wide v4, v3, v9

    add-int/lit8 v2, p2, 0x7f

    aget-byte v1, p1, v2

    int-to-long v1, v1

    const/16 v6, 0x38

    shl-long/2addr v1, v6

    or-long/2addr v1, v4

    aput-wide v1, v3, v9

    .line 675
    iget-object v1, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->h:[J

    aget-wide v3, v2, v8

    aput-wide v3, v1, v8

    .line 676
    iget-object v1, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->h:[J

    const/4 v3, 0x1

    aget-wide v4, v2, v3

    aput-wide v4, v1, v3

    .line 677
    iget-object v1, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->h:[J

    const/4 v3, 0x2

    aget-wide v4, v2, v3

    aput-wide v4, v1, v3

    .line 678
    iget-object v1, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->h:[J

    const/4 v3, 0x3

    aget-wide v3, v2, v3

    const/4 v2, 0x3

    aput-wide v3, v1, v2

    .line 679
    iget-object v1, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->h:[J

    const/4 v3, 0x4

    aget-wide v4, v2, v3

    aput-wide v4, v1, v3

    .line 680
    iget-object v1, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->h:[J

    const/4 v3, 0x5

    aget-wide v4, v2, v3

    aput-wide v4, v1, v3

    .line 681
    iget-object v1, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->h:[J

    const/4 v3, 0x6

    aget-wide v4, v2, v3

    aput-wide v4, v1, v3

    .line 682
    iget-object v1, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->h:[J

    const/4 v3, 0x7

    aget-wide v4, v2, v3

    aput-wide v4, v1, v3

    .line 683
    iget-object v1, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const-wide v2, 0x6a09e667f3bcc908L    # 6.344059688352415E202

    aput-wide v2, v1, v11

    .line 684
    iget-object v1, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v2, 0x9

    const-wide v3, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    aput-wide v3, v1, v2

    .line 685
    iget-object v1, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v2, 0xa

    const-wide v3, 0x3c6ef372fe94f82bL    # 1.342284505169847E-17

    aput-wide v3, v1, v2

    .line 686
    iget-object v1, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v2, 0xb

    const-wide v3, -0x5ab00ac5a0e2c90fL

    aput-wide v3, v1, v2

    .line 687
    iget-object v1, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->t:[J

    aget-wide v3, v2, v8

    const-wide v5, 0x510e527fade682d1L    # 2.876275032471325E82

    xor-long v2, v3, v5

    const/16 v4, 0xc

    aput-wide v2, v1, v4

    .line 688
    iget-object v1, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->t:[J

    const/4 v3, 0x1

    aget-wide v4, v2, v3

    const-wide v2, -0x64fa9773d4c193e1L

    xor-long/2addr v2, v4

    const/16 v4, 0xd

    aput-wide v2, v1, v4

    .line 689
    iget-object v1, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->f:[J

    aget-wide v3, v2, v8

    const-wide v5, 0x1f83d9abfb41bd6bL    # 7.229011495228878E-157

    xor-long v2, v3, v5

    const/16 v4, 0xe

    aput-wide v2, v1, v4

    .line 690
    iget-object v1, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->f:[J

    const/4 v3, 0x1

    aget-wide v4, v2, v3

    const-wide v2, 0x5be0cd19137e2179L    # 3.816167663240759E134

    xor-long/2addr v2, v4

    aput-wide v2, v1, v9

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    .line 699
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v4, v3, v8

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v6, 0x4

    aget-wide v14, v3, v6

    add-long/2addr v4, v14

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    sget-object v6, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g00:[I

    aget v6, v6, v1

    aget-wide v6, v3, v6

    add-long/2addr v4, v6

    aput-wide v4, v2, v8

    .line 700
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v3, 0xc

    aget-wide v4, v2, v3

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v6, v8

    xor-long/2addr v4, v14

    aput-wide v4, v2, v3

    .line 701
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    shl-long v4, v5, v13

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v6, v3

    ushr-long v6, v14, v13

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 702
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v11

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v4, v3

    add-long/2addr v5, v14

    aput-wide v5, v2, v11

    .line 703
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v3, 0x4

    aget-wide v4, v2, v3

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v6, v11

    xor-long/2addr v4, v14

    aput-wide v4, v2, v3

    .line 704
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    const/16 v4, 0x18

    ushr-long v4, v5, v4

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v6, v3

    const/16 v6, 0x28

    shl-long v6, v14, v6

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 705
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v8

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v4, v3

    add-long/2addr v5, v14

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    sget-object v4, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g01:[I

    aget v4, v4, v1

    aget-wide v14, v3, v4

    add-long/2addr v5, v14

    aput-wide v5, v2, v8

    .line 706
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v3, 0xc

    aget-wide v4, v2, v3

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v6, v8

    xor-long/2addr v4, v14

    aput-wide v4, v2, v3

    .line 707
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    ushr-long v4, v5, v12

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v6, v3

    const/16 v6, 0x30

    shl-long v6, v14, v6

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 708
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v11

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v4, v3

    add-long/2addr v5, v14

    aput-wide v5, v2, v11

    .line 709
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v3, 0x4

    aget-wide v4, v2, v3

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v6, v11

    xor-long/2addr v4, v14

    aput-wide v4, v2, v3

    .line 710
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    const/4 v4, 0x1

    shl-long/2addr v5, v4

    iget-object v7, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v7, v3

    const/16 v7, 0x3f

    ushr-long/2addr v14, v7

    or-long/2addr v5, v14

    aput-wide v5, v2, v3

    .line 714
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v3, v4

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v7, 0x5

    aget-wide v14, v3, v7

    add-long/2addr v5, v14

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    sget-object v7, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g10:[I

    aget v7, v7, v1

    aget-wide v14, v3, v7

    add-long/2addr v5, v14

    aput-wide v5, v2, v4

    .line 715
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v3, 0xd

    aget-wide v5, v2, v3

    iget-object v7, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v7, v4

    xor-long v4, v5, v14

    aput-wide v4, v2, v3

    .line 716
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    shl-long v4, v5, v13

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v6, v3

    ushr-long v6, v14, v13

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 717
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v4, 0x9

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v6, 0x9

    aget-wide v6, v5, v6

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v5, v3

    add-long/2addr v6, v14

    aput-wide v6, v2, v4

    .line 718
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v3, 0x5

    aget-wide v4, v2, v3

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v7, 0x9

    aget-wide v14, v6, v7

    xor-long/2addr v4, v14

    aput-wide v4, v2, v3

    .line 719
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    const/16 v4, 0x18

    ushr-long v4, v5, v4

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v6, v3

    const/16 v6, 0x28

    shl-long v6, v14, v6

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 720
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v5, 0x1

    aget-wide v6, v4, v5

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v4, v3

    add-long/2addr v6, v14

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    sget-object v4, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g11:[I

    aget v4, v4, v1

    aget-wide v14, v3, v4

    add-long/2addr v6, v14

    aput-wide v6, v2, v5

    .line 721
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v3, 0xd

    aget-wide v6, v2, v3

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v4, v5

    xor-long v4, v6, v14

    aput-wide v4, v2, v3

    .line 722
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    ushr-long v4, v5, v12

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v6, v3

    const/16 v6, 0x30

    shl-long v6, v14, v6

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 723
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v4, 0x9

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v6, 0x9

    aget-wide v6, v5, v6

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v5, v3

    add-long/2addr v6, v14

    aput-wide v6, v2, v4

    .line 724
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v3, 0x5

    aget-wide v4, v2, v3

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v7, 0x9

    aget-wide v14, v6, v7

    xor-long/2addr v4, v14

    aput-wide v4, v2, v3

    .line 725
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    const/4 v4, 0x1

    shl-long/2addr v5, v4

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v4, v3

    const/16 v4, 0x3f

    ushr-long/2addr v14, v4

    or-long v4, v5, v14

    aput-wide v4, v2, v3

    .line 729
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v4, 0x2

    aget-wide v5, v3, v4

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v7, 0x6

    aget-wide v14, v3, v7

    add-long/2addr v5, v14

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    sget-object v7, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g20:[I

    aget v7, v7, v1

    aget-wide v14, v3, v7

    add-long/2addr v5, v14

    aput-wide v5, v2, v4

    .line 730
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v3, 0xe

    aget-wide v5, v2, v3

    iget-object v7, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v7, v4

    xor-long v4, v5, v14

    aput-wide v4, v2, v3

    .line 731
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    shl-long v4, v5, v13

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v6, v3

    ushr-long v6, v14, v13

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 732
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v4, 0xa

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v6, 0xa

    aget-wide v6, v5, v6

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v5, v3

    add-long/2addr v6, v14

    aput-wide v6, v2, v4

    .line 733
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v3, 0x6

    aget-wide v4, v2, v3

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v7, 0xa

    aget-wide v14, v6, v7

    xor-long/2addr v4, v14

    aput-wide v4, v2, v3

    .line 734
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    const/16 v4, 0x18

    ushr-long v4, v5, v4

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v6, v3

    const/16 v6, 0x28

    shl-long v6, v14, v6

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 735
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v5, 0x2

    aget-wide v6, v4, v5

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v4, v3

    add-long/2addr v6, v14

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    sget-object v4, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g21:[I

    aget v4, v4, v1

    aget-wide v14, v3, v4

    add-long/2addr v6, v14

    aput-wide v6, v2, v5

    .line 736
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v3, 0xe

    aget-wide v6, v2, v3

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v4, v5

    xor-long v4, v6, v14

    aput-wide v4, v2, v3

    .line 737
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    ushr-long v4, v5, v12

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v6, v3

    const/16 v6, 0x30

    shl-long v6, v14, v6

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 738
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v4, 0xa

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v6, 0xa

    aget-wide v6, v5, v6

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v5, v3

    add-long/2addr v6, v14

    aput-wide v6, v2, v4

    .line 739
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v3, 0x6

    aget-wide v4, v2, v3

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v7, 0xa

    aget-wide v14, v6, v7

    xor-long/2addr v4, v14

    aput-wide v4, v2, v3

    .line 740
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    const/4 v4, 0x1

    shl-long/2addr v5, v4

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v4, v3

    const/16 v4, 0x3f

    ushr-long/2addr v14, v4

    or-long v4, v5, v14

    aput-wide v4, v2, v3

    .line 744
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v3, 0x3

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v5, 0x3

    aget-wide v5, v4, v5

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v7, 0x7

    aget-wide v14, v4, v7

    add-long/2addr v5, v14

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    sget-object v7, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g30:[I

    aget v7, v7, v1

    aget-wide v14, v4, v7

    add-long/2addr v5, v14

    aput-wide v5, v2, v3

    .line 745
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v3, v2, v9

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v6, 0x3

    aget-wide v6, v5, v6

    xor-long/2addr v3, v6

    aput-wide v3, v2, v9

    .line 746
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v4, v3, v9

    shl-long v3, v4, v13

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v6, v5, v9

    ushr-long v5, v6, v13

    or-long/2addr v3, v5

    aput-wide v3, v2, v9

    .line 747
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v3, 0xb

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v5, 0xb

    aget-wide v5, v4, v5

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v4, v9

    add-long/2addr v5, v14

    aput-wide v5, v2, v3

    .line 748
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v3, 0x7

    aget-wide v4, v2, v3

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v7, 0xb

    aget-wide v14, v6, v7

    xor-long/2addr v4, v14

    aput-wide v4, v2, v3

    .line 749
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    const/16 v4, 0x18

    ushr-long v4, v5, v4

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v6, v3

    const/16 v6, 0x28

    shl-long v6, v14, v6

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 750
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v4, 0x3

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v6, 0x3

    aget-wide v6, v5, v6

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v5, v3

    add-long/2addr v6, v14

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    sget-object v5, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g31:[I

    aget v5, v5, v1

    aget-wide v14, v3, v5

    add-long/2addr v6, v14

    aput-wide v6, v2, v4

    .line 751
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v3, v2, v9

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v6, 0x3

    aget-wide v6, v5, v6

    xor-long/2addr v3, v6

    aput-wide v3, v2, v9

    .line 752
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v4, v3, v9

    ushr-long v3, v4, v12

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v6, v5, v9

    const/16 v5, 0x30

    shl-long v5, v6, v5

    or-long/2addr v3, v5

    aput-wide v3, v2, v9

    .line 753
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v3, 0xb

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v5, 0xb

    aget-wide v5, v4, v5

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v4, v9

    add-long/2addr v5, v14

    aput-wide v5, v2, v3

    .line 754
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v3, 0x7

    aget-wide v4, v2, v3

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v7, 0xb

    aget-wide v14, v6, v7

    xor-long/2addr v4, v14

    aput-wide v4, v2, v3

    .line 755
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    const/4 v4, 0x1

    shl-long/2addr v5, v4

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v4, v3

    const/16 v4, 0x3f

    ushr-long/2addr v14, v4

    or-long v4, v5, v14

    aput-wide v4, v2, v3

    .line 759
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v4, v3, v8

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v6, 0x5

    aget-wide v14, v3, v6

    add-long/2addr v4, v14

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    sget-object v6, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g40:[I

    aget v6, v6, v1

    aget-wide v6, v3, v6

    add-long/2addr v4, v6

    aput-wide v4, v2, v8

    .line 760
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v3, v2, v9

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v6, v5, v8

    xor-long/2addr v3, v6

    aput-wide v3, v2, v9

    .line 761
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v4, v3, v9

    shl-long v3, v4, v13

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v6, v5, v9

    ushr-long v5, v6, v13

    or-long/2addr v3, v5

    aput-wide v3, v2, v9

    .line 762
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v3, 0xa

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v5, 0xa

    aget-wide v5, v4, v5

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v4, v9

    add-long/2addr v5, v14

    aput-wide v5, v2, v3

    .line 763
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v3, 0x5

    aget-wide v4, v2, v3

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v7, 0xa

    aget-wide v14, v6, v7

    xor-long/2addr v4, v14

    aput-wide v4, v2, v3

    .line 764
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    const/16 v4, 0x18

    ushr-long v4, v5, v4

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v6, v3

    const/16 v6, 0x28

    shl-long v6, v14, v6

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 765
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v8

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v4, v3

    add-long/2addr v5, v14

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    sget-object v4, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g41:[I

    aget v4, v4, v1

    aget-wide v14, v3, v4

    add-long/2addr v5, v14

    aput-wide v5, v2, v8

    .line 766
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v3, v2, v9

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v6, v5, v8

    xor-long/2addr v3, v6

    aput-wide v3, v2, v9

    .line 767
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v4, v3, v9

    ushr-long v3, v4, v12

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v6, v5, v9

    const/16 v5, 0x30

    shl-long v5, v6, v5

    or-long/2addr v3, v5

    aput-wide v3, v2, v9

    .line 768
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v3, 0xa

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v5, 0xa

    aget-wide v5, v4, v5

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v4, v9

    add-long/2addr v5, v14

    aput-wide v5, v2, v3

    .line 769
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v3, 0x5

    aget-wide v4, v2, v3

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v7, 0xa

    aget-wide v14, v6, v7

    xor-long/2addr v4, v14

    aput-wide v4, v2, v3

    .line 770
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    const/4 v4, 0x1

    shl-long/2addr v5, v4

    iget-object v7, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v7, v3

    const/16 v7, 0x3f

    ushr-long/2addr v14, v7

    or-long/2addr v5, v14

    aput-wide v5, v2, v3

    .line 774
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v3, v4

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v7, 0x6

    aget-wide v14, v3, v7

    add-long/2addr v5, v14

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    sget-object v7, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g50:[I

    aget v7, v7, v1

    aget-wide v14, v3, v7

    add-long/2addr v5, v14

    aput-wide v5, v2, v4

    .line 775
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v3, 0xc

    aget-wide v5, v2, v3

    iget-object v7, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v7, v4

    xor-long v4, v5, v14

    aput-wide v4, v2, v3

    .line 776
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    shl-long v4, v5, v13

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v6, v3

    ushr-long v6, v14, v13

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 777
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v4, 0xb

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v6, 0xb

    aget-wide v6, v5, v6

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v5, v3

    add-long/2addr v6, v14

    aput-wide v6, v2, v4

    .line 778
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v3, 0x6

    aget-wide v4, v2, v3

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v7, 0xb

    aget-wide v14, v6, v7

    xor-long/2addr v4, v14

    aput-wide v4, v2, v3

    .line 779
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    const/16 v4, 0x18

    ushr-long v4, v5, v4

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v6, v3

    const/16 v6, 0x28

    shl-long v6, v14, v6

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 780
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v5, 0x1

    aget-wide v6, v4, v5

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v4, v3

    add-long/2addr v6, v14

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    sget-object v4, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g51:[I

    aget v4, v4, v1

    aget-wide v14, v3, v4

    add-long/2addr v6, v14

    aput-wide v6, v2, v5

    .line 781
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v3, 0xc

    aget-wide v6, v2, v3

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v4, v5

    xor-long v4, v6, v14

    aput-wide v4, v2, v3

    .line 782
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    ushr-long v4, v5, v12

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v6, v3

    const/16 v6, 0x30

    shl-long v6, v14, v6

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 783
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v4, 0xb

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v6, 0xb

    aget-wide v6, v5, v6

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v5, v3

    add-long/2addr v6, v14

    aput-wide v6, v2, v4

    .line 784
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v3, 0x6

    aget-wide v4, v2, v3

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v7, 0xb

    aget-wide v14, v6, v7

    xor-long/2addr v4, v14

    aput-wide v4, v2, v3

    .line 785
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    const/4 v4, 0x1

    shl-long/2addr v5, v4

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v4, v3

    const/16 v4, 0x3f

    ushr-long/2addr v14, v4

    or-long v4, v5, v14

    aput-wide v4, v2, v3

    .line 789
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v4, 0x2

    aget-wide v5, v3, v4

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v7, 0x7

    aget-wide v14, v3, v7

    add-long/2addr v5, v14

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    sget-object v7, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g60:[I

    aget v7, v7, v1

    aget-wide v14, v3, v7

    add-long/2addr v5, v14

    aput-wide v5, v2, v4

    .line 790
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v3, 0xd

    aget-wide v5, v2, v3

    iget-object v7, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v7, v4

    xor-long v4, v5, v14

    aput-wide v4, v2, v3

    .line 791
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    shl-long v4, v5, v13

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v6, v3

    ushr-long v6, v14, v13

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 792
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v11

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v4, v3

    add-long/2addr v5, v14

    aput-wide v5, v2, v11

    .line 793
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v3, 0x7

    aget-wide v4, v2, v3

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v6, v11

    xor-long/2addr v4, v14

    aput-wide v4, v2, v3

    .line 794
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    const/16 v4, 0x18

    ushr-long v4, v5, v4

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v6, v3

    const/16 v6, 0x28

    shl-long v6, v14, v6

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 795
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v5, 0x2

    aget-wide v6, v4, v5

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v4, v3

    add-long/2addr v6, v14

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    sget-object v4, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g61:[I

    aget v4, v4, v1

    aget-wide v14, v3, v4

    add-long/2addr v6, v14

    aput-wide v6, v2, v5

    .line 796
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v3, 0xd

    aget-wide v6, v2, v3

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v4, v5

    xor-long v4, v6, v14

    aput-wide v4, v2, v3

    .line 797
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    ushr-long v4, v5, v12

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v6, v3

    const/16 v6, 0x30

    shl-long v6, v14, v6

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 798
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v11

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v4, v3

    add-long/2addr v5, v14

    aput-wide v5, v2, v11

    .line 799
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v3, 0x7

    aget-wide v4, v2, v3

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v6, v11

    xor-long/2addr v4, v14

    aput-wide v4, v2, v3

    .line 800
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    const/4 v4, 0x1

    shl-long/2addr v5, v4

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v4, v3

    const/16 v4, 0x3f

    ushr-long/2addr v14, v4

    or-long v4, v5, v14

    aput-wide v4, v2, v3

    .line 804
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v3, 0x3

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v5, 0x3

    aget-wide v5, v4, v5

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v7, 0x4

    aget-wide v14, v4, v7

    add-long/2addr v5, v14

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    sget-object v7, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g70:[I

    aget v7, v7, v1

    aget-wide v14, v4, v7

    add-long/2addr v5, v14

    aput-wide v5, v2, v3

    .line 805
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v3, 0xe

    aget-wide v4, v2, v3

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v7, 0x3

    aget-wide v14, v6, v7

    xor-long/2addr v4, v14

    aput-wide v4, v2, v3

    .line 806
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    shl-long v4, v5, v13

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v6, v3

    ushr-long v6, v14, v13

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 807
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v4, 0x9

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v6, 0x9

    aget-wide v6, v5, v6

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v5, v3

    add-long/2addr v6, v14

    aput-wide v6, v2, v4

    .line 808
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v3, 0x4

    aget-wide v4, v2, v3

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v7, 0x9

    aget-wide v14, v6, v7

    xor-long/2addr v4, v14

    aput-wide v4, v2, v3

    .line 809
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    const/16 v4, 0x18

    ushr-long v4, v5, v4

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v6, v3

    const/16 v6, 0x28

    shl-long v6, v14, v6

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 810
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v4, 0x3

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v6, 0x3

    aget-wide v6, v5, v6

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v5, v3

    add-long/2addr v6, v14

    iget-object v3, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->m:[J

    sget-object v5, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->sig_g71:[I

    aget v5, v5, v1

    aget-wide v14, v3, v5

    add-long/2addr v6, v14

    aput-wide v6, v2, v4

    .line 811
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v3, 0xe

    aget-wide v4, v2, v3

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v7, 0x3

    aget-wide v14, v6, v7

    xor-long/2addr v4, v14

    aput-wide v4, v2, v3

    .line 812
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    ushr-long v4, v5, v12

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v6, v3

    const/16 v6, 0x30

    shl-long v6, v14, v6

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 813
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v4, 0x9

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v6, 0x9

    aget-wide v6, v5, v6

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v5, v3

    add-long/2addr v6, v14

    aput-wide v6, v2, v4

    .line 814
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v3, 0x4

    aget-wide v4, v2, v3

    iget-object v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v7, 0x9

    aget-wide v14, v6, v7

    xor-long/2addr v4, v14

    aput-wide v4, v2, v3

    .line 815
    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v3

    const/4 v4, 0x1

    shl-long/2addr v5, v4

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v14, v4, v3

    const/16 v4, 0x3f

    ushr-long/2addr v14, v4

    or-long v4, v5, v14

    aput-wide v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 819
    :cond_0
    iget-object v1, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->h:[J

    aget-wide v2, v1, v8

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v5, v4, v8

    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v10, v4, v11

    xor-long v4, v5, v10

    xor-long/2addr v2, v4

    aput-wide v2, v1, v8

    .line 820
    iget-object v1, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->h:[J

    const/4 v2, 0x1

    aget-wide v3, v1, v2

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v6, v5, v2

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v8, 0x9

    aget-wide v10, v5, v8

    xor-long v5, v6, v10

    xor-long/2addr v3, v5

    aput-wide v3, v1, v2

    .line 821
    iget-object v1, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->h:[J

    const/4 v2, 0x2

    aget-wide v3, v1, v2

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v6, v5, v2

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v8, 0xa

    aget-wide v10, v5, v8

    xor-long v5, v6, v10

    xor-long/2addr v3, v5

    aput-wide v3, v1, v2

    .line 822
    iget-object v1, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->h:[J

    const/4 v2, 0x3

    aget-wide v3, v1, v2

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/4 v6, 0x3

    aget-wide v6, v5, v6

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v8, 0xb

    aget-wide v10, v5, v8

    xor-long v5, v6, v10

    xor-long/2addr v3, v5

    aput-wide v3, v1, v2

    .line 823
    iget-object v1, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->h:[J

    const/4 v2, 0x4

    aget-wide v3, v1, v2

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v6, v5, v2

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v8, 0xc

    aget-wide v10, v5, v8

    xor-long v5, v6, v10

    xor-long/2addr v3, v5

    aput-wide v3, v1, v2

    .line 824
    iget-object v1, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->h:[J

    const/4 v2, 0x5

    aget-wide v3, v1, v2

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v6, v5, v2

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v8, 0xd

    aget-wide v10, v5, v8

    xor-long v5, v6, v10

    xor-long/2addr v3, v5

    aput-wide v3, v1, v2

    .line 825
    iget-object v1, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->h:[J

    const/4 v2, 0x6

    aget-wide v3, v1, v2

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v6, v5, v2

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    const/16 v8, 0xe

    aget-wide v10, v5, v8

    xor-long v5, v6, v10

    xor-long/2addr v3, v5

    aput-wide v3, v1, v2

    .line 826
    iget-object v1, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->h:[J

    const/4 v2, 0x7

    aget-wide v3, v1, v2

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v6, v5, v2

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->v:[J

    aget-wide v8, v5, v9

    xor-long v5, v6, v8

    xor-long/2addr v3, v5

    aput-wide v3, v1, v2

    return-void
.end method

.method private hashout([BII)V
    .locals 8

    ushr-int/lit8 v0, p3, 0x3

    const/4 v1, 0x0

    move v2, p2

    :goto_0
    const/16 v3, 0x8

    if-ge v1, v0, :cond_0

    .line 492
    iget-object v4, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->h:[J

    aget-wide v5, v4, v1

    add-int/lit8 v4, v2, 0x1

    long-to-int v7, v5

    int-to-byte v7, v7

    .line 493
    aput-byte v7, p1, v2

    ushr-long/2addr v5, v3

    add-int/lit8 v2, v4, 0x1

    long-to-int v7, v5

    int-to-byte v7, v7

    .line 494
    aput-byte v7, p1, v4

    ushr-long v4, v5, v3

    add-int/lit8 v6, v2, 0x1

    long-to-int v7, v4

    int-to-byte v7, v7

    .line 495
    aput-byte v7, p1, v2

    ushr-long/2addr v4, v3

    add-int/lit8 v2, v6, 0x1

    long-to-int v7, v4

    int-to-byte v7, v7

    .line 496
    aput-byte v7, p1, v6

    ushr-long/2addr v4, v3

    add-int/lit8 v6, v2, 0x1

    long-to-int v7, v4

    int-to-byte v7, v7

    .line 497
    aput-byte v7, p1, v2

    ushr-long/2addr v4, v3

    add-int/lit8 v2, v6, 0x1

    long-to-int v7, v4

    int-to-byte v7, v7

    .line 498
    aput-byte v7, p1, v6

    ushr-long/2addr v4, v3

    add-int/lit8 v6, v2, 0x1

    long-to-int v7, v4

    int-to-byte v7, v7

    .line 499
    aput-byte v7, p1, v2

    ushr-long v2, v4, v3

    add-int/lit8 v4, v6, 0x1

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 500
    aput-byte v2, p1, v6

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    if-ne p3, v1, :cond_1

    return-void

    .line 507
    :cond_1
    iget-object v1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->h:[J

    aget-wide v4, v1, v0

    shl-int/lit8 v0, v0, 0x3

    :goto_1
    if-ge v0, p3, :cond_2

    add-int v1, p2, v0

    long-to-int v2, v4

    int-to-byte v2, v2

    .line 510
    aput-byte v2, p1, v1

    ushr-long/2addr v4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private initialize()V
    .locals 4

    .line 362
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->param:Lat/gadermaier/argon2/blake2/Blake2b$Param;

    invoke-virtual {v0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->initialized_H()[J

    move-result-object v0

    iget-object v1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->h:[J

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->param:Lat/gadermaier/argon2/blake2/Blake2b$Param;

    invoke-static {v0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->access$000(Lat/gadermaier/argon2/blake2/Blake2b$Param;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->param:Lat/gadermaier/argon2/blake2/Blake2b$Param;

    invoke-static {v0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->access$100(Lat/gadermaier/argon2/blake2/Blake2b$Param;)[B

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v2, v1}, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->update([BII)V

    :cond_0
    return-void
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 1

    const-string p0, "LOVE"

    .line 355
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lat/gadermaier/argon2/blake2/Blake2b$Mac;->newInstance([B)Lat/gadermaier/argon2/blake2/Blake2b$Mac;

    move-result-object p0

    const-string v0, "Salaam!"

    .line 356
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-interface {p0, v0}, Lat/gadermaier/argon2/blake2/Blake2b;->digest([B)[B

    return-void
.end method


# virtual methods
.method public final digest([BII)V
    .locals 10

    .line 453
    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->zeropad:[B

    iget-object v1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->buffer:[B

    iget v2, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->buflen:I

    iget v3, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->buflen:I

    rsub-int v3, v3, 0x80

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    iget v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->buflen:I

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-lez v0, :cond_1

    .line 455
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->t:[J

    aget-wide v5, v0, v4

    iget v7, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->buflen:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    aput-wide v5, v0, v4

    .line 456
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->t:[J

    aget-wide v5, v0, v1

    iget-object v7, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->t:[J

    aget-wide v8, v7, v4

    cmp-long v7, v8, v2

    if-nez v7, :cond_0

    const-wide/16 v7, 0x1

    goto :goto_0

    :cond_0
    move-wide v7, v2

    :goto_0
    const/4 v9, 0x0

    add-long/2addr v5, v7

    aput-wide v5, v0, v1

    .line 459
    :cond_1
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->f:[J

    const-wide/16 v5, -0x1

    aput-wide v5, v0, v4

    .line 460
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->f:[J

    iget-boolean v7, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->last_node:Z

    if-eqz v7, :cond_2

    move-wide v2, v5

    :cond_2
    aput-wide v2, v0, v1

    .line 463
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->buffer:[B

    invoke-direct {p0, v0, v4}, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->compress([BI)V

    .line 464
    invoke-direct {p0, p1, p2, p3}, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->hashout([BII)V

    .line 466
    invoke-virtual {p0}, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->reset()V

    return-void
.end method

.method public final digest()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 471
    iget v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->outlen:I

    new-array v0, v0, [B

    .line 472
    iget v1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->outlen:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->digest([BII)V

    return-object v0
.end method

.method public final digest([B)[B
    .locals 2

    .line 478
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->update([BII)V

    .line 479
    invoke-virtual {p0}, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->digest()[B

    move-result-object p1

    return-object p1
.end method

.method public final reset()V
    .locals 5

    const/4 v0, 0x0

    .line 378
    iput v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->buflen:I

    const/4 v1, 0x0

    .line 379
    :goto_0
    iget-object v2, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->buffer:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 380
    iget-object v2, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->buffer:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    :cond_0
    iget-object v1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->f:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 385
    iget-object v1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->f:[J

    const/4 v4, 0x1

    aput-wide v2, v1, v4

    .line 388
    iget-object v1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->t:[J

    aput-wide v2, v1, v0

    .line 389
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->t:[J

    aput-wide v2, v0, v4

    .line 393
    invoke-direct {p0}, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->initialize()V

    return-void
.end method

.method public final update(B)V
    .locals 2

    .line 441
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->oneByte:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 442
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->oneByte:[B

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->update([BII)V

    return-void
.end method

.method public final update([B)V
    .locals 2

    .line 447
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->update([BII)V

    return-void
.end method

.method public final update([BII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_7

    move/from16 v3, p2

    move/from16 v2, p3

    :goto_0
    if-lez v2, :cond_6

    .line 409
    iget v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->buflen:I

    const/4 v7, 0x1

    const-wide/16 v8, 0x80

    const-wide/16 v10, 0x0

    const/16 v12, 0x80

    const/4 v13, 0x0

    if-nez v4, :cond_1

    :goto_1
    if-le v2, v12, :cond_3

    .line 412
    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->t:[J

    aget-wide v14, v4, v13

    add-long/2addr v14, v8

    aput-wide v14, v4, v13

    .line 413
    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->t:[J

    aget-wide v14, v4, v7

    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->t:[J

    aget-wide v18, v5, v13

    cmp-long v5, v18, v10

    if-nez v5, :cond_0

    const-wide/16 v5, 0x1

    goto :goto_2

    :cond_0
    move-wide v5, v10

    :goto_2
    const/16 v18, 0x0

    add-long/2addr v14, v5

    aput-wide v14, v4, v7

    .line 414
    invoke-direct {v0, v1, v3}, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->compress([BI)V

    add-int/lit8 v2, v2, -0x80

    add-int/lit16 v3, v3, 0x80

    goto :goto_1

    .line 418
    :cond_1
    iget v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->buflen:I

    if-ne v4, v12, :cond_3

    .line 420
    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->t:[J

    aget-wide v5, v4, v13

    add-long/2addr v5, v8

    aput-wide v5, v4, v13

    .line 421
    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->t:[J

    aget-wide v5, v4, v7

    iget-object v8, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->t:[J

    aget-wide v14, v8, v13

    cmp-long v8, v14, v10

    if-nez v8, :cond_2

    const-wide/16 v16, 0x1

    goto :goto_3

    :cond_2
    move-wide/from16 v16, v10

    :goto_3
    const/4 v8, 0x0

    add-long v5, v5, v16

    aput-wide v5, v4, v7

    .line 422
    iget-object v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->buffer:[B

    invoke-direct {v0, v4, v13}, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->compress([BI)V

    .line 423
    iput v13, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->buflen:I

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    return-void

    .line 430
    :cond_4
    iget v4, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->buflen:I

    rsub-int v4, v4, 0x80

    if-le v2, v4, :cond_5

    goto :goto_4

    :cond_5
    move v4, v2

    .line 432
    :goto_4
    iget-object v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->buffer:[B

    iget v6, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->buflen:I

    invoke-static {v1, v3, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    iget v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->buflen:I

    add-int/2addr v5, v4

    iput v5, v0, Lat/gadermaier/argon2/blake2/Blake2b$Engine;->buflen:I

    sub-int/2addr v2, v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_6
    return-void

    .line 403
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "input buffer (b) is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
