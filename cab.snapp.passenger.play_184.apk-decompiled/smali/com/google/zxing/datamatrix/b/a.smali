.class public final Lcom/google/zxing/datamatrix/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/b/a$b;,
        Lcom/google/zxing/datamatrix/b/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/zxing/common/b;

.field private final b:Lcom/google/zxing/common/a/b;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/zxing/datamatrix/b/a;->a:Lcom/google/zxing/common/b;

    .line 48
    new-instance v0, Lcom/google/zxing/common/a/b;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/a/b;-><init>(Lcom/google/zxing/common/b;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/b/a;->b:Lcom/google/zxing/common/a/b;

    return-void
.end method

.method private static a(Lcom/google/zxing/m;Lcom/google/zxing/m;)I
    .locals 0

    .line 310
    invoke-static {p0, p1}, Lcom/google/zxing/m;->distance(Lcom/google/zxing/m;Lcom/google/zxing/m;)F

    move-result p0

    invoke-static {p0}, Lcom/google/zxing/common/a/a;->round(F)I

    move-result p0

    return p0
.end method

.method private static a(Lcom/google/zxing/common/b;Lcom/google/zxing/m;Lcom/google/zxing/m;Lcom/google/zxing/m;Lcom/google/zxing/m;II)Lcom/google/zxing/common/b;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    .line 329
    invoke-static {}, Lcom/google/zxing/common/h;->getInstance()Lcom/google/zxing/common/h;

    move-result-object v0

    move/from16 v4, p5

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v4, v5

    move v8, v4

    move v6, v4

    move/from16 v4, p6

    int-to-float v4, v4

    sub-float v11, v4, v5

    move v9, v11

    .line 342
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/m;->getX()F

    move-result v12

    .line 343
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/m;->getY()F

    move-result v13

    .line 344
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/m;->getX()F

    move-result v14

    .line 345
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/m;->getY()F

    move-result v15

    .line 346
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/m;->getX()F

    move-result v16

    .line 347
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/m;->getY()F

    move-result v17

    .line 348
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/m;->getX()F

    move-result v18

    .line 349
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/m;->getY()F

    move-result v19

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f000000    # 0.5f

    .line 331
    invoke-virtual/range {v0 .. v19}, Lcom/google/zxing/common/h;->sampleGrid(Lcom/google/zxing/common/b;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/b;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Map;Lcom/google/zxing/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/m;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/zxing/m;",
            ")V"
        }
    .end annotation

    .line 317
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/google/zxing/m;)Z
    .locals 3

    .line 306
    invoke-virtual {p1}, Lcom/google/zxing/m;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/m;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/google/zxing/datamatrix/b/a;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v2}, Lcom/google/zxing/common/b;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/m;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/m;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/google/zxing/datamatrix/b/a;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v0}, Lcom/google/zxing/common/b;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/google/zxing/m;Lcom/google/zxing/m;)Lcom/google/zxing/datamatrix/b/a$a;
    .locals 18

    move-object/from16 v0, p0

    .line 357
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/m;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 358
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/m;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 359
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/m;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 360
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/m;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int v5, v4, v2

    .line 361
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int v6, v3, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v8, 0x1

    if-le v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    move/from16 v16, v2

    move v2, v1

    move/from16 v1, v16

    move/from16 v17, v4

    move v4, v3

    move/from16 v3, v17

    :cond_1
    sub-int v6, v3, v1

    .line 371
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int v9, v4, v2

    .line 372
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    neg-int v10, v6

    .line 373
    div-int/lit8 v10, v10, 0x2

    const/4 v11, -0x1

    if-ge v2, v4, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, -0x1

    :goto_1
    if-ge v1, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v8, -0x1

    .line 377
    :goto_2
    iget-object v11, v0, Lcom/google/zxing/datamatrix/b/a;->a:Lcom/google/zxing/common/b;

    if-eqz v5, :cond_4

    move v13, v2

    goto :goto_3

    :cond_4
    move v13, v1

    :goto_3
    if-eqz v5, :cond_5

    move v14, v1

    goto :goto_4

    :cond_5
    move v14, v2

    :goto_4
    invoke-virtual {v11, v13, v14}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v11

    move v13, v10

    const/4 v10, 0x0

    :goto_5
    if-eq v1, v3, :cond_a

    .line 379
    iget-object v14, v0, Lcom/google/zxing/datamatrix/b/a;->a:Lcom/google/zxing/common/b;

    if-eqz v5, :cond_6

    move v15, v2

    goto :goto_6

    :cond_6
    move v15, v1

    :goto_6
    if-eqz v5, :cond_7

    move v7, v1

    goto :goto_7

    :cond_7
    move v7, v2

    :goto_7
    invoke-virtual {v14, v15, v7}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v7

    if-eq v7, v11, :cond_8

    add-int/lit8 v10, v10, 0x1

    move v11, v7

    :cond_8
    add-int/2addr v13, v9

    if-lez v13, :cond_9

    if-eq v2, v4, :cond_a

    add-int/2addr v2, v12

    sub-int/2addr v13, v6

    :cond_9
    add-int/2addr v1, v8

    goto :goto_5

    .line 393
    :cond_a
    new-instance v1, Lcom/google/zxing/datamatrix/b/a$a;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v10, v4}, Lcom/google/zxing/datamatrix/b/a$a;-><init>(Lcom/google/zxing/m;Lcom/google/zxing/m;IB)V

    return-object v1
