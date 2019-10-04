.class public final Lcom/google/zxing/qrcode/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/common/b;

.field private b:Lcom/google/zxing/n;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/b;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/zxing/qrcode/a/c;->a:Lcom/google/zxing/common/b;

    return-void
.end method

.method private a(IIII)F
    .locals 5

    .line 268
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/zxing/qrcode/a/c;->b(IIII)F

    move-result v0

    sub-int/2addr p3, p1

    sub-int p3, p1, p3

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez p3, :cond_0

    int-to-float v3, p1

    sub-int p3, p1, p3

    int-to-float p3, p3

    div-float p3, v3, p3

    const/4 v3, 0x0

    goto :goto_0

    .line 276
    :cond_0
    iget-object v3, p0, Lcom/google/zxing/qrcode/a/c;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v3}, Lcom/google/zxing/common/b;->getWidth()I

    move-result v3

    if-lt p3, v3, :cond_1

    .line 277
    iget-object v3, p0, Lcom/google/zxing/qrcode/a/c;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v3}, Lcom/google/zxing/common/b;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, p1

    int-to-float v3, v3

    sub-int/2addr p3, p1

    int-to-float p3, p3

    div-float p3, v3, p3

    .line 278
    iget-object v3, p0, Lcom/google/zxing/qrcode/a/c;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v3}, Lcom/google/zxing/common/b;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    move v3, p3

    const/high16 p3, 0x3f800000    # 1.0f

    :goto_0
    int-to-float v4, p2

    sub-int/2addr p4, p2

    int-to-float p4, p4

    mul-float p4, p4, p3

    sub-float p3, v4, p4

    float-to-int p3, p3

    if-gez p3, :cond_2

    sub-int p3, p2, p3

    int-to-float p3, p3

    div-float p3, v4, p3

    goto :goto_1

    .line 286
    :cond_2
    iget-object p4, p0, Lcom/google/zxing/qrcode/a/c;->a:Lcom/google/zxing/common/b;

    invoke-virtual {p4}, Lcom/google/zxing/common/b;->getHeight()I

    move-result p4

    if-lt p3, p4, :cond_3

    .line 287
    iget-object p4, p0, Lcom/google/zxing/qrcode/a/c;->a:Lcom/google/zxing/common/b;

    invoke-virtual {p4}, Lcom/google/zxing/common/b;->getHeight()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    sub-int/2addr p4, p2

    int-to-float p4, p4

    sub-int/2addr p3, p2

    int-to-float p3, p3

    div-float p3, p4, p3

    .line 288
    iget-object p4, p0, Lcom/google/zxing/qrcode/a/c;->a:Lcom/google/zxing/common/b;

    invoke-virtual {p4}, Lcom/google/zxing/common/b;->getHeight()I

    move-result p4

    add-int/lit8 v1, p4, -0x1

    goto :goto_1

    :cond_3
    move v1, p3

    const/high16 p3, 0x3f800000    # 1.0f

    :goto_1
    int-to-float p4, p1

    sub-int/2addr v3, p1

    int-to-float v3, v3

    mul-float v3, v3, p3

    add-float/2addr p4, v3

    float-to-int p3, p4

    .line 292
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/google/zxing/qrcode/a/c;->b(IIII)F

    move-result p1

    add-float/2addr v0, p1

    sub-float/2addr v0, v2

    return v0
.end method

.method private a(Lcom/google/zxing/m;Lcom/google/zxing/m;)F
    .locals 4

    .line 242
    invoke-virtual {p1}, Lcom/google/zxing/m;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 243
    invoke-virtual {p1}, Lcom/google/zxing/m;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 244
    invoke-virtual {p2}, Lcom/google/zxing/m;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 245
    invoke-virtual {p2}, Lcom/google/zxing/m;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 242
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/zxing/qrcode/a/c;->a(IIII)F

    move-result v0

    .line 246
    invoke-virtual {p2}, Lcom/google/zxing/m;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 247
    invoke-virtual {p2}, Lcom/google/zxing/m;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 248
    invoke-virtual {p1}, Lcom/google/zxing/m;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 249
    invoke-virtual {p1}, Lcom/google/zxing/m;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 246
    invoke-direct {p0, v1, p2, v2, p1}, Lcom/google/zxing/qrcode/a/c;->a(IIII)F

    move-result p1

    .line 250
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    const/high16 v1, 0x40e00000    # 7.0f

    if-eqz p2, :cond_0

    div-float/2addr p1, v1

    return p1

    .line 253
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eqz p2, :cond_1

    div-float/2addr v0, v1

    return v0

    :cond_1
    add-float/2addr v0, p1

    const/high16 p1, 0x41600000    # 14.0f

    div-float/2addr v0, p1

    return v0
