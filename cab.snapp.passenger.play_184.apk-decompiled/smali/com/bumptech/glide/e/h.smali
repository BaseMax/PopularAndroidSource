.class public final Lcom/bumptech/glide/e/h;
.super Lcom/bumptech/glide/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/e/a<",
        "Lcom/bumptech/glide/e/h;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/bumptech/glide/e/h;

.field private static c:Lcom/bumptech/glide/e/h;

.field private static d:Lcom/bumptech/glide/e/h;

.field private static e:Lcom/bumptech/glide/e/h;

.field private static f:Lcom/bumptech/glide/e/h;

.field private static g:Lcom/bumptech/glide/e/h;

.field private static h:Lcom/bumptech/glide/e/h;

.field private static i:Lcom/bumptech/glide/e/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/bumptech/glide/e/a;-><init>()V

    return-void
.end method

.method public static bitmapTransform(Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/e/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/e/h;"
        }
    .end annotation

    .line 230
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/e/h;->transform(Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/e/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e/h;

    return-object p0
.end method

.method public static centerCropTransform()Lcom/bumptech/glide/e/h;
    .locals 1

    .line 200
    sget-object v0, Lcom/bumptech/glide/e/h;->f:Lcom/bumptech/glide/e/h;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    .line 202
    invoke-virtual {v0}, Lcom/bumptech/glide/e/h;->centerCrop()Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    .line 203
    invoke-virtual {v0}, Lcom/bumptech/glide/e/h;->autoClone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    sput-object v0, Lcom/bumptech/glide/e/h;->f:Lcom/bumptech/glide/e/h;

    .line 205
    :cond_0
    sget-object v0, Lcom/bumptech/glide/e/h;->f:Lcom/bumptech/glide/e/h;

    return-object v0
.end method

.method public static centerInsideTransform()Lcom/bumptech/glide/e/h;
    .locals 1

    .line 185
    sget-object v0, Lcom/bumptech/glide/e/h;->e:Lcom/bumptech/glide/e/h;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    .line 187
    invoke-virtual {v0}, Lcom/bumptech/glide/e/h;->centerInside()Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    .line 188
    invoke-virtual {v0}, Lcom/bumptech/glide/e/h;->autoClone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    sput-object v0, Lcom/bumptech/glide/e/h;->e:Lcom/bumptech/glide/e/h;

    .line 190
    :cond_0
    sget-object v0, Lcom/bumptech/glide/e/h;->e:Lcom/bumptech/glide/e/h;

    return-object v0
.end method

.method public static circleCropTransform()Lcom/bumptech/glide/e/h;
    .locals 1

    .line 215
    sget-object v0, Lcom/bumptech/glide/e/h;->g:Lcom/bumptech/glide/e/h;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    .line 217
    invoke-virtual {v0}, Lcom/bumptech/glide/e/h;->circleCrop()Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    .line 218
    invoke-virtual {v0}, Lcom/bumptech/glide/e/h;->autoClone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    sput-object v0, Lcom/bumptech/glide/e/h;->g:Lcom/bumptech/glide/e/h;

    .line 220
    :cond_0
    sget-object v0, Lcom/bumptech/glide/e/h;->g:Lcom/bumptech/glide/e/h;

    return-object v0
.end method

.method public static decodeTypeOf(Ljava/lang/Class;)Lcom/bumptech/glide/e/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/bumptech/glide/e/h;"
        }
    .end annotation

    .line 264
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/e/h;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/e/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e/h;

    return-object p0
.end method

.method public static diskCacheStrategyOf(Lcom/bumptech/glide/load/b/j;)Lcom/bumptech/glide/e/h;
    .locals 1

    .line 63
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/e/h;->diskCacheStrategy(Lcom/bumptech/glide/load/b/j;)Lcom/bumptech/glide/e/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e/h;

    return-object p0
.end method