.end method


# virtual methods
.method public final detect()Lcom/google/zxing/common/f;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 59
    iget-object v1, v0, Lcom/google/zxing/datamatrix/b/a;->b:Lcom/google/zxing/common/a/b;

    invoke-virtual {v1}, Lcom/google/zxing/common/a/b;->detect()[Lcom/google/zxing/m;

    move-result-object v1

    const/4 v2, 0x0

    .line 60
    aget-object v3, v1, v2

    const/4 v4, 0x1

    .line 61
    aget-object v5, v1, v4

    const/4 v6, 0x2

    .line 62
    aget-object v7, v1, v6

    const/4 v8, 0x3

    .line 63
    aget-object v1, v1, v8

    .line 68
    new-instance v9, Ljava/util/ArrayList;

    const/4 v10, 0x4

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    invoke-direct {v0, v3, v5}, Lcom/google/zxing/datamatrix/b/a;->b(Lcom/google/zxing/m;Lcom/google/zxing/m;)Lcom/google/zxing/datamatrix/b/a$a;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-direct {v0, v3, v7}, Lcom/google/zxing/datamatrix/b/a;->b(Lcom/google/zxing/m;Lcom/google/zxing/m;)Lcom/google/zxing/datamatrix/b/a$a;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-direct {v0, v5, v1}, Lcom/google/zxing/datamatrix/b/a;->b(Lcom/google/zxing/m;Lcom/google/zxing/m;)Lcom/google/zxing/datamatrix/b/a$a;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-direct {v0, v7, v1}, Lcom/google/zxing/datamatrix/b/a;->b(Lcom/google/zxing/m;Lcom/google/zxing/m;)Lcom/google/zxing/datamatrix/b/a$a;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v11, Lcom/google/zxing/datamatrix/b/a$b;

    invoke-direct {v11, v2}, Lcom/google/zxing/datamatrix/b/a$b;-><init>(B)V

    invoke-static {v9, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 77
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/datamatrix/b/a$a;

    .line 78
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/datamatrix/b/a$a;

    .line 82
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1412
    iget-object v13, v11, Lcom/google/zxing/datamatrix/b/a$a;->a:Lcom/google/zxing/m;

    .line 83
    invoke-static {v12, v13}, Lcom/google/zxing/datamatrix/b/a;->a(Ljava/util/Map;Lcom/google/zxing/m;)V

    .line 1416
    iget-object v11, v11, Lcom/google/zxing/datamatrix/b/a$a;->b:Lcom/google/zxing/m;

    .line 84
    invoke-static {v12, v11}, Lcom/google/zxing/datamatrix/b/a;->a(Ljava/util/Map;Lcom/google/zxing/m;)V

    .line 2412
    iget-object v11, v9, Lcom/google/zxing/datamatrix/b/a$a;->a:Lcom/google/zxing/m;

    .line 85
    invoke-static {v12, v11}, Lcom/google/zxing/datamatrix/b/a;->a(Ljava/util/Map;Lcom/google/zxing/m;)V

    .line 2416
    iget-object v9, v9, Lcom/google/zxing/datamatrix/b/a$a;->b:Lcom/google/zxing/m;

    .line 86
    invoke-static {v12, v9}, Lcom/google/zxing/datamatrix/b/a;->a(Ljava/util/Map;Lcom/google/zxing/m;)V

    .line 91
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 92
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/zxing/m;

    .line 93
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 94
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v6, :cond_0

    move-object/from16 v14, v17

    goto :goto_0

    :cond_0
    if-nez v13, :cond_1

    move-object/from16 v13, v17

    goto :goto_0

    :cond_1
    move-object/from16 v15, v17

    goto :goto_0

    :cond_2
    if-eqz v13, :cond_15

    if-eqz v14, :cond_15

    if-eqz v15, :cond_15

    new-array v9, v8, [Lcom/google/zxing/m;

    aput-object v13, v9, v2

    aput-object v14, v9, v4

    aput-object v15, v9, v6

    .line 113
    invoke-static {v9}, Lcom/google/zxing/m;->orderBestPatterns([Lcom/google/zxing/m;)V

    .line 116
    aget-object v11, v9, v2

    .line 117
    aget-object v13, v9, v4

    .line 118
    aget-object v9, v9, v6

    .line 122
    invoke-interface {v12, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    move-object v1, v3

    goto :goto_1

    .line 124
    :cond_3
    invoke-interface {v12, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object v1, v5

    goto :goto_1

    .line 126
    :cond_4
    invoke-interface {v12, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object v1, v7

    .line 141
    :cond_5
    :goto_1
    invoke-direct {v0, v9, v1}, Lcom/google/zxing/datamatrix/b/a;->b(Lcom/google/zxing/m;Lcom/google/zxing/m;)Lcom/google/zxing/datamatrix/b/a$a;

    move-result-object v3

    .line 2420
    iget v3, v3, Lcom/google/zxing/datamatrix/b/a$a;->c:I

    .line 142
    invoke-direct {v0, v11, v1}, Lcom/google/zxing/datamatrix/b/a;->b(Lcom/google/zxing/m;Lcom/google/zxing/m;)Lcom/google/zxing/datamatrix/b/a$a;

    move-result-object v5

    .line 3420
    iget v5, v5, Lcom/google/zxing/datamatrix/b/a$a;->c:I

    and-int/lit8 v7, v3, 0x1

    if-ne v7, v4, :cond_6

    add-int/lit8 v3, v3, 0x1

    :cond_6
    add-int/2addr v3, v6

    and-int/lit8 v7, v5, 0x1

    if-ne v7, v4, :cond_7

    add-int/lit8 v5, v5, 0x1

    :cond_7
    add-int/2addr v5, v6

    mul-int/lit8 v7, v3, 0x4

    mul-int/lit8 v12, v5, 0x7

    if-ge v7, v12, :cond_e

    mul-int/lit8 v7, v5, 0x4

    mul-int/lit8 v12, v3, 0x7

    if-lt v7, v12, :cond_8

    goto/16 :goto_5

    .line 189
    :cond_8
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 10273
    invoke-static {v13, v11}, Lcom/google/zxing/datamatrix/b/a;->a(Lcom/google/zxing/m;Lcom/google/zxing/m;)I

    move-result v5

    int-to-float v5, v5

    int-to-float v3, v3

    div-float/2addr v5, v3

    .line 10274
    invoke-static {v9, v1}, Lcom/google/zxing/datamatrix/b/a;->a(Lcom/google/zxing/m;Lcom/google/zxing/m;)I

    move-result v7

    .line 10275
    invoke-virtual {v1}, Lcom/google/zxing/m;->getX()F

    move-result v12

    invoke-virtual {v9}, Lcom/google/zxing/m;->getX()F

    move-result v14

    sub-float/2addr v12, v14

    int-to-float v7, v7

    div-float/2addr v12, v7

    .line 10276
    invoke-virtual {v1}, Lcom/google/zxing/m;->getY()F

    move-result v14

    invoke-virtual {v9}, Lcom/google/zxing/m;->getY()F

    move-result v15

    sub-float/2addr v14, v15

    div-float/2addr v14, v7

    .line 10278
    new-instance v7, Lcom/google/zxing/m;

    invoke-virtual {v1}, Lcom/google/zxing/m;->getX()F

    move-result v15

    mul-float v12, v12, v5

    add-float/2addr v15, v12

    invoke-virtual {v1}, Lcom/google/zxing/m;->getY()F

    move-result v12

    mul-float v5, v5, v14

    add-float/2addr v12, v5

    invoke-direct {v7, v15, v12}, Lcom/google/zxing/m;-><init>(FF)V

    .line 10280
    invoke-static {v13, v9}, Lcom/google/zxing/datamatrix/b/a;->a(Lcom/google/zxing/m;Lcom/google/zxing/m;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    .line 10281
    invoke-static {v11, v1}, Lcom/google/zxing/datamatrix/b/a;->a(Lcom/google/zxing/m;Lcom/google/zxing/m;)I

    move-result v3

    .line 10282
    invoke-virtual {v1}, Lcom/google/zxing/m;->getX()F

    move-result v12

    invoke-virtual {v11}, Lcom/google/zxing/m;->getX()F

    move-result v14

    sub-float/2addr v12, v14

    int-to-float v3, v3

    div-float/2addr v12, v3

    .line 10283
    invoke-virtual {v1}, Lcom/google/zxing/m;->getY()F

    move-result v14

    invoke-virtual {v11}, Lcom/google/zxing/m;->getY()F

    move-result v15

    sub-float/2addr v14, v15

    div-float/2addr v14, v3

    .line 10285
    new-instance v3, Lcom/google/zxing/m;

    invoke-virtual {v1}, Lcom/google/zxing/m;->getX()F

    move-result v15

    mul-float v12, v12, v5

    add-float/2addr v15, v12

    invoke-virtual {v1}, Lcom/google/zxing/m;->getY()F

    move-result v12

    mul-float v5, v5, v14

    add-float/2addr v12, v5

    invoke-direct {v3, v15, v12}, Lcom/google/zxing/m;-><init>(FF)V

    .line 10287
    invoke-direct {v0, v7}, Lcom/google/zxing/datamatrix/b/a;->a(Lcom/google/zxing/m;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 10288
    invoke-direct {v0, v3}, Lcom/google/zxing/datamatrix/b/a;->a(Lcom/google/zxing/m;)Z

    move-result v5

    if-nez v5, :cond_b

    const/16 v18, 0x0

    goto :goto_3

    .line 10293
    :cond_9
    invoke-direct {v0, v3}, Lcom/google/zxing/datamatrix/b/a;->a(Lcom/google/zxing/m;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_2

    .line 10297
    :cond_a
    invoke-direct {v0, v9, v7}, Lcom/google/zxing/datamatrix/b/a;->b(Lcom/google/zxing/m;Lcom/google/zxing/m;)Lcom/google/zxing/datamatrix/b/a$a;

    move-result-object v5

    .line 10420
    iget v5, v5, Lcom/google/zxing/datamatrix/b/a$a;->c:I

    .line 10298
    invoke-direct {v0, v11, v7}, Lcom/google/zxing/datamatrix/b/a;->b(Lcom/google/zxing/m;Lcom/google/zxing/m;)Lcom/google/zxing/datamatrix/b/a$a;

    move-result-object v12

    .line 11420
    iget v12, v12, Lcom/google/zxing/datamatrix/b/a$a;->c:I

    sub-int/2addr v5, v12

    .line 10297
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 10299
    invoke-direct {v0, v9, v3}, Lcom/google/zxing/datamatrix/b/a;->b(Lcom/google/zxing/m;Lcom/google/zxing/m;)Lcom/google/zxing/datamatrix/b/a$a;

    move-result-object v12

    .line 12420
    iget v12, v12, Lcom/google/zxing/datamatrix/b/a$a;->c:I

    .line 10300
    invoke-direct {v0, v11, v3}, Lcom/google/zxing/datamatrix/b/a;->b(Lcom/google/zxing/m;Lcom/google/zxing/m;)Lcom/google/zxing/datamatrix/b/a$a;

    move-result-object v14

    .line 13420
    iget v14, v14, Lcom/google/zxing/datamatrix/b/a$a;->c:I

    sub-int/2addr v12, v14

    .line 10299
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-gt v5, v12, :cond_b

    :goto_2
    move-object/from16 v18, v7

    goto :goto_3

    :cond_b
    move-object/from16 v18, v3

    :goto_3
    if-nez v18, :cond_c

    goto :goto_4

    :cond_c
    move-object/from16 v1, v18

    .line 197
    :goto_4
    invoke-direct {v0, v9, v1}, Lcom/google/zxing/datamatrix/b/a;->b(Lcom/google/zxing/m;Lcom/google/zxing/m;)Lcom/google/zxing/datamatrix/b/a$a;

    move-result-object v3

    .line 14420
    iget v3, v3, Lcom/google/zxing/datamatrix/b/a$a;->c:I

    .line 198
    invoke-direct {v0, v11, v1}, Lcom/google/zxing/datamatrix/b/a;->b(Lcom/google/zxing/m;Lcom/google/zxing/m;)Lcom/google/zxing/datamatrix/b/a$a;

    move-result-object v5

    .line 15420
    iget v5, v5, Lcom/google/zxing/datamatrix/b/a$a;->c:I

    .line 197
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v4

    and-int/lit8 v5, v3, 0x1

    if-ne v5, v4, :cond_d

    add-int/lit8 v3, v3, 0x1

    :cond_d
    move/from16 v25, v3

    .line 204
    iget-object v3, v0, Lcom/google/zxing/datamatrix/b/a;->a:Lcom/google/zxing/common/b;

    move-object/from16 v19, v3

    move-object/from16 v20, v9

    move-object/from16 v21, v13

    move-object/from16 v22, v11

    move-object/from16 v23, v1

    move/from16 v24, v25

    invoke-static/range {v19 .. v25}, Lcom/google/zxing/datamatrix/b/a;->a(Lcom/google/zxing/common/b;Lcom/google/zxing/m;Lcom/google/zxing/m;Lcom/google/zxing/m;Lcom/google/zxing/m;II)Lcom/google/zxing/common/b;

    move-result-object v3

    goto/16 :goto_9

    .line 4227
    :cond_e
    :goto_5
    invoke-static {v13, v11}, Lcom/google/zxing/datamatrix/b/a;->a(Lcom/google/zxing/m;Lcom/google/zxing/m;)I

    move-result v7

    int-to-float v7, v7

    int-to-float v12, v3

    div-float/2addr v7, v12

    .line 4228
    invoke-static {v9, v1}, Lcom/google/zxing/datamatrix/b/a;->a(Lcom/google/zxing/m;Lcom/google/zxing/m;)I

    move-result v12

    .line 4229
    invoke-virtual {v1}, Lcom/google/zxing/m;->getX()F

    move-result v14

    invoke-virtual {v9}, Lcom/google/zxing/m;->getX()F

    move-result v15

    sub-float/2addr v14, v15

    int-to-float v12, v12

    div-float/2addr v14, v12

    .line 4230
    invoke-virtual {v1}, Lcom/google/zxing/m;->getY()F

    move-result v15

    invoke-virtual {v9}, Lcom/google/zxing/m;->getY()F

    move-result v16

    sub-float v15, v15, v16

    div-float/2addr v15, v12

    .line 4232
    new-instance v12, Lcom/google/zxing/m;

    invoke-virtual {v1}, Lcom/google/zxing/m;->getX()F

    move-result v16

    mul-float v14, v14, v7

    add-float v14, v16, v14

    invoke-virtual {v1}, Lcom/google/zxing/m;->getY()F

    move-result v16

    mul-float v7, v7, v15

    add-float v7, v16, v7

    invoke-direct {v12, v14, v7}, Lcom/google/zxing/m;-><init>(FF)V

    .line 4234
    invoke-static {v13, v9}, Lcom/google/zxing/datamatrix/b/a;->a(Lcom/google/zxing/m;Lcom/google/zxing/m;)I

    move-result v7

    int-to-float v7, v7

    int-to-float v14, v5

    div-float/2addr v7, v14

    .line 4235
    invoke-static {v11, v1}, Lcom/google/zxing/datamatrix/b/a;->a(Lcom/google/zxing/m;Lcom/google/zxing/m;)I

    move-result v14

    .line 4236
    invoke-virtual {v1}, Lcom/google/zxing/m;->getX()F

    move-result v15

    invoke-virtual {v11}, Lcom/google/zxing/m;->getX()F

    move-result v16

    sub-float v15, v15, v16

    int-to-float v14, v14

    div-float/2addr v15, v14

    .line 4237
    invoke-virtual {v1}, Lcom/google/zxing/m;->getY()F

    move-result v16

    invoke-virtual {v11}, Lcom/google/zxing/m;->getY()F

    move-result v17

    sub-float v16, v16, v17

    div-float v16, v16, v14

    .line 4239
    new-instance v14, Lcom/google/zxing/m;

    invoke-virtual {v1}, Lcom/google/zxing/m;->getX()F

    move-result v17

    mul-float v15, v15, v7

    add-float v15, v17, v15

    invoke-virtual {v1}, Lcom/google/zxing/m;->getY()F

    move-result v17

    mul-float v7, v7, v16

    add-float v7, v17, v7

    invoke-direct {v14, v15, v7}, Lcom/google/zxing/m;-><init>(FF)V

    .line 4241
    invoke-direct {v0, v12}, Lcom/google/zxing/datamatrix/b/a;->a(Lcom/google/zxing/m;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 4242
    invoke-direct {v0, v14}, Lcom/google/zxing/datamatrix/b/a;->a(Lcom/google/zxing/m;)Z

    move-result v3

    if-nez v3, :cond_11

    const/16 v18, 0x0

    goto :goto_7

    .line 4247
    :cond_f
    invoke-direct {v0, v14}, Lcom/google/zxing/datamatrix/b/a;->a(Lcom/google/zxing/m;)Z

    move-result v7

    if-nez v7, :cond_10

    goto :goto_6

    .line 4251
    :cond_10
    invoke-direct {v0, v9, v12}, Lcom/google/zxing/datamatrix/b/a;->b(Lcom/google/zxing/m;Lcom/google/zxing/m;)Lcom/google/zxing/datamatrix/b/a$a;

    move-result-object v7

    .line 4420
    iget v7, v7, Lcom/google/zxing/datamatrix/b/a$a;->c:I

    sub-int v7, v3, v7

    .line 4251
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 4252
    invoke-direct {v0, v11, v12}, Lcom/google/zxing/datamatrix/b/a;->b(Lcom/google/zxing/m;Lcom/google/zxing/m;)Lcom/google/zxing/datamatrix/b/a$a;

    move-result-object v15

    .line 5420
    iget v15, v15, Lcom/google/zxing/datamatrix/b/a$a;->c:I

    sub-int v15, v5, v15

    .line 4252
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    add-int/2addr v7, v15

    .line 4253
    invoke-direct {v0, v9, v14}, Lcom/google/zxing/datamatrix/b/a;->b(Lcom/google/zxing/m;Lcom/google/zxing/m;)Lcom/google/zxing/datamatrix/b/a$a;

    move-result-object v15

    .line 6420
    iget v15, v15, Lcom/google/zxing/datamatrix/b/a$a;->c:I

    sub-int/2addr v3, v15

    .line 4253
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 4254
    invoke-direct {v0, v11, v14}, Lcom/google/zxing/datamatrix/b/a;->b(Lcom/google/zxing/m;Lcom/google/zxing/m;)Lcom/google/zxing/datamatrix/b/a$a;

    move-result-object v15

    .line 7420
    iget v15, v15, Lcom/google/zxing/datamatrix/b/a$a;->c:I

    sub-int/2addr v5, v15

    .line 4254
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v3, v5

    if-gt v7, v3, :cond_11

    :goto_6
    move-object/from16 v18, v12

    goto :goto_7

    :cond_11
    move-object/from16 v18, v14

    :goto_7
    if-nez v18, :cond_12

    goto :goto_8

    :cond_12
    move-object/from16 v1, v18

    .line 171
    :goto_8
    invoke-direct {v0, v9, v1}, Lcom/google/zxing/datamatrix/b/a;->b(Lcom/google/zxing/m;Lcom/google/zxing/m;)Lcom/google/zxing/datamatrix/b/a$a;

    move-result-object v3

    .line 8420
    iget v3, v3, Lcom/google/zxing/datamatrix/b/a$a;->c:I

    .line 172
    invoke-direct {v0, v11, v1}, Lcom/google/zxing/datamatrix/b/a;->b(Lcom/google/zxing/m;Lcom/google/zxing/m;)Lcom/google/zxing/datamatrix/b/a$a;

    move-result-object v5

    .line 9420
    iget v5, v5, Lcom/google/zxing/datamatrix/b/a$a;->c:I

    and-int/lit8 v7, v3, 0x1

    if-ne v7, v4, :cond_13

    add-int/lit8 v3, v3, 0x1

    :cond_13
    move/from16 v24, v3

    and-int/lit8 v3, v5, 0x1

    if-ne v3, v4, :cond_14

    add-int/lit8 v5, v5, 0x1

    :cond_14
    move/from16 v25, v5

    .line 184
    iget-object v3, v0, Lcom/google/zxing/datamatrix/b/a;->a:Lcom/google/zxing/common/b;

    move-object/from16 v19, v3

    move-object/from16 v20, v9

    move-object/from16 v21, v13

    move-object/from16 v22, v11

    move-object/from16 v23, v1

    invoke-static/range {v19 .. v25}, Lcom/google/zxing/datamatrix/b/a;->a(Lcom/google/zxing/common/b;Lcom/google/zxing/m;Lcom/google/zxing/m;Lcom/google/zxing/m;Lcom/google/zxing/m;II)Lcom/google/zxing/common/b;

    move-result-object v3

    .line 213
    :goto_9
    new-instance v5, Lcom/google/zxing/common/f;

    new-array v7, v10, [Lcom/google/zxing/m;

    aput-object v9, v7, v2

    aput-object v13, v7, v4

    aput-object v11, v7, v6

    aput-object v1, v7, v8

    invoke-direct {v5, v3, v7}, Lcom/google/zxing/common/f;-><init>(Lcom/google/zxing/common/b;[Lcom/google/zxing/m;)V

    return-object v5

    .line 107
    :cond_15
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v1

    goto :goto_b

    :goto_a
    throw v1

    :goto_b
    goto :goto_a
.end method
