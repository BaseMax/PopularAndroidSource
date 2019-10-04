.class public final Lcom/google/zxing/common/e;
.super Lcom/google/zxing/common/h;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/zxing/common/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final sampleGrid(Lcom/google/zxing/common/b;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/b;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 39
    invoke-static/range {p4 .. p19}, Lcom/google/zxing/common/j;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/j;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 43
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/zxing/common/e;->sampleGrid(Lcom/google/zxing/common/b;IILcom/google/zxing/common/j;)Lcom/google/zxing/common/b;

    move-result-object v0

    return-object v0
.end method

.method public final sampleGrid(Lcom/google/zxing/common/b;IILcom/google/zxing/common/j;)Lcom/google/zxing/common/b;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    move/from16 v0, p2

    move/from16 v1, p3

    if-lez v0, :cond_10

    if-lez v1, :cond_10

    .line 54
    new-instance v2, Lcom/google/zxing/common/b;

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/common/b;-><init>(II)V

    mul-int/lit8 v0, v0, 0x2

    .line 55
    new-array v0, v0, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_f

    .line 57
    array-length v5, v0

    int-to-float v6, v4

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_0

    .line 60
    div-int/lit8 v9, v8, 0x2

    int-to-float v9, v9

    add-float/2addr v9, v7

    aput v9, v0, v8

    add-int/lit8 v9, v8, 0x1

    .line 61
    aput v6, v0, v9

    add-int/lit8 v8, v8, 0x2

    goto :goto_1

    :cond_0
    move-object/from16 v8, p4

    .line 63
    invoke-virtual {v8, v0}, Lcom/google/zxing/common/j;->transformPoints([F)V

    .line 1121
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/b;->getWidth()I

    move-result v6

    .line 1122
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/b;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_2
    const/4 v12, 0x0

    const/4 v13, -0x1

    if-ge v10, v5, :cond_6

    if-eqz v11, :cond_6

    .line 1126
    aget v11, v0, v10

    float-to-int v11, v11

    add-int/lit8 v14, v10, 0x1

    .line 1127
    aget v15, v0, v14

    float-to-int v15, v15

    if-lt v11, v13, :cond_5

    if-gt v11, v6, :cond_5

    if-lt v15, v13, :cond_5

    if-gt v15, v7, :cond_5

    if-ne v11, v13, :cond_1

    .line 1133
    aput v12, v0, v10

    :goto_3
    const/4 v11, 0x1

    goto :goto_4

    :cond_1
    if-ne v11, v6, :cond_2

    add-int/lit8 v11, v6, -0x1

    int-to-float v11, v11

    .line 1136
    aput v11, v0, v10

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    :goto_4
    if-ne v15, v13, :cond_3

    .line 1140
    aput v12, v0, v14

    :goto_5
    const/4 v11, 0x1

    goto :goto_6

    :cond_3
    if-ne v15, v7, :cond_4

    add-int/lit8 v11, v7, -0x1

    int-to-float v11, v11

    .line 1143
    aput v11, v0, v14

    goto :goto_5

    :cond_4
    :goto_6
    add-int/lit8 v10, v10, 0x2

    goto :goto_2

    .line 1129
    :cond_5
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v0

    throw v0

    :cond_6
    add-int/lit8 v10, v5, -0x2

    const/4 v11, 0x1

    :goto_7
    if-ltz v10, :cond_c

    if-eqz v11, :cond_c

    .line 1150
    aget v11, v0, v10

    float-to-int v11, v11

    add-int/lit8 v14, v10, 0x1

    .line 1151
    aget v15, v0, v14

    float-to-int v15, v15

    if-lt v11, v13, :cond_b

    if-gt v11, v6, :cond_b

    if-lt v15, v13, :cond_b

    if-gt v15, v7, :cond_b

    if-ne v11, v13, :cond_7

    .line 1157
    aput v12, v0, v10

    :goto_8
    const/4 v11, 0x1

    goto :goto_9

    :cond_7
    if-ne v11, v6, :cond_8

    add-int/lit8 v11, v6, -0x1

    int-to-float v11, v11

    .line 1160
    aput v11, v0, v10

    goto :goto_8

    :cond_8
    const/4 v11, 0x0

    :goto_9
    if-ne v15, v13, :cond_9

    .line 1164
    aput v12, v0, v14

    :goto_a
    const/4 v11, 0x1

    goto :goto_b

    :cond_9
    if-ne v15, v7, :cond_a

    add-int/lit8 v11, v7, -0x1

    int-to-float v11, v11

    .line 1167
    aput v11, v0, v14

    goto :goto_a

    :cond_a
    :goto_b
    add-int/lit8 v10, v10, -0x2

    goto :goto_7

    .line 1153
    :cond_b
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v0

    throw v0

    :cond_c
    const/4 v6, 0x0

    :goto_c
    if-ge v6, v5, :cond_e

    .line 69
    :try_start_0
    aget v7, v0, v6

    float-to-int v7, v7

    add-int/lit8 v9, v6, 0x1

    aget v9, v0, v9

    float-to-int v9, v9

    move-object/from16 v10, p1

    invoke-virtual {v10, v7, v9}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 71
    div-int/lit8 v7, v6, 0x2

    invoke-virtual {v2, v7, v4}, Lcom/google/zxing/common/b;->set(II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    add-int/lit8 v6, v6, 0x2

    goto :goto_c

    .line 82
    :catch_0
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v0

    throw v0

    :cond_e
    move-object/from16 v10, p1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_f
    return-object v2

    .line 52
    :cond_10
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v0

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method
