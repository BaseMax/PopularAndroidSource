.class public final Lcom/google/zxing/common/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/common/b;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Lcom/google/zxing/common/b;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/google/zxing/common/b;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0xa

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/zxing/common/a/b;-><init>(Lcom/google/zxing/common/b;III)V

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/b;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/zxing/common/a/b;->a:Lcom/google/zxing/common/b;

    .line 59
    invoke-virtual {p1}, Lcom/google/zxing/common/b;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/a/b;->b:I

    .line 60
    invoke-virtual {p1}, Lcom/google/zxing/common/b;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/google/zxing/common/a/b;->c:I

    .line 61
    div-int/lit8 p2, p2, 0x2

    sub-int p1, p3, p2

    .line 62
    iput p1, p0, Lcom/google/zxing/common/a/b;->d:I

    add-int/2addr p3, p2

    .line 63
    iput p3, p0, Lcom/google/zxing/common/a/b;->e:I

    sub-int p1, p4, p2

    .line 64
    iput p1, p0, Lcom/google/zxing/common/a/b;->g:I

    add-int/2addr p4, p2

    .line 65
    iput p4, p0, Lcom/google/zxing/common/a/b;->f:I

    .line 66
    iget p1, p0, Lcom/google/zxing/common/a/b;->g:I

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/google/zxing/common/a/b;->d:I

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/google/zxing/common/a/b;->f:I

    iget p2, p0, Lcom/google/zxing/common/a/b;->b:I

    if-ge p1, p2, :cond_0

    iget p1, p0, Lcom/google/zxing/common/a/b;->e:I

    iget p2, p0, Lcom/google/zxing/common/a/b;->c:I

    if-ge p1, p2, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object p1

    throw p1
.end method

