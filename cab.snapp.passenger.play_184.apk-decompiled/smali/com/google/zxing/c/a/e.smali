.class public final Lcom/google/zxing/c/a/e;
.super Lcom/google/zxing/c/a/a;
.source "SourceFile"


# static fields
.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field private static final j:[I

.field private static final k:[I

.field private static final l:[I

.field private static final m:[[I


# instance fields
.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/c/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/c/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 38
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/c/a/e;->g:[I

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 39
    fill-array-data v2, :array_1

    sput-object v2, Lcom/google/zxing/c/a/e;->h:[I

    new-array v2, v0, [I

    .line 40
    fill-array-data v2, :array_2

    sput-object v2, Lcom/google/zxing/c/a/e;->i:[I

    new-array v2, v1, [I

    .line 41
    fill-array-data v2, :array_3

    sput-object v2, Lcom/google/zxing/c/a/e;->j:[I

    new-array v2, v0, [I

    .line 42
    fill-array-data v2, :array_4

    sput-object v2, Lcom/google/zxing/c/a/e;->k:[I

    new-array v2, v1, [I

    .line 43
    fill-array-data v2, :array_5

    sput-object v2, Lcom/google/zxing/c/a/e;->l:[I

    const/16 v2, 0x9

    new-array v2, v2, [[I

    new-array v3, v1, [I

    .line 45
    fill-array-data v3, :array_6

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_7

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_8

    const/4 v4, 0x2

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_9

    const/4 v4, 0x3

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_a

    aput-object v3, v2, v1

    new-array v3, v1, [I

    fill-array-data v3, :array_b

    aput-object v3, v2, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_c

    const/4 v3, 0x6

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_d

    const/4 v3, 0x7

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_e

    const/16 v1, 0x8

    aput-object v0, v2, v1

    sput-object v2, Lcom/google/zxing/c/a/e;->m:[[I

    return-void

    :array_0
    .array-data 4
        0x1
        0xa
        0x22
        0x46
        0x7e
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x14
        0x30
        0x51
    .end array-data

    :array_2
    .array-data 4
        0x0
        0xa1
        0x3c1
        0x7df
        0xa9b
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x150
        0x40c
        0x5ec
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x6
        0x4
        0x3
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x8
        0x2
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x5
        0x5
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x3
        0x7
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x1
        0x9
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x7
        0x4
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x5
        0x6
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x3
        0x8
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x5
        0x7
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x3
        0x9
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/google/zxing/c/a/a;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/c/a/e;->n:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/c/a/e;->o:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/google/zxing/common/a;Lcom/google/zxing/c/a/c;Z)Lcom/google/zxing/c/a/b;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 8056
    iget-object v0, p0, Lcom/google/zxing/c/a/a;->b:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 189
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 190
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-eqz p3, :cond_1

    .line 194
    invoke-virtual {p2}, Lcom/google/zxing/c/a/c;->getStartEnd()[I

    move-result-object p2

    aget p2, p2, v1

    invoke-static {p1, p2, v0}, Lcom/google/zxing/c/a/e;->b(Lcom/google/zxing/common/a;I[I)V

    goto :goto_2

    .line 196
    :cond_1
    invoke-virtual {p2}, Lcom/google/zxing/c/a/c;->getStartEnd()[I

    move-result-object p2

    aget p2, p2, v2

    add-int/2addr p2, v2

    invoke-static {p1, p2, v0}, Lcom/google/zxing/c/a/e;->a(Lcom/google/zxing/common/a;I[I)V

    .line 198
    array-length p1, v0

    sub-int/2addr p1, v2

    move p2, p1

    const/4 p1, 0x0

    :goto_1
    if-ge p1, p2, :cond_2

    .line 199
    aget v3, v0, p1

    .line 200
    aget v4, v0, p2

    aput v4, v0, p1

    .line 201
    aput v3, v0, p2

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz p3, :cond_3

    const/16 p1, 0x10

    goto :goto_3

    :cond_3
    const/16 p1, 0xf

    .line 206
    :goto_3
    invoke-static {v0}, Lcom/google/zxing/common/a/a;->sum([I)I

    move-result p2

    int-to-float p2, p2

    int-to-float v3, p1

    div-float/2addr p2, v3

    .line 8068
    iget-object v3, p0, Lcom/google/zxing/c/a/a;->e:[I

    .line 8072
    iget-object v4, p0, Lcom/google/zxing/c/a/a;->f:[I

    .line 9060
    iget-object v5, p0, Lcom/google/zxing/c/a/a;->c:[F

    .line 9064
    iget-object v6, p0, Lcom/google/zxing/c/a/a;->d:[F

    const/4 v7, 0x0

    .line 213
    :goto_4
    array-length v8, v0

    if-ge v7, v8, :cond_7

    .line 214
    aget v8, v0, v7

    int-to-float v8, v8

    div-float/2addr v8, p2

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v9, v8

    float-to-int v9, v9

    const/16 v10, 0x8

    if-gtz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_5

    :cond_4
    if-le v9, v10, :cond_5

    const/16 v9, 0x8

    .line 221
    :cond_5
    :goto_5
    div-int/lit8 v10, v7, 0x2

    and-int/lit8 v11, v7, 0x1

    if-nez v11, :cond_6

    .line 223
    aput v9, v3, v10

    int-to-float v9, v9

    sub-float/2addr v8, v9

    .line 224
    aput v8, v5, v10

    goto :goto_6

    .line 226
    :cond_6
    aput v9, v4, v10

    int-to-float v9, v9

    sub-float/2addr v8, v9

    .line 227
    aput v8, v6, v10

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 231
    :cond_7
    invoke-direct {p0, p3, p1}, Lcom/google/zxing/c/a/e;->a(ZI)V

    .line 235
    array-length p1, v3

    sub-int/2addr p1, v2

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_7
    if-ltz p1, :cond_8

    mul-int/lit8 p2, p2, 0x9

    .line 237
    aget v5, v3, p1

    add-int/2addr p2, v5

    .line 238
    aget v5, v3, p1

    add-int/2addr v0, v5

    add-int/lit8 p1, p1, -0x1

    goto :goto_7

    .line 242
    :cond_8
    array-length p1, v4

    sub-int/2addr p1, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_8
    if-ltz p1, :cond_9

    mul-int/lit8 v5, v5, 0x9

    .line 244
    aget v7, v4, p1

    add-int/2addr v5, v7

    .line 245
    aget v7, v4, p1

    add-int/2addr v6, v7

    add-int/lit8 p1, p1, -0x1

    goto :goto_8

    :cond_9
    mul-int/lit8 v5, v5, 0x3

    add-int/2addr p2, v5

    const/4 p1, 0x4

    if-eqz p3, :cond_b

    and-int/lit8 p3, v0, 0x1

    if-nez p3, :cond_a

    const/16 p3, 0xc

    if-gt v0, p3, :cond_a

    if-lt v0, p1, :cond_a

    sub-int/2addr p3, v0

    .line 253
    div-int/lit8 p3, p3, 0x2

    .line 254
    sget-object p1, Lcom/google/zxing/c/a/e;->k:[I

    aget p1, p1, p3

    rsub-int/lit8 v0, p1, 0x9

    .line 256
    invoke-static {v3, p1, v1}, Lcom/google/zxing/c/a/f;->getRSSvalue([IIZ)I

    move-result p1

    .line 257
    invoke-static {v4, v0, v2}, Lcom/google/zxing/c/a/f;->getRSSvalue([IIZ)I

    move-result v0

    .line 258
    sget-object v1, Lcom/google/zxing/c/a/e;->g:[I

    aget v1, v1, p3

    .line 259
    sget-object v2, Lcom/google/zxing/c/a/e;->i:[I

    aget p3, v2, p3

    .line 260
    new-instance v2, Lcom/google/zxing/c/a/b;

    mul-int p1, p1, v1

    add-int/2addr p1, v0

    add-int/2addr p1, p3

    invoke-direct {v2, p1, p2}, Lcom/google/zxing/c/a/b;-><init>(II)V

    return-object v2

    .line 251
    :cond_a
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object p1

    throw p1

    :cond_b
    and-int/lit8 p3, v6, 0x1

    if-nez p3, :cond_c

    const/16 p3, 0xa

    if-gt v6, p3, :cond_c

    if-lt v6, p1, :cond_c

    sub-int/2addr p3, v6

    .line 265
    div-int/lit8 p3, p3, 0x2

    .line 266
    sget-object p1, Lcom/google/zxing/c/a/e;->l:[I

    aget p1, p1, p3

    rsub-int/lit8 v0, p1, 0x9

    .line 268
    invoke-static {v3, p1, v2}, Lcom/google/zxing/c/a/f;->getRSSvalue([IIZ)I

    move-result p1

    .line 269
    invoke-static {v4, v0, v1}, Lcom/google/zxing/c/a/f;->getRSSvalue([IIZ)I

    move-result v0

    .line 270
    sget-object v1, Lcom/google/zxing/c/a/e;->h:[I

    aget v1, v1, p3

    .line 271
    sget-object v2, Lcom/google/zxing/c/a/e;->j:[I

    aget p3, v2, p3

    .line 272
    new-instance v2, Lcom/google/zxing/c/a/b;

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    add-int/2addr v0, p3

    invoke-direct {v2, v0, p2}, Lcom/google/zxing/c/a/b;-><init>(II)V

    return-object v2

    .line 263
    :cond_c
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object p1

    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9
.end method

.method private a(Lcom/google/zxing/common/a;ZILjava/util/Map;)Lcom/google/zxing/c/a/d;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/a;",
            "ZI",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/c/a/d;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    const/4 v4, 0x0

    .line 7052
    :try_start_0
    iget-object v5, v0, Lcom/google/zxing/c/a/a;->a:[I

    const/4 v6, 0x0

    .line 6281
    aput v6, v5, v6

    const/4 v7, 0x1

    .line 6282
    aput v6, v5, v7

    const/4 v8, 0x2

    .line 6283
    aput v6, v5, v8

    const/4 v9, 0x3

    .line 6284
    aput v6, v5, v9

    .line 6286
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/a;->getSize()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v11, v10, :cond_0

    .line 6290
    invoke-virtual {v1, v11}, Lcom/google/zxing/common/a;->get(I)Z

    move-result v12

    xor-int/2addr v12, v7

    if-eq v2, v12, :cond_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    move v14, v11

    const/4 v13, 0x0

    :goto_1
    if-ge v11, v10, :cond_9

    .line 6301
    invoke-virtual {v1, v11}, Lcom/google/zxing/common/a;->get(I)Z

    move-result v15

    if-eq v15, v12, :cond_1

    .line 6302
    aget v15, v5, v13

    add-int/2addr v15, v7

    aput v15, v5, v13

    move/from16 v15, p3

    goto/16 :goto_6

    :cond_1
    if-ne v13, v9, :cond_8

    .line 6305
    invoke-static {v5}, Lcom/google/zxing/c/a/e;->a([I)Z

    move-result v15

    if-eqz v15, :cond_7

    new-array v5, v8, [I

    aput v14, v5, v6

    aput v11, v5, v7

    .line 7328
    aget v9, v5, v6

    invoke-virtual {v1, v9}, Lcom/google/zxing/common/a;->get(I)Z

    move-result v9

    .line 7329
    aget v10, v5, v6

    sub-int/2addr v10, v7

    :goto_2
    if-ltz v10, :cond_2

    .line 7331
    invoke-virtual {v1, v10}, Lcom/google/zxing/common/a;->get(I)Z

    move-result v11

    if-eq v9, v11, :cond_2

    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    :cond_2
    add-int/2addr v10, v7

    .line 7335
    aget v9, v5, v6

    sub-int/2addr v9, v10

    .line 8052
    iget-object v11, v0, Lcom/google/zxing/c/a/a;->a:[I

    .line 7338
    array-length v12, v11

    sub-int/2addr v12, v7

    invoke-static {v11, v6, v11, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7339
    aput v9, v11, v6

    .line 7340
    sget-object v9, Lcom/google/zxing/c/a/e;->m:[[I

    invoke-static {v11, v9}, Lcom/google/zxing/c/a/e;->a([I[[I)I

    move-result v13

    .line 7342
    aget v9, v5, v7

    if-eqz v2, :cond_3

    .line 7345
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/a;->getSize()I

    move-result v11

    sub-int/2addr v11, v7

    sub-int/2addr v11, v10

    .line 7346
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/a;->getSize()I

    move-result v12

    sub-int/2addr v12, v7

    sub-int/2addr v12, v9

    move v15, v11

    move/from16 v16, v12

    goto :goto_3

    :cond_3
    move/from16 v16, v9

    move v15, v10

    .line 7348
    :goto_3
    new-instance v9, Lcom/google/zxing/c/a/c;

    new-array v14, v8, [I

    aput v10, v14, v6

    aget v8, v5, v7

    aput v8, v14, v7

    move-object v12, v9

    move/from16 v17, p3

    invoke-direct/range {v12 .. v17}, Lcom/google/zxing/c/a/c;-><init>(I[IIII)V

    if-nez v3, :cond_4

    move-object v3, v4

    goto :goto_4

    .line 163
    :cond_4
    sget-object v8, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    .line 164
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/n;

    :goto_4
    if-eqz v3, :cond_6

    .line 167
    aget v8, v5, v6

    aget v5, v5, v7

    add-int/2addr v8, v5

    int-to-float v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    if-eqz v2, :cond_5

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/a;->getSize()I

    move-result v2

    sub-int/2addr v2, v7

    int-to-float v2, v2

    sub-float v5, v2, v5

    .line 172
    :cond_5
    new-instance v2, Lcom/google/zxing/m;

    move/from16 v15, p3

    int-to-float v8, v15

    invoke-direct {v2, v5, v8}, Lcom/google/zxing/m;-><init>(FF)V

    invoke-interface {v3, v2}, Lcom/google/zxing/n;->foundPossibleResultPoint(Lcom/google/zxing/m;)V

    .line 175
    :cond_6
    invoke-direct {v0, v1, v9, v7}, Lcom/google/zxing/c/a/e;->a(Lcom/google/zxing/common/a;Lcom/google/zxing/c/a/c;Z)Lcom/google/zxing/c/a/b;

    move-result-object v2

    .line 176
    invoke-direct {v0, v1, v9, v6}, Lcom/google/zxing/c/a/e;->a(Lcom/google/zxing/common/a;Lcom/google/zxing/c/a/c;Z)Lcom/google/zxing/c/a/b;

    move-result-object v1

    .line 177
    new-instance v3, Lcom/google/zxing/c/a/d;

    invoke-virtual {v2}, Lcom/google/zxing/c/a/b;->getValue()I

    move-result v5

    mul-int/lit16 v5, v5, 0x63d

    invoke-virtual {v1}, Lcom/google/zxing/c/a/b;->getValue()I

    move-result v6

    add-int/2addr v5, v6

    .line 178
    invoke-virtual {v2}, Lcom/google/zxing/c/a/b;->getChecksumPortion()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/zxing/c/a/b;->getChecksumPortion()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v2, v1

    invoke-direct {v3, v5, v2, v9}, Lcom/google/zxing/c/a/d;-><init>(IILcom/google/zxing/c/a/c;)V

    return-object v3

    :cond_7
    move/from16 v15, p3

    .line 6308
    aget v16, v5, v6

    aget v17, v5, v7

    add-int v16, v16, v17

    add-int v14, v14, v16

    .line 6309
    aget v16, v5, v8

    aput v16, v5, v6

    .line 6310
    aget v16, v5, v9

    aput v16, v5, v7

    .line 6311
    aput v6, v5, v8

    .line 6312
    aput v6, v5, v9

    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    :cond_8
    move/from16 v15, p3

    add-int/lit8 v13, v13, 0x1

    .line 6317
    :goto_5
    aput v7, v5, v13

    xor-int/lit8 v12, v12, 0x1

    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 6321
    :cond_9
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Lcom/google/zxing/h; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v4
.end method

.method private static a(Ljava/util/Collection;Lcom/google/zxing/c/a/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/c/a/d;",
            ">;",
            "Lcom/google/zxing/c/a/d;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 92
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/c/a/d;

    .line 93
    invoke-virtual {v2}, Lcom/google/zxing/c/a/d;->getValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/zxing/c/a/d;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 94
    invoke-virtual {v2}, Lcom/google/zxing/c/a/d;->a()V

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    .line 100
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private a(ZI)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 9068
    iget-object v0, p0, Lcom/google/zxing/c/a/a;->e:[I

    .line 353
    invoke-static {v0}, Lcom/google/zxing/common/a/a;->sum([I)I

    move-result v0

    .line 9072
    iget-object v1, p0, Lcom/google/zxing/c/a/a;->f:[I

    .line 354
    invoke-static {v1}, Lcom/google/zxing/common/a/a;->sum([I)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    const/16 v5, 0xc

    if-le v0, v5, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    if-ge v0, v2, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v7, 0x0

    :goto_1
    if-le v1, v5, :cond_2

    move v5, v6

    move v6, v7

    goto :goto_4

    :cond_2
    move v5, v6

    move v6, v7

    if-ge v1, v2, :cond_7

    goto :goto_5

    :cond_3
    const/16 v5, 0xb

    if-le v0, v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x5

    if-ge v0, v5, :cond_5

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x0

    :goto_3
    const/16 v7, 0xa

    if-le v1, v7, :cond_6

    :goto_4
    const/4 v2, 0x0

    const/4 v7, 0x1

    goto :goto_7

    :cond_6
    if-ge v1, v2, :cond_7

    :goto_5
    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    const/4 v7, 0x0

    :goto_7
    add-int v8, v0, v1

    sub-int/2addr v8, p2

    and-int/lit8 p2, v0, 0x1

    if-ne p2, p1, :cond_8

    const/4 p1, 0x1

    goto :goto_8

    :cond_8
    const/4 p1, 0x0

    :goto_8
    and-int/lit8 p2, v1, 0x1

    if-ne p2, v4, :cond_9

    const/4 v3, 0x1

    :cond_9
    if-ne v8, v4, :cond_d

    if-eqz p1, :cond_b

    if-nez v3, :cond_a

    :goto_9
    const/4 v5, 0x1

    goto :goto_b

    .line 403
    :cond_a
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object p1

    throw p1

    :cond_b
    if-eqz v3, :cond_c

    :goto_a
    const/4 v7, 0x1

    goto :goto_b

    .line 408
    :cond_c
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object p1

    throw p1

    :cond_d
    const/4 p2, -0x1

    if-ne v8, p2, :cond_11

    if-eqz p1, :cond_f

    if-nez v3, :cond_e

    const/4 v6, 0x1

    goto :goto_b

    .line 415
    :cond_e
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object p1

    throw p1

    :cond_f
    if-eqz v3, :cond_10

    const/4 v2, 0x1

    goto :goto_b

    .line 420
    :cond_10
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object p1

    throw p1

    :cond_11
    if-nez v8, :cond_1c

    if-eqz p1, :cond_14

    if-eqz v3, :cond_13

    if-ge v0, v1, :cond_12

    const/4 v6, 0x1

    goto :goto_a

    :cond_12
    const/4 v2, 0x1

    goto :goto_9

    .line 427
    :cond_13
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object p1

    throw p1

    :cond_14
    if-nez v3, :cond_1b

    :goto_b
    if-eqz v6, :cond_16

    if-nez v5, :cond_15

    .line 10068
    iget-object p1, p0, Lcom/google/zxing/c/a/a;->e:[I

    .line 11060
    iget-object p2, p0, Lcom/google/zxing/c/a/a;->c:[F

    .line 451
    invoke-static {p1, p2}, Lcom/google/zxing/c/a/e;->a([I[F)V

    goto :goto_c

    .line 449
    :cond_15
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object p1

    throw p1

    :cond_16
    :goto_c
    if-eqz v5, :cond_17

    .line 11068
    iget-object p1, p0, Lcom/google/zxing/c/a/a;->e:[I

    .line 12060
    iget-object p2, p0, Lcom/google/zxing/c/a/a;->c:[F

    .line 454
    invoke-static {p1, p2}, Lcom/google/zxing/c/a/e;->b([I[F)V

    :cond_17
    if-eqz v2, :cond_19

    if-nez v7, :cond_18

    .line 12072
    iget-object p1, p0, Lcom/google/zxing/c/a/a;->f:[I

    .line 13060
    iget-object p2, p0, Lcom/google/zxing/c/a/a;->c:[F

    .line 460
    invoke-static {p1, p2}, Lcom/google/zxing/c/a/e;->a([I[F)V

    goto :goto_d

    .line 458
    :cond_18
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object p1

    throw p1

    :cond_19
    :goto_d
    if-eqz v7, :cond_1a

    .line 13072
    iget-object p1, p0, Lcom/google/zxing/c/a/a;->f:[I

    .line 14064
    iget-object p2, p0, Lcom/google/zxing/c/a/a;->d:[F

    .line 463
    invoke-static {p1, p2}, Lcom/google/zxing/c/a/e;->b([I[F)V

    :cond_1a
    return-void

    .line 439
    :cond_1b
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object p1

    throw p1

    .line 444
    :cond_1c
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object p1

    goto :goto_f

    :goto_e
    throw p1

    :goto_f
    goto :goto_e
.end method


# virtual methods
.method public final decodeRow(ILcom/google/zxing/common/a;Ljava/util/Map;)Lcom/google/zxing/l;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/a;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/l;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p2, v0, p1, p3}, Lcom/google/zxing/c/a/e;->a(Lcom/google/zxing/common/a;ZILjava/util/Map;)Lcom/google/zxing/c/a/d;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/google/zxing/c/a/e;->n:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/google/zxing/c/a/e;->a(Ljava/util/Collection;Lcom/google/zxing/c/a/d;)V

    .line 71
    invoke-virtual {p2}, Lcom/google/zxing/common/a;->reverse()V

    const/4 v1, 0x1

    .line 72
    invoke-direct {p0, p2, v1, p1, p3}, Lcom/google/zxing/c/a/e;->a(Lcom/google/zxing/common/a;ZILjava/util/Map;)Lcom/google/zxing/c/a/d;

    move-result-object p1

    .line 73
    iget-object p3, p0, Lcom/google/zxing/c/a/e;->o:Ljava/util/List;

    invoke-static {p3, p1}, Lcom/google/zxing/c/a/e;->a(Ljava/util/Collection;Lcom/google/zxing/c/a/d;)V

    .line 74
    invoke-virtual {p2}, Lcom/google/zxing/common/a;->reverse()V

    .line 75
    iget-object p1, p0, Lcom/google/zxing/c/a/e;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/zxing/c/a/d;

    .line 1034
    iget p3, p2, Lcom/google/zxing/c/a/d;->b:I

    if-le p3, v1, :cond_0

    .line 77
    iget-object p3, p0, Lcom/google/zxing/c/a/e;->o:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/c/a/d;

    .line 2034
    iget v3, v2, Lcom/google/zxing/c/a/d;->b:I

    if-le v3, v1, :cond_1

    .line 2146
    invoke-virtual {p2}, Lcom/google/zxing/c/a/d;->getChecksumPortion()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/zxing/c/a/d;->getChecksumPortion()I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    rem-int/lit8 v3, v3, 0x4f

    .line 3030
    iget-object v4, p2, Lcom/google/zxing/c/a/d;->a:Lcom/google/zxing/c/a/c;

    .line 2148
    invoke-virtual {v4}, Lcom/google/zxing/c/a/c;->getValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x9

    .line 4030
    iget-object v5, v2, Lcom/google/zxing/c/a/d;->a:Lcom/google/zxing/c/a/c;

    .line 2148
    invoke-virtual {v5}, Lcom/google/zxing/c/a/c;->getValue()I

    move-result v5

    add-int/2addr v4, v5

    const/16 v5, 0x48

    if-le v4, v5, :cond_2

    add-int/lit8 v4, v4, -0x1

    :cond_2
    const/16 v5, 0x8

    if-le v4, v5, :cond_3

    add-int/lit8 v4, v4, -0x1

    :cond_3
    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    const-wide/32 v3, 0x453af5

    .line 4111
    invoke-virtual {p2}, Lcom/google/zxing/c/a/d;->getValue()I

    move-result p1

    int-to-long v5, p1

    mul-long v5, v5, v3

    invoke-virtual {v2}, Lcom/google/zxing/c/a/d;->getValue()I

    move-result p1

    int-to-long v3, p1

    add-long/2addr v5, v3

    .line 4112
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 4114
    new-instance p3, Ljava/lang/StringBuilder;

    const/16 v3, 0xe

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4115
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xd

    rsub-int/lit8 v3, v3, 0xd

    :goto_1
    const/16 v5, 0x30

    if-lez v3, :cond_5

    .line 4116
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 4118
    :cond_5
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge p1, v4, :cond_7

    .line 4122
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v5

    and-int/lit8 v7, p1, 0x1

    if-nez v7, :cond_6

    mul-int/lit8 v6, v6, 0x3

    :cond_6
    add-int/2addr v3, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_7
    const/16 p1, 0xa

    .line 4125
    rem-int/2addr v3, p1

    rsub-int/lit8 v3, v3, 0xa

    if-ne v3, p1, :cond_8

    const/4 v3, 0x0

    .line 4129
    :cond_8
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5030
    iget-object p1, p2, Lcom/google/zxing/c/a/d;->a:Lcom/google/zxing/c/a/c;

    .line 4131
    invoke-virtual {p1}, Lcom/google/zxing/c/a/c;->getResultPoints()[Lcom/google/zxing/m;

    move-result-object p1

    .line 6030
    iget-object p2, v2, Lcom/google/zxing/c/a/d;->a:Lcom/google/zxing/c/a/c;

    .line 4132
    invoke-virtual {p2}, Lcom/google/zxing/c/a/c;->getResultPoints()[Lcom/google/zxing/m;

    move-result-object p2

    .line 4133
    new-instance v2, Lcom/google/zxing/l;

    .line 4134
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/google/zxing/m;

    aget-object v5, p1, v0

    aput-object v5, v4, v0

    aget-object p1, p1, v1

    aput-object p1, v4, v1

    const/4 p1, 0x2

    aget-object v0, p2, v0

    aput-object v0, v4, p1

    aget-object p1, p2, v1

    const/4 p2, 0x3

    aput-object p1, v4, p2

    sget-object p1, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v2, p3, v3, v4, p1}, Lcom/google/zxing/l;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/m;Lcom/google/zxing/BarcodeFormat;)V

    return-object v2

    .line 84
    :cond_9
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final reset()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/zxing/c/a/e;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    iget-object v0, p0, Lcom/google/zxing/c/a/e;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
