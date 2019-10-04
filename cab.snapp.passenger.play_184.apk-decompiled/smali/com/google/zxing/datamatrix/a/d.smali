.class public final Lcom/google/zxing/datamatrix/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/common/b/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/google/zxing/common/b/c;

    sget-object v1, Lcom/google/zxing/common/b/a;->DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/b/a;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/b/c;-><init>(Lcom/google/zxing/common/b/a;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/a/d;->a:Lcom/google/zxing/common/b/c;

    return-void
.end method

.method private a([BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/c;
        }
    .end annotation

    .line 107
    array-length v0, p1

    .line 109
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 111
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/datamatrix/a/d;->a:Lcom/google/zxing/common/b/c;

    array-length v3, p1

    sub-int/2addr v3, p2

    invoke-virtual {v0, v1, v3}, Lcom/google/zxing/common/b/c;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/b/d; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-ge v2, p2, :cond_1

    .line 121
    aget v0, v1, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 116
    :catch_0
    invoke-static {}, Lcom/google/zxing/c;->getChecksumInstance()Lcom/google/zxing/c;

    move-result-object p1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public final decode(Lcom/google/zxing/common/b;)Lcom/google/zxing/common/d;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/d;,
            Lcom/google/zxing/c;
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/google/zxing/datamatrix/a/a;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/google/zxing/datamatrix/a/a;-><init>(Lcom/google/zxing/common/b;)V

    .line 1047
    iget-object v1, v0, Lcom/google/zxing/datamatrix/a/a;->c:Lcom/google/zxing/datamatrix/a/e;

    .line 1077
    iget-object v2, v0, Lcom/google/zxing/datamatrix/a/a;->c:Lcom/google/zxing/datamatrix/a/e;

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/a/e;->getTotalCodewords()I

    move-result v2

    new-array v2, v2, [B

    .line 1083
    iget-object v3, v0, Lcom/google/zxing/datamatrix/a/a;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v3}, Lcom/google/zxing/common/b;->getHeight()I

    move-result v3

    .line 1084
    iget-object v4, v0, Lcom/google/zxing/datamatrix/a/a;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v4}, Lcom/google/zxing/common/b;->getWidth()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v15, 0x2

    const/4 v5, 0x1

    if-ne v7, v3, :cond_7

    if-nez v8, :cond_7

    if-nez v9, :cond_7

    add-int/lit8 v9, v10, 0x1

    add-int/lit8 v14, v3, -0x1

    .line 1226
    invoke-virtual {v0, v14, v6, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v17

    shl-int/lit8 v17, v17, 0x1

    .line 1230
    invoke-virtual {v0, v14, v5, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v18

    if-eqz v18, :cond_0

    or-int/lit8 v17, v17, 0x1

    :cond_0
    shl-int/lit8 v17, v17, 0x1

    .line 1234
    invoke-virtual {v0, v14, v15, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_1

    or-int/lit8 v17, v17, 0x1

    :cond_1
    shl-int/lit8 v14, v17, 0x1

    add-int/lit8 v15, v4, -0x2

    .line 1238
    invoke-virtual {v0, v6, v15, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v15

    if-eqz v15, :cond_2

    or-int/lit8 v14, v14, 0x1

    :cond_2
    shl-int/2addr v14, v5

    add-int/lit8 v15, v4, -0x1

    .line 1242
    invoke-virtual {v0, v6, v15, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v18

    if-eqz v18, :cond_3

    or-int/lit8 v14, v14, 0x1

    :cond_3
    shl-int/2addr v14, v5

    .line 1246
    invoke-virtual {v0, v5, v15, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v18

    if-eqz v18, :cond_4

    or-int/lit8 v14, v14, 0x1

    :cond_4
    shl-int/2addr v14, v5

    const/4 v6, 0x2

    .line 1250
    invoke-virtual {v0, v6, v15, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v6

    if-eqz v6, :cond_5

    or-int/lit8 v14, v14, 0x1

    :cond_5
    shl-int/lit8 v6, v14, 0x1

    const/4 v14, 0x3

    .line 1254
    invoke-virtual {v0, v14, v15, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_6

    or-int/lit8 v6, v6, 0x1

    :cond_6
    int-to-byte v6, v6

    .line 1095
    aput-byte v6, v2, v10

    add-int/lit8 v7, v7, -0x2

    add-int/lit8 v8, v8, 0x2

    move v10, v9

    const/4 v9, 0x4

    const/4 v15, 0x1

    const/16 v20, 0x1

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v6, v3, -0x2

    if-ne v7, v6, :cond_f

    if-nez v8, :cond_f

    and-int/lit8 v14, v4, 0x3

    if-eqz v14, :cond_f

    if-nez v11, :cond_f

    add-int/lit8 v11, v10, 0x1

    add-int/lit8 v14, v3, -0x3

    const/4 v15, 0x0

    .line 1271
    invoke-virtual {v0, v14, v15, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v14

    shl-int/2addr v14, v5

    .line 1275
    invoke-virtual {v0, v6, v15, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v6

    if-eqz v6, :cond_8

    or-int/lit8 v14, v14, 0x1

    :cond_8
    shl-int/lit8 v6, v14, 0x1

    add-int/lit8 v14, v3, -0x1

    .line 1279
    invoke-virtual {v0, v14, v15, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_9

    or-int/lit8 v6, v6, 0x1

    :cond_9
    shl-int/2addr v6, v5

    add-int/lit8 v14, v4, -0x4

    .line 1283
    invoke-virtual {v0, v15, v14, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_a

    or-int/lit8 v6, v6, 0x1

    :cond_a
    shl-int/2addr v6, v5

    add-int/lit8 v14, v4, -0x3

    .line 1287
    invoke-virtual {v0, v15, v14, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_b

    or-int/lit8 v6, v6, 0x1

    :cond_b
    shl-int/2addr v6, v5

    add-int/lit8 v14, v4, -0x2

    .line 1291
    invoke-virtual {v0, v15, v14, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_c

    or-int/lit8 v6, v6, 0x1

    :cond_c
    shl-int/2addr v6, v5

    add-int/lit8 v14, v4, -0x1

    .line 1295
    invoke-virtual {v0, v15, v14, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v16

    if-eqz v16, :cond_d

    or-int/lit8 v6, v6, 0x1

    :cond_d
    shl-int/2addr v6, v5

    .line 1299
    invoke-virtual {v0, v5, v14, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_e

    or-int/lit8 v6, v6, 0x1

    :cond_e
    int-to-byte v6, v6

    .line 1100
    aput-byte v6, v2, v10

    add-int/lit8 v7, v7, -0x2

    add-int/lit8 v8, v8, 0x2

    move/from16 v20, v9

    move v10, v11

    const/4 v9, 0x4

    const/4 v11, 0x1

    :goto_1
    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_f
    add-int/lit8 v14, v3, 0x4

    if-ne v7, v14, :cond_17

    const/4 v14, 0x2

    if-ne v8, v14, :cond_17

    and-int/lit8 v14, v4, 0x7

    if-nez v14, :cond_17

    if-nez v12, :cond_17

    add-int/lit8 v6, v10, 0x1

    add-int/lit8 v12, v3, -0x1

    const/4 v14, 0x0

    .line 1316
    invoke-virtual {v0, v12, v14, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v15

    shl-int/lit8 v14, v15, 0x1

    add-int/lit8 v15, v4, -0x1

    .line 1320
    invoke-virtual {v0, v12, v15, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v12

    if-eqz v12, :cond_10

    or-int/lit8 v14, v14, 0x1

    :cond_10
    shl-int/lit8 v12, v14, 0x1

    add-int/lit8 v14, v4, -0x3

    const/4 v5, 0x0

    .line 1324
    invoke-virtual {v0, v5, v14, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v16

    if-eqz v16, :cond_11

    or-int/lit8 v12, v12, 0x1

    :cond_11
    const/4 v5, 0x1

    shl-int/2addr v12, v5

    add-int/lit8 v5, v4, -0x2

    move/from16 v16, v6

    const/4 v6, 0x0

    .line 1328
    invoke-virtual {v0, v6, v5, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v17

    if-eqz v17, :cond_12

    or-int/lit8 v12, v12, 0x1

    :cond_12
    move/from16 v20, v9

    const/4 v9, 0x1

    shl-int/2addr v12, v9

    .line 1332
    invoke-virtual {v0, v6, v15, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v17

    if-eqz v17, :cond_13

    or-int/lit8 v12, v12, 0x1

    :cond_13
    shl-int/lit8 v6, v12, 0x1

    .line 1336
    invoke-virtual {v0, v9, v14, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v12

    if-eqz v12, :cond_14

    or-int/lit8 v6, v6, 0x1

    :cond_14
    shl-int/2addr v6, v9

    .line 1340
    invoke-virtual {v0, v9, v5, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v5

    if-eqz v5, :cond_15

    or-int/lit8 v6, v6, 0x1

    :cond_15
    shl-int/lit8 v5, v6, 0x1

    .line 1344
    invoke-virtual {v0, v9, v15, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v6

    if-eqz v6, :cond_16

    or-int/lit8 v5, v5, 0x1

    :cond_16
    int-to-byte v5, v5

    .line 1105
    aput-byte v5, v2, v10

    add-int/lit8 v7, v7, -0x2

    add-int/lit8 v8, v8, 0x2

    move/from16 v10, v16

    const/4 v9, 0x4

    const/4 v12, 0x1

    goto :goto_1

    :cond_17
    move/from16 v20, v9

    if-ne v7, v6, :cond_1f

    if-nez v8, :cond_1f

    and-int/lit8 v5, v4, 0x7

    const/4 v9, 0x4

    if-ne v5, v9, :cond_20

    if-nez v13, :cond_20

    add-int/lit8 v5, v10, 0x1

    add-int/lit8 v13, v3, -0x3

    const/4 v14, 0x0

    .line 1361
    invoke-virtual {v0, v13, v14, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v13

    const/4 v15, 0x1

    shl-int/2addr v13, v15

    .line 1365
    invoke-virtual {v0, v6, v14, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v6

    if-eqz v6, :cond_18

    or-int/lit8 v13, v13, 0x1

    :cond_18
    shl-int/lit8 v6, v13, 0x1

    add-int/lit8 v13, v3, -0x1

    .line 1369
    invoke-virtual {v0, v13, v14, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_19

    or-int/lit8 v6, v6, 0x1

    :cond_19
    shl-int/2addr v6, v15

    add-int/lit8 v13, v4, -0x2

    .line 1373
    invoke-virtual {v0, v14, v13, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_1a

    or-int/lit8 v6, v6, 0x1

    :cond_1a
    shl-int/2addr v6, v15

    add-int/lit8 v13, v4, -0x1

    .line 1377
    invoke-virtual {v0, v14, v13, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v19

    if-eqz v19, :cond_1b

    or-int/lit8 v6, v6, 0x1

    :cond_1b
    shl-int/2addr v6, v15

    .line 1381
    invoke-virtual {v0, v15, v13, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_1c

    or-int/lit8 v6, v6, 0x1

    :cond_1c
    shl-int/2addr v6, v15

    const/4 v14, 0x2

    .line 1385
    invoke-virtual {v0, v14, v13, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v14

    if-eqz v14, :cond_1d

    or-int/lit8 v6, v6, 0x1

    :cond_1d
    shl-int/2addr v6, v15

    const/4 v14, 0x3

    .line 1389
    invoke-virtual {v0, v14, v13, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->a(IIII)Z

    move-result v13

    if-eqz v13, :cond_1e

    or-int/lit8 v6, v6, 0x1

    :cond_1e
    int-to-byte v6, v6

    .line 1110
    aput-byte v6, v2, v10

    add-int/lit8 v7, v7, -0x2

    add-int/lit8 v8, v8, 0x2

    move v10, v5

    const/4 v13, 0x1

    goto :goto_2

    :cond_1f
    const/4 v9, 0x4

    :cond_20
    const/4 v15, 0x1

    :cond_21
    if-ge v7, v3, :cond_22

    if-ltz v8, :cond_22

    .line 1117
    iget-object v5, v0, Lcom/google/zxing/datamatrix/a/a;->b:Lcom/google/zxing/common/b;

    invoke-virtual {v5, v8, v7}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v5

    if-nez v5, :cond_22

    add-int/lit8 v5, v10, 0x1

    .line 1118
    invoke-virtual {v0, v7, v8, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->b(IIII)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v2, v10

    move v10, v5

    :cond_22
    add-int/lit8 v7, v7, -0x2

    add-int/lit8 v8, v8, 0x2

    if-ltz v7, :cond_23

    if-lt v8, v4, :cond_21

    :cond_23
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x3

    :cond_24
    if-ltz v7, :cond_25

    if-ge v8, v4, :cond_25

    .line 1128
    iget-object v5, v0, Lcom/google/zxing/datamatrix/a/a;->b:Lcom/google/zxing/common/b;

    invoke-virtual {v5, v8, v7}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v5

    if-nez v5, :cond_25

    add-int/lit8 v5, v10, 0x1

    .line 1129
    invoke-virtual {v0, v7, v8, v3, v4}, Lcom/google/zxing/datamatrix/a/a;->b(IIII)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v2, v10

    move v10, v5

    :cond_25
    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, v8, -0x2

    if-ge v7, v3, :cond_26

    if-gez v8, :cond_24

    :cond_26
    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v8, v8, 0x1

    :goto_2
    if-lt v7, v3, :cond_38

    if-lt v8, v4, :cond_38

    .line 1139
    iget-object v0, v0, Lcom/google/zxing/datamatrix/a/a;->c:Lcom/google/zxing/datamatrix/a/e;

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/a/e;->getTotalCodewords()I

    move-result v0

    if-ne v10, v0, :cond_37

    .line 3087
    iget-object v0, v1, Lcom/google/zxing/datamatrix/a/e;->a:Lcom/google/zxing/datamatrix/a/e$b;

    .line 3137
    iget-object v3, v0, Lcom/google/zxing/datamatrix/a/e$b;->b:[Lcom/google/zxing/datamatrix/a/e$a;

    .line 2054
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v5, v4, :cond_27

    aget-object v7, v3, v5

    .line 3156
    iget v7, v7, Lcom/google/zxing/datamatrix/a/e$a;->a:I

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2059
    :cond_27
    new-array v4, v6, [Lcom/google/zxing/datamatrix/a/b;

    .line 2061
    array-length v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4
    if-ge v6, v5, :cond_29

    aget-object v8, v3, v6

    move v9, v7

    const/4 v7, 0x0

    .line 4156
    :goto_5
    iget v10, v8, Lcom/google/zxing/datamatrix/a/e$a;->a:I

    if-ge v7, v10, :cond_28

    .line 4160
    iget v10, v8, Lcom/google/zxing/datamatrix/a/e$a;->b:I

    .line 5133
    iget v11, v0, Lcom/google/zxing/datamatrix/a/e$b;->a:I

    add-int/2addr v11, v10

    add-int/lit8 v12, v9, 0x1

    .line 2065
    new-instance v13, Lcom/google/zxing/datamatrix/a/b;

    new-array v11, v11, [B

    invoke-direct {v13, v10, v11}, Lcom/google/zxing/datamatrix/a/b;-><init>(I[B)V

    aput-object v13, v4, v9

    add-int/lit8 v7, v7, 0x1

    move v9, v12

    goto :goto_5

    :cond_28
    add-int/lit8 v6, v6, 0x1

    move v7, v9

    goto :goto_4

    :cond_29
    const/4 v6, 0x0

    .line 2072
    aget-object v3, v4, v6

    iget-object v3, v3, Lcom/google/zxing/datamatrix/a/b;->b:[B

    array-length v3, v3

    .line 6133
    iget v0, v0, Lcom/google/zxing/datamatrix/a/e$b;->a:I

    sub-int/2addr v3, v0

    add-int/lit8 v0, v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_6
    if-ge v5, v0, :cond_2b

    move v8, v6

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v7, :cond_2a

    .line 2082
    aget-object v9, v4, v6

    iget-object v9, v9, Lcom/google/zxing/datamatrix/a/b;->b:[B

    add-int/lit8 v10, v8, 0x1

    aget-byte v8, v2, v8

    aput-byte v8, v9, v5

    add-int/lit8 v6, v6, 0x1

    move v8, v10

    goto :goto_7

    :cond_2a
    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_6

    .line 2087
    :cond_2b
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/a/e;->getVersionNumber()I

    move-result v1

    const/16 v5, 0x18

    if-ne v1, v5, :cond_2c

    goto :goto_8

    :cond_2c
    const/4 v15, 0x0

    :goto_8
    if-eqz v15, :cond_2d

    const/16 v1, 0x8

    goto :goto_9

    :cond_2d
    move v1, v7

    :goto_9
    const/4 v5, 0x0

    :goto_a
    if-ge v5, v1, :cond_2e

    .line 2090
    aget-object v8, v4, v5

    iget-object v8, v8, Lcom/google/zxing/datamatrix/a/b;->b:[B

    add-int/lit8 v9, v6, 0x1

    aget-byte v6, v2, v6

    aput-byte v6, v8, v0

    add-int/lit8 v5, v5, 0x1

    move v6, v9

    goto :goto_a

    :cond_2e
    const/4 v5, 0x0

    .line 2094
    aget-object v0, v4, v5

    iget-object v0, v0, Lcom/google/zxing/datamatrix/a/b;->b:[B

    array-length v0, v0

    :goto_b
    if-ge v3, v0, :cond_32

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v7, :cond_31

    if-eqz v15, :cond_2f

    add-int/lit8 v8, v1, 0x8

    .line 2097
    rem-int/2addr v8, v7

    goto :goto_d

    :cond_2f
    move v8, v1

    :goto_d
    if-eqz v15, :cond_30

    const/4 v9, 0x7

    if-le v8, v9, :cond_30

    add-int/lit8 v9, v3, -0x1

    goto :goto_e

    :cond_30
    move v9, v3

    .line 2099
    :goto_e
    aget-object v8, v4, v8

    iget-object v8, v8, Lcom/google/zxing/datamatrix/a/b;->b:[B

    add-int/lit8 v10, v6, 0x1

    aget-byte v6, v2, v6

    aput-byte v6, v8, v9

    add-int/lit8 v1, v1, 0x1

    move v6, v10

    goto :goto_c

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 2103
    :cond_32
    array-length v0, v2

    if-ne v6, v0, :cond_36

    .line 76
    array-length v0, v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_f
    if-ge v1, v0, :cond_33

    aget-object v3, v4, v1

    .line 7111
    iget v3, v3, Lcom/google/zxing/datamatrix/a/b;->a:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 79
    :cond_33
    new-array v0, v2, [B

    .line 81
    array-length v1, v4

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_35

    .line 84
    aget-object v3, v4, v2

    .line 7115
    iget-object v6, v3, Lcom/google/zxing/datamatrix/a/b;->b:[B

    .line 8111
    iget v3, v3, Lcom/google/zxing/datamatrix/a/b;->a:I

    move-object/from16 v14, p0

    .line 87
    invoke-direct {v14, v6, v3}, Lcom/google/zxing/datamatrix/a/d;->a([BI)V

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v3, :cond_34

    mul-int v8, v7, v1

    add-int/2addr v8, v2

    .line 90
    aget-byte v9, v6, v7

    aput-byte v9, v0, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_35
    move-object/from16 v14, p0

    .line 95
    invoke-static {v0}, Lcom/google/zxing/datamatrix/a/c;->a([B)Lcom/google/zxing/common/d;

    move-result-object v0

    return-object v0

    :cond_36
    move-object/from16 v14, p0

    .line 2104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_37
    move-object/from16 v14, p0

    .line 1140
    invoke-static {}, Lcom/google/zxing/d;->getFormatInstance()Lcom/google/zxing/d;

    move-result-object v0

    throw v0

    :cond_38
    const/4 v5, 0x0

    move-object/from16 v14, p0

    move/from16 v9, v20

    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public final decode([[Z)Lcom/google/zxing/common/d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/d;,
            Lcom/google/zxing/c;
        }
    .end annotation

    .line 51
    invoke-static {p1}, Lcom/google/zxing/common/b;->parse([[Z)Lcom/google/zxing/common/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/zxing/datamatrix/a/d;->decode(Lcom/google/zxing/common/b;)Lcom/google/zxing/common/d;

    move-result-object p1

    return-object p1
.end method
