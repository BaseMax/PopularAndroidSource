.class public final Lcom/google/android/material/circularreveal/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/circularreveal/b$a;
    }
.end annotation


# static fields
.field public static final BITMAP_SHADER:I = 0x0

.field public static final CLIP_PATH:I = 0x1

.field public static final REVEAL_ANIMATOR:I = 0x2

.field public static final STRATEGY:I


# instance fields
.field private final a:Lcom/google/android/material/circularreveal/b$a;

.field private final b:Landroid/view/View;

.field private final c:Landroid/graphics/Path;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private f:Lcom/google/android/material/circularreveal/c$d;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    .line 127
    sput v0, Lcom/google/android/material/circularreveal/b;->STRATEGY:I

    return-void

    .line 128
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    .line 129
    sput v0, Lcom/google/android/material/circularreveal/b;->STRATEGY:I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 131
    sput v0, Lcom/google/android/material/circularreveal/b;->STRATEGY:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/circularreveal/b$a;)V
    .locals 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/google/android/material/circularreveal/b;->a:Lcom/google/android/material/circularreveal/b$a;

    .line 137
    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/material/circularreveal/b;->b:Landroid/view/View;

    .line 138
    iget-object p1, p0, Lcom/google/android/material/circularreveal/b;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 140
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/circularreveal/b;->c:Landroid/graphics/Path;

    .line 141
    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/circularreveal/b;->d:Landroid/graphics/Paint;

    .line 142
    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/circularreveal/b;->e:Landroid/graphics/Paint;

    .line 143
    iget-object p1, p0, Lcom/google/android/material/circularreveal/b;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private a(Lcom/google/android/material/circularreveal/c$d;)F
    .locals 6

    .line 253
    iget v0, p1, Lcom/google/android/material/circularreveal/c$d;->centerX:F

    iget v1, p1, Lcom/google/android/material/circularreveal/c$d;->centerY:F

    iget-object p1, p0, Lcom/google/android/material/circularreveal/b;->b:Landroid/view/View;

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float v4, p1

    iget-object p1, p0, Lcom/google/android/material/circularreveal/b;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v5, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 253
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/e/a;->distanceToFurthestCorner(FFFFFF)F

    move-result p1

    return p1
.end method

.method private a()Z
    .locals 4

    .line 319
    iget-object v0, p0, Lcom/google/android/material/circularreveal/b;->f:Lcom/google/android/material/circularreveal/c$d;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/c$d;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 320
    :goto_1
    sget v3, Lcom/google/android/material/circularreveal/b;->STRATEGY:I

    if-nez v3, :cond_3

    if-nez v0, :cond_2

    .line 321
    iget-boolean v0, p0, Lcom/google/android/material/circularreveal/b;->i:Z

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    if-nez v0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method private b()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/google/android/material/circularreveal/b;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/circularreveal/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final buildCircularRevealCache()V
    .locals 6

    .line 152
    sget v0, Lcom/google/android/material/circularreveal/b;->STRATEGY:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/google/android/material/circularreveal/b;->h:Z

    const/4 v1, 0x0

    .line 154
    iput-boolean v1, p0, Lcom/google/android/material/circularreveal/b;->i:Z

    .line 156
    iget-object v2, p0, Lcom/google/android/material/circularreveal/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 157
    iget-object v2, p0, Lcom/google/android/material/circularreveal/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 159
    iget-object v3, p0, Lcom/google/android/material/circularreveal/b;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/material/circularreveal/b;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    iget-object v2, p0, Lcom/google/android/material/circularreveal/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/circularreveal/b;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 161
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 162
    iget-object v4, p0, Lcom/google/android/material/circularreveal/b;->b:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    if-eqz v2, :cond_1

    .line 166
    iget-object v3, p0, Lcom/google/android/material/circularreveal/b;->d:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v2, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 169
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/material/circularreveal/b;->h:Z

    .line 170
    iput-boolean v0, p0, Lcom/google/android/material/circularreveal/b;->i:Z

    :cond_2
    return-void
.end method

