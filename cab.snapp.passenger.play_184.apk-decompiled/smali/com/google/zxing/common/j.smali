.class public final Lcom/google/zxing/common/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:F

.field private final g:F

.field private final h:F

.field private final i:F


# direct methods
.method private constructor <init>(FFFFFFFFF)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/google/zxing/common/j;->a:F

    .line 42
    iput p4, p0, Lcom/google/zxing/common/j;->b:F

    .line 43
    iput p7, p0, Lcom/google/zxing/common/j;->c:F

    .line 44
    iput p2, p0, Lcom/google/zxing/common/j;->d:F

    .line 45
    iput p5, p0, Lcom/google/zxing/common/j;->e:F

    .line 46
    iput p8, p0, Lcom/google/zxing/common/j;->f:F

    .line 47
    iput p3, p0, Lcom/google/zxing/common/j;->g:F

    .line 48
    iput p6, p0, Lcom/google/zxing/common/j;->h:F

    .line 49
    iput p9, p0, Lcom/google/zxing/common/j;->i:F

    return-void
.end method

.method public static quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/j;
    .locals 18

    .line 61
    invoke-static/range {p0 .. p7}, Lcom/google/zxing/common/j;->quadrilateralToSquare(FFFFFFFF)Lcom/google/zxing/common/j;

    move-result-object v0

    .line 62
    invoke-static/range {p8 .. p15}, Lcom/google/zxing/common/j;->squareToQuadrilateral(FFFFFFFF)Lcom/google/zxing/common/j;

    move-result-object v1

    .line 1144
    new-instance v2, Lcom/google/zxing/common/j;

    iget v3, v1, Lcom/google/zxing/common/j;->a:F

    iget v4, v0, Lcom/google/zxing/common/j;->a:F

    mul-float v5, v3, v4

    iget v6, v1, Lcom/google/zxing/common/j;->d:F

    iget v7, v0, Lcom/google/zxing/common/j;->b:F

    mul-float v8, v6, v7

    add-float/2addr v5, v8

    iget v8, v1, Lcom/google/zxing/common/j;->g:F

    iget v9, v0, Lcom/google/zxing/common/j;->c:F

    mul-float v10, v8, v9

    add-float/2addr v5, v10

    iget v10, v0, Lcom/google/zxing/common/j;->d:F

    mul-float v11, v3, v10

    iget v12, v0, Lcom/google/zxing/common/j;->e:F

    mul-float v13, v6, v12

    add-float/2addr v11, v13

    iget v13, v0, Lcom/google/zxing/common/j;->f:F

    mul-float v14, v8, v13

    add-float/2addr v11, v14

    iget v14, v0, Lcom/google/zxing/common/j;->g:F

    mul-float v3, v3, v14

    iget v15, v0, Lcom/google/zxing/common/j;->h:F

    mul-float v6, v6, v15

    add-float/2addr v3, v6

    iget v0, v0, Lcom/google/zxing/common/j;->i:F

    mul-float v8, v8, v0

    add-float/2addr v3, v8

    iget v6, v1, Lcom/google/zxing/common/j;->b:F

    mul-float v8, v6, v4

    move/from16 p3, v3

    iget v3, v1, Lcom/google/zxing/common/j;->e:F

    mul-float v16, v3, v7

    add-float v8, v8, v16

    move/from16 p2, v11

    iget v11, v1, Lcom/google/zxing/common/j;->h:F

    mul-float v16, v11, v9

    add-float v8, v8, v16

    mul-float v16, v6, v10

    mul-float v17, v3, v12

    add-float v16, v16, v17

    mul-float v17, v11, v13

    add-float v16, v16, v17

    mul-float v6, v6, v14

    mul-float v3, v3, v15

    add-float/2addr v6, v3

    mul-float v11, v11, v0

    add-float v3, v6, v11

    iget v6, v1, Lcom/google/zxing/common/j;->c:F

    mul-float v4, v4, v6

    iget v11, v1, Lcom/google/zxing/common/j;->f:F

    mul-float v7, v7, v11

    add-float/2addr v4, v7

    iget v1, v1, Lcom/google/zxing/common/j;->i:F

    mul-float v9, v9, v1

    add-float/2addr v4, v9

    mul-float v10, v10, v6

    mul-float v12, v12, v11

    add-float/2addr v10, v12

    mul-float v13, v13, v1

    add-float v7, v10, v13

    mul-float v6, v6, v14

    mul-float v11, v11, v15

    add-float/2addr v6, v11

    mul-float v1, v1, v0

    add-float v0, v6, v1

    move-object/from16 p0, v2

    move/from16 p1, v5

    move/from16 p4, v8

    move/from16 p5, v16

    move/from16 p6, v3

    move/from16 p7, v4

    move/from16 p8, v7

    move/from16 p9, v0

    invoke-direct/range {p0 .. p9}, Lcom/google/zxing/common/j;-><init>(FFFFFFFFF)V

    return-object v2