.method private a(FFFF)Lcom/google/zxing/m;
    .locals 5

    .line 241
    invoke-static {p1, p2, p3, p4}, Lcom/google/zxing/common/a/a;->distance(FFFF)F

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/common/a/a;->round(F)I

    move-result v0

    sub-float/2addr p3, p1

    int-to-float v1, v0

    div-float/2addr p3, v1

    sub-float/2addr p4, p2

    div-float/2addr p4, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    int-to-float v2, v1

    mul-float v3, v2, p3

    add-float/2addr v3, p1

    .line 246
    invoke-static {v3}, Lcom/google/zxing/common/a/a;->round(F)I

    move-result v3

    mul-float v2, v2, p4

    add-float/2addr v2, p2

    .line 247
    invoke-static {v2}, Lcom/google/zxing/common/a/a;->round(F)I

    move-result v2

    .line 248
    iget-object v4, p0, Lcom/google/zxing/common/a/b;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v4, v3, v2}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 249
    new-instance p1, Lcom/google/zxing/m;

    int-to-float p2, v3

    int-to-float p3, v2

    invoke-direct {p1, p2, p3}, Lcom/google/zxing/m;-><init>(FF)V

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(IIIZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p4, :cond_1

    :goto_0
    if-gt p1, p2, :cond_3

    .line 315
    iget-object p4, p0, Lcom/google/zxing/common/a/b;->a:Lcom/google/zxing/common/b;

    invoke-virtual {p4, p1, p3}, Lcom/google/zxing/common/b;->get(II)Z

    move-result p4

    if-eqz p4, :cond_0

    return v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-gt p1, p2, :cond_3

    .line 321
    iget-object p4, p0, Lcom/google/zxing/common/a/b;->a:Lcom/google/zxing/common/b;

    invoke-virtual {p4, p3, p1}, Lcom/google/zxing/common/b;->get(II)Z

    move-result p4

    if-eqz p4, :cond_2

    return v0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final detect()[Lcom/google/zxing/m;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 87
    iget v0, p0, Lcom/google/zxing/common/a/b;->d:I

    .line 88
    iget v1, p0, Lcom/google/zxing/common/a/b;->e:I

    .line 89
    iget v2, p0, Lcom/google/zxing/common/a/b;->g:I

    .line 90
    iget v3, p0, Lcom/google/zxing/common/a/b;->f:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v7, v0

    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-eqz v0, :cond_15

    const/4 v0, 0x1

    const/4 v12, 0x0

    :cond_0
    :goto_1
    if-nez v0, :cond_1

    if-nez v6, :cond_3

    .line 108
    :cond_1
    iget v0, p0, Lcom/google/zxing/common/a/b;->c:I

    if-ge v1, v0, :cond_3

    .line 109
    invoke-direct {p0, v2, v3, v1, v4}, Lcom/google/zxing/common/a/b;->a(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x1

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    if-nez v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 119
    :cond_3
    iget v0, p0, Lcom/google/zxing/common/a/b;->c:I

    if-lt v1, v0, :cond_4

    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_6

    :cond_4
    const/4 v0, 0x1

    :cond_5
    :goto_3
    if-nez v0, :cond_6

    if-nez v8, :cond_8

    .line 128
    :cond_6
    iget v0, p0, Lcom/google/zxing/common/a/b;->b:I

    if-ge v3, v0, :cond_8

    .line 129
    invoke-direct {p0, v7, v1, v3, v5}, Lcom/google/zxing/common/a/b;->a(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v3, v3, 0x1

    const/4 v8, 0x1

    const/4 v12, 0x1

    goto :goto_3

    :cond_7
    if-nez v8, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 139
    :cond_8
    iget v0, p0, Lcom/google/zxing/common/a/b;->b:I

    if-lt v3, v0, :cond_9

    goto :goto_2

    :cond_9
    const/4 v0, 0x1

    :cond_a
    :goto_4
    if-nez v0, :cond_b

    if-nez v9, :cond_d

    :cond_b
    if-ltz v7, :cond_d

    .line 149
    invoke-direct {p0, v2, v3, v7, v4}, Lcom/google/zxing/common/a/b;->a(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_c

    add-int/lit8 v7, v7, -0x1

    const/4 v9, 0x1

    const/4 v12, 0x1

    goto :goto_4

    :cond_c
    if-nez v9, :cond_a

    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    :cond_d
    if-gez v7, :cond_e

    goto :goto_2

    :cond_e
    const/4 v0, 0x1

    :cond_f
    :goto_5
    if-nez v0, :cond_10

    if-nez v11, :cond_12

    :cond_10
    if-ltz v2, :cond_12

    .line 169
    invoke-direct {p0, v7, v1, v2, v5}, Lcom/google/zxing/common/a/b;->a(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_11

    add-int/lit8 v2, v2, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    goto :goto_5

    :cond_11
    if-nez v11, :cond_f

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_12
    if-gez v2, :cond_13

    goto :goto_2

    :cond_13
    if-eqz v12, :cond_14

    const/4 v10, 0x1

    :cond_14
    move v0, v12

    goto :goto_0

    :cond_15
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_1f

    if-eqz v10, :cond_1f

    sub-int v0, v1, v7

    const/4 v6, 0x0

    move-object v8, v6

    const/4 v9, 0x1

    :goto_7
    if-nez v8, :cond_16

    if-ge v9, v0, :cond_16

    int-to-float v8, v7

    sub-int v10, v3, v9

    int-to-float v10, v10

    add-int v11, v7, v9

    int-to-float v11, v11

    int-to-float v12, v3

    .line 196
    invoke-direct {p0, v8, v10, v11, v12}, Lcom/google/zxing/common/a/b;->a(FFFF)Lcom/google/zxing/m;

    move-result-object v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_16
    if-eqz v8, :cond_1e

    move-object v9, v6

    const/4 v10, 0x1

    :goto_8
    if-nez v9, :cond_17

    if-ge v10, v0, :cond_17

    int-to-float v9, v7

    add-int v11, v2, v10

    int-to-float v11, v11

    add-int v12, v7, v10

    int-to-float v12, v12

    int-to-float v13, v2

    .line 206
    invoke-direct {p0, v9, v11, v12, v13}, Lcom/google/zxing/common/a/b;->a(FFFF)Lcom/google/zxing/m;

    move-result-object v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_17
    if-eqz v9, :cond_1d

    move-object v7, v6

    const/4 v10, 0x1

    :goto_9
    if-nez v7, :cond_18

    if-ge v10, v0, :cond_18

    int-to-float v7, v1

    add-int v11, v2, v10

    int-to-float v11, v11

    sub-int v12, v1, v10

    int-to-float v12, v12

    int-to-float v13, v2

    .line 216
    invoke-direct {p0, v7, v11, v12, v13}, Lcom/google/zxing/common/a/b;->a(FFFF)Lcom/google/zxing/m;

    move-result-object v7

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_18
    if-eqz v7, :cond_1c

    const/4 v2, 0x1

    :goto_a
    if-nez v6, :cond_19

    if-ge v2, v0, :cond_19

    int-to-float v6, v1

    sub-int v10, v3, v2

    int-to-float v10, v10

    sub-int v11, v1, v2

    int-to-float v11, v11

    int-to-float v12, v3

    .line 226
    invoke-direct {p0, v6, v10, v11, v12}, Lcom/google/zxing/common/a/b;->a(FFFF)Lcom/google/zxing/m;

    move-result-object v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_19
    if-eqz v6, :cond_1b

    .line 1278
    invoke-virtual {v6}, Lcom/google/zxing/m;->getX()F

    move-result v0

    .line 1279
    invoke-virtual {v6}, Lcom/google/zxing/m;->getY()F

    move-result v1

    .line 1280
    invoke-virtual {v8}, Lcom/google/zxing/m;->getX()F

    move-result v2

    .line 1281
    invoke-virtual {v8}, Lcom/google/zxing/m;->getY()F

    move-result v3

    .line 1282
    invoke-virtual {v7}, Lcom/google/zxing/m;->getX()F

    move-result v6

    .line 1283
    invoke-virtual {v7}, Lcom/google/zxing/m;->getY()F

    move-result v7

    .line 1284
    invoke-virtual {v9}, Lcom/google/zxing/m;->getX()F

    move-result v8

    .line 1285
    invoke-virtual {v9}, Lcom/google/zxing/m;->getY()F

    move-result v9

    .line 1287
    iget v10, p0, Lcom/google/zxing/common/a/b;->c:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x4

    const/high16 v14, 0x3f800000    # 1.0f

    cmpg-float v10, v0, v10

    if-gez v10, :cond_1a

    new-array v10, v13, [Lcom/google/zxing/m;

    .line 1288
    new-instance v13, Lcom/google/zxing/m;

    sub-float/2addr v8, v14

    add-float/2addr v9, v14

    invoke-direct {v13, v8, v9}, Lcom/google/zxing/m;-><init>(FF)V

    aput-object v13, v10, v4

    new-instance v4, Lcom/google/zxing/m;

    add-float/2addr v2, v14

    add-float/2addr v3, v14

    invoke-direct {v4, v2, v3}, Lcom/google/zxing/m;-><init>(FF)V

    aput-object v4, v10, v5

    new-instance v2, Lcom/google/zxing/m;

    sub-float/2addr v6, v14

    sub-float/2addr v7, v14

    invoke-direct {v2, v6, v7}, Lcom/google/zxing/m;-><init>(FF)V

    aput-object v2, v10, v12

    new-instance v2, Lcom/google/zxing/m;

    add-float/2addr v0, v14

    sub-float/2addr v1, v14

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/m;-><init>(FF)V

    aput-object v2, v10, v11

    return-object v10

    :cond_1a
    new-array v10, v13, [Lcom/google/zxing/m;

    .line 1294
    new-instance v13, Lcom/google/zxing/m;

    add-float/2addr v8, v14

    add-float/2addr v9, v14

    invoke-direct {v13, v8, v9}, Lcom/google/zxing/m;-><init>(FF)V

    aput-object v13, v10, v4

    new-instance v4, Lcom/google/zxing/m;

    add-float/2addr v2, v14

    sub-float/2addr v3, v14

    invoke-direct {v4, v2, v3}, Lcom/google/zxing/m;-><init>(FF)V

    aput-object v4, v10, v5

    new-instance v2, Lcom/google/zxing/m;

    sub-float/2addr v6, v14

    add-float/2addr v7, v14

    invoke-direct {v2, v6, v7}, Lcom/google/zxing/m;-><init>(FF)V

    aput-object v2, v10, v12

    new-instance v2, Lcom/google/zxing/m;

    sub-float/2addr v0, v14

    sub-float/2addr v1, v14

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/m;-><init>(FF)V

    aput-object v2, v10, v11

    return-object v10

    .line 230
    :cond_1b
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v0

    throw v0

    .line 220
    :cond_1c
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v0

    throw v0

    .line 210
    :cond_1d
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v0

    throw v0

    .line 200
    :cond_1e
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v0

    throw v0

    .line 236
    :cond_1f
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v0

    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method
