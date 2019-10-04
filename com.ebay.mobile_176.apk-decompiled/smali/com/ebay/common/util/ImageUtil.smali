.class public final Lcom/ebay/common/util/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAverageColor(Landroid/graphics/Bitmap;Z)I
    .locals 13

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 63
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v11, 0x1

    if-eqz p1, :cond_2

    int-to-float p1, v9

    int-to-float v1, v10

    div-float/2addr p1, v1

    const v1, 0x3faa3d71    # 1.33f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f400000    # 0.75f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    const/4 p1, 0x1

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    add-int p1, v9, v10

    add-int/lit8 p1, p1, -0x2

    mul-int/lit8 p1, p1, 0x2

    .line 86
    :try_start_0
    new-array p1, p1, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, v9

    move v7, v9

    .line 90
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v12, v9, 0x0

    const/4 v5, 0x0

    add-int/lit8 v6, v10, -0x1

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, v12

    move v4, v9

    move v7, v9

    .line 93
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/2addr v12, v9

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    add-int/lit8 v10, v10, -0x2

    move-object v1, p0

    move-object v2, p1

    move v3, v12

    move v8, v10

    .line 98
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int v3, v12, v10

    const/4 v4, 0x1

    add-int/lit8 v5, v9, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v8, v10

    .line 101
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    mul-int/lit8 p1, v10, 0x2

    .line 105
    new-array p1, p1, [I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v8, v10

    .line 107
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v4, 0x1

    add-int/lit8 v5, v9, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, v10

    move v8, v10

    .line 109
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    goto :goto_2

    :cond_4
    mul-int/lit8 p1, v9, 0x2

    .line 114
    new-array p1, p1, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, v9

    move v7, v9

    .line 117
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v5, 0x0

    add-int/lit8 v6, v10, -0x1

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, v9

    move v4, v9

    move v7, v9

    .line 119
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_2
    array-length p0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    if-ge v0, p0, :cond_5

    aget v4, p1, v0

    const/high16 v5, 0xff0000

    and-int/2addr v5, v4

    shr-int/lit8 v5, v5, 0x10

    add-int/2addr v1, v5

    const v5, 0xff00

    and-int/2addr v5, v4

    shr-int/lit8 v5, v5, 0x8

    add-int/2addr v2, v5

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 145
    :cond_5
    array-length p0, p1

    div-int/2addr v1, p0

    .line 146
    array-length p0, p1

    div-int/2addr v2, p0

    .line 147
    array-length p0, p1

    div-int/2addr v3, p0

    const/high16 p0, -0x1000000

    shl-int/lit8 p1, v1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, v2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, v3

    return p0

    :catch_0
    return v0

    :catch_1
    return v0
.end method

.method public static final scaleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 3

    .line 27
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 28
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v0, p1, :cond_0

    if-gt v1, p1, :cond_0

    return-object p0

    :cond_0
    if-le v0, v1, :cond_1

    mul-int v1, v1, p1

    .line 36
    div-int v0, v1, v0

    goto :goto_0

    :cond_1
    if-le v1, v0, :cond_2

    mul-int v0, v0, p1

    .line 38
    div-int/2addr v0, v1

    move v2, v0

    move v0, p1

    move p1, v2

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    const/4 v1, 0x1

    .line 40
    invoke-static {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, p0, :cond_3

    .line 42
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    return-object p1
.end method
