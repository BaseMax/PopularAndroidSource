.class public abstract Lcom/squareup/picasso/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/y$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(IIIILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/w;)V
    .locals 2

    if-gt p3, p1, :cond_1

    if-le p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_2

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    int-to-float p1, p2

    int-to-float p0, p0

    div-float/2addr p1, p0

    float-to-double p0, p1

    .line 170
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    :goto_1
    double-to-int p0, p0

    goto :goto_2

    :cond_2
    if-nez p0, :cond_3

    int-to-float p0, p3

    int-to-float p1, p1

    div-float/2addr p0, p1

    float-to-double p0, p0

    .line 172
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    goto :goto_1

    :cond_3
    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    float-to-double v0, p3

    .line 174
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    int-to-float p2, p2

    int-to-float p0, p0

    div-float/2addr p2, p0

    float-to-double p2, p2

    .line 175
    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    double-to-int p0, p2

    .line 176
    iget-boolean p2, p5, Lcom/squareup/picasso/w;->centerInside:Z

    if-eqz p2, :cond_4

    .line 177
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_2

    .line 178
    :cond_4
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 181
    :goto_2
    iput p0, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p0, 0x0

    .line 182
    iput-boolean p0, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    return-void
.end method

.method static a(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/w;)V
    .locals 6

    .line 159
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/squareup/picasso/y;->a(IIIILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/w;)V

    return-void
.end method

.method static a(Landroid/graphics/BitmapFactory$Options;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 154
    iget-boolean p0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static b(Lcom/squareup/picasso/w;)Landroid/graphics/BitmapFactory$Options;
    .locals 4

    .line 138
    invoke-virtual {p0}, Lcom/squareup/picasso/w;->hasSize()Z

    move-result v0

    .line 139
    iget-object v1, p0, Lcom/squareup/picasso/w;->config:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 141
    iget-boolean v3, p0, Lcom/squareup/picasso/w;->purgeable:Z

    if-eqz v3, :cond_2

    .line 142
    :cond_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 143
    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 144
    iget-boolean v0, p0, Lcom/squareup/picasso/w;->purgeable:Z

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 145
    iget-boolean v0, p0, Lcom/squareup/picasso/w;->purgeable:Z

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v1, :cond_2

    .line 147
    iget-object p0, p0, Lcom/squareup/picasso/w;->config:Landroid/graphics/Bitmap$Config;

    iput-object p0, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_2
    return-object v2
.end method


# virtual methods
.method a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method a(Landroid/net/NetworkInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract canHandleRequest(Lcom/squareup/picasso/w;)Z
.end method

.method public abstract load(Lcom/squareup/picasso/w;I)Lcom/squareup/picasso/y$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method