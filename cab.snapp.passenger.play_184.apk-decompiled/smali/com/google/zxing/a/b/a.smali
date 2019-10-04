.class public final Lcom/google/zxing/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/a/b/a$a;
    }
.end annotation


# static fields
.field private static final a:[I


# instance fields
.field private final b:Lcom/google/zxing/common/b;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 39
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/a/b/a;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xee0
        0x1dc
        0x83b
        0x707
    .end array-data
.end method

.method public constructor <init>(Lcom/google/zxing/common/b;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/zxing/a/b/a;->b:Lcom/google/zxing/common/b;

    return-void
.end method

.method private static a(Lcom/google/zxing/m;Lcom/google/zxing/m;)F
    .locals 2

    .line 562
    invoke-virtual {p0}, Lcom/google/zxing/m;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/m;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/zxing/m;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/m;->getY()F

    move-result p1

    invoke-static {v0, p0, v1, p1}, Lcom/google/zxing/common/a/a;->distance(FFFF)F

    move-result p0

    return p0
.end method

.method private static a(JZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    const/4 p2, 0x7

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/16 p2, 0xa

    const/4 v1, 0x4

    :goto_0
    sub-int v2, p2, v1

    .line 207
    new-array v3, p2, [I

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_1

    long-to-int v4, p0

    and-int/lit8 v4, v4, 0xf

    .line 209
    aput v4, v3, p2

    shr-long/2addr p0, v0

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 213
    :cond_1
    :try_start_0
    new-instance p0, Lcom/google/zxing/common/b/c;

    sget-object p1, Lcom/google/zxing/common/b/a;->AZTEC_PARAM:Lcom/google/zxing/common/b/a;

    invoke-direct {p0, p1}, Lcom/google/zxing/common/b/c;-><init>(Lcom/google/zxing/common/b/a;)V

    .line 214
    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/b/c;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/b/d; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    :goto_2
    if-ge p0, v1, :cond_2

    shl-int/lit8 p1, p1, 0x4

    .line 221
    aget p2, v3, p0

    add-int/2addr p1, p2

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_2
    return p1

    .line 216
    :catch_0
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object p0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method private a(Lcom/google/zxing/a/b/a$a;Lcom/google/zxing/a/b/a$a;)I
    .locals 11

    .line 463
    invoke-static {p1, p2}, Lcom/google/zxing/a/b/a;->b(Lcom/google/zxing/a/b/a$a;Lcom/google/zxing/a/b/a$a;)F

    move-result v0

    .line 10589
    iget v1, p2, Lcom/google/zxing/a/b/a$a;->a:I

    .line 11589
    iget v2, p1, Lcom/google/zxing/a/b/a$a;->a:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 11593
    iget p2, p2, Lcom/google/zxing/a/b/a$a;->b:I

    .line 12593
    iget v2, p1, Lcom/google/zxing/a/b/a$a;->b:I

    sub-int/2addr p2, v2

    int-to-float p2, p2

    div-float/2addr p2, v0

    .line 13589
    iget v2, p1, Lcom/google/zxing/a/b/a$a;->a:I

    int-to-float v2, v2

    .line 13593
    iget v3, p1, Lcom/google/zxing/a/b/a$a;->b:I

    int-to-float v3, v3

    .line 471
    iget-object v4, p0, Lcom/google/zxing/a/b/a;->b:Lcom/google/zxing/common/b;

    .line 14589
    iget v5, p1, Lcom/google/zxing/a/b/a$a;->a:I

    .line 14593
    iget p1, p1, Lcom/google/zxing/a/b/a$a;->b:I

    .line 471
    invoke-virtual {v4, v5, p1}, Lcom/google/zxing/common/b;->get(II)Z

    move-result p1

    float-to-double v4, v0

    .line 473
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x0

    move v6, v2

    move v7, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    add-float/2addr v6, v1

    add-float/2addr v7, p2

    .line 477
    iget-object v8, p0, Lcom/google/zxing/a/b/a;->b:Lcom/google/zxing/common/b;

    invoke-static {v6}, Lcom/google/zxing/common/a/a;->round(F)I

    move-result v9

    invoke-static {v7}, Lcom/google/zxing/common/a/a;->round(F)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v8

    if-eq v8, p1, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    int-to-float p2, v3

    div-float/2addr p2, v0

    const v0, 0x3dcccccd    # 0.1f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_2

    const v1, 0x3f666666    # 0.9f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    return v5

    :cond_2
    const/4 v1, 0x1

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_3

    const/4 v5, 0x1

    :cond_3
    if-ne v5, p1, :cond_4

    return v1

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method private a(Lcom/google/zxing/m;Lcom/google/zxing/m;I)I
    .locals 7

    .line 403
    invoke-static {p1, p2}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/m;Lcom/google/zxing/m;)F

    move-result v0

    int-to-float v1, p3

    div-float v1, v0, v1

    .line 405
    invoke-virtual {p1}, Lcom/google/zxing/m;->getX()F

    move-result v2

    .line 406
    invoke-virtual {p1}, Lcom/google/zxing/m;->getY()F

    move-result v3

    .line 407
    invoke-virtual {p2}, Lcom/google/zxing/m;->getX()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/zxing/m;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float v4, v4, v1

    div-float/2addr v4, v0

    .line 408
    invoke-virtual {p2}, Lcom/google/zxing/m;->getY()F

    move-result p2

    invoke-virtual {p1}, Lcom/google/zxing/m;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    mul-float v1, v1, p2

    div-float/2addr v1, v0

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    if-ge p1, p3, :cond_1

    .line 410
    iget-object v0, p0, Lcom/google/zxing/a/b/a;->b:Lcom/google/zxing/common/b;

    int-to-float v5, p1

    mul-float v6, v5, v4

    add-float/2addr v6, v2

    invoke-static {v6}, Lcom/google/zxing/common/a/a;->round(F)I

    move-result v6

    mul-float v5, v5, v1

    add-float/2addr v5, v3

    invoke-static {v5}, Lcom/google/zxing/common/a/a;->round(F)I

    move-result v5

    invoke-virtual {v0, v6, v5}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v0

    if-eqz v0, :cond_0

    sub-int v0, p3, p1

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    shl-int v0, v5, v0

    or-int/2addr p2, v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method private a()Lcom/google/zxing/a/b/a$a;
    .locals 12

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 304
    :try_start_0
    new-instance v5, Lcom/google/zxing/common/a/b;

    iget-object v6, p0, Lcom/google/zxing/a/b/a;->b:Lcom/google/zxing/common/b;

    invoke-direct {v5, v6}, Lcom/google/zxing/common/a/b;-><init>(Lcom/google/zxing/common/b;)V

    invoke-virtual {v5}, Lcom/google/zxing/common/a/b;->detect()[Lcom/google/zxing/m;

    move-result-object v5

    .line 305
    aget-object v6, v5, v4

    .line 306
    aget-object v7, v5, v3

    .line 307
    aget-object v8, v5, v1

    .line 308
    aget-object v5, v5, v0
    :try_end_0
    .catch Lcom/google/zxing/h; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    iget-object v5, p0, Lcom/google/zxing/a/b/a;->b:Lcom/google/zxing/common/b;

    invoke-virtual {v5}, Lcom/google/zxing/common/b;->getWidth()I

    move-result v5

    div-int/2addr v5, v1

    .line 315
    iget-object v6, p0, Lcom/google/zxing/a/b/a;->b:Lcom/google/zxing/common/b;

    invoke-virtual {v6}, Lcom/google/zxing/common/b;->getHeight()I

    move-result v6

    div-int/2addr v6, v1

    .line 316
    new-instance v7, Lcom/google/zxing/a/b/a$a;

    add-int/lit8 v8, v5, 0x7

    add-int/lit8 v9, v6, -0x7

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/a/b/a$a;-><init>(II)V

    invoke-direct {p0, v7, v4, v3, v2}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/a$a;ZII)Lcom/google/zxing/a/b/a$a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/a/b/a$a;->a()Lcom/google/zxing/m;

    move-result-object v7

    .line 317
    new-instance v10, Lcom/google/zxing/a/b/a$a;

    add-int/lit8 v6, v6, 0x7

    invoke-direct {v10, v8, v6}, Lcom/google/zxing/a/b/a$a;-><init>(II)V

    invoke-direct {p0, v10, v4, v3, v3}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/a$a;ZII)Lcom/google/zxing/a/b/a$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/a/b/a$a;->a()Lcom/google/zxing/m;

    move-result-object v8

    .line 318
    new-instance v10, Lcom/google/zxing/a/b/a$a;

    add-int/lit8 v5, v5, -0x7

    invoke-direct {v10, v5, v6}, Lcom/google/zxing/a/b/a$a;-><init>(II)V

    invoke-direct {p0, v10, v4, v2, v3}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/a$a;ZII)Lcom/google/zxing/a/b/a$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/a/b/a$a;->a()Lcom/google/zxing/m;

    move-result-object v6

    .line 319
    new-instance v10, Lcom/google/zxing/a/b/a$a;

    invoke-direct {v10, v5, v9}, Lcom/google/zxing/a/b/a$a;-><init>(II)V

    invoke-direct {p0, v10, v4, v2, v2}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/a$a;ZII)Lcom/google/zxing/a/b/a$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/a/b/a$a;->a()Lcom/google/zxing/m;

    move-result-object v5

    move-object v11, v8

    move-object v8, v6

    move-object v6, v7

    move-object v7, v11

    .line 324
    :goto_0
    invoke-virtual {v6}, Lcom/google/zxing/m;->getX()F

    move-result v9

    invoke-virtual {v5}, Lcom/google/zxing/m;->getX()F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {v7}, Lcom/google/zxing/m;->getX()F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {v8}, Lcom/google/zxing/m;->getX()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Lcom/google/zxing/common/a/a;->round(F)I

    move-result v9

    .line 325
    invoke-virtual {v6}, Lcom/google/zxing/m;->getY()F

    move-result v6

    invoke-virtual {v5}, Lcom/google/zxing/m;->getY()F

    move-result v5

    add-float/2addr v6, v5

    invoke-virtual {v7}, Lcom/google/zxing/m;->getY()F

    move-result v5

    add-float/2addr v6, v5

    invoke-virtual {v8}, Lcom/google/zxing/m;->getY()F

    move-result v5

    add-float/2addr v6, v5

    div-float/2addr v6, v10

    invoke-static {v6}, Lcom/google/zxing/common/a/a;->round(F)I

    move-result v5

    .line 331
    :try_start_1
    new-instance v6, Lcom/google/zxing/common/a/b;

    iget-object v7, p0, Lcom/google/zxing/a/b/a;->b:Lcom/google/zxing/common/b;

    const/16 v8, 0xf

    invoke-direct {v6, v7, v8, v9, v5}, Lcom/google/zxing/common/a/b;-><init>(Lcom/google/zxing/common/b;III)V

    invoke-virtual {v6}, Lcom/google/zxing/common/a/b;->detect()[Lcom/google/zxing/m;

    move-result-object v6

    .line 332
    aget-object v7, v6, v4

    .line 333
    aget-object v8, v6, v3

    .line 334
    aget-object v1, v6, v1

    .line 335
    aget-object v0, v6, v0
    :try_end_1
    .catch Lcom/google/zxing/h; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 339
    :catch_1
    new-instance v0, Lcom/google/zxing/a/b/a$a;

    add-int/lit8 v1, v9, 0x7

    add-int/lit8 v6, v5, -0x7

    invoke-direct {v0, v1, v6}, Lcom/google/zxing/a/b/a$a;-><init>(II)V

    invoke-direct {p0, v0, v4, v3, v2}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/a$a;ZII)Lcom/google/zxing/a/b/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/a/b/a$a;->a()Lcom/google/zxing/m;

    move-result-object v7

    .line 340
    new-instance v0, Lcom/google/zxing/a/b/a$a;

    add-int/lit8 v5, v5, 0x7

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/a/b/a$a;-><init>(II)V

    invoke-direct {p0, v0, v4, v3, v3}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/a$a;ZII)Lcom/google/zxing/a/b/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/a/b/a$a;->a()Lcom/google/zxing/m;

    move-result-object v8

    .line 341
    new-instance v0, Lcom/google/zxing/a/b/a$a;

    add-int/lit8 v9, v9, -0x7

    invoke-direct {v0, v9, v5}, Lcom/google/zxing/a/b/a$a;-><init>(II)V

    invoke-direct {p0, v0, v4, v2, v3}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/a$a;ZII)Lcom/google/zxing/a/b/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/a/b/a$a;->a()Lcom/google/zxing/m;

    move-result-object v1

    .line 342
    new-instance v0, Lcom/google/zxing/a/b/a$a;

    invoke-direct {v0, v9, v6}, Lcom/google/zxing/a/b/a$a;-><init>(II)V

    invoke-direct {p0, v0, v4, v2, v2}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/a$a;ZII)Lcom/google/zxing/a/b/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/a/b/a$a;->a()Lcom/google/zxing/m;

    move-result-object v0

    .line 346
    :goto_1
    invoke-virtual {v7}, Lcom/google/zxing/m;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/google/zxing/m;->getX()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v8}, Lcom/google/zxing/m;->getX()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v1}, Lcom/google/zxing/m;->getX()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v10

    invoke-static {v2}, Lcom/google/zxing/common/a/a;->round(F)I

    move-result v2

    .line 347
    invoke-virtual {v7}, Lcom/google/zxing/m;->getY()F

    move-result v3

    invoke-virtual {v0}, Lcom/google/zxing/m;->getY()F

    move-result v0

    add-float/2addr v3, v0

    invoke-virtual {v8}, Lcom/google/zxing/m;->getY()F

    move-result v0

    add-float/2addr v3, v0

    invoke-virtual {v1}, Lcom/google/zxing/m;->getY()F

    move-result v0

    add-float/2addr v3, v0

    div-float/2addr v3, v10

    invoke-static {v3}, Lcom/google/zxing/common/a/a;->round(F)I

    move-result v0

    .line 349
    new-instance v1, Lcom/google/zxing/a/b/a$a;

    invoke-direct {v1, v2, v0}, Lcom/google/zxing/a/b/a$a;-><init>(II)V

    return-object v1