.end method

.method public static quadrilateralToSquare(FFFFFFFF)Lcom/google/zxing/common/j;
    .locals 17

    .line 127
    invoke-static/range {p0 .. p7}, Lcom/google/zxing/common/j;->squareToQuadrilateral(FFFFFFFF)Lcom/google/zxing/common/j;

    move-result-object v0

    .line 2132
    new-instance v11, Lcom/google/zxing/common/j;

    iget v1, v0, Lcom/google/zxing/common/j;->e:F

    iget v2, v0, Lcom/google/zxing/common/j;->i:F

    mul-float v3, v1, v2

    iget v4, v0, Lcom/google/zxing/common/j;->f:F

    iget v5, v0, Lcom/google/zxing/common/j;->h:F

    mul-float v6, v4, v5

    sub-float/2addr v3, v6

    iget v6, v0, Lcom/google/zxing/common/j;->g:F

    mul-float v7, v4, v6

    iget v8, v0, Lcom/google/zxing/common/j;->d:F

    mul-float v9, v8, v2

    sub-float/2addr v7, v9

    mul-float v9, v8, v5

    mul-float v10, v1, v6

    sub-float/2addr v9, v10

    iget v10, v0, Lcom/google/zxing/common/j;->c:F

    mul-float v12, v10, v5

    iget v13, v0, Lcom/google/zxing/common/j;->b:F

    mul-float v14, v13, v2

    sub-float/2addr v12, v14

    iget v0, v0, Lcom/google/zxing/common/j;->a:F

    mul-float v2, v2, v0

    mul-float v14, v10, v6

    sub-float v14, v2, v14

    mul-float v6, v6, v13

    mul-float v5, v5, v0

    sub-float v15, v6, v5

    mul-float v2, v13, v4

    mul-float v5, v10, v1

    sub-float v16, v2, v5

    mul-float v10, v10, v8

    mul-float v4, v4, v0

    sub-float/2addr v10, v4

    mul-float v0, v0, v1

    mul-float v13, v13, v8

    sub-float/2addr v0, v13

    move-object v1, v11

    move v2, v3

    move v3, v7

    move v4, v9

    move v5, v12

    move v6, v14

    move v7, v15

    move/from16 v8, v16

    move v9, v10

    move v10, v0

    invoke-direct/range {v1 .. v10}, Lcom/google/zxing/common/j;-><init>(FFFFFFFFF)V

    return-object v11
.end method