.method public static downsampleOf(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/e/h;
    .locals 1

    .line 294
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/e/h;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/e/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e/h;

    return-object p0
.end method

.method public static encodeFormatOf(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/e/h;
    .locals 1

    .line 325
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/e/h;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/e/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e/h;

    return-object p0
.end method

.method public static encodeQualityOf(I)Lcom/bumptech/glide/e/h;
    .locals 1

    .line 314
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/e/h;->encodeQuality(I)Lcom/bumptech/glide/e/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e/h;

    return-object p0
.end method

.method public static errorOf(I)Lcom/bumptech/glide/e/h;
    .locals 1

    .line 110
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/e/h;->error(I)Lcom/bumptech/glide/e/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e/h;

    return-object p0
.end method

.method public static errorOf(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/e/h;
    .locals 1

    .line 101
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/e/h;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/e/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e/h;

    return-object p0
.end method

.method public static fitCenterTransform()Lcom/bumptech/glide/e/h;
    .locals 1

    .line 170
    sget-object v0, Lcom/bumptech/glide/e/h;->d:Lcom/bumptech/glide/e/h;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    .line 172
    invoke-virtual {v0}, Lcom/bumptech/glide/e/h;->fitCenter()Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    .line 173
    invoke-virtual {v0}, Lcom/bumptech/glide/e/h;->autoClone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    sput-object v0, Lcom/bumptech/glide/e/h;->d:Lcom/bumptech/glide/e/h;

    .line 175
    :cond_0
    sget-object v0, Lcom/bumptech/glide/e/h;->d:Lcom/bumptech/glide/e/h;

    return-object v0
.end method

.method public static formatOf(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/e/h;
    .locals 1

    .line 274
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/e/h;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/e/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e/h;

    return-object p0
.end method

.method public static frameOf(J)Lcom/bumptech/glide/e/h;
    .locals 1

    .line 284
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/e/h;->frame(J)Lcom/bumptech/glide/e/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e/h;

    return-object p0
.end method

.method public static noAnimation()Lcom/bumptech/glide/e/h;
    .locals 1

    .line 336
    sget-object v0, Lcom/bumptech/glide/e/h;->i:Lcom/bumptech/glide/e/h;

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    .line 338
    invoke-virtual {v0}, Lcom/bumptech/glide/e/h;->dontAnimate()Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    .line 339
    invoke-virtual {v0}, Lcom/bumptech/glide/e/h;->autoClone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    sput-object v0, Lcom/bumptech/glide/e/h;->i:Lcom/bumptech/glide/e/h;

    .line 341
    :cond_0
    sget-object v0, Lcom/bumptech/glide/e/h;->i:Lcom/bumptech/glide/e/h;

    return-object v0
.end method

.method public static noTransformation()Lcom/bumptech/glide/e/h;
    .locals 1

    .line 240
    sget-object v0, Lcom/bumptech/glide/e/h;->h:Lcom/bumptech/glide/e/h;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    .line 242
    invoke-virtual {v0}, Lcom/bumptech/glide/e/h;->dontTransform()Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    .line 243
    invoke-virtual {v0}, Lcom/bumptech/glide/e/h;->autoClone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    sput-object v0, Lcom/bumptech/glide/e/h;->h:Lcom/bumptech/glide/e/h;

    .line 245
    :cond_0
    sget-object v0, Lcom/bumptech/glide/e/h;->h:Lcom/bumptech/glide/e/h;

    return-object v0
.end method

.method public static option(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/e/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/f<",
            "TT;>;TT;)",
            "Lcom/bumptech/glide/e/h;"
        }
    .end annotation

    .line 255
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/e/h;->set(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/e/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e/h;

    return-object p0
.end method

.method public static overrideOf(I)Lcom/bumptech/glide/e/h;
    .locals 0

    .line 152
    invoke-static {p0, p0}, Lcom/bumptech/glide/e/h;->overrideOf(II)Lcom/bumptech/glide/e/h;

    move-result-object p0

    return-object p0
.end method

.method public static overrideOf(II)Lcom/bumptech/glide/e/h;
    .locals 1

    .line 141
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/e/h;->override(II)Lcom/bumptech/glide/e/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e/h;

    return-object p0
.end method

.method public static placeholderOf(I)Lcom/bumptech/glide/e/h;
    .locals 1

    .line 92
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/e/h;->placeholder(I)Lcom/bumptech/glide/e/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e/h;

    return-object p0
.end method

.method public static placeholderOf(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/e/h;
    .locals 1

    .line 83
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/e/h;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/e/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e/h;

    return-object p0
.end method

.method public static priorityOf(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/e/h;
    .locals 1

    .line 74
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/e/h;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/e/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e/h;

    return-object p0
.end method

.method public static signatureOf(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/e/h;
    .locals 1

    .line 161
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/e/h;->signature(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/e/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e/h;

    return-object p0
.end method

.method public static sizeMultiplierOf(F)Lcom/bumptech/glide/e/h;
    .locals 1

    .line 54
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/e/h;->sizeMultiplier(F)Lcom/bumptech/glide/e/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e/h;

    return-object p0
.end method

.method public static skipMemoryCacheOf(Z)Lcom/bumptech/glide/e/h;
    .locals 1

    if-eqz p0, :cond_1

    .line 120
    sget-object p0, Lcom/bumptech/glide/e/h;->a:Lcom/bumptech/glide/e/h;

    if-nez p0, :cond_0

    .line 121
    new-instance p0, Lcom/bumptech/glide/e/h;

    invoke-direct {p0}, Lcom/bumptech/glide/e/h;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/e/h;->skipMemoryCache(Z)Lcom/bumptech/glide/e/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e/h;

    invoke-virtual {p0}, Lcom/bumptech/glide/e/h;->autoClone()Lcom/bumptech/glide/e/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e/h;

    sput-object p0, Lcom/bumptech/glide/e/h;->a:Lcom/bumptech/glide/e/h;

    .line 123
    :cond_0
    sget-object p0, Lcom/bumptech/glide/e/h;->a:Lcom/bumptech/glide/e/h;

    return-object p0

    .line 125
    :cond_1
    sget-object p0, Lcom/bumptech/glide/e/h;->c:Lcom/bumptech/glide/e/h;

    if-nez p0, :cond_2

    .line 126
    new-instance p0, Lcom/bumptech/glide/e/h;

    invoke-direct {p0}, Lcom/bumptech/glide/e/h;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/e/h;->skipMemoryCache(Z)Lcom/bumptech/glide/e/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e/h;

    invoke-virtual {p0}, Lcom/bumptech/glide/e/h;->autoClone()Lcom/bumptech/glide/e/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e/h;

    sput-object p0, Lcom/bumptech/glide/e/h;->c:Lcom/bumptech/glide/e/h;

    .line 128
    :cond_2
    sget-object p0, Lcom/bumptech/glide/e/h;->c:Lcom/bumptech/glide/e/h;

    return-object p0
.end method

.method public static timeoutOf(I)Lcom/bumptech/glide/e/h;
    .locals 1

    .line 303
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/e/h;->timeout(I)Lcom/bumptech/glide/e/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e/h;

    return-object p0
.end method