.method public final destroyCircularRevealCache()V
    .locals 2

    .line 175
    sget v0, Lcom/google/android/material/circularreveal/b;->STRATEGY:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lcom/google/android/material/circularreveal/b;->i:Z

    .line 177
    iget-object v0, p0, Lcom/google/android/material/circularreveal/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 178
    iget-object v0, p0, Lcom/google/android/material/circularreveal/b;->d:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 179
    iget-object v0, p0, Lcom/google/android/material/circularreveal/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 263
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/b;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 264
    sget v0, Lcom/google/android/material/circularreveal/b;->STRATEGY:I

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 266
    iget-object v0, p0, Lcom/google/android/material/circularreveal/b;->a:Lcom/google/android/material/circularreveal/b$a;

    invoke-interface {v0, p1}, Lcom/google/android/material/circularreveal/b$a;->actualDraw(Landroid/graphics/Canvas;)V

    .line 267
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/b;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 268
    iget-object v0, p0, Lcom/google/android/material/circularreveal/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcom/google/android/material/circularreveal/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/google/android/material/circularreveal/b;->e:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 290
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported strategy "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/google/android/material/circularreveal/b;->STRATEGY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 272
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 273
    iget-object v2, p0, Lcom/google/android/material/circularreveal/b;->c:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 275
    iget-object v2, p0, Lcom/google/android/material/circularreveal/b;->a:Lcom/google/android/material/circularreveal/b$a;

    invoke-interface {v2, p1}, Lcom/google/android/material/circularreveal/b$a;->actualDraw(Landroid/graphics/Canvas;)V

    .line 276
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/b;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 277
    iget-object v2, p0, Lcom/google/android/material/circularreveal/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v6, v2

    iget-object v2, p0, Lcom/google/android/material/circularreveal/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v7, v2

    iget-object v8, p0, Lcom/google/android/material/circularreveal/b;->e:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 280
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/circularreveal/b;->f:Lcom/google/android/material/circularreveal/c$d;

    iget v0, v0, Lcom/google/android/material/circularreveal/c$d;->centerX:F

    iget-object v2, p0, Lcom/google/android/material/circularreveal/b;->f:Lcom/google/android/material/circularreveal/c$d;

    iget v2, v2, Lcom/google/android/material/circularreveal/c$d;->centerY:F

    iget-object v3, p0, Lcom/google/android/material/circularreveal/b;->f:Lcom/google/android/material/circularreveal/c$d;

    iget v3, v3, Lcom/google/android/material/circularreveal/c$d;->radius:F

    iget-object v4, p0, Lcom/google/android/material/circularreveal/b;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 284
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/b;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 285
    iget-object v0, p0, Lcom/google/android/material/circularreveal/b;->f:Lcom/google/android/material/circularreveal/c$d;

    iget v0, v0, Lcom/google/android/material/circularreveal/c$d;->centerX:F

    iget-object v2, p0, Lcom/google/android/material/circularreveal/b;->f:Lcom/google/android/material/circularreveal/c$d;

    iget v2, v2, Lcom/google/android/material/circularreveal/c$d;->centerY:F

    iget-object v3, p0, Lcom/google/android/material/circularreveal/b;->f:Lcom/google/android/material/circularreveal/c$d;

    iget v3, v3, Lcom/google/android/material/circularreveal/c$d;->radius:F

    iget-object v4, p0, Lcom/google/android/material/circularreveal/b;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 293
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/circularreveal/b;->a:Lcom/google/android/material/circularreveal/b$a;

    invoke-interface {v0, p1}, Lcom/google/android/material/circularreveal/b$a;->actualDraw(Landroid/graphics/Canvas;)V

    .line 294
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/b;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 295
    iget-object v0, p0, Lcom/google/android/material/circularreveal/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcom/google/android/material/circularreveal/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/google/android/material/circularreveal/b;->e:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1332
    :cond_5
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/material/circularreveal/b;->h:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/material/circularreveal/b;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/material/circularreveal/b;->f:Lcom/google/android/material/circularreveal/c$d;

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_7

    .line 1304
    iget-object v0, p0, Lcom/google/android/material/circularreveal/b;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1305
    iget-object v1, p0, Lcom/google/android/material/circularreveal/b;->f:Lcom/google/android/material/circularreveal/c$d;

    iget v1, v1, Lcom/google/android/material/circularreveal/c$d;->centerX:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 1306
    iget-object v2, p0, Lcom/google/android/material/circularreveal/b;->f:Lcom/google/android/material/circularreveal/c$d;

    iget v2, v2, Lcom/google/android/material/circularreveal/c$d;->centerY:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    .line 1308
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1309
    iget-object v0, p0, Lcom/google/android/material/circularreveal/b;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v0, v1

    neg-float v1, v2

    .line 1310
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_7
    return-void
