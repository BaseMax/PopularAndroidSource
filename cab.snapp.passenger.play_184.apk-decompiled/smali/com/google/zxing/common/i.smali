.class public final Lcom/google/zxing/common/i;
.super Lcom/google/zxing/common/g;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/zxing/common/b;


# direct methods
.method public constructor <init>(Lcom/google/zxing/f;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/google/zxing/common/g;-><init>(Lcom/google/zxing/f;)V

    return-void
.end method

.method private static a(II)I
    .locals 1

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    return v0

    :cond_0
    if-le p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method


# virtual methods
.method public final createBinarizer(Lcom/google/zxing/f;)Lcom/google/zxing/a;
    .locals 1

    .line 93
    new-instance v0, Lcom/google/zxing/common/i;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/i;-><init>(Lcom/google/zxing/f;)V

    return-object v0
.end method

.method public final getBlackMatrix()Lcom/google/zxing/common/b;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 63
    iget-object v1, v0, Lcom/google/zxing/common/i;->a:Lcom/google/zxing/common/b;

    if-eqz v1, :cond_0

    return-object v1

    .line 66
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/i;->getLuminanceSource()Lcom/google/zxing/f;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lcom/google/zxing/f;->getWidth()I

    move-result v2

    .line 68
    invoke-virtual {v1}, Lcom/google/zxing/f;->getHeight()I

    move-result v3

    const/16 v4, 0x28

    if-lt v2, v4, :cond_16

    if-lt v3, v4, :cond_16

    .line 70
    invoke-virtual {v1}, Lcom/google/zxing/f;->getMatrix()[B

    move-result-object v1

    shr-int/lit8 v4, v2, 0x3

    and-int/lit8 v5, v2, 0x7

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    shr-int/lit8 v5, v3, 0x3

    and-int/lit8 v6, v3, 0x7

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v6, v3, -0x8

    add-int/lit8 v7, v2, -0x8

    .line 1168
    filled-new-array {v5, v4}, [I

    move-result-object v8

    const-class v9, I

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    const/4 v10, 0x0

    :goto_0
    const/16 v13, 0x8

    if-ge v10, v5, :cond_d

    shl-int/lit8 v14, v10, 0x3

    if-le v14, v6, :cond_3

    move v14, v6

    :cond_3
    const/4 v15, 0x0

    :goto_1
    if-ge v15, v4, :cond_c

    shl-int/lit8 v9, v15, 0x3

    if-le v9, v7, :cond_4

    move v9, v7

    :cond_4
    mul-int v16, v14, v2

    add-int v16, v16, v9

    move/from16 v19, v16

    const/4 v9, 0x0

    const/16 v12, 0xff

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_2
    if-ge v9, v13, :cond_a

    move/from16 v20, v14

    move/from16 v11, v17

    move v14, v12

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v13, :cond_7

    add-int v17, v19, v12

    .line 1184
    aget-byte v13, v1, v17

    const/16 v0, 0xff

    and-int/2addr v13, v0

    add-int v16, v16, v13

    if-ge v13, v14, :cond_5

    move v14, v13

    :cond_5
    if-le v13, v11, :cond_6

    move v11, v13

    :cond_6
    add-int/lit8 v12, v12, 0x1

    const/16 v13, 0x8

    move-object/from16 v0, p0

    goto :goto_3

    :cond_7
    sub-int v0, v11, v14

    const/16 v12, 0x18

    if-le v0, v12, :cond_9

    :cond_8
    add-int/lit8 v9, v9, 0x1

    add-int v19, v19, v2

    const/16 v0, 0x8

    if-ge v9, v0, :cond_9

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v0, :cond_8

    add-int v0, v19, v12

    .line 1199
    aget-byte v0, v1, v0

    const/16 v13, 0xff

    and-int/2addr v0, v13

    add-int v16, v16, v0

    add-int/lit8 v12, v12, 0x1

    const/16 v0, 0x8

    goto :goto_4

    :cond_9
    add-int/lit8 v9, v9, 0x1

    add-int v19, v19, v2

    const/16 v13, 0x8

    move-object/from16 v0, p0

    move/from16 v17, v11

    move v12, v14

    move/from16 v14, v20

    goto :goto_2

    :cond_a
    move/from16 v20, v14

    shr-int/lit8 v0, v16, 0x6

    sub-int v9, v17, v12

    const/16 v11, 0x18

    if-gt v9, v11, :cond_b

    .line 1214
    div-int/lit8 v0, v12, 0x2

    if-lez v10, :cond_b

    if-lez v15, :cond_b

    add-int/lit8 v9, v10, -0x1

    .line 1224
    aget-object v11, v8, v9

    aget v11, v11, v15

    aget-object v13, v8, v10

    add-int/lit8 v14, v15, -0x1

    aget v13, v13, v14

    const/16 v16, 0x2

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v11, v13

    aget-object v9, v8, v9

    aget v9, v9, v14

    add-int/2addr v11, v9

    div-int/lit8 v9, v11, 0x4

    if-ge v12, v9, :cond_b

    move v0, v9

    .line 1231
    :cond_b
    aget-object v9, v8, v10

    aput v0, v9, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v13, 0x8

    move-object/from16 v0, p0

    move/from16 v14, v20

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 81
    :cond_d
    new-instance v0, Lcom/google/zxing/common/b;

    invoke-direct {v0, v2, v3}, Lcom/google/zxing/common/b;-><init>(II)V

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v5, :cond_15

    shl-int/lit8 v9, v3, 0x3

    if-le v9, v6, :cond_e

    move v9, v6

    :cond_e
    add-int/lit8 v10, v5, -0x3

    .line 2115
    invoke-static {v3, v10}, Lcom/google/zxing/common/i;->a(II)I

    move-result v10

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v4, :cond_14

    shl-int/lit8 v12, v11, 0x3

    if-le v12, v7, :cond_f

    move v12, v7

    :cond_f
    add-int/lit8 v13, v4, -0x3

    .line 2121
    invoke-static {v11, v13}, Lcom/google/zxing/common/i;->a(II)I

    move-result v13

    const/4 v14, -0x2

    move/from16 v16, v4

    const/4 v4, 0x2

    const/4 v15, 0x0

    :goto_7
    if-gt v14, v4, :cond_10

    add-int v4, v10, v14

    .line 2124
    aget-object v4, v8, v4

    add-int/lit8 v17, v13, -0x2

    .line 2125
    aget v17, v4, v17

    add-int/lit8 v19, v13, -0x1

    aget v19, v4, v19

    add-int v17, v17, v19

    aget v19, v4, v13

    add-int v17, v17, v19

    add-int/lit8 v19, v13, 0x1

    aget v19, v4, v19

    add-int v17, v17, v19

    const/16 v18, 0x2

    add-int/lit8 v19, v13, 0x2

    aget v4, v4, v19

    add-int v17, v17, v4

    add-int v15, v15, v17

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x2

    goto :goto_7

    :cond_10
    const/16 v18, 0x2

    .line 2127
    div-int/lit8 v15, v15, 0x19

    mul-int v4, v9, v2

    add-int/2addr v4, v12

    move v13, v4

    const/4 v4, 0x0

    :goto_8
    const/16 v14, 0x8

    if-ge v4, v14, :cond_13

    move/from16 v17, v5

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v14, :cond_12

    add-int v19, v13, v5

    .line 2149
    aget-byte v14, v1, v19

    move-object/from16 v19, v1

    const/16 v1, 0xff

    and-int/2addr v14, v1

    if-gt v14, v15, :cond_11

    add-int v14, v12, v5

    add-int v1, v9, v4

    .line 2150
    invoke-virtual {v0, v14, v1}, Lcom/google/zxing/common/b;->set(II)V

    :cond_11
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v19

    const/16 v14, 0x8

    goto :goto_9

    :cond_12
    move-object/from16 v19, v1

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v13, v2

    move/from16 v5, v17

    goto :goto_8

    :cond_13
    move-object/from16 v19, v1

    move/from16 v17, v5

    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v16

    goto :goto_6

    :cond_14
    move-object/from16 v19, v1

    move/from16 v16, v4

    move/from16 v17, v5

    const/16 v18, 0x2

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    :cond_15
    move-object/from16 v1, p0

    .line 83
    iput-object v0, v1, Lcom/google/zxing/common/i;->a:Lcom/google/zxing/common/b;

    goto :goto_a

    :cond_16
    move-object v1, v0

    .line 86
    invoke-super/range {p0 .. p0}, Lcom/google/zxing/common/g;->getBlackMatrix()Lcom/google/zxing/common/b;

    move-result-object v0

    iput-object v0, v1, Lcom/google/zxing/common/i;->a:Lcom/google/zxing/common/b;

    .line 88
    :goto_a
    iget-object v0, v1, Lcom/google/zxing/common/i;->a:Lcom/google/zxing/common/b;

    return-object v0
.end method