.end method

.method private a(Lcom/google/zxing/qrcode/a/f;)Lcom/google/zxing/common/f;
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;,
            Lcom/google/zxing/d;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/a/f;->getTopLeft()Lcom/google/zxing/qrcode/a/d;

    move-result-object v1

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/a/f;->getTopRight()Lcom/google/zxing/qrcode/a/d;

    move-result-object v2

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/a/f;->getBottomLeft()Lcom/google/zxing/qrcode/a/d;

    move-result-object v3

    .line 3232
    invoke-direct {v0, v1, v2}, Lcom/google/zxing/qrcode/a/c;->a(Lcom/google/zxing/m;Lcom/google/zxing/m;)F

    move-result v4

    .line 3233
    invoke-direct {v0, v1, v3}, Lcom/google/zxing/qrcode/a/c;->a(Lcom/google/zxing/m;Lcom/google/zxing/m;)F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v5

    if-ltz v6, :cond_13

    .line 4202
    invoke-static {v1, v2}, Lcom/google/zxing/m;->distance(Lcom/google/zxing/m;Lcom/google/zxing/m;)F

    move-result v6

    div-float/2addr v6, v4

    invoke-static {v6}, Lcom/google/zxing/common/a/a;->round(F)I

    move-result v6

    .line 4203
    invoke-static {v1, v3}, Lcom/google/zxing/m;->distance(Lcom/google/zxing/m;Lcom/google/zxing/m;)F

    move-result v7

    div-float/2addr v7, v4

    invoke-static {v7}, Lcom/google/zxing/common/a/a;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    const/4 v14, 0x2

    .line 4204
    div-int/2addr v6, v14

    add-int/lit8 v6, v6, 0x7

    and-int/lit8 v7, v6, 0x3

    const/4 v15, 0x3

    if-eqz v7, :cond_2

    if-eq v7, v14, :cond_1

    if-eq v7, v15, :cond_0

    :goto_0
    move v13, v6

    goto :goto_1

    .line 4214
    :cond_0
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v1

    throw v1

    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 98
    :goto_1
    invoke-static {v13}, Lcom/google/zxing/qrcode/decoder/h;->getProvisionalVersionForDimension(I)Lcom/google/zxing/qrcode/decoder/h;

    move-result-object v6

    .line 99
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/h;->getDimensionForVersion()I

    move-result v7

    add-int/lit8 v7, v7, -0x7

    const/16 v16, 0x0

    .line 103
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/h;->getAlignmentPatternCenters()[I

    move-result-object v6

    array-length v6, v6

    const/high16 v17, 0x40400000    # 3.0f

    const/4 v11, 0x0

    const/4 v10, 0x1

    if-lez v6, :cond_10

    .line 106
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/a/d;->getX()F

    move-result v6

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/a/d;->getX()F

    move-result v8

    sub-float/2addr v6, v8

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/a/d;->getX()F

    move-result v8

    add-float/2addr v6, v8

    .line 107
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/a/d;->getY()F

    move-result v8

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/a/d;->getY()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/a/d;->getY()F

    move-result v9

    add-float/2addr v8, v9

    int-to-float v7, v7

    div-float v7, v17, v7

    sub-float/2addr v5, v7

    .line 112
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/a/d;->getX()F

    move-result v7

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/a/d;->getX()F

    move-result v9

    sub-float/2addr v6, v9

    mul-float v6, v6, v5

    add-float/2addr v7, v6

    float-to-int v9, v7

    .line 113
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/a/d;->getY()F

    move-result v6

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/a/d;->getY()F

    move-result v7

    sub-float/2addr v8, v7

    mul-float v5, v5, v8

    add-float/2addr v6, v5

    float-to-int v5, v6

    const/4 v8, 0x4

    :goto_2
    const/16 v6, 0x10

    if-gt v8, v6, :cond_10

    int-to-float v6, v8

    mul-float v6, v6, v4

    float-to-int v6, v6

    sub-int v7, v9, v6

    .line 4381
    :try_start_0
    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 4382
    iget-object v7, v0, Lcom/google/zxing/qrcode/a/c;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v7}, Lcom/google/zxing/common/b;->getWidth()I

    move-result v7

    sub-int/2addr v7, v10

    add-int v12, v9, v6

    invoke-static {v7, v12}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int v12, v7, v18

    int-to-float v7, v12

    mul-float v19, v4, v17

    cmpg-float v7, v7, v19

    if-ltz v7, :cond_f

    sub-int v7, v5, v6

    .line 4387
    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 4388
    iget-object v7, v0, Lcom/google/zxing/qrcode/a/c;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v7}, Lcom/google/zxing/common/b;->getHeight()I

    move-result v7

    sub-int/2addr v7, v10

    add-int/2addr v6, v5

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int v7, v6, v20

    int-to-float v6, v7

    cmpg-float v6, v6, v19

    if-ltz v6, :cond_e

    .line 4393
    new-instance v6, Lcom/google/zxing/qrcode/a/b;

    iget-object v10, v0, Lcom/google/zxing/qrcode/a/c;->a:Lcom/google/zxing/common/b;

    iget-object v14, v0, Lcom/google/zxing/qrcode/a/c;->b:Lcom/google/zxing/n;
    :try_end_0
    .catch Lcom/google/zxing/h; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v21, v6

    move-object/from16 v6, v21

    move/from16 v22, v7

    move-object v7, v10

    move/from16 v23, v8

    move/from16 v8, v18

    move/from16 v18, v9

    move/from16 v9, v20

    move v10, v12

    const/4 v12, 0x0

    move/from16 v11, v22

    move v12, v4

    move/from16 v24, v13

    move-object v13, v14

    :try_start_1
    invoke-direct/range {v6 .. v13}, Lcom/google/zxing/qrcode/a/b;-><init>(Lcom/google/zxing/common/b;IIIIFLcom/google/zxing/n;)V

    .line 5088
    iget v7, v6, Lcom/google/zxing/qrcode/a/b;->c:I

    .line 5089
    iget v8, v6, Lcom/google/zxing/qrcode/a/b;->f:I

    .line 5090
    iget v9, v6, Lcom/google/zxing/qrcode/a/b;->e:I

    add-int/2addr v9, v7

    .line 5091
    iget v10, v6, Lcom/google/zxing/qrcode/a/b;->d:I

    div-int/lit8 v11, v8, 0x2

    add-int/2addr v10, v11

    new-array v11, v15, [I

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v8, :cond_c

    and-int/lit8 v13, v12, 0x1

    if-nez v13, :cond_3

    add-int/lit8 v13, v12, 0x1

    const/4 v14, 0x2

    .line 5097
    div-int/2addr v13, v14

    goto :goto_4

    :cond_3
    const/4 v14, 0x2

    add-int/lit8 v13, v12, 0x1

    div-int/2addr v13, v14

    neg-int v13, v13

    :goto_4
    add-int/2addr v13, v10

    const/4 v15, 0x0

    aput v15, v11, v15

    const/4 v14, 0x1

    aput v15, v11, v14

    const/16 v19, 0x2

    aput v15, v11, v19

    move v15, v7

    :goto_5
    if-ge v15, v9, :cond_4

    .line 5105
    iget-object v14, v6, Lcom/google/zxing/qrcode/a/b;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v14, v15, v13}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v14
    :try_end_1
    .catch Lcom/google/zxing/h; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v14, :cond_4

    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x1

    goto :goto_5

    :cond_4
    const/4 v14, 0x0

    :goto_6
    if-ge v15, v9, :cond_a

    move/from16 v19, v4

    .line 5110
    :try_start_2
    iget-object v4, v6, Lcom/google/zxing/qrcode/a/b;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v4, v15, v13}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    if-ne v14, v4, :cond_5

    .line 5113
    aget v20, v11, v4

    add-int/lit8 v20, v20, 0x1

    aput v20, v11, v4

    move/from16 v20, v5

    goto :goto_7

    :cond_5
    const/4 v4, 0x2

    if-ne v14, v4, :cond_7

    .line 5116
    invoke-virtual {v6, v11}, Lcom/google/zxing/qrcode/a/b;->a([I)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 5117
    invoke-virtual {v6, v11, v13, v15}, Lcom/google/zxing/qrcode/a/b;->a([III)Lcom/google/zxing/qrcode/a/a;

    move-result-object v14

    if-eqz v14, :cond_6

    move-object/from16 v16, v14

    goto/16 :goto_a

    .line 5122
    :cond_6
    aget v14, v11, v4

    const/16 v20, 0x0

    aput v14, v11, v20

    const/4 v14, 0x1

    aput v14, v11, v14

    aput v20, v11, v4

    move/from16 v20, v5

    const/4 v14, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v14, v14, 0x1

    .line 5127
    aget v4, v11, v14
    :try_end_2
    .catch Lcom/google/zxing/h; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v20, v5

    const/4 v5, 0x1

    add-int/2addr v4, v5

    :try_start_3
    aput v4, v11, v14

    goto :goto_7

    :cond_8
    move/from16 v20, v5

    const/4 v5, 0x1

    if-ne v14, v5, :cond_9

    add-int/lit8 v14, v14, 0x1

    .line 5134
    :cond_9
    aget v4, v11, v14

    add-int/2addr v4, v5

    aput v4, v11, v14

    :goto_7
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v19

    move/from16 v5, v20

    goto :goto_6

    :cond_a
    move/from16 v19, v4

    move/from16 v20, v5

    .line 5138
    invoke-virtual {v6, v11}, Lcom/google/zxing/qrcode/a/b;->a([I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 5139
    invoke-virtual {v6, v11, v13, v9}, Lcom/google/zxing/qrcode/a/b;->a([III)Lcom/google/zxing/qrcode/a/a;

    move-result-object v4

    if-eqz v4, :cond_b

    goto :goto_8

    :cond_b
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v19

    move/from16 v5, v20

    const/4 v15, 0x3

    goto/16 :goto_3

    :cond_c
    move/from16 v19, v4

    move/from16 v20, v5

    .line 5149
    iget-object v4, v6, Lcom/google/zxing/qrcode/a/b;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    .line 5150
    iget-object v4, v6, Lcom/google/zxing/qrcode/a/b;->b:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/a/a;

    :goto_8
    move-object/from16 v16, v4

    goto :goto_a

    .line 5153
    :cond_d
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v4

    throw v4

    :catch_0
    move/from16 v19, v4

    :catch_1
    move/from16 v20, v5

    goto :goto_9

    :cond_e
    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v23, v8

    move/from16 v18, v9

    move/from16 v24, v13

    .line 4390
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v4

    throw v4

    :cond_f
    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v23, v8

    move/from16 v18, v9

    move/from16 v24, v13

    .line 4384
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v4

    throw v4
    :try_end_3
    .catch Lcom/google/zxing/h; {:try_start_3 .. :try_end_3} :catch_3

    :catch_2
    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v23, v8

    move/from16 v18, v9

    move/from16 v24, v13

    :catch_3
    :goto_9
    shl-int/lit8 v8, v23, 0x1

    move/from16 v9, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v13, v24

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x3

    goto/16 :goto_2

    :cond_10
    move/from16 v24, v13

    :goto_a
    move/from16 v6, v24

    int-to-float v4, v6

    const/high16 v5, 0x40600000    # 3.5f

    sub-float v31, v4, v5

    if-eqz v16, :cond_11

    .line 6155
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/m;->getX()F

    move-result v4

    .line 6156
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/m;->getY()F

    move-result v5

    sub-float v7, v31, v17

    move/from16 v36, v4

    move/from16 v37, v5

    move/from16 v29, v7

    goto :goto_b

    .line 6161
    :cond_11
    invoke-virtual {v2}, Lcom/google/zxing/m;->getX()F

    move-result v4

    invoke-virtual {v1}, Lcom/google/zxing/m;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v3}, Lcom/google/zxing/m;->getX()F

    move-result v5

    add-float/2addr v4, v5

    .line 6162
    invoke-virtual {v2}, Lcom/google/zxing/m;->getY()F

    move-result v5

    invoke-virtual {v1}, Lcom/google/zxing/m;->getY()F

    move-result v7

    sub-float/2addr v5, v7

    invoke-virtual {v3}, Lcom/google/zxing/m;->getY()F

    move-result v7

    add-float/2addr v5, v7

    move/from16 v36, v4

    move/from16 v37, v5

    move/from16 v29, v31

    :goto_b
    const/high16 v24, 0x40600000    # 3.5f

    const/high16 v25, 0x40600000    # 3.5f

    const/high16 v27, 0x40600000    # 3.5f

    const/high16 v30, 0x40600000    # 3.5f

    .line 6176
    invoke-virtual {v1}, Lcom/google/zxing/m;->getX()F

    move-result v32

    .line 6177
    invoke-virtual {v1}, Lcom/google/zxing/m;->getY()F

    move-result v33

    .line 6178
    invoke-virtual {v2}, Lcom/google/zxing/m;->getX()F

    move-result v34

    .line 6179
    invoke-virtual {v2}, Lcom/google/zxing/m;->getY()F

    move-result v35

    .line 6182
    invoke-virtual {v3}, Lcom/google/zxing/m;->getX()F

    move-result v38

    .line 6183
    invoke-virtual {v3}, Lcom/google/zxing/m;->getY()F

    move-result v39

    move/from16 v26, v31

    move/from16 v28, v29

    .line 6167
    invoke-static/range {v24 .. v39}, Lcom/google/zxing/common/j;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/j;

    move-result-object v4

    .line 133
    iget-object v5, v0, Lcom/google/zxing/qrcode/a/c;->a:Lcom/google/zxing/common/b;

    .line 6190
    invoke-static {}, Lcom/google/zxing/common/h;->getInstance()Lcom/google/zxing/common/h;

    move-result-object v7

    .line 6191
    invoke-virtual {v7, v5, v6, v6, v4}, Lcom/google/zxing/common/h;->sampleGrid(Lcom/google/zxing/common/b;IILcom/google/zxing/common/j;)Lcom/google/zxing/common/b;

    move-result-object v4

    if-nez v16, :cond_12

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/zxing/m;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v7, 0x1

    aput-object v1, v5, v7

    const/4 v8, 0x2

    aput-object v2, v5, v8

    goto :goto_c

    :cond_12
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x4

    new-array v9, v9, [Lcom/google/zxing/m;

    aput-object v3, v9, v6

    aput-object v1, v9, v7

    aput-object v2, v9, v8

    aput-object v16, v9, v5

    move-object v5, v9

    .line 141
    :goto_c
    new-instance v1, Lcom/google/zxing/common/f;

    invoke-direct {v1, v4, v5}, Lcom/google/zxing/common/f;-><init>(Lcom/google/zxing/common/b;[Lcom/google/zxing/m;)V

    return-object v1

    .line 95
    :cond_13
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v1

    goto :goto_e

    :goto_d
    throw v1

    :goto_e
    goto :goto_d
.end method

.method private b(IIII)F
    .locals 17

    sub-int v0, p4, p2

    .line 309
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v1, p3, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move/from16 v6, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v1, p4

    goto :goto_1

    :cond_1
    move/from16 v4, p1

    move/from16 v6, p2

    move/from16 v1, p3

    move/from16 v5, p4

    :goto_1
    sub-int v7, v1, v4

    .line 319
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int v8, v5, v6

    .line 320
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    neg-int v9, v7

    const/4 v10, 0x2

    .line 321
    div-int/2addr v9, v10

    const/4 v11, -0x1

    if-ge v4, v1, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, -0x1

    :goto_2
    if-ge v6, v5, :cond_3

    const/4 v11, 0x1

    :cond_3
    add-int/2addr v1, v12

    move v13, v6

    move v15, v9

    const/4 v14, 0x0

    move v9, v4

    :goto_3
    if-eq v9, v1, :cond_a

    if-eqz v0, :cond_4

    move v2, v13

    goto :goto_4

    :cond_4
    move v2, v9

    :goto_4
    if-eqz v0, :cond_5

    move v10, v9

    goto :goto_5

    :cond_5
    move v10, v13

    :goto_5
    if-ne v14, v3, :cond_6

    move-object/from16 v3, p0

    move/from16 v16, v0

    move/from16 p2, v1

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    move-object/from16 v3, p0

    move/from16 v16, v0

    move/from16 p2, v1

    const/4 v0, 0x0

    .line 336
    :goto_6
    iget-object v1, v3, Lcom/google/zxing/qrcode/a/c;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v1, v2, v10}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x2

    if-ne v14, v0, :cond_7

    .line 338
    invoke-static {v9, v13, v4, v6}, Lcom/google/zxing/common/a/a;->distance(IIII)F

    move-result v0

    return v0

    :cond_7
    add-int/lit8 v14, v14, 0x1

    :cond_8
    add-int/2addr v15, v8

    if-lez v15, :cond_9

    if-eq v13, v5, :cond_b

    add-int/2addr v13, v11

    sub-int/2addr v15, v7

    :cond_9
    add-int/2addr v9, v12

    move/from16 v1, p2

    move/from16 v0, v16

    const/4 v3, 0x1

    const/4 v10, 0x2

    goto :goto_3

    :cond_a
    move-object/from16 v3, p0

    move/from16 p2, v1

    :cond_b
    const/4 v0, 0x2

    if-ne v14, v0, :cond_c

    move/from16 v1, p2

    .line 356
    invoke-static {v1, v5, v4, v6}, Lcom/google/zxing/common/a/a;->distance(IIII)F

    move-result v0

    return v0

    :cond_c
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method


# virtual methods
.method public final detect()Lcom/google/zxing/common/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;,
            Lcom/google/zxing/d;
        }
    .end annotation

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Lcom/google/zxing/qrcode/a/c;->detect(Ljava/util/Map;)Lcom/google/zxing/common/f;

    move-result-object v0

    return-object v0
.end method

.method public final detect(Ljava/util/Map;)Lcom/google/zxing/common/f;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/f;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;,
            Lcom/google/zxing/d;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 77
    :cond_0
    sget-object v3, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    .line 78
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/n;

    :goto_0
    iput-object v3, v0, Lcom/google/zxing/qrcode/a/c;->b:Lcom/google/zxing/n;

    .line 80
    new-instance v3, Lcom/google/zxing/qrcode/a/e;

    iget-object v4, v0, Lcom/google/zxing/qrcode/a/c;->a:Lcom/google/zxing/common/b;

    iget-object v5, v0, Lcom/google/zxing/qrcode/a/c;->b:Lcom/google/zxing/n;

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/a/e;-><init>(Lcom/google/zxing/common/b;Lcom/google/zxing/n;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 1077
    sget-object v6, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1078
    :goto_1
    iget-object v6, v3, Lcom/google/zxing/qrcode/a/e;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v6}, Lcom/google/zxing/common/b;->getHeight()I

    move-result v6

    .line 1079
    iget-object v7, v3, Lcom/google/zxing/qrcode/a/e;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v7}, Lcom/google/zxing/common/b;->getWidth()I

    move-result v7

    mul-int/lit8 v8, v6, 0x3

    .line 1087
    div-int/lit16 v8, v8, 0x184

    const/4 v9, 0x3

    if-lt v8, v9, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v8, 0x3

    :cond_3
    const/4 v1, 0x5

    new-array v1, v1, [I

    add-int/lit8 v10, v8, -0x1

    move v11, v8

    const/4 v8, 0x0

    :goto_2
    const/4 v12, 0x2

    if-ge v10, v6, :cond_12

    if-nez v8, :cond_12

    .line 1096
    invoke-static {v1}, Lcom/google/zxing/qrcode/a/e;->b([I)V

    move v14, v8

    move v13, v11

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_3
    if-ge v8, v7, :cond_f

    .line 1099
    iget-object v15, v3, Lcom/google/zxing/qrcode/a/e;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v15, v8, v10}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v15

    if-eqz v15, :cond_5

    and-int/lit8 v15, v11, 0x1

    if-ne v15, v5, :cond_4

    add-int/lit8 v11, v11, 0x1

    .line 1104
    :cond_4
    aget v15, v1, v11

    add-int/2addr v15, v5

    aput v15, v1, v11

    goto/16 :goto_8

    :cond_5
    and-int/lit8 v15, v11, 0x1

    if-nez v15, :cond_e

    const/4 v15, 0x4

    if-ne v11, v15, :cond_d

    .line 1108
    invoke-static {v1}, Lcom/google/zxing/qrcode/a/e;->a([I)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1109
    invoke-virtual {v3, v1, v10, v8}, Lcom/google/zxing/qrcode/a/e;->a([III)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1114
    iget-boolean v11, v3, Lcom/google/zxing/qrcode/a/e;->c:Z

    if-eqz v11, :cond_6

    .line 1115
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/a/e;->a()Z

    move-result v14

    goto :goto_6

    .line 1539
    :cond_6
    iget-object v11, v3, Lcom/google/zxing/qrcode/a/e;->b:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v5, :cond_9

    .line 1544
    iget-object v11, v3, Lcom/google/zxing/qrcode/a/e;->b:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v13, 0x0

    :cond_7
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/zxing/qrcode/a/d;

    .line 2048
    iget v2, v15, Lcom/google/zxing/qrcode/a/d;->a:I

    if-lt v2, v12, :cond_7

    if-nez v13, :cond_8

    move-object v13, v15

    goto :goto_4

    .line 1554
    :cond_8
    iput-boolean v5, v3, Lcom/google/zxing/qrcode/a/e;->c:Z

    .line 1555
    invoke-virtual {v13}, Lcom/google/zxing/m;->getX()F

    move-result v2

    invoke-virtual {v15}, Lcom/google/zxing/qrcode/a/d;->getX()F

    move-result v11

    sub-float/2addr v2, v11

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1556
    invoke-virtual {v13}, Lcom/google/zxing/m;->getY()F

    move-result v11

    invoke-virtual {v15}, Lcom/google/zxing/qrcode/a/d;->getY()F

    move-result v13

    sub-float/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float/2addr v2, v11

    float-to-int v2, v2

    div-int/2addr v2, v12

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    .line 1118
    :goto_5
    aget v11, v1, v12

    if-le v2, v11, :cond_a

    .line 1127
    aget v8, v1, v12

    sub-int/2addr v2, v8

    sub-int/2addr v2, v12

    add-int/2addr v10, v2

    add-int/lit8 v8, v7, -0x1

    .line 1138
    :cond_a
    :goto_6
    invoke-static {v1}, Lcom/google/zxing/qrcode/a/e;->b([I)V

    const/4 v11, 0x0

    const/4 v13, 0x2

    goto :goto_8

    .line 1132
    :cond_b
    invoke-static {v1}, Lcom/google/zxing/qrcode/a/e;->c([I)V

    goto :goto_7

    .line 1140
    :cond_c
    invoke-static {v1}, Lcom/google/zxing/qrcode/a/e;->c([I)V

    :goto_7
    const/4 v11, 0x3

    goto :goto_8

    :cond_d
    add-int/lit8 v11, v11, 0x1

    .line 1144
    aget v2, v1, v11

    add-int/2addr v2, v5

    aput v2, v1, v11

    goto :goto_8

    .line 1147
    :cond_e
    aget v2, v1, v11

    add-int/2addr v2, v5

    aput v2, v1, v11

    :goto_8
    add-int/2addr v8, v5

    goto/16 :goto_3

    .line 1151
    :cond_f
    invoke-static {v1}, Lcom/google/zxing/qrcode/a/e;->a([I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1152
    invoke-virtual {v3, v1, v10, v7}, Lcom/google/zxing/qrcode/a/e;->a([III)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1154
    aget v2, v1, v4

    .line 1155
    iget-boolean v8, v3, Lcom/google/zxing/qrcode/a/e;->c:Z

    if-eqz v8, :cond_10

    .line 1157
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/a/e;->a()Z

    move-result v8

    move v11, v2

    goto :goto_a

    :cond_10
    move v11, v2

    goto :goto_9

    :cond_11
    move v11, v13

    :goto_9
    move v8, v14

    :goto_a
    add-int/2addr v10, v11

    goto/16 :goto_2

    .line 2601
    :cond_12
    iget-object v1, v3, Lcom/google/zxing/qrcode/a/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v9, :cond_18

    const/4 v2, 0x0

    if-le v1, v9, :cond_15

    .line 2612
    iget-object v6, v3, Lcom/google/zxing/qrcode/a/e;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/qrcode/a/d;

    .line 2613
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/a/d;->getEstimatedModuleSize()F

    move-result v10

    add-float/2addr v7, v10

    mul-float v10, v10, v10

    add-float/2addr v8, v10

    goto :goto_b

    :cond_13
    int-to-float v1, v1

    div-float/2addr v7, v1

    div-float/2addr v8, v1

    mul-float v1, v7, v7

    sub-float/2addr v8, v1

    float-to-double v10, v8

    .line 2618
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v1, v10

    .line 2620
    iget-object v6, v3, Lcom/google/zxing/qrcode/a/e;->b:Ljava/util/List;

    new-instance v8, Lcom/google/zxing/qrcode/a/e$b;

    invoke-direct {v8, v7, v4}, Lcom/google/zxing/qrcode/a/e$b;-><init>(FB)V

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const v6, 0x3e4ccccd    # 0.2f

    mul-float v6, v6, v7

    .line 2622
    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v6, 0x0

    .line 2624
    :goto_c
    iget-object v8, v3, Lcom/google/zxing/qrcode/a/e;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_15

    iget-object v8, v3, Lcom/google/zxing/qrcode/a/e;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v9, :cond_15

    .line 2625
    iget-object v8, v3, Lcom/google/zxing/qrcode/a/e;->b:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/qrcode/a/d;

    .line 2626
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/a/d;->getEstimatedModuleSize()F

    move-result v8

    sub-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v8, v1

    if-lez v8, :cond_14

    .line 2627
    iget-object v8, v3, Lcom/google/zxing/qrcode/a/e;->b:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x1

    :cond_14
    add-int/2addr v6, v5

    goto :goto_c

    .line 2633
    :cond_15
    iget-object v1, v3, Lcom/google/zxing/qrcode/a/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v9, :cond_17

    .line 2637
    iget-object v1, v3, Lcom/google/zxing/qrcode/a/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/qrcode/a/d;

    .line 2638
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/a/d;->getEstimatedModuleSize()F

    move-result v6

    add-float/2addr v2, v6

    goto :goto_d

    .line 2641
    :cond_16
    iget-object v1, v3, Lcom/google/zxing/qrcode/a/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 2643
    iget-object v1, v3, Lcom/google/zxing/qrcode/a/e;->b:Ljava/util/List;

    new-instance v6, Lcom/google/zxing/qrcode/a/e$a;

    invoke-direct {v6, v2, v4}, Lcom/google/zxing/qrcode/a/e$a;-><init>(FB)V

    invoke-static {v1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2645
    iget-object v1, v3, Lcom/google/zxing/qrcode/a/e;->b:Ljava/util/List;

    iget-object v2, v3, Lcom/google/zxing/qrcode/a/e;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v9, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_17
    new-array v1, v9, [Lcom/google/zxing/qrcode/a/d;

    .line 2648
    iget-object v2, v3, Lcom/google/zxing/qrcode/a/e;->b:Ljava/util/List;

    .line 2649
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/qrcode/a/d;

    aput-object v2, v1, v4

    iget-object v2, v3, Lcom/google/zxing/qrcode/a/e;->b:Ljava/util/List;

    .line 2650
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/qrcode/a/d;

    aput-object v2, v1, v5

    iget-object v2, v3, Lcom/google/zxing/qrcode/a/e;->b:Ljava/util/List;

    .line 2651
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/qrcode/a/d;

    aput-object v2, v1, v12

    .line 1164
    invoke-static {v1}, Lcom/google/zxing/m;->orderBestPatterns([Lcom/google/zxing/m;)V

    .line 1166
    new-instance v2, Lcom/google/zxing/qrcode/a/f;

    invoke-direct {v2, v1}, Lcom/google/zxing/qrcode/a/f;-><init>([Lcom/google/zxing/qrcode/a/d;)V

    .line 83
    invoke-direct {v0, v2}, Lcom/google/zxing/qrcode/a/c;->a(Lcom/google/zxing/qrcode/a/f;)Lcom/google/zxing/common/f;

    move-result-object v1

    return-object v1

    .line 2604
    :cond_18
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v1

    goto :goto_f

    :goto_e
    throw v1

    :goto_f
    goto :goto_e
.end method