.end method

.method public final getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/google/android/material/circularreveal/b;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getCircularRevealScrimColor()I
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/google/android/material/circularreveal/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public final getRevealInfo()Lcom/google/android/material/circularreveal/c$d;
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/google/android/material/circularreveal/b;->f:Lcom/google/android/material/circularreveal/c$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 213
    :cond_0
    new-instance v1, Lcom/google/android/material/circularreveal/c$d;

    invoke-direct {v1, v0}, Lcom/google/android/material/circularreveal/c$d;-><init>(Lcom/google/android/material/circularreveal/c$d;)V

    .line 214
    invoke-virtual {v1}, Lcom/google/android/material/circularreveal/c$d;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-direct {p0, v1}, Lcom/google/android/material/circularreveal/b;->a(Lcom/google/android/material/circularreveal/c$d;)F

    move-result v0

    iput v0, v1, Lcom/google/android/material/circularreveal/c$d;->radius:F

    :cond_1
    return-object v1
.end method

.method public final isOpaque()Z
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/google/android/material/circularreveal/b;->a:Lcom/google/android/material/circularreveal/b$a;

    invoke-interface {v0}, Lcom/google/android/material/circularreveal/b$a;->actualIsOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/circularreveal/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/google/android/material/circularreveal/b;->g:Landroid/graphics/drawable/Drawable;

    .line 237
    iget-object p1, p0, Lcom/google/android/material/circularreveal/b;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setCircularRevealScrimColor(I)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/google/android/material/circularreveal/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    iget-object p1, p0, Lcom/google/android/material/circularreveal/b;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setRevealInfo(Lcom/google/android/material/circularreveal/c$d;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 189
    iput-object p1, p0, Lcom/google/android/material/circularreveal/b;->f:Lcom/google/android/material/circularreveal/c$d;

    goto :goto_1

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/circularreveal/b;->f:Lcom/google/android/material/circularreveal/c$d;

    if-nez v0, :cond_1

    .line 192
    new-instance v0, Lcom/google/android/material/circularreveal/c$d;

    invoke-direct {v0, p1}, Lcom/google/android/material/circularreveal/c$d;-><init>(Lcom/google/android/material/circularreveal/c$d;)V

    iput-object v0, p0, Lcom/google/android/material/circularreveal/b;->f:Lcom/google/android/material/circularreveal/c$d;

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/c$d;->set(Lcom/google/android/material/circularreveal/c$d;)V

    .line 198
    :goto_0
    iget v0, p1, Lcom/google/android/material/circularreveal/c$d;->radius:F

    .line 199
    invoke-direct {p0, p1}, Lcom/google/android/material/circularreveal/b;->a(Lcom/google/android/material/circularreveal/c$d;)F

    move-result p1

    const v1, 0x38d1b717    # 1.0E-4f

    .line 198
    invoke-static {v0, p1, v1}, Lcom/google/android/material/e/a;->geq(FFF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 200
    iget-object p1, p0, Lcom/google/android/material/circularreveal/b;->f:Lcom/google/android/material/circularreveal/c$d;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p1, Lcom/google/android/material/circularreveal/c$d;->radius:F

    .line 1241
    :cond_2
    :goto_1
    sget p1, Lcom/google/android/material/circularreveal/b;->STRATEGY:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 1242
    iget-object p1, p0, Lcom/google/android/material/circularreveal/b;->c:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    .line 1243
    iget-object p1, p0, Lcom/google/android/material/circularreveal/b;->f:Lcom/google/android/material/circularreveal/c$d;

    if-eqz p1, :cond_3

    .line 1244
    iget-object v0, p0, Lcom/google/android/material/circularreveal/b;->c:Landroid/graphics/Path;

    iget p1, p1, Lcom/google/android/material/circularreveal/c$d;->centerX:F

    iget-object v1, p0, Lcom/google/android/material/circularreveal/b;->f:Lcom/google/android/material/circularreveal/c$d;

    iget v1, v1, Lcom/google/android/material/circularreveal/c$d;->centerY:F

    iget-object v2, p0, Lcom/google/android/material/circularreveal/b;->f:Lcom/google/android/material/circularreveal/c$d;

    iget v2, v2, Lcom/google/android/material/circularreveal/c$d;->radius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1249
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/circularreveal/b;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