.end method

.method private a(Lcom/google/zxing/a/b/a$a;ZII)Lcom/google/zxing/a/b/a$a;
    .locals 2

    .line 15589
    iget v0, p1, Lcom/google/zxing/a/b/a$a;->a:I

    add-int/2addr v0, p3

    .line 15593
    iget p1, p1, Lcom/google/zxing/a/b/a$a;->b:I

    :goto_0
    add-int/2addr p1, p4

    .line 498
    invoke-direct {p0, v0, p1}, Lcom/google/zxing/a/b/a;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/zxing/a/b/a;->b:Lcom/google/zxing/common/b;

    invoke-virtual {v1, v0, p1}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v1

    if-ne v1, p2, :cond_0

    add-int/2addr v0, p3

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p3

    sub-int/2addr p1, p4

    .line 506
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/google/zxing/a/b/a;->a(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/zxing/a/b/a;->b:Lcom/google/zxing/common/b;

    invoke-virtual {v1, v0, p1}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v1

    if-ne v1, p2, :cond_1

    add-int/2addr v0, p3

    goto :goto_1

    :cond_1
    sub-int/2addr v0, p3

    .line 511
    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/google/zxing/a/b/a;->a(II)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/google/zxing/a/b/a;->b:Lcom/google/zxing/common/b;

    invoke-virtual {p3, v0, p1}, Lcom/google/zxing/common/b;->get(II)Z

    move-result p3

    if-ne p3, p2, :cond_2

    add-int/2addr p1, p4

    goto :goto_2

    :cond_2
    sub-int/2addr p1, p4

    .line 516
    new-instance p2, Lcom/google/zxing/a/b/a$a;

    invoke-direct {p2, v0, p1}, Lcom/google/zxing/a/b/a$a;-><init>(II)V

    return-object p2
.end method

.method private a(II)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 548
    iget-object v0, p0, Lcom/google/zxing/a/b/a;->b:Lcom/google/zxing/common/b;

    invoke-virtual {v0}, Lcom/google/zxing/common/b;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-lez p2, :cond_0

    iget-object p1, p0, Lcom/google/zxing/a/b/a;->b:Lcom/google/zxing/common/b;

    invoke-virtual {p1}, Lcom/google/zxing/common/b;->getHeight()I

    move-result p1

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Lcom/google/zxing/m;)Z
    .locals 1

    .line 552
    invoke-virtual {p1}, Lcom/google/zxing/m;->getX()F

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/common/a/a;->round(F)I

    move-result v0

    .line 553
    invoke-virtual {p1}, Lcom/google/zxing/m;->getY()F

    move-result p1

    invoke-static {p1}, Lcom/google/zxing/common/a/a;->round(F)I

    move-result p1

    .line 554
    invoke-direct {p0, v0, p1}, Lcom/google/zxing/a/b/a;->a(II)Z

    move-result p1

    return p1
