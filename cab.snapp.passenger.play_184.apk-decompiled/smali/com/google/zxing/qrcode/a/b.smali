.class final Lcom/google/zxing/qrcode/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/zxing/common/b;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/qrcode/a/a;",
            ">;"
        }
    .end annotation
.end field

.field final c:I

.field final d:I

.field final e:I

.field final f:I

.field private final g:F

.field private final h:[I

.field private final i:Lcom/google/zxing/n;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/b;IIIIFLcom/google/zxing/n;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/zxing/qrcode/a/b;->a:Lcom/google/zxing/common/b;

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/google/zxing/qrcode/a/b;->b:Ljava/util/List;

    .line 71
    iput p2, p0, Lcom/google/zxing/qrcode/a/b;->c:I

    .line 72
    iput p3, p0, Lcom/google/zxing/qrcode/a/b;->d:I

    .line 73
    iput p4, p0, Lcom/google/zxing/qrcode/a/b;->e:I

    .line 74
    iput p5, p0, Lcom/google/zxing/qrcode/a/b;->f:I

    .line 75
    iput p6, p0, Lcom/google/zxing/qrcode/a/b;->g:F

    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 76
    iput-object p1, p0, Lcom/google/zxing/qrcode/a/b;->h:[I

    .line 77
    iput-object p7, p0, Lcom/google/zxing/qrcode/a/b;->i:Lcom/google/zxing/n;

    return-void
.end method

.method private static a([II)F
    .locals 1

    const/4 v0, 0x2

    .line 161
    aget v0, p0, v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/4 v0, 0x1

    aget p0, p0, v0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    sub-float/2addr p1, p0

    return p1
.end method


# virtual methods
.method final a([III)Lcom/google/zxing/qrcode/a/a;
    .locals 12

    const/4 v0, 0x0

    .line 256
    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    add-int/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p1, v3

    add-int/2addr v1, v4

    .line 257
    invoke-static {p1, p3}, Lcom/google/zxing/qrcode/a/b;->a([II)F

    move-result p3

    float-to-int v4, p3

    .line 258
    aget v5, p1, v2

    mul-int/lit8 v5, v5, 0x2

    .line 1193
    iget-object v6, p0, Lcom/google/zxing/qrcode/a/b;->a:Lcom/google/zxing/common/b;

    .line 1195
    invoke-virtual {v6}, Lcom/google/zxing/common/b;->getHeight()I

    move-result v7

    .line 1196
    iget-object v8, p0, Lcom/google/zxing/qrcode/a/b;->h:[I

    .line 1197
    aput v0, v8, v0

    .line 1198
    aput v0, v8, v2

    .line 1199
    aput v0, v8, v3

    move v9, p2

    :goto_0
    if-ltz v9, :cond_0

    .line 1203
    invoke-virtual {v6, v4, v9}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v10

    if-eqz v10, :cond_0

    aget v10, v8, v2

    if-gt v10, v5, :cond_0

    .line 1204
    aget v10, v8, v2

    add-int/2addr v10, v2

    aput v10, v8, v2

    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_0
    const/high16 v10, 0x7fc00000    # Float.NaN

    if-ltz v9, :cond_9

    .line 1208
    aget v11, v8, v2

    if-le v11, v5, :cond_1

    goto/16 :goto_4

    :cond_1
    :goto_1
    if-ltz v9, :cond_2

    .line 1211
    invoke-virtual {v6, v4, v9}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v11

    if-nez v11, :cond_2

    aget v11, v8, v0

    if-gt v11, v5, :cond_2

    .line 1212
    aget v11, v8, v0

    add-int/2addr v11, v2

    aput v11, v8, v0

    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 1215
    :cond_2
    aget v9, v8, v0

    if-le v9, v5, :cond_3

    goto :goto_4

    :cond_3
    add-int/2addr p2, v2

    :goto_2
    if-ge p2, v7, :cond_4

    .line 1221
    invoke-virtual {v6, v4, p2}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v9

    if-eqz v9, :cond_4

    aget v9, v8, v2

    if-gt v9, v5, :cond_4

    .line 1222
    aget v9, v8, v2

    add-int/2addr v9, v2

    aput v9, v8, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    if-eq p2, v7, :cond_9

    .line 1225
    aget v9, v8, v2

    if-le v9, v5, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    if-ge p2, v7, :cond_6

    .line 1228
    invoke-virtual {v6, v4, p2}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v9

    if-nez v9, :cond_6

    aget v9, v8, v3

    if-gt v9, v5, :cond_6

    .line 1229
    aget v9, v8, v3

    add-int/2addr v9, v2

    aput v9, v8, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 1232
    :cond_6
    aget v4, v8, v3

    if-le v4, v5, :cond_7

    goto :goto_4

    .line 1236
    :cond_7
    aget v4, v8, v0

    aget v5, v8, v2

    add-int/2addr v4, v5

    aget v5, v8, v3

    add-int/2addr v4, v5

    sub-int/2addr v4, v1

    .line 1237
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x5

    mul-int/lit8 v1, v1, 0x2

    if-lt v4, v1, :cond_8

    goto :goto_4

    .line 1241
    :cond_8
    invoke-virtual {p0, v8}, Lcom/google/zxing/qrcode/a/b;->a([I)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v8, p2}, Lcom/google/zxing/qrcode/a/b;->a([II)F

    move-result v10

    .line 259
    :cond_9
    :goto_4
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-nez p2, :cond_e

    .line 260
    aget p2, p1, v0

    aget v1, p1, v2

    add-int/2addr p2, v1

    aget p1, p1, v3

    add-int/2addr p2, p1

    int-to-float p1, p2

    const/high16 p2, 0x40400000    # 3.0f

    div-float/2addr p1, p2

    .line 261
    iget-object p2, p0, Lcom/google/zxing/qrcode/a/b;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/qrcode/a/a;

    .line 2041
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/a/a;->getY()F

    move-result v3

    sub-float v3, v10, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_c

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/a/a;->getX()F

    move-result v3

    sub-float v3, p3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_c

    .line 2042
    iget v3, v1, Lcom/google/zxing/qrcode/a/a;->a:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    if-lez v4, :cond_b

    .line 2043
    iget v4, v1, Lcom/google/zxing/qrcode/a/a;->a:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_c

    :cond_b
    const/4 v3, 0x1

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_a

    .line 2053
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/a/a;->getX()F

    move-result p2

    add-float/2addr p2, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    .line 2054
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/a/a;->getY()F

    move-result v0

    add-float/2addr v0, v10

    div-float/2addr v0, p3

    .line 2055
    iget v1, v1, Lcom/google/zxing/qrcode/a/a;->a:F

    add-float/2addr v1, p1

    div-float/2addr v1, p3

    .line 2056
    new-instance p1, Lcom/google/zxing/qrcode/a/a;

    invoke-direct {p1, p2, v0, v1}, Lcom/google/zxing/qrcode/a/a;-><init>(FFF)V

    return-object p1

    .line 268
    :cond_d
    new-instance p2, Lcom/google/zxing/qrcode/a/a;

    invoke-direct {p2, p3, v10, p1}, Lcom/google/zxing/qrcode/a/a;-><init>(FFF)V

    .line 269
    iget-object p1, p0, Lcom/google/zxing/qrcode/a/b;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object p1, p0, Lcom/google/zxing/qrcode/a/b;->i:Lcom/google/zxing/n;

    if-eqz p1, :cond_e

    .line 271
    invoke-interface {p1, p2}, Lcom/google/zxing/n;->foundPossibleResultPoint(Lcom/google/zxing/m;)V

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

.method final a([I)Z
    .locals 5

    .line 170
    iget v0, p0, Lcom/google/zxing/qrcode/a/b;->g:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 173
    aget v4, p1, v3

    int-to-float v4, v4

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