.method public static squareToQuadrilateral(FFFFFFFF)Lcom/google/zxing/common/j;
    .locals 11

    sub-float v0, p0, p2

    add-float/2addr v0, p4

    sub-float v0, v0, p6

    sub-float v1, p1, p3

    add-float v1, v1, p5

    sub-float v1, v1, p7

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    .line 105
    new-instance v10, Lcom/google/zxing/common/j;

    sub-float v1, p2, p0

    sub-float v2, p4, p2

    sub-float v4, p3, p1

    sub-float v5, p5, p3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v0, v10

    move v3, p0

    move v6, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/j;-><init>(FFFFFFFFF)V

    return-object v10

    :cond_0
    sub-float v2, p2, p4

    sub-float v3, p6, p4

    sub-float v4, p3, p5

    sub-float v5, p7, p5

    mul-float v6, v2, v5

    mul-float v7, v3, v4

    sub-float/2addr v6, v7

    mul-float v5, v5, v0

    mul-float v3, v3, v1

    sub-float/2addr v5, v3

    div-float v7, v5, v6

    mul-float v2, v2, v1

    mul-float v0, v0, v4

    sub-float/2addr v2, v0

    div-float v8, v2, v6

    .line 116
    new-instance v10, Lcom/google/zxing/common/j;

    sub-float v0, p2, p0

    mul-float v1, v7, p2

    add-float/2addr v1, v0

    sub-float v0, p6, p0

    mul-float v2, v8, p6

    add-float/2addr v2, v0

    sub-float v0, p3, p1

    mul-float v3, v7, p3

    add-float v4, v0, v3

    sub-float v0, p7, p1

    mul-float v3, v8, p7

    add-float v5, v0, v3

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v0, v10

    move v3, p0

    move v6, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/j;-><init>(FFFFFFFFF)V

    return-object v10
.end method


# virtual methods
.method public final transformPoints([F)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 67
    array-length v2, v1

    .line 68
    iget v3, v0, Lcom/google/zxing/common/j;->a:F

    .line 69
    iget v4, v0, Lcom/google/zxing/common/j;->b:F

    .line 70
    iget v5, v0, Lcom/google/zxing/common/j;->c:F

    .line 71
    iget v6, v0, Lcom/google/zxing/common/j;->d:F

    .line 72
    iget v7, v0, Lcom/google/zxing/common/j;->e:F

    .line 73
    iget v8, v0, Lcom/google/zxing/common/j;->f:F

    .line 74
    iget v9, v0, Lcom/google/zxing/common/j;->g:F

    .line 75
    iget v10, v0, Lcom/google/zxing/common/j;->h:F

    .line 76
    iget v11, v0, Lcom/google/zxing/common/j;->i:F

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v2, :cond_0

    .line 78
    aget v13, v1, v12

    add-int/lit8 v14, v12, 0x1

    .line 79
    aget v15, v1, v14

    mul-float v16, v5, v13

    mul-float v17, v8, v15

    add-float v16, v16, v17

    add-float v16, v16, v11

    mul-float v17, v3, v13

    mul-float v18, v6, v15

    add-float v17, v17, v18

    add-float v17, v17, v9

    div-float v17, v17, v16

    .line 81
    aput v17, v1, v12

    mul-float v13, v13, v4

    mul-float v15, v15, v7

    add-float/2addr v13, v15

    add-float/2addr v13, v10

    div-float v13, v13, v16

    .line 82
    aput v13, v1, v14

    add-int/lit8 v12, v12, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final transformPoints([F[F)V
    .locals 7

    .line 87
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 89
    aget v2, p1, v1

    .line 90
    aget v3, p2, v1

    .line 91
    iget v4, p0, Lcom/google/zxing/common/j;->c:F

    mul-float v4, v4, v2

    iget v5, p0, Lcom/google/zxing/common/j;->f:F

    mul-float v5, v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/google/zxing/common/j;->i:F

    add-float/2addr v4, v5

    .line 92
    iget v5, p0, Lcom/google/zxing/common/j;->a:F

    mul-float v5, v5, v2

    iget v6, p0, Lcom/google/zxing/common/j;->d:F

    mul-float v6, v6, v3

    add-float/2addr v5, v6

    iget v6, p0, Lcom/google/zxing/common/j;->g:F

    add-float/2addr v5, v6

    div-float/2addr v5, v4

    aput v5, p1, v1

    .line 93
    iget v5, p0, Lcom/google/zxing/common/j;->b:F

    mul-float v5, v5, v2

    iget v2, p0, Lcom/google/zxing/common/j;->e:F

    mul-float v2, v2, v3

    add-float/2addr v5, v2

    iget v2, p0, Lcom/google/zxing/common/j;->h:F

    add-float/2addr v5, v2

    div-float/2addr v5, v4

    aput v5, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