.end method

.method private static a([Lcom/google/zxing/m;II)[Lcom/google/zxing/m;
    .locals 10

    int-to-float p2, p2

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    div-float/2addr p2, p1

    const/4 p1, 0x0

    .line 529
    aget-object v1, p0, p1

    invoke-virtual {v1}, Lcom/google/zxing/m;->getX()F

    move-result v1

    const/4 v2, 0x2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/google/zxing/m;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    .line 530
    aget-object v3, p0, p1

    invoke-virtual {v3}, Lcom/google/zxing/m;->getY()F

    move-result v3

    aget-object v4, p0, v2

    invoke-virtual {v4}, Lcom/google/zxing/m;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    .line 531
    aget-object v4, p0, p1

    invoke-virtual {v4}, Lcom/google/zxing/m;->getX()F

    move-result v4

    aget-object v5, p0, v2

    invoke-virtual {v5}, Lcom/google/zxing/m;->getX()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v0

    .line 532
    aget-object v5, p0, p1

    invoke-virtual {v5}, Lcom/google/zxing/m;->getY()F

    move-result v5

    aget-object v6, p0, v2

    invoke-virtual {v6}, Lcom/google/zxing/m;->getY()F

    move-result v6

    add-float/2addr v5, v6

    div-float/2addr v5, v0

    .line 534
    new-instance v6, Lcom/google/zxing/m;

    mul-float v1, v1, p2

    add-float v7, v4, v1

    mul-float v3, v3, p2

    add-float v8, v5, v3

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/m;-><init>(FF)V

    .line 535
    new-instance v7, Lcom/google/zxing/m;

    sub-float/2addr v4, v1

    sub-float/2addr v5, v3

    invoke-direct {v7, v4, v5}, Lcom/google/zxing/m;-><init>(FF)V

    const/4 v1, 0x1

    .line 537
    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/google/zxing/m;->getX()F

    move-result v3

    const/4 v4, 0x3

    aget-object v5, p0, v4

    invoke-virtual {v5}, Lcom/google/zxing/m;->getX()F

    move-result v5

    sub-float/2addr v3, v5

    .line 538
    aget-object v5, p0, v1

    invoke-virtual {v5}, Lcom/google/zxing/m;->getY()F

    move-result v5

    aget-object v8, p0, v4

    invoke-virtual {v8}, Lcom/google/zxing/m;->getY()F

    move-result v8

    sub-float/2addr v5, v8

    .line 539
    aget-object v8, p0, v1

    invoke-virtual {v8}, Lcom/google/zxing/m;->getX()F

    move-result v8

    aget-object v9, p0, v4

    invoke-virtual {v9}, Lcom/google/zxing/m;->getX()F

    move-result v9

    add-float/2addr v8, v9

    div-float/2addr v8, v0

    .line 540
    aget-object v9, p0, v1

    invoke-virtual {v9}, Lcom/google/zxing/m;->getY()F

    move-result v9

    aget-object p0, p0, v4

    invoke-virtual {p0}, Lcom/google/zxing/m;->getY()F

    move-result p0

    add-float/2addr v9, p0

    div-float/2addr v9, v0

    .line 541
    new-instance p0, Lcom/google/zxing/m;

    mul-float v3, v3, p2

    add-float v0, v8, v3

    mul-float p2, p2, v5

    add-float v5, v9, p2

    invoke-direct {p0, v0, v5}, Lcom/google/zxing/m;-><init>(FF)V

    .line 542
    new-instance v0, Lcom/google/zxing/m;

    sub-float/2addr v8, v3

    sub-float/2addr v9, p2

    invoke-direct {v0, v8, v9}, Lcom/google/zxing/m;-><init>(FF)V

    const/4 p2, 0x4

    new-array p2, p2, [Lcom/google/zxing/m;

    aput-object v6, p2, p1

    aput-object p0, p2, v1

    aput-object v7, p2, v2

    aput-object v0, p2, v4

    return-object p2
.end method

.method private static b(Lcom/google/zxing/a/b/a$a;Lcom/google/zxing/a/b/a$a;)F
    .locals 2

    .line 16589
    iget v0, p0, Lcom/google/zxing/a/b/a$a;->a:I

    .line 16593
    iget p0, p0, Lcom/google/zxing/a/b/a$a;->b:I

    .line 17589
    iget v1, p1, Lcom/google/zxing/a/b/a$a;->a:I

    .line 17593
    iget p1, p1, Lcom/google/zxing/a/b/a$a;->b:I

    .line 558
    invoke-static {v0, p0, v1, p1}, Lcom/google/zxing/common/a/a;->distance(IIII)F

    move-result p0

    return p0
.end method

.method private b()I
    .locals 3

    .line 566
    iget-boolean v0, p0, Lcom/google/zxing/a/b/a;->c:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 567
    iget v0, p0, Lcom/google/zxing/a/b/a;->d:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xb

    return v0

    .line 569
    :cond_0
    iget v0, p0, Lcom/google/zxing/a/b/a;->d:I

    if-gt v0, v1, :cond_1

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xf

    return v0

    :cond_1
    mul-int/lit8 v2, v0, 0x4

    sub-int/2addr v0, v1

    .line 572
    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0xf

    return v2
.end method


# virtual methods
.method public final detect()Lcom/google/zxing/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0}, Lcom/google/zxing/a/b/a;->detect(Z)Lcom/google/zxing/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final detect(Z)Lcom/google/zxing/a/a;
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 72
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/a/b/a;->a()Lcom/google/zxing/a/b/a$a;

    move-result-object v1

    const/4 v2, 0x1

    .line 1244
    iput v2, v0, Lcom/google/zxing/a/b/a;->f:I

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    const/4 v3, 0x1

    :goto_0
    iget v7, v0, Lcom/google/zxing/a/b/a;->f:I

    const/16 v8, 0x9

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-ge v7, v8, :cond_2

    const/4 v7, -0x1

    .line 1245
    invoke-direct {v0, v1, v3, v2, v7}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/a$a;ZII)Lcom/google/zxing/a/b/a$a;

    move-result-object v8

    .line 1246
    invoke-direct {v0, v4, v3, v2, v2}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/a$a;ZII)Lcom/google/zxing/a/b/a$a;

    move-result-object v12

    .line 1247
    invoke-direct {v0, v5, v3, v7, v2}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/a$a;ZII)Lcom/google/zxing/a/b/a$a;

    move-result-object v13

    .line 1248
    invoke-direct {v0, v6, v3, v7, v7}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/a$a;ZII)Lcom/google/zxing/a/b/a$a;

    move-result-object v7

    .line 1254
    iget v14, v0, Lcom/google/zxing/a/b/a;->f:I

    if-le v14, v11, :cond_1

    .line 1255
    invoke-static {v7, v8}, Lcom/google/zxing/a/b/a;->b(Lcom/google/zxing/a/b/a$a;Lcom/google/zxing/a/b/a$a;)F

    move-result v14

    iget v15, v0, Lcom/google/zxing/a/b/a;->f:I

    int-to-float v15, v15

    mul-float v14, v14, v15

    invoke-static {v6, v1}, Lcom/google/zxing/a/b/a;->b(Lcom/google/zxing/a/b/a$a;Lcom/google/zxing/a/b/a$a;)F

    move-result v15

    iget v9, v0, Lcom/google/zxing/a/b/a;->f:I

    add-int/2addr v9, v11

    int-to-float v9, v9

    mul-float v15, v15, v9

    div-float/2addr v14, v15

    float-to-double v14, v14

    const-wide/high16 v16, 0x3fe8000000000000L    # 0.75

    cmpg-double v9, v14, v16

    if-ltz v9, :cond_2

    const-wide/high16 v16, 0x3ff4000000000000L    # 1.25

    cmpl-double v9, v14, v16

    if-gtz v9, :cond_2

    .line 1428
    new-instance v9, Lcom/google/zxing/a/b/a$a;

    .line 1589
    iget v14, v8, Lcom/google/zxing/a/b/a$a;->a:I

    sub-int/2addr v14, v10

    .line 1593
    iget v15, v8, Lcom/google/zxing/a/b/a$a;->b:I

    add-int/2addr v15, v10

    .line 1428
    invoke-direct {v9, v14, v15}, Lcom/google/zxing/a/b/a$a;-><init>(II)V

    .line 1429
    new-instance v14, Lcom/google/zxing/a/b/a$a;

    .line 2589
    iget v15, v12, Lcom/google/zxing/a/b/a$a;->a:I

    sub-int/2addr v15, v10

    .line 2593
    iget v11, v12, Lcom/google/zxing/a/b/a$a;->b:I

    sub-int/2addr v11, v10

    .line 1429
    invoke-direct {v14, v15, v11}, Lcom/google/zxing/a/b/a$a;-><init>(II)V

    .line 1430
    new-instance v11, Lcom/google/zxing/a/b/a$a;

    .line 3589
    iget v15, v13, Lcom/google/zxing/a/b/a$a;->a:I

    add-int/2addr v15, v10

    .line 3593
    iget v2, v13, Lcom/google/zxing/a/b/a$a;->b:I

    sub-int/2addr v2, v10

    .line 1430
    invoke-direct {v11, v15, v2}, Lcom/google/zxing/a/b/a$a;-><init>(II)V

    .line 1431
    new-instance v2, Lcom/google/zxing/a/b/a$a;

    .line 4589
    iget v15, v7, Lcom/google/zxing/a/b/a$a;->a:I

    add-int/2addr v15, v10

    move-object/from16 v18, v8

    .line 4593
    iget v8, v7, Lcom/google/zxing/a/b/a$a;->b:I

    add-int/2addr v8, v10

    .line 1431
    invoke-direct {v2, v15, v8}, Lcom/google/zxing/a/b/a$a;-><init>(II)V

    .line 1433
    invoke-direct {v0, v2, v9}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/a$a;Lcom/google/zxing/a/b/a$a;)I

    move-result v8

    if-eqz v8, :cond_0

    .line 1439
    invoke-direct {v0, v9, v14}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/a$a;Lcom/google/zxing/a/b/a$a;)I

    move-result v9

    if-ne v9, v8, :cond_0

    .line 1445
    invoke-direct {v0, v14, v11}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/a$a;Lcom/google/zxing/a/b/a$a;)I

    move-result v9

    if-ne v9, v8, :cond_0

    .line 1451
    invoke-direct {v0, v11, v2}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/a$a;Lcom/google/zxing/a/b/a$a;)I

    move-result v2

    if-ne v2, v8, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_1
    move-object/from16 v18, v8

    :goto_2
    xor-int/lit8 v3, v3, 0x1

    .line 1244
    iget v1, v0, Lcom/google/zxing/a/b/a;->f:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/zxing/a/b/a;->f:I

    move-object v6, v7

    move-object v4, v12

    move-object v5, v13

    move-object/from16 v1, v18

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1269
    :cond_2
    iget v2, v0, Lcom/google/zxing/a/b/a;->f:I

    const/4 v3, 0x7

    const/4 v7, 0x5

    if-eq v2, v7, :cond_4

    if-ne v2, v3, :cond_3

    goto :goto_3

    .line 1270
    :cond_3
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v1

    throw v1

    .line 1273
    :cond_4
    :goto_3
    iget v2, v0, Lcom/google/zxing/a/b/a;->f:I

    if-ne v2, v7, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, v0, Lcom/google/zxing/a/b/a;->c:Z

    .line 1277
    new-instance v2, Lcom/google/zxing/m;

    .line 5589
    iget v7, v1, Lcom/google/zxing/a/b/a$a;->a:I

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    .line 5593
    iget v1, v1, Lcom/google/zxing/a/b/a$a;->b:I

    int-to-float v1, v1

    sub-float/2addr v1, v8

    .line 1277
    invoke-direct {v2, v7, v1}, Lcom/google/zxing/m;-><init>(FF)V

    .line 1278
    new-instance v1, Lcom/google/zxing/m;

    .line 6589
    iget v7, v4, Lcom/google/zxing/a/b/a$a;->a:I

    int-to-float v7, v7

    add-float/2addr v7, v8

    .line 6593
    iget v4, v4, Lcom/google/zxing/a/b/a$a;->b:I

    int-to-float v4, v4

    add-float/2addr v4, v8

    .line 1278
    invoke-direct {v1, v7, v4}, Lcom/google/zxing/m;-><init>(FF)V

    .line 1279
    new-instance v4, Lcom/google/zxing/m;

    .line 7589
    iget v7, v5, Lcom/google/zxing/a/b/a$a;->a:I

    int-to-float v7, v7

    sub-float/2addr v7, v8

    .line 7593
    iget v5, v5, Lcom/google/zxing/a/b/a$a;->b:I

    int-to-float v5, v5

    add-float/2addr v5, v8

    .line 1279
    invoke-direct {v4, v7, v5}, Lcom/google/zxing/m;-><init>(FF)V

    .line 1280
    new-instance v5, Lcom/google/zxing/m;

    .line 8589
    iget v7, v6, Lcom/google/zxing/a/b/a$a;->a:I

    int-to-float v7, v7

    sub-float/2addr v7, v8

    .line 8593
    iget v6, v6, Lcom/google/zxing/a/b/a$a;->b:I

    int-to-float v6, v6

    sub-float/2addr v6, v8

    .line 1280
    invoke-direct {v5, v7, v6}, Lcom/google/zxing/m;-><init>(FF)V

    const/4 v6, 0x4

    new-array v7, v6, [Lcom/google/zxing/m;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    aput-object v1, v7, v2

    const/4 v1, 0x2

    aput-object v4, v7, v1

    aput-object v5, v7, v10

    .line 1284
    iget v2, v0, Lcom/google/zxing/a/b/a;->f:I

    mul-int/lit8 v4, v2, 0x2

    sub-int/2addr v4, v10

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v7, v4, v2}, Lcom/google/zxing/a/b/a;->a([Lcom/google/zxing/m;II)[Lcom/google/zxing/m;

    move-result-object v2

    if-eqz p1, :cond_6

    .line 79
    aget-object v4, v2, v8

    .line 80
    aget-object v5, v2, v1

    aput-object v5, v2, v8

    .line 81
    aput-object v4, v2, v1

    .line 9107
    :cond_6
    aget-object v4, v2, v8

    invoke-direct {v0, v4}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/m;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    aget-object v5, v2, v4

    invoke-direct {v0, v5}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/m;)Z

    move-result v4

    if-eqz v4, :cond_d

    aget-object v4, v2, v1

    .line 9108
    invoke-direct {v0, v4}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/m;)Z

    move-result v4

    if-eqz v4, :cond_d

    aget-object v4, v2, v10

    invoke-direct {v0, v4}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/m;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 9111
    iget v4, v0, Lcom/google/zxing/a/b/a;->f:I

    mul-int/lit8 v4, v4, 0x2

    new-array v5, v6, [I

    const/4 v8, 0x0

    .line 9113
    aget-object v7, v2, v8

    const/4 v9, 0x1

    aget-object v11, v2, v9

    .line 9114
    invoke-direct {v0, v7, v11, v4}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/m;Lcom/google/zxing/m;I)I

    move-result v7

    aput v7, v5, v8

    aget-object v7, v2, v9

    aget-object v11, v2, v1

    .line 9115
    invoke-direct {v0, v7, v11, v4}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/m;Lcom/google/zxing/m;I)I

    move-result v7

    aput v7, v5, v9

    aget-object v7, v2, v1

    aget-object v9, v2, v10

    .line 9116
    invoke-direct {v0, v7, v9, v4}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/m;Lcom/google/zxing/m;I)I

    move-result v7

    aput v7, v5, v1

    aget-object v7, v2, v10

    aget-object v9, v2, v8

    .line 9117
    invoke-direct {v0, v7, v9, v4}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/m;Lcom/google/zxing/m;I)I

    move-result v7

    aput v7, v5, v10

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_5
    if-ge v7, v6, :cond_7

    .line 9167
    aget v11, v5, v7

    add-int/lit8 v12, v4, -0x2

    shr-int v1, v11, v12

    const/4 v12, 0x1

    shl-int/2addr v1, v12

    and-int/2addr v11, v12

    add-int/2addr v1, v11

    shl-int/lit8 v9, v9, 0x3

    add-int/2addr v9, v1

    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x2

    goto :goto_5

    :cond_7
    and-int/lit8 v1, v9, 0x1

    shl-int/lit8 v1, v1, 0xb

    const/4 v4, 0x1

    shr-int/lit8 v7, v9, 0x1

    add-int/2addr v1, v7

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v6, :cond_c

    .line 9180
    sget-object v7, Lcom/google/zxing/a/b/a;->a:[I

    aget v7, v7, v4

    xor-int/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->bitCount(I)I

    move-result v7

    const/4 v9, 0x2

    if-gt v7, v9, :cond_b

    .line 9124
    iput v4, v0, Lcom/google/zxing/a/b/a;->g:I

    const-wide/16 v11, 0x0

    :goto_7
    if-ge v8, v6, :cond_9

    .line 9129
    iget v1, v0, Lcom/google/zxing/a/b/a;->g:I

    add-int/2addr v1, v8

    rem-int/2addr v1, v6

    aget v1, v5, v1

    .line 9130
    iget-boolean v4, v0, Lcom/google/zxing/a/b/a;->c:Z

    if-eqz v4, :cond_8

    shl-long/2addr v11, v3

    shr-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x7f

    int-to-long v13, v1

    goto :goto_8

    :cond_8
    const/16 v4, 0xa

    shl-long/2addr v11, v4

    shr-int/lit8 v4, v1, 0x2

    and-int/lit16 v4, v4, 0x3e0

    shr-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x1f

    add-int/2addr v4, v1

    int-to-long v13, v4

    :goto_8
    add-long/2addr v11, v13

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 9143
    :cond_9
    iget-boolean v1, v0, Lcom/google/zxing/a/b/a;->c:Z

    invoke-static {v11, v12, v1}, Lcom/google/zxing/a/b/a;->a(JZ)I

    move-result v1

    .line 9145
    iget-boolean v3, v0, Lcom/google/zxing/a/b/a;->c:Z

    if-eqz v3, :cond_a

    shr-int/lit8 v3, v1, 0x6

    const/4 v7, 0x1

    add-int/2addr v3, v7

    .line 9147
    iput v3, v0, Lcom/google/zxing/a/b/a;->d:I

    and-int/lit8 v1, v1, 0x3f

    add-int/2addr v1, v7

    .line 9148
    iput v1, v0, Lcom/google/zxing/a/b/a;->e:I

    goto :goto_9

    :cond_a
    const/4 v7, 0x1

    shr-int/lit8 v3, v1, 0xb

    add-int/2addr v3, v7

    .line 9151
    iput v3, v0, Lcom/google/zxing/a/b/a;->d:I

    and-int/lit16 v1, v1, 0x7ff

    add-int/2addr v1, v7

    .line 9152
    iput v1, v0, Lcom/google/zxing/a/b/a;->e:I

    .line 88
    :goto_9
    iget-object v1, v0, Lcom/google/zxing/a/b/a;->b:Lcom/google/zxing/common/b;

    move-object/from16 v18, v1

    iget v1, v0, Lcom/google/zxing/a/b/a;->g:I

    rem-int/lit8 v3, v1, 0x4

    aget-object v3, v2, v3

    add-int/lit8 v4, v1, 0x1

    rem-int/2addr v4, v6

    aget-object v4, v2, v4

    add-int/lit8 v5, v1, 0x2

    rem-int/2addr v5, v6

    aget-object v5, v2, v5

    add-int/2addr v1, v10

    rem-int/2addr v1, v6

    aget-object v1, v2, v1

    .line 9373
    invoke-static {}, Lcom/google/zxing/common/h;->getInstance()Lcom/google/zxing/common/h;

    move-result-object v17

    .line 9374
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/a/b/a;->b()I

    move-result v6

    move/from16 v20, v6

    move/from16 v19, v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 9376
    iget v7, v0, Lcom/google/zxing/a/b/a;->f:I

    int-to-float v8, v7

    sub-float v8, v6, v8

    move/from16 v24, v8

    move/from16 v21, v8

    move/from16 v27, v8

    move/from16 v22, v8

    int-to-float v7, v7

    add-float/2addr v6, v7

    move/from16 v25, v6

    move/from16 v26, v6

    move/from16 v28, v6

    move/from16 v23, v6

    .line 9386
    invoke-virtual {v3}, Lcom/google/zxing/m;->getX()F

    move-result v29

    invoke-virtual {v3}, Lcom/google/zxing/m;->getY()F

    move-result v30

    .line 9387
    invoke-virtual {v4}, Lcom/google/zxing/m;->getX()F

    move-result v31

    invoke-virtual {v4}, Lcom/google/zxing/m;->getY()F

    move-result v32

    .line 9388
    invoke-virtual {v5}, Lcom/google/zxing/m;->getX()F

    move-result v33

    invoke-virtual {v5}, Lcom/google/zxing/m;->getY()F

    move-result v34

    .line 9389
    invoke-virtual {v1}, Lcom/google/zxing/m;->getX()F

    move-result v35

    invoke-virtual {v1}, Lcom/google/zxing/m;->getY()F

    move-result v36

    .line 9379
    invoke-virtual/range {v17 .. v36}, Lcom/google/zxing/common/h;->sampleGrid(Lcom/google/zxing/common/b;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/b;

    move-result-object v4

    .line 10359
    iget v1, v0, Lcom/google/zxing/a/b/a;->f:I

    const/4 v9, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/a/b/a;->b()I

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/google/zxing/a/b/a;->a([Lcom/google/zxing/m;II)[Lcom/google/zxing/m;

    move-result-object v5

    .line 97
    new-instance v1, Lcom/google/zxing/a/a;

    iget-boolean v6, v0, Lcom/google/zxing/a/b/a;->c:Z

    iget v7, v0, Lcom/google/zxing/a/b/a;->e:I

    iget v8, v0, Lcom/google/zxing/a/b/a;->d:I

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/zxing/a/a;-><init>(Lcom/google/zxing/common/b;[Lcom/google/zxing/m;ZII)V

    return-object v1

    :cond_b
    const/4 v7, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .line 9184
    :cond_c
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v1

    throw v1

    .line 9109
    :cond_d
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v1

    goto :goto_b

    :goto_a
    throw v1

    :goto_b
    goto :goto_a
.end method
