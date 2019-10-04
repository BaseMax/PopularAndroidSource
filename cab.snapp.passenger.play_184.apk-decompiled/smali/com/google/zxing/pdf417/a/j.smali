.class public final Lcom/google/zxing/pdf417/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/zxing/pdf417/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/google/zxing/pdf417/a/a/a;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/a/a/a;-><init>()V

    sput-object v0, Lcom/google/zxing/pdf417/a/j;->a:Lcom/google/zxing/pdf417/a/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([I)I
    .locals 4

    .line 179
    array-length v0, p0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    .line 180
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static a(I[I[I[I[[I)Lcom/google/zxing/common/d;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/d;,
            Lcom/google/zxing/c;
        }
    .end annotation

    .line 301
    array-length v0, p3

    new-array v0, v0, [I

    const/16 v1, 0x64

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_c

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 305
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 306
    aget v4, p3, v3

    aget-object v5, p4, v3

    aget v6, v0, v3

    aget v5, v5, v6

    aput v5, p1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    .line 50106
    :try_start_0
    array-length v4, p1

    if-eqz v4, :cond_7

    add-int/lit8 v4, p0, 0x1

    shl-int v4, v3, v4

    if-eqz p2, :cond_1

    .line 50119
    array-length v5, p2

    div-int/lit8 v6, v4, 0x2

    add-int/lit8 v6, v6, 0x3

    if-gt v5, v6, :cond_6

    :cond_1
    if-ltz v4, :cond_6

    const/16 v5, 0x200

    if-gt v4, v5, :cond_6

    .line 50126
    sget-object v5, Lcom/google/zxing/pdf417/a/j;->a:Lcom/google/zxing/pdf417/a/a/a;

    invoke-virtual {v5, p1, v4, p2}, Lcom/google/zxing/pdf417/a/a/a;->decode([II[I)I

    move-result v5

    .line 50127
    array-length v6, p1

    const/4 v7, 0x4

    if-lt v6, v7, :cond_5

    .line 50135
    aget v6, p1, v1

    .line 50136
    array-length v7, p1

    if-gt v6, v7, :cond_4

    if-nez v6, :cond_3

    .line 50141
    array-length v6, p1

    if-ge v4, v6, :cond_2

    .line 50142
    array-length v6, p1

    sub-int/2addr v6, v4

    aput v6, p1, v1

    goto :goto_2

    .line 50144
    :cond_2
    invoke-static {}, Lcom/google/zxing/d;->getFormatInstance()Lcom/google/zxing/d;

    move-result-object v4

    throw v4

    .line 50115
    :cond_3
    :goto_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/google/zxing/pdf417/a/e;->a([ILjava/lang/String;)Lcom/google/zxing/common/d;

    move-result-object v4

    .line 50116
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/zxing/common/d;->setErrorsCorrected(Ljava/lang/Integer;)V

    .line 50117
    array-length v5, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/zxing/common/d;->setErasures(Ljava/lang/Integer;)V

    return-object v4

    .line 50137
    :cond_4
    invoke-static {}, Lcom/google/zxing/d;->getFormatInstance()Lcom/google/zxing/d;

    move-result-object v4

    throw v4

    .line 50130
    :cond_5
    invoke-static {}, Lcom/google/zxing/d;->getFormatInstance()Lcom/google/zxing/d;

    move-result-object v4

    throw v4

    .line 50124
    :cond_6
    invoke-static {}, Lcom/google/zxing/c;->getChecksumInstance()Lcom/google/zxing/c;

    move-result-object v4

    throw v4

    .line 50107
    :cond_7
    invoke-static {}, Lcom/google/zxing/d;->getFormatInstance()Lcom/google/zxing/d;

    move-result-object v4

    throw v4
    :try_end_0
    .catch Lcom/google/zxing/c; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    .line 313
    array-length v4, v0

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    .line 316
    :goto_3
    array-length v5, v0

    if-ge v4, v5, :cond_a

    .line 317
    aget v5, v0, v4

    aget-object v6, p4, v4

    array-length v6, v6

    sub-int/2addr v6, v3

    if-ge v5, v6, :cond_8

    .line 318
    aget v1, v0, v4

    add-int/2addr v1, v3

    aput v1, v0, v4

    goto :goto_4

    .line 321
    :cond_8
    aput v1, v0, v4

    .line 322
    array-length v5, v0

    sub-int/2addr v5, v3

    if-eq v4, v5, :cond_9

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 323
    :cond_9
    invoke-static {}, Lcom/google/zxing/c;->getChecksumInstance()Lcom/google/zxing/c;

    move-result-object p0

    throw p0

    :cond_a
    :goto_4
    move v1, v2

    goto/16 :goto_0

    .line 314
    :cond_b
    invoke-static {}, Lcom/google/zxing/c;->getChecksumInstance()Lcom/google/zxing/c;

    move-result-object p0

    throw p0

    .line 328
    :cond_c
    invoke-static {}, Lcom/google/zxing/c;->getChecksumInstance()Lcom/google/zxing/c;

    move-result-object p0

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method

.method private static a(Lcom/google/zxing/pdf417/a/h;)Lcom/google/zxing/pdf417/a/c;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/a/h;->a()[I

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 151
    :cond_1
    invoke-static {v1}, Lcom/google/zxing/pdf417/a/j;->a([I)I

    move-result v0

    .line 153
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget v6, v1, v4

    sub-int v7, v0, v6

    add-int/2addr v5, v7

    if-gtz v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 50099
    :cond_2
    iget-object v2, p0, Lcom/google/zxing/pdf417/a/g;->b:[Lcom/google/zxing/pdf417/a/d;

    const/4 v4, 0x0

    :goto_1
    if-lez v5, :cond_3

    .line 160
    aget-object v6, v2, v4

    if-nez v6, :cond_3

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 164
    :cond_3
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    :goto_2
    if-ltz v4, :cond_4

    .line 165
    aget v6, v1, v4

    sub-int v6, v0, v6

    add-int/2addr v3, v6

    .line 166
    aget v6, v1, v4

    if-gtz v6, :cond_4

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 170
    :cond_4
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-lez v3, :cond_5

    aget-object v1, v2, v0

    if-nez v1, :cond_5

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 50100
    :cond_5
    iget-object v0, p0, Lcom/google/zxing/pdf417/a/g;->a:Lcom/google/zxing/pdf417/a/c;

    .line 50101
    iget-boolean p0, p0, Lcom/google/zxing/pdf417/a/h;->c:Z

    .line 173
    invoke-virtual {v0, v5, v3, p0}, Lcom/google/zxing/pdf417/a/c;->a(IIZ)Lcom/google/zxing/pdf417/a/c;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/zxing/common/b;IIZIIII)Lcom/google/zxing/pdf417/a/d;
    .locals 7

    .line 412
    invoke-static/range {p0 .. p5}, Lcom/google/zxing/pdf417/a/j;->b(Lcom/google/zxing/common/b;IIZII)I

    move-result p4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 417
    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/a/j;->a(Lcom/google/zxing/common/b;IIZII)[I

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 422
    :cond_0
    invoke-static {p0}, Lcom/google/zxing/common/a/a;->sum([I)I

    move-result p2

    if-eqz p3, :cond_1

    add-int p3, p4, p2

    move v6, p4

    move p4, p3

    move p3, v6

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 426
    :goto_0
    array-length p5, p0

    div-int/lit8 p5, p5, 0x2

    if-ge p3, p5, :cond_2

    .line 427
    aget p5, p0, p3

    .line 428
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p3

    aget v0, p0, v0

    aput v0, p0, p3

    .line 429
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p3

    aput p5, p0, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    sub-int p3, p4, p2

    .line 448
    :goto_1
    invoke-static {p2, p6, p7}, Lcom/google/zxing/pdf417/a/j;->a(III)Z

    move-result p2

    if-nez p2, :cond_3

    return-object p1

    .line 454
    :cond_3
    invoke-static {p0}, Lcom/google/zxing/pdf417/a/i;->a([I)I

    move-result p0

    .line 455
    invoke-static {p0}, Lcom/google/zxing/pdf417/a;->getCodeword(I)I

    move-result p2

    const/4 p5, -0x1

    if-ne p2, p5, :cond_4

    return-object p1

    .line 459
    :cond_4
    new-instance p1, Lcom/google/zxing/pdf417/a/d;

    invoke-static {p0}, Lcom/google/zxing/pdf417/a/j;->b(I)I

    move-result p0

    invoke-direct {p1, p3, p4, p0, p2}, Lcom/google/zxing/pdf417/a/d;-><init>(IIII)V

    return-object p1
.end method

.method private static a(Lcom/google/zxing/common/b;Lcom/google/zxing/pdf417/a/c;Lcom/google/zxing/m;ZII)Lcom/google/zxing/pdf417/a/h;
    .locals 15

    move-object/from16 v0, p1

    move/from16 v9, p3

    .line 212
    new-instance v10, Lcom/google/zxing/pdf417/a/h;

    invoke-direct {v10, v0, v9}, Lcom/google/zxing/pdf417/a/h;-><init>(Lcom/google/zxing/pdf417/a/c;Z)V

    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v11, v1, :cond_4

    if-nez v11, :cond_0

    const/4 v1, 0x1

    const/4 v12, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    const/4 v12, -0x1

    .line 216
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/m;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 217
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/m;->getY()F

    move-result v2

    float-to-int v2, v2

    move v14, v1

    move v13, v2

    .line 50102
    :goto_2
    iget v1, v0, Lcom/google/zxing/pdf417/a/c;->i:I

    if-gt v13, v1, :cond_3

    .line 50103
    iget v1, v0, Lcom/google/zxing/pdf417/a/c;->h:I

    if-lt v13, v1, :cond_3

    const/4 v2, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/google/zxing/common/b;->getWidth()I

    move-result v3

    move-object v1, p0

    move/from16 v4, p3

    move v5, v14

    move v6, v13

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v1 .. v8}, Lcom/google/zxing/pdf417/a/j;->a(Lcom/google/zxing/common/b;IIZIIII)Lcom/google/zxing/pdf417/a/d;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 222
    invoke-virtual {v10, v13, v1}, Lcom/google/zxing/pdf417/a/h;->a(ILcom/google/zxing/pdf417/a/d;)V

    if-eqz v9, :cond_1

    .line 50104
    iget v14, v1, Lcom/google/zxing/pdf417/a/d;->a:I

    goto :goto_3

    .line 50105
    :cond_1
    iget v14, v1, Lcom/google/zxing/pdf417/a/d;->b:I

    :cond_2
    :goto_3
    add-int/2addr v13, v12

    goto :goto_2

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    return-object v10
.end method

.method private static a(III)Z
    .locals 0

    add-int/lit8 p1, p1, -0x2

    if-gt p1, p0, :cond_0

    add-int/lit8 p2, p2, 0x2

    if-gt p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Lcom/google/zxing/pdf417/a/f;I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 50148
    iget p0, p0, Lcom/google/zxing/pdf417/a/f;->d:I

    const/4 v0, 0x1

    add-int/2addr p0, v0

    if-gt p1, p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(I)[I
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x7

    :goto_0
    and-int/lit8 v3, p0, 0x1

    if-eq v3, v1, :cond_1

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    return-object v0

    .line 598
    :cond_1
    :goto_1
    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    shr-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method private static a(Lcom/google/zxing/common/b;IIZII)[I
    .locals 7

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    const/4 v4, 0x0

    move v5, p3

    :goto_1
    if-eqz p3, :cond_1

    if-ge p4, p2, :cond_3

    goto :goto_2

    :cond_1
    if-lt p4, p1, :cond_3

    :goto_2
    if-ge v4, v0, :cond_3

    .line 475
    invoke-virtual {p0, p4, p5}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v6

    if-ne v6, v5, :cond_2

    .line 476
    aget v6, v1, v4

    add-int/2addr v6, v2

    aput v6, v1, v4

    add-int/2addr p4, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    xor-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    if-eq v4, v0, :cond_6

    if-eqz p3, :cond_4

    move p1, p2

    :cond_4
    if-ne p4, p1, :cond_5

    const/4 p0, 0x7

    if-ne v4, p0, :cond_5

    goto :goto_3

    :cond_5
    const/4 p0, 0x0

    return-object p0

    :cond_6
    :goto_3
    return-object v1
.end method

.method private static b(I)I
    .locals 0

    .line 605
    invoke-static {p0}, Lcom/google/zxing/pdf417/a/j;->a(I)[I

    move-result-object p0

    invoke-static {p0}, Lcom/google/zxing/pdf417/a/j;->b([I)I

    move-result p0

    return p0
.end method

.method private static b(Lcom/google/zxing/common/b;IIZII)I
    .locals 5

    if-eqz p3, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    move v2, p3

    move p3, p4

    :goto_1
    const/4 v3, 0x2

    if-ge v1, v3, :cond_4

    :goto_2
    if-eqz v2, :cond_1

    if-lt p3, p1, :cond_3

    goto :goto_3

    :cond_1
    if-ge p3, p2, :cond_3

    .line 506
    :goto_3
    invoke-virtual {p0, p3, p5}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v4

    if-ne v2, v4, :cond_3

    sub-int v4, p4, p3

    .line 507
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v3, :cond_2

    return p4

    :cond_2
    add-int/2addr p3, v0

    goto :goto_2

    :cond_3
    neg-int v0, v0

    xor-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return p3
.end method

.method private static b([I)I
    .locals 2

    const/4 v0, 0x0

    .line 609
    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p0, v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget p0, p0, v1

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x9

    return v0
.end method

.method public static decode(Lcom/google/zxing/common/b;Lcom/google/zxing/m;Lcom/google/zxing/m;Lcom/google/zxing/m;Lcom/google/zxing/m;II)Lcom/google/zxing/common/d;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;,
            Lcom/google/zxing/d;,
            Lcom/google/zxing/c;
        }
    .end annotation

    .line 59
    new-instance v6, Lcom/google/zxing/pdf417/a/c;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/pdf417/a/c;-><init>(Lcom/google/zxing/common/b;Lcom/google/zxing/m;Lcom/google/zxing/m;Lcom/google/zxing/m;Lcom/google/zxing/m;)V

    const/4 v1, 0x0

    move-object v9, v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x2

    if-ge v2, v11, :cond_e

    if-eqz p1, :cond_0

    const/4 v6, 0x1

    move-object/from16 v3, p0

    move-object v4, v9

    move-object/from16 v5, p1

    move/from16 v7, p5

    move/from16 v8, p6

    .line 65
    invoke-static/range {v3 .. v8}, Lcom/google/zxing/pdf417/a/j;->a(Lcom/google/zxing/common/b;Lcom/google/zxing/pdf417/a/c;Lcom/google/zxing/m;ZII)Lcom/google/zxing/pdf417/a/h;

    move-result-object v3

    :cond_0
    move-object v12, v3

    if-eqz p3, :cond_1

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object v4, v9

    move-object/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    .line 69
    invoke-static/range {v3 .. v8}, Lcom/google/zxing/pdf417/a/j;->a(Lcom/google/zxing/common/b;Lcom/google/zxing/pdf417/a/c;Lcom/google/zxing/m;ZII)Lcom/google/zxing/pdf417/a/h;

    move-result-object v3

    move-object v10, v3

    :cond_1
    if-nez v12, :cond_2

    if-nez v10, :cond_2

    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_2
    if-eqz v12, :cond_5

    .line 1189
    invoke-virtual {v12}, Lcom/google/zxing/pdf417/a/h;->b()Lcom/google/zxing/pdf417/a/a;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v10, :cond_7

    .line 1194
    invoke-virtual {v10}, Lcom/google/zxing/pdf417/a/h;->b()Lcom/google/zxing/pdf417/a/a;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_4

    .line 2039
    :cond_4
    iget v5, v3, Lcom/google/zxing/pdf417/a/a;->a:I

    .line 3039
    iget v6, v4, Lcom/google/zxing/pdf417/a/a;->a:I

    if-eq v5, v6, :cond_7

    .line 3043
    iget v5, v3, Lcom/google/zxing/pdf417/a/a;->b:I

    .line 4043
    iget v6, v4, Lcom/google/zxing/pdf417/a/a;->b:I

    if-eq v5, v6, :cond_7

    .line 4047
    iget v5, v3, Lcom/google/zxing/pdf417/a/a;->e:I

    .line 5047
    iget v4, v4, Lcom/google/zxing/pdf417/a/a;->e:I

    if-eq v5, v4, :cond_7

    goto :goto_3

    :cond_5
    :goto_2
    if-nez v10, :cond_6

    :goto_3
    const/4 v3, 0x0

    goto :goto_4

    .line 1190
    :cond_6
    invoke-virtual {v10}, Lcom/google/zxing/pdf417/a/h;->b()Lcom/google/zxing/pdf417/a/a;

    move-result-object v3

    :cond_7
    :goto_4
    if-nez v3, :cond_8

    goto :goto_1

    .line 1137
    :cond_8
    invoke-static {v12}, Lcom/google/zxing/pdf417/a/j;->a(Lcom/google/zxing/pdf417/a/h;)Lcom/google/zxing/pdf417/a/c;

    move-result-object v4

    .line 1138
    invoke-static {v10}, Lcom/google/zxing/pdf417/a/j;->a(Lcom/google/zxing/pdf417/a/h;)Lcom/google/zxing/pdf417/a/c;

    move-result-object v5

    if-nez v4, :cond_9

    move-object v4, v5

    goto :goto_5

    :cond_9
    if-nez v5, :cond_a

    goto :goto_5

    .line 5085
    :cond_a
    new-instance v6, Lcom/google/zxing/pdf417/a/c;

    iget-object v14, v4, Lcom/google/zxing/pdf417/a/c;->a:Lcom/google/zxing/common/b;

    iget-object v15, v4, Lcom/google/zxing/pdf417/a/c;->b:Lcom/google/zxing/m;

    iget-object v4, v4, Lcom/google/zxing/pdf417/a/c;->c:Lcom/google/zxing/m;

    iget-object v7, v5, Lcom/google/zxing/pdf417/a/c;->d:Lcom/google/zxing/m;

    iget-object v5, v5, Lcom/google/zxing/pdf417/a/c;->e:Lcom/google/zxing/m;

    move-object v13, v6

    move-object/from16 v16, v4

    move-object/from16 v17, v7

    move-object/from16 v18, v5

    invoke-direct/range {v13 .. v18}, Lcom/google/zxing/pdf417/a/c;-><init>(Lcom/google/zxing/common/b;Lcom/google/zxing/m;Lcom/google/zxing/m;Lcom/google/zxing/m;Lcom/google/zxing/m;)V

    move-object v4, v6

    .line 1139
    :goto_5
    new-instance v5, Lcom/google/zxing/pdf417/a/f;

    invoke-direct {v5, v3, v4}, Lcom/google/zxing/pdf417/a/f;-><init>(Lcom/google/zxing/pdf417/a/a;Lcom/google/zxing/pdf417/a/c;)V

    move-object v4, v5

    :goto_6
    if-eqz v4, :cond_d

    if-nez v2, :cond_c

    .line 5257
    iget-object v3, v4, Lcom/google/zxing/pdf417/a/f;->c:Lcom/google/zxing/pdf417/a/c;

    if-eqz v3, :cond_c

    .line 6257
    iget-object v3, v4, Lcom/google/zxing/pdf417/a/f;->c:Lcom/google/zxing/pdf417/a/c;

    .line 7134
    iget v3, v3, Lcom/google/zxing/pdf417/a/c;->h:I

    .line 8134
    iget v5, v9, Lcom/google/zxing/pdf417/a/c;->h:I

    if-lt v3, v5, :cond_b

    .line 8257
    iget-object v3, v4, Lcom/google/zxing/pdf417/a/f;->c:Lcom/google/zxing/pdf417/a/c;

    .line 9138
    iget v3, v3, Lcom/google/zxing/pdf417/a/c;->i:I

    .line 10138
    iget v5, v9, Lcom/google/zxing/pdf417/a/c;->i:I

    if-le v3, v5, :cond_c

    .line 10257
    :cond_b
    iget-object v9, v4, Lcom/google/zxing/pdf417/a/f;->c:Lcom/google/zxing/pdf417/a/c;

    add-int/lit8 v2, v2, 0x1

    move-object v3, v12

    goto/16 :goto_0

    .line 11253
    :cond_c
    iput-object v9, v4, Lcom/google/zxing/pdf417/a/f;->c:Lcom/google/zxing/pdf417/a/c;

    goto :goto_7

    .line 74
    :cond_d
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v0

    throw v0

    :cond_e
    move-object v12, v3

    .line 12241
    :goto_7
    iget v2, v4, Lcom/google/zxing/pdf417/a/f;->d:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 12261
    iget-object v5, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    aput-object v12, v5, v1

    .line 13261
    iget-object v5, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    aput-object v10, v5, v2

    if-eqz v12, :cond_f

    const/4 v5, 0x1

    goto :goto_8

    :cond_f
    const/4 v5, 0x0

    :goto_8
    move/from16 v7, p5

    move/from16 v8, p6

    const/4 v6, 0x1

    :goto_9
    if-gt v6, v2, :cond_28

    if-eqz v5, :cond_10

    move v10, v6

    goto :goto_a

    :cond_10
    sub-int v10, v2, v6

    .line 13265
    :goto_a
    iget-object v12, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    aget-object v12, v12, v10

    if-nez v12, :cond_27

    if-eqz v10, :cond_12

    if-ne v10, v2, :cond_11

    goto :goto_b

    .line 100
    :cond_11
    new-instance v12, Lcom/google/zxing/pdf417/a/g;

    invoke-direct {v12, v9}, Lcom/google/zxing/pdf417/a/g;-><init>(Lcom/google/zxing/pdf417/a/c;)V

    goto :goto_d

    .line 98
    :cond_12
    :goto_b
    new-instance v12, Lcom/google/zxing/pdf417/a/h;

    if-nez v10, :cond_13

    const/4 v13, 0x1

    goto :goto_c

    :cond_13
    const/4 v13, 0x0

    :goto_c
    invoke-direct {v12, v9, v13}, Lcom/google/zxing/pdf417/a/h;-><init>(Lcom/google/zxing/pdf417/a/c;Z)V

    .line 14261
    :goto_d
    iget-object v13, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    aput-object v12, v13, v10

    .line 15134
    iget v13, v9, Lcom/google/zxing/pdf417/a/c;->h:I

    move v14, v7

    move v7, v13

    move v13, v8

    const/4 v8, -0x1

    .line 15138
    :goto_e
    iget v0, v9, Lcom/google/zxing/pdf417/a/c;->i:I

    if-gt v7, v0, :cond_26

    if-eqz v5, :cond_14

    const/4 v0, 0x1

    goto :goto_f

    :cond_14
    const/4 v0, -0x1

    :goto_f
    sub-int v3, v10, v0

    .line 15371
    invoke-static {v4, v3}, Lcom/google/zxing/pdf417/a/j;->a(Lcom/google/zxing/pdf417/a/f;I)Z

    move-result v16

    if-eqz v16, :cond_15

    .line 16265
    iget-object v1, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    aget-object v1, v1, v3

    .line 15372
    invoke-virtual {v1, v7}, Lcom/google/zxing/pdf417/a/g;->c(I)Lcom/google/zxing/pdf417/a/d;

    move-result-object v1

    goto :goto_10

    :cond_15
    const/4 v1, 0x0

    :goto_10
    if-eqz v1, :cond_17

    if-eqz v5, :cond_16

    .line 17060
    iget v0, v1, Lcom/google/zxing/pdf417/a/d;->b:I

    goto :goto_11

    .line 18056
    :cond_16
    iget v0, v1, Lcom/google/zxing/pdf417/a/d;->a:I

    :goto_11
    move/from16 v21, v2

    goto/16 :goto_15

    .line 18265
    :cond_17
    iget-object v1, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    aget-object v1, v1, v10

    .line 15377
    invoke-virtual {v1, v7}, Lcom/google/zxing/pdf417/a/g;->a(I)Lcom/google/zxing/pdf417/a/d;

    move-result-object v1

    if-eqz v1, :cond_19

    if-eqz v5, :cond_18

    .line 19056
    iget v0, v1, Lcom/google/zxing/pdf417/a/d;->a:I

    goto :goto_11

    .line 19060
    :cond_18
    iget v0, v1, Lcom/google/zxing/pdf417/a/d;->b:I

    goto :goto_11

    .line 15381
    :cond_19
    invoke-static {v4, v3}, Lcom/google/zxing/pdf417/a/j;->a(Lcom/google/zxing/pdf417/a/f;I)Z

    move-result v16

    if-eqz v16, :cond_1a

    .line 19265
    iget-object v1, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    aget-object v1, v1, v3

    .line 15382
    invoke-virtual {v1, v7}, Lcom/google/zxing/pdf417/a/g;->a(I)Lcom/google/zxing/pdf417/a/d;

    move-result-object v1

    :cond_1a
    if-eqz v1, :cond_1c

    if-eqz v5, :cond_1b

    .line 20060
    iget v0, v1, Lcom/google/zxing/pdf417/a/d;->b:I

    goto :goto_11

    .line 21056
    :cond_1b
    iget v0, v1, Lcom/google/zxing/pdf417/a/d;->a:I

    goto :goto_11

    :cond_1c
    move v1, v10

    const/4 v3, 0x0

    :goto_12
    sub-int/2addr v1, v0

    .line 15389
    invoke-static {v4, v1}, Lcom/google/zxing/pdf417/a/j;->a(Lcom/google/zxing/pdf417/a/f;I)Z

    move-result v16

    if-eqz v16, :cond_20

    .line 21265
    iget-object v11, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    aget-object v11, v11, v1

    .line 22077
    iget-object v11, v11, Lcom/google/zxing/pdf417/a/g;->b:[Lcom/google/zxing/pdf417/a/d;

    .line 15391
    array-length v15, v11

    move/from16 p5, v1

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v15, :cond_1f

    move/from16 v21, v2

    aget-object v2, v11, v1

    if-eqz v2, :cond_1e

    if-eqz v5, :cond_1d

    .line 23060
    iget v1, v2, Lcom/google/zxing/pdf417/a/d;->b:I

    goto :goto_14

    .line 24056
    :cond_1d
    iget v1, v2, Lcom/google/zxing/pdf417/a/d;->a:I

    :goto_14
    mul-int v0, v0, v3

    .line 24060
    iget v3, v2, Lcom/google/zxing/pdf417/a/d;->b:I

    .line 25056
    iget v2, v2, Lcom/google/zxing/pdf417/a/d;->a:I

    sub-int/2addr v3, v2

    mul-int v0, v0, v3

    add-int/2addr v0, v1

    goto :goto_15

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v21

    goto :goto_13

    :cond_1f
    move/from16 v21, v2

    add-int/lit8 v3, v3, 0x1

    move/from16 v1, p5

    const/4 v11, 0x2

    goto :goto_12

    :cond_20
    move/from16 v21, v2

    if-eqz v5, :cond_21

    .line 25257
    iget-object v0, v4, Lcom/google/zxing/pdf417/a/f;->c:Lcom/google/zxing/pdf417/a/c;

    .line 26126
    iget v0, v0, Lcom/google/zxing/pdf417/a/c;->f:I

    goto :goto_15

    .line 26257
    :cond_21
    iget-object v0, v4, Lcom/google/zxing/pdf417/a/f;->c:Lcom/google/zxing/pdf417/a/c;

    .line 27130
    iget v0, v0, Lcom/google/zxing/pdf417/a/c;->g:I

    :goto_15
    if-ltz v0, :cond_23

    .line 28130
    iget v1, v9, Lcom/google/zxing/pdf417/a/c;->g:I

    if-le v0, v1, :cond_22

    goto :goto_16

    :cond_22
    move v1, v0

    const/4 v0, -0x1

    goto :goto_17

    :cond_23
    :goto_16
    const/4 v0, -0x1

    if-eq v8, v0, :cond_24

    move v1, v8

    .line 29126
    :goto_17
    iget v2, v9, Lcom/google/zxing/pdf417/a/c;->f:I

    .line 29130
    iget v15, v9, Lcom/google/zxing/pdf417/a/c;->g:I

    move v3, v13

    move-object/from16 v13, p0

    move v11, v14

    move v14, v2

    move/from16 v16, v5

    move/from16 v17, v1

    move/from16 v18, v7

    move/from16 v19, v11

    move/from16 v20, v3

    .line 114
    invoke-static/range {v13 .. v20}, Lcom/google/zxing/pdf417/a/j;->a(Lcom/google/zxing/common/b;IIZIIII)Lcom/google/zxing/pdf417/a/d;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 117
    invoke-virtual {v12, v7, v2}, Lcom/google/zxing/pdf417/a/g;->a(ILcom/google/zxing/pdf417/a/d;)V

    .line 119
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/a/d;->c()I

    move-result v8

    invoke-static {v11, v8}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 120
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/a/d;->c()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v8, v1

    goto :goto_18

    :cond_24
    move v3, v13

    move v11, v14

    :cond_25
    move v13, v3

    move v14, v11

    :goto_18
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v21

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v11, 0x2

    goto/16 :goto_e

    :cond_26
    move/from16 v21, v2

    move v3, v13

    move v11, v14

    move v8, v3

    move v7, v11

    goto :goto_19

    :cond_27
    move/from16 v21, v2

    :goto_19
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v21

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v11, 0x2

    goto/16 :goto_9

    .line 30245
    :cond_28
    iget-object v0, v4, Lcom/google/zxing/pdf417/a/f;->a:Lcom/google/zxing/pdf417/a/a;

    .line 31047
    iget v0, v0, Lcom/google/zxing/pdf417/a/a;->e:I

    .line 31241
    iget v1, v4, Lcom/google/zxing/pdf417/a/f;->d:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    .line 29333
    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lcom/google/zxing/pdf417/a/b;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/zxing/pdf417/a/b;

    const/4 v1, 0x0

    .line 29334
    :goto_1a
    array-length v2, v0

    if-ge v1, v2, :cond_2a

    const/4 v2, 0x0

    .line 29335
    :goto_1b
    aget-object v3, v0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_29

    .line 29336
    aget-object v3, v0, v1

    new-instance v5, Lcom/google/zxing/pdf417/a/b;

    invoke-direct {v5}, Lcom/google/zxing/pdf417/a/b;-><init>()V

    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 32043
    :cond_2a
    iget-object v1, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v4, v1}, Lcom/google/zxing/pdf417/a/f;->a(Lcom/google/zxing/pdf417/a/g;)V

    .line 32044
    iget-object v1, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    iget v3, v4, Lcom/google/zxing/pdf417/a/f;->d:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    aget-object v1, v1, v3

    invoke-virtual {v4, v1}, Lcom/google/zxing/pdf417/a/f;->a(Lcom/google/zxing/pdf417/a/g;)V

    const/16 v1, 0x3a0

    const/16 v3, 0x3a0

    .line 32098
    :goto_1c
    iget-object v6, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    aget-object v6, v6, v2

    if-eqz v6, :cond_2e

    iget-object v6, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    iget v7, v4, Lcom/google/zxing/pdf417/a/f;->d:I

    add-int/2addr v7, v5

    aget-object v6, v6, v7

    if-nez v6, :cond_2b

    goto :goto_20

    .line 32101
    :cond_2b
    iget-object v6, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    aget-object v6, v6, v2

    .line 33077
    iget-object v2, v6, Lcom/google/zxing/pdf417/a/g;->b:[Lcom/google/zxing/pdf417/a/d;

    .line 32102
    iget-object v6, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    iget v7, v4, Lcom/google/zxing/pdf417/a/f;->d:I

    add-int/2addr v7, v5

    aget-object v5, v6, v7

    .line 34077
    iget-object v5, v5, Lcom/google/zxing/pdf417/a/g;->b:[Lcom/google/zxing/pdf417/a/d;

    const/4 v6, 0x0

    .line 32103
    :goto_1d
    array-length v7, v2

    if-ge v6, v7, :cond_2e

    .line 32104
    aget-object v7, v2, v6

    if-eqz v7, :cond_2d

    aget-object v7, v5, v6

    if-eqz v7, :cond_2d

    aget-object v7, v2, v6

    .line 35072
    iget v7, v7, Lcom/google/zxing/pdf417/a/d;->e:I

    .line 32106
    aget-object v8, v5, v6

    .line 36072
    iget v8, v8, Lcom/google/zxing/pdf417/a/d;->e:I

    if-ne v7, v8, :cond_2d

    const/4 v7, 0x1

    .line 32107
    :goto_1e
    iget v8, v4, Lcom/google/zxing/pdf417/a/f;->d:I

    if-gt v7, v8, :cond_2d

    .line 32108
    iget-object v8, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    aget-object v8, v8, v7

    .line 36077
    iget-object v8, v8, Lcom/google/zxing/pdf417/a/g;->b:[Lcom/google/zxing/pdf417/a/d;

    .line 32108
    aget-object v8, v8, v6

    if-eqz v8, :cond_2c

    .line 32112
    aget-object v9, v2, v6

    .line 37072
    iget v9, v9, Lcom/google/zxing/pdf417/a/d;->e:I

    .line 37076
    iput v9, v8, Lcom/google/zxing/pdf417/a/d;->e:I

    .line 32113
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/a/d;->a()Z

    move-result v8

    if-nez v8, :cond_2c

    .line 32114
    iget-object v8, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    aget-object v8, v8, v7

    .line 38077
    iget-object v8, v8, Lcom/google/zxing/pdf417/a/g;->b:[Lcom/google/zxing/pdf417/a/d;

    const/4 v9, 0x0

    .line 32114
    aput-object v9, v8, v6

    goto :goto_1f

    :cond_2c
    const/4 v9, 0x0

    :goto_1f
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_2d
    const/4 v9, 0x0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_2e
    :goto_20
    const/4 v9, 0x0

    .line 38147
    iget-object v2, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    if-nez v2, :cond_2f

    goto :goto_23

    .line 38151
    :cond_2f
    iget-object v2, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    aget-object v2, v2, v5

    .line 39077
    iget-object v2, v2, Lcom/google/zxing/pdf417/a/g;->b:[Lcom/google/zxing/pdf417/a/d;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 38152
    :goto_21
    array-length v7, v2

    if-ge v5, v7, :cond_33

    .line 38153
    aget-object v7, v2, v5

    if-eqz v7, :cond_32

    .line 38156
    aget-object v7, v2, v5

    .line 40072
    iget v7, v7, Lcom/google/zxing/pdf417/a/d;->e:I

    move v10, v6

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 38158
    :goto_22
    iget v11, v4, Lcom/google/zxing/pdf417/a/f;->d:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    if-ge v6, v11, :cond_31

    const/4 v11, 0x2

    if-ge v8, v11, :cond_31

    .line 38159
    iget-object v11, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    aget-object v11, v11, v6

    .line 40077
    iget-object v11, v11, Lcom/google/zxing/pdf417/a/g;->b:[Lcom/google/zxing/pdf417/a/d;

    .line 38159
    aget-object v11, v11, v5

    if-eqz v11, :cond_30

    .line 38161
    invoke-static {v7, v8, v11}, Lcom/google/zxing/pdf417/a/f;->a(IILcom/google/zxing/pdf417/a/d;)I

    move-result v8

    .line 38162
    invoke-virtual {v11}, Lcom/google/zxing/pdf417/a/d;->a()Z

    move-result v11

    if-nez v11, :cond_30

    add-int/lit8 v10, v10, 0x1

    :cond_30
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    :cond_31
    move v6, v10

    :cond_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_33
    move v5, v6

    .line 40122
    :goto_23
    iget-object v2, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    iget v6, v4, Lcom/google/zxing/pdf417/a/f;->d:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    aget-object v2, v2, v6

    if-nez v2, :cond_34

    const/4 v8, 0x0

    goto :goto_26

    .line 40126
    :cond_34
    iget-object v2, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    iget v6, v4, Lcom/google/zxing/pdf417/a/f;->d:I

    add-int/2addr v6, v7

    aget-object v2, v2, v6

    .line 41077
    iget-object v2, v2, Lcom/google/zxing/pdf417/a/g;->b:[Lcom/google/zxing/pdf417/a/d;

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 40127
    :goto_24
    array-length v10, v2

    if-ge v6, v10, :cond_37

    .line 40128
    aget-object v10, v2, v6

    if-eqz v10, :cond_36

    .line 40131
    aget-object v10, v2, v6

    .line 42072
    iget v10, v10, Lcom/google/zxing/pdf417/a/d;->e:I

    .line 40133
    iget v11, v4, Lcom/google/zxing/pdf417/a/f;->d:I

    add-int/2addr v11, v7

    const/4 v7, 0x0

    :goto_25
    if-lez v11, :cond_36

    const/4 v12, 0x2

    if-ge v7, v12, :cond_36

    .line 40134
    iget-object v12, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    aget-object v12, v12, v11

    .line 42077
    iget-object v12, v12, Lcom/google/zxing/pdf417/a/g;->b:[Lcom/google/zxing/pdf417/a/d;

    .line 40134
    aget-object v12, v12, v6

    if-eqz v12, :cond_35

    .line 40136
    invoke-static {v10, v7, v12}, Lcom/google/zxing/pdf417/a/f;->a(IILcom/google/zxing/pdf417/a/d;)I

    move-result v7

    .line 40137
    invoke-virtual {v12}, Lcom/google/zxing/pdf417/a/d;->a()Z

    move-result v12

    if-nez v12, :cond_35

    add-int/lit8 v8, v8, 0x1

    :cond_35
    add-int/lit8 v11, v11, -0x1

    goto :goto_25

    :cond_36
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    goto :goto_24

    :cond_37
    :goto_26
    add-int v2, v5, v8

    if-nez v2, :cond_38

    const/4 v2, 0x0

    goto/16 :goto_2c

    :cond_38
    const/4 v5, 0x1

    .line 32073
    :goto_27
    iget v6, v4, Lcom/google/zxing/pdf417/a/f;->d:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_41

    .line 32074
    iget-object v6, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    aget-object v6, v6, v5

    .line 43077
    iget-object v6, v6, Lcom/google/zxing/pdf417/a/g;->b:[Lcom/google/zxing/pdf417/a/d;

    const/4 v7, 0x0

    .line 32075
    :goto_28
    array-length v8, v6

    if-ge v7, v8, :cond_40

    .line 32076
    aget-object v8, v6, v7

    if-eqz v8, :cond_3f

    .line 32079
    aget-object v8, v6, v7

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/a/d;->a()Z

    move-result v8

    if-nez v8, :cond_3f

    .line 43187
    aget-object v8, v6, v7

    .line 43188
    iget-object v10, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    add-int/lit8 v11, v5, -0x1

    aget-object v10, v10, v11

    .line 44077
    iget-object v10, v10, Lcom/google/zxing/pdf417/a/g;->b:[Lcom/google/zxing/pdf417/a/d;

    .line 43190
    iget-object v11, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    add-int/lit8 v12, v5, 0x1

    aget-object v11, v11, v12

    if-eqz v11, :cond_39

    .line 43191
    iget-object v11, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    aget-object v11, v11, v12

    .line 45077
    iget-object v11, v11, Lcom/google/zxing/pdf417/a/g;->b:[Lcom/google/zxing/pdf417/a/d;

    goto :goto_29

    :cond_39
    move-object v11, v10

    :goto_29
    const/16 v12, 0xe

    new-array v13, v12, [Lcom/google/zxing/pdf417/a/d;

    .line 43196
    aget-object v14, v10, v7

    const/4 v15, 0x2

    aput-object v14, v13, v15

    const/4 v14, 0x3

    .line 43197
    aget-object v15, v11, v7

    aput-object v15, v13, v14

    if-lez v7, :cond_3a

    add-int/lit8 v14, v7, -0x1

    .line 43200
    aget-object v15, v6, v14

    const/16 v16, 0x0

    aput-object v15, v13, v16

    const/4 v15, 0x4

    .line 43201
    aget-object v16, v10, v14

    aput-object v16, v13, v15

    const/4 v15, 0x5

    .line 43202
    aget-object v14, v11, v14

    aput-object v14, v13, v15

    :cond_3a
    const/4 v14, 0x1

    if-le v7, v14, :cond_3b

    const/16 v14, 0x8

    add-int/lit8 v15, v7, -0x2

    .line 43205
    aget-object v16, v6, v15

    aput-object v16, v13, v14

    const/16 v14, 0xa

    .line 43206
    aget-object v16, v10, v15

    aput-object v16, v13, v14

    const/16 v14, 0xb

    .line 43207
    aget-object v15, v11, v15

    aput-object v15, v13, v14

    .line 43209
    :cond_3b
    array-length v14, v6

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    if-ge v7, v14, :cond_3c

    add-int/lit8 v14, v7, 0x1

    .line 43210
    aget-object v16, v6, v14

    aput-object v16, v13, v15

    const/4 v15, 0x6

    .line 43211
    aget-object v16, v10, v14

    aput-object v16, v13, v15

    const/4 v15, 0x7

    .line 43212
    aget-object v14, v11, v14

    aput-object v14, v13, v15

    .line 43214
    :cond_3c
    array-length v14, v6

    const/4 v15, 0x2

    sub-int/2addr v14, v15

    if-ge v7, v14, :cond_3d

    const/16 v14, 0x9

    add-int/lit8 v15, v7, 0x2

    .line 43215
    aget-object v16, v6, v15

    aput-object v16, v13, v14

    const/16 v14, 0xc

    .line 43216
    aget-object v10, v10, v15

    aput-object v10, v13, v14

    const/16 v10, 0xd

    .line 43217
    aget-object v11, v11, v15

    aput-object v11, v13, v10

    :cond_3d
    const/4 v10, 0x0

    :goto_2a
    if-ge v10, v12, :cond_3f

    .line 43219
    aget-object v11, v13, v10

    if-eqz v11, :cond_3e

    .line 45233
    invoke-virtual {v11}, Lcom/google/zxing/pdf417/a/d;->a()Z

    move-result v14

    if-eqz v14, :cond_3e

    .line 46064
    iget v14, v11, Lcom/google/zxing/pdf417/a/d;->c:I

    .line 47064
    iget v15, v8, Lcom/google/zxing/pdf417/a/d;->c:I

    if-ne v14, v15, :cond_3e

    .line 47072
    iget v11, v11, Lcom/google/zxing/pdf417/a/d;->e:I

    .line 47076
    iput v11, v8, Lcom/google/zxing/pdf417/a/d;->e:I

    const/4 v11, 0x1

    goto :goto_2b

    :cond_3e
    const/4 v11, 0x0

    :goto_2b
    if-nez v11, :cond_3f

    add-int/lit8 v10, v10, 0x1

    goto :goto_2a

    :cond_3f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_28

    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_27

    :cond_41
    :goto_2c
    if-lez v2, :cond_43

    if-lt v2, v3, :cond_42

    goto :goto_2d

    :cond_42
    move v3, v2

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_1c

    .line 32051
    :cond_43
    :goto_2d
    iget-object v2, v4, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    .line 29341
    array-length v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2e
    if-ge v5, v3, :cond_46

    aget-object v7, v2, v5

    if-eqz v7, :cond_45

    .line 48077
    iget-object v7, v7, Lcom/google/zxing/pdf417/a/g;->b:[Lcom/google/zxing/pdf417/a/d;

    .line 29343
    array-length v8, v7

    const/4 v9, 0x0

    :goto_2f
    if-ge v9, v8, :cond_45

    aget-object v10, v7, v9

    if-eqz v10, :cond_44

    .line 49072
    iget v11, v10, Lcom/google/zxing/pdf417/a/d;->e:I

    if-ltz v11, :cond_44

    .line 29347
    array-length v12, v0

    if-ge v11, v12, :cond_44

    .line 29351
    aget-object v11, v0, v11

    aget-object v11, v11, v6

    .line 50068
    iget v10, v10, Lcom/google/zxing/pdf417/a/d;->d:I

    .line 29351
    invoke-virtual {v11, v10}, Lcom/google/zxing/pdf417/a/b;->a(I)V

    :cond_44
    add-int/lit8 v9, v9, 0x1

    goto :goto_2f

    :cond_45
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    :cond_46
    const/4 v5, 0x0

    .line 50069
    aget-object v2, v0, v5

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 50070
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/a/b;->a()[I

    move-result-object v3

    .line 50084
    iget v5, v4, Lcom/google/zxing/pdf417/a/f;->d:I

    .line 50085
    iget-object v6, v4, Lcom/google/zxing/pdf417/a/f;->a:Lcom/google/zxing/pdf417/a/a;

    .line 50086
    iget v6, v6, Lcom/google/zxing/pdf417/a/a;->e:I

    mul-int v5, v5, v6

    .line 50087
    iget-object v6, v4, Lcom/google/zxing/pdf417/a/f;->a:Lcom/google/zxing/pdf417/a/a;

    .line 50088
    iget v6, v6, Lcom/google/zxing/pdf417/a/a;->b:I

    const/4 v7, 0x2

    shl-int v6, v7, v6

    sub-int/2addr v5, v6

    .line 50074
    array-length v6, v3

    if-nez v6, :cond_48

    if-lez v5, :cond_47

    if-gt v5, v1, :cond_47

    .line 50078
    invoke-virtual {v2, v5}, Lcom/google/zxing/pdf417/a/b;->a(I)V

    goto :goto_30

    .line 50076
    :cond_47
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v0

    throw v0

    :cond_48
    const/4 v1, 0x0

    .line 50079
    aget v3, v3, v1

    if-eq v3, v5, :cond_49

    .line 50081
    invoke-virtual {v2, v5}, Lcom/google/zxing/pdf417/a/b;->a(I)V

    .line 29256
    :cond_49
    :goto_30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50090
    iget-object v2, v4, Lcom/google/zxing/pdf417/a/f;->a:Lcom/google/zxing/pdf417/a/a;

    .line 50091
    iget v2, v2, Lcom/google/zxing/pdf417/a/a;->e:I

    .line 50092
    iget v3, v4, Lcom/google/zxing/pdf417/a/f;->d:I

    mul-int v2, v2, v3

    .line 29257
    new-array v2, v2, [I

    .line 29258
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 29259
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 50093
    :goto_31
    iget-object v7, v4, Lcom/google/zxing/pdf417/a/f;->a:Lcom/google/zxing/pdf417/a/a;

    .line 50094
    iget v7, v7, Lcom/google/zxing/pdf417/a/a;->e:I

    if-ge v6, v7, :cond_4d

    const/4 v7, 0x0

    .line 50095
    :goto_32
    iget v8, v4, Lcom/google/zxing/pdf417/a/f;->d:I

    if-ge v7, v8, :cond_4c

    .line 29262
    aget-object v8, v0, v6

    add-int/lit8 v9, v7, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/a/b;->a()[I

    move-result-object v8

    .line 50096
    iget v10, v4, Lcom/google/zxing/pdf417/a/f;->d:I

    mul-int v10, v10, v6

    add-int/2addr v10, v7

    .line 29264
    array-length v7, v8

    if-nez v7, :cond_4a

    .line 29265
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    const/4 v11, 0x1

    goto :goto_33

    .line 29266
    :cond_4a
    array-length v7, v8

    const/4 v11, 0x1

    if-ne v7, v11, :cond_4b

    const/4 v7, 0x0

    .line 29267
    aget v8, v8, v7

    aput v8, v2, v10

    goto :goto_33

    :cond_4b
    const/4 v7, 0x0

    .line 29269
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29270
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_33
    move v7, v9

    goto :goto_32

    :cond_4c
    const/4 v7, 0x0

    const/4 v11, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    :cond_4d
    const/4 v7, 0x0

    .line 29274
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[I

    .line 29275
    :goto_34
    array-length v6, v0

    if-ge v7, v6, :cond_4e

    .line 29276
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aput-object v6, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    .line 50097
    :cond_4e
    iget-object v3, v4, Lcom/google/zxing/pdf417/a/f;->a:Lcom/google/zxing/pdf417/a/a;

    .line 50098
    iget v3, v3, Lcom/google/zxing/pdf417/a/a;->b:I

    .line 29279
    invoke-static {v1}, Lcom/google/zxing/pdf417/a;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-static {v5}, Lcom/google/zxing/pdf417/a;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v4

    .line 29278
    invoke-static {v3, v2, v1, v4, v0}, Lcom/google/zxing/pdf417/a/j;->a(I[I[I[I[[I)Lcom/google/zxing/common/d;

    move-result-object v0

    return-object v0
.end method

.method public static toString([[Lcom/google/zxing/pdf417/a/b;)Ljava/lang/String;
    .locals 9

    .line 613
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 614
    :goto_0
    :try_start_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    const-string v3, "Row %2d: "

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 615
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v0, v3, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/4 v3, 0x0

    .line 616
    :goto_1
    aget-object v5, p0, v2

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 617
    aget-object v5, p0, v2

    aget-object v5, v5, v3

    .line 618
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/a/b;->a()[I

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_0

    const-string v5, "        "

    const/4 v6, 0x0

    .line 619
    invoke-virtual {v0, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_2

    :cond_0
    const-string v6, "%4d(%2d)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 621
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/a/b;->a()[I

    move-result-object v8

    aget v8, v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    .line 622
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/a/b;->a()[I

    move-result-object v8

    aget v8, v8, v1

    .line 50149
    iget-object v5, v5, Lcom/google/zxing/pdf417/a/b;->a:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    aput-object v5, v7, v4

    .line 621
    invoke-virtual {v0, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string v3, "%n"

    new-array v4, v1, [Ljava/lang/Object;

    .line 625
    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 627
    :cond_2
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 613
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    .line 628
    :try_start_2
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method
