.class public final Lc/e/a/a/e/m;
.super Ljava/lang/Object;
.source "MpegAudioHeader.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[I

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static final f:[I

.field public static final g:[I


# instance fields
.field public h:I

.field public i:Ljava/lang/String;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    .line 1
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "audio/mpeg-L1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "audio/mpeg-L2"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "audio/mpeg"

    aput-object v3, v1, v2

    sput-object v1, Lc/e/a/a/e/m;->a:[Ljava/lang/String;

    .line 2
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lc/e/a/a/e/m;->b:[I

    const/16 v0, 0xe

    .line 3
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lc/e/a/a/e/m;->c:[I

    .line 4
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lc/e/a/a/e/m;->d:[I

    .line 5
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lc/e/a/a/e/m;->e:[I

    .line 6
    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lc/e/a/a/e/m;->f:[I

    .line 7
    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lc/e/a/a/e/m;->g:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xac44
        0xbb80
        0x7d00
    .end array-data

    :array_1
    .array-data 4
        0x7d00
        0xfa00
        0x17700
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x46500
        0x4e200
        0x55f00
        0x5dc00
        0x65900
        0x6d600
    .end array-data

    :array_2
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
        0x2af80
        0x2ee00
        0x36b00
        0x3e800
    .end array-data

    :array_3
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
        0x5dc00
    .end array-data

    :array_4
    .array-data 4
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
    .end array-data

    :array_5
    .array-data 4
        0x1f40
        0x3e80
        0x5dc0
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 7

    const/high16 v0, -0x200000

    and-int v1, p0, v0

    const/4 v2, -0x1

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    ushr-int/lit8 v0, p0, 0x13

    const/4 v1, 0x3

    and-int/2addr v0, v1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    return v2

    :cond_1
    ushr-int/lit8 v4, p0, 0x11

    and-int/2addr v4, v1

    if-nez v4, :cond_2

    return v2

    :cond_2
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_d

    if-ne v5, v6, :cond_3

    goto :goto_3

    :cond_3
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v1

    if-ne v6, v1, :cond_4

    return v2

    .line 1
    :cond_4
    sget-object v2, Lc/e/a/a/e/m;->b:[I

    aget v2, v2, v6

    const/4 v6, 0x2

    if-ne v0, v6, :cond_5

    .line 2
    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    .line 3
    div-int/lit8 v2, v2, 0x4

    :cond_6
    :goto_0
    ushr-int/lit8 p0, p0, 0x9

    and-int/2addr p0, v3

    if-ne v4, v1, :cond_8

    if-ne v0, v1, :cond_7

    .line 4
    sget-object v0, Lc/e/a/a/e/m;->c:[I

    sub-int/2addr v5, v3

    aget v0, v0, v5

    goto :goto_1

    :cond_7
    sget-object v0, Lc/e/a/a/e/m;->d:[I

    sub-int/2addr v5, v3

    aget v0, v0, v5

    :goto_1
    mul-int/lit8 v0, v0, 0xc

    .line 5
    div-int/2addr v0, v2

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x4

    return v0

    :cond_8
    if-ne v0, v1, :cond_a

    if-ne v4, v6, :cond_9

    .line 6
    sget-object v6, Lc/e/a/a/e/m;->e:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    goto :goto_2

    :cond_9
    sget-object v6, Lc/e/a/a/e/m;->f:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    goto :goto_2

    .line 7
    :cond_a
    sget-object v6, Lc/e/a/a/e/m;->g:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    :goto_2
    const/16 v6, 0x90

    if-ne v0, v1, :cond_b

    mul-int/lit16 v5, v5, 0x90

    .line 8
    div-int/2addr v5, v2

    add-int/2addr v5, p0

    return v5

    :cond_b
    if-ne v4, v3, :cond_c

    const/16 v6, 0x48

    :cond_c
    mul-int v6, v6, v5

    .line 9
    div-int/2addr v6, v2

    add-int/2addr v6, p0

    return v6

    :cond_d
    :goto_3
    return v2
.end method

.method public static a(ILc/e/a/a/e/m;)Z
    .locals 11

    const/high16 v0, -0x200000

    and-int v1, p0, v0

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    ushr-int/lit8 v0, p0, 0x13

    const/4 v1, 0x3

    and-int/lit8 v4, v0, 0x3

    const/4 v0, 0x1

    if-ne v4, v0, :cond_1

    return v2

    :cond_1
    ushr-int/lit8 v3, p0, 0x11

    and-int/2addr v3, v1

    if-nez v3, :cond_2

    return v2

    :cond_2
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_e

    if-ne v5, v6, :cond_3

    goto/16 :goto_5

    :cond_3
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v1

    if-ne v6, v1, :cond_4

    return v2

    .line 10
    :cond_4
    sget-object v2, Lc/e/a/a/e/m;->b:[I

    aget v2, v2, v6

    const/4 v6, 0x2

    if-ne v4, v6, :cond_5

    .line 11
    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_5
    if-nez v4, :cond_6

    .line 12
    div-int/lit8 v2, v2, 0x4

    :cond_6
    :goto_0
    move v7, v2

    ushr-int/lit8 v2, p0, 0x9

    and-int/2addr v2, v0

    const/16 v8, 0x480

    if-ne v3, v1, :cond_8

    if-ne v4, v1, :cond_7

    .line 13
    sget-object v8, Lc/e/a/a/e/m;->c:[I

    sub-int/2addr v5, v0

    aget v5, v8, v5

    goto :goto_1

    :cond_7
    sget-object v8, Lc/e/a/a/e/m;->d:[I

    sub-int/2addr v5, v0

    aget v5, v8, v5

    :goto_1
    mul-int/lit8 v5, v5, 0xc

    .line 14
    div-int/2addr v5, v7

    add-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0x4

    const/16 v2, 0x180

    move v9, v5

    const/16 v10, 0x180

    goto :goto_3

    :cond_8
    const/16 v9, 0x90

    if-ne v4, v1, :cond_a

    if-ne v3, v6, :cond_9

    .line 15
    sget-object v10, Lc/e/a/a/e/m;->e:[I

    sub-int/2addr v5, v0

    aget v5, v10, v5

    goto :goto_2

    :cond_9
    sget-object v10, Lc/e/a/a/e/m;->f:[I

    sub-int/2addr v5, v0

    aget v5, v10, v5

    :goto_2
    mul-int/lit16 v5, v5, 0x90

    .line 16
    div-int/2addr v5, v7

    add-int/2addr v5, v2

    move v9, v5

    const/16 v10, 0x480

    goto :goto_3

    .line 17
    :cond_a
    sget-object v10, Lc/e/a/a/e/m;->g:[I

    sub-int/2addr v5, v0

    aget v5, v10, v5

    if-ne v3, v0, :cond_b

    const/16 v8, 0x240

    :cond_b
    if-ne v3, v0, :cond_c

    const/16 v9, 0x48

    :cond_c
    mul-int v9, v9, v5

    .line 18
    div-int/2addr v9, v7

    add-int/2addr v9, v2

    move v10, v8

    :goto_3
    mul-int/lit8 v2, v9, 0x8

    mul-int v2, v2, v7

    .line 19
    div-int/2addr v2, v10

    .line 20
    sget-object v5, Lc/e/a/a/e/m;->a:[Ljava/lang/String;

    rsub-int/lit8 v3, v3, 0x3

    aget-object v5, v5, v3

    shr-int/lit8 p0, p0, 0x6

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_d

    const/4 v8, 0x1

    goto :goto_4

    :cond_d
    const/4 v8, 0x2

    :goto_4
    move-object v3, p1

    move v6, v9

    move v9, v2

    .line 21
    invoke-virtual/range {v3 .. v10}, Lc/e/a/a/e/m;->a(ILjava/lang/String;IIIII)V

    return v0

    :cond_e
    :goto_5
    return v2
.end method


# virtual methods
.method public final a(ILjava/lang/String;IIIII)V
    .locals 0

    .line 22
    iput p1, p0, Lc/e/a/a/e/m;->h:I

    .line 23
    iput-object p2, p0, Lc/e/a/a/e/m;->i:Ljava/lang/String;

    .line 24
    iput p3, p0, Lc/e/a/a/e/m;->j:I

    .line 25
    iput p4, p0, Lc/e/a/a/e/m;->k:I

    .line 26
    iput p5, p0, Lc/e/a/a/e/m;->l:I

    .line 27
    iput p6, p0, Lc/e/a/a/e/m;->m:I

    .line 28
    iput p7, p0, Lc/e/a/a/e/m;->n:I

    return-void
.end method
