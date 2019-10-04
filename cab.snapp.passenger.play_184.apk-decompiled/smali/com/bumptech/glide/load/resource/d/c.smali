.class public Lcom/bumptech/glide/load/resource/d/c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;
.implements Lcom/bumptech/glide/load/resource/d/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/d/c$a;
    }
.end annotation


# static fields
.field public static final LOOP_FOREVER:I = -0x1

.field public static final LOOP_INTRINSIC:I


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/d/c$a;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:Z

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Rect;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/j;IILandroid/graphics/Bitmap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/b/a;",
            "Lcom/bumptech/glide/load/b/a/e;",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    .line 118
    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/resource/d/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/load/j;IILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/load/j;IILandroid/graphics/Bitmap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/b/a;",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/bumptech/glide/load/resource/d/c$a;

    new-instance v8, Lcom/bumptech/glide/load/resource/d/g;

    .line 150
    invoke-static {p1}, Lcom/bumptech/glide/c;->get(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v2

    move-object v1, v8

    move-object v3, p2

    move v4, p4

    move v5, p5

    move-object v6, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/bumptech/glide/load/resource/d/g;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/b/a;IILcom/bumptech/glide/load/j;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v8}, Lcom/bumptech/glide/load/resource/d/c$a;-><init>(Lcom/bumptech/glide/load/resource/d/g;)V

    .line 146
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/d/c;-><init>(Lcom/bumptech/glide/load/resource/d/c$a;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/d/c$a;)V
    .locals 1

    .line 158
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->e:Z

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/bumptech/glide/load/resource/d/c;->g:I

    .line 159
    invoke-static {p1}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/resource/d/c$a;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    return-void
.end method

.method private a()V
    .locals 3

    .line 236
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->d:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request."

    invoke-static {v0, v2}, Lcom/bumptech/glide/g/j;->checkArgument(ZLjava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/g;->a()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->invalidateSelf()V

    return-void

    .line 241
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->b:Z

    if-nez v0, :cond_1

    .line 242
    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/d/c;->b:Z

    .line 243
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/d/g;->a(Lcom/bumptech/glide/load/resource/d/g$b;)V

    .line 244
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->b:Z

    .line 250
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/d/g;->b(Lcom/bumptech/glide/load/resource/d/g$b;)V

    return-void
.end method

.method private c()Landroid/graphics/Rect;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->j:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->j:Landroid/graphics/Rect;

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->j:Landroid/graphics/Rect;

    return-object v0
.end method

.method private d()Landroid/graphics/Paint;
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->i:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->i:Landroid/graphics/Paint;

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->i:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public clearAnimationCallbacks()V
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 442
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 295
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 299
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->h:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x77

    .line 300
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->c()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 301
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->h:Z

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/g;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 305
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->c()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->d()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    .line 3153
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/g;->a:Lcom/bumptech/glide/b/a;

    invoke-interface {v0}, Lcom/bumptech/glide/b/a;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    return-object v0
.end method

.method public getFirstFrame()Landroid/graphics/Bitmap;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    .line 2107
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/g;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFrameCount()I
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/g;->a()I

    move-result v0

    return v0
.end method

.method public getFrameIndex()I
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    .line 4144
    iget-object v1, v0, Lcom/bumptech/glide/load/resource/d/g;->f:Lcom/bumptech/glide/load/resource/d/g$a;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/g;->f:Lcom/bumptech/glide/load/resource/d/g$a;

    iget v0, v0, Lcom/bumptech/glide/load/resource/d/g$a;->a:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getFrameTransformation()Lcom/bumptech/glide/load/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    .line 3103
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/g;->j:Lcom/bumptech/glide/load/j;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    .line 6136
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/g;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    .line 6132
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/g;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getSize()I
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    .line 1140
    iget-object v1, v0, Lcom/bumptech/glide/load/resource/d/g;->a:Lcom/bumptech/glide/b/a;

    invoke-interface {v1}, Lcom/bumptech/glide/b/a;->getByteSize()I

    move-result v1

    .line 1148
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/g;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/g;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1149
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/g;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 1148
    invoke-static {v2, v3, v0}, Lcom/bumptech/glide/g/k;->getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public isRunning()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->b:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 289
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 290
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/d/c;->h:Z

    return-void
.end method

.method public onFrameReady()V
    .locals 3

    .line 6340
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 6341
    :goto_0
    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 6342
    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->stop()V

    .line 351
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->invalidateSelf()V

    return-void

    .line 355
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->invalidateSelf()V

    .line 357
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->getFrameIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->getFrameCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 358
    iget v0, p0, Lcom/bumptech/glide/load/resource/d/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/resource/d/c;->f:I

    .line 361
    :cond_2
    iget v0, p0, Lcom/bumptech/glide/load/resource/d/c;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget v1, p0, Lcom/bumptech/glide/load/resource/d/c;->f:I

    if-lt v1, v0, :cond_4

    .line 6368
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->k:Ljava/util/List;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 6369
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 6370
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/d/c;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v2, p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 363
    :cond_3
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->stop()V

    :cond_4
    return-void
.end method

.method public recycle()V
    .locals 5

    const/4 v0, 0x1

    .line 384
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->d:Z

    .line 385
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    .line 7179
    iget-object v2, v1, Lcom/bumptech/glide/load/resource/d/g;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 7180
    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/d/g;->c()V

    const/4 v2, 0x0

    .line 8175
    iput-boolean v2, v1, Lcom/bumptech/glide/load/resource/d/g;->d:Z

    .line 7182
    iget-object v2, v1, Lcom/bumptech/glide/load/resource/d/g;->f:Lcom/bumptech/glide/load/resource/d/g$a;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 7183
    iget-object v2, v1, Lcom/bumptech/glide/load/resource/d/g;->c:Lcom/bumptech/glide/h;

    iget-object v4, v1, Lcom/bumptech/glide/load/resource/d/g;->f:Lcom/bumptech/glide/load/resource/d/g$a;

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/h;->clear(Lcom/bumptech/glide/e/a/i;)V

    .line 7184
    iput-object v3, v1, Lcom/bumptech/glide/load/resource/d/g;->f:Lcom/bumptech/glide/load/resource/d/g$a;

    .line 7186
    :cond_0
    iget-object v2, v1, Lcom/bumptech/glide/load/resource/d/g;->h:Lcom/bumptech/glide/load/resource/d/g$a;

    if-eqz v2, :cond_1

    .line 7187
    iget-object v2, v1, Lcom/bumptech/glide/load/resource/d/g;->c:Lcom/bumptech/glide/h;

    iget-object v4, v1, Lcom/bumptech/glide/load/resource/d/g;->h:Lcom/bumptech/glide/load/resource/d/g$a;

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/h;->clear(Lcom/bumptech/glide/e/a/i;)V

    .line 7188
    iput-object v3, v1, Lcom/bumptech/glide/load/resource/d/g;->h:Lcom/bumptech/glide/load/resource/d/g$a;

    .line 7190
    :cond_1
    iget-object v2, v1, Lcom/bumptech/glide/load/resource/d/g;->k:Lcom/bumptech/glide/load/resource/d/g$a;

    if-eqz v2, :cond_2

    .line 7191
    iget-object v2, v1, Lcom/bumptech/glide/load/resource/d/g;->c:Lcom/bumptech/glide/h;

    iget-object v4, v1, Lcom/bumptech/glide/load/resource/d/g;->k:Lcom/bumptech/glide/load/resource/d/g$a;

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/h;->clear(Lcom/bumptech/glide/e/a/i;)V

    .line 7192
    iput-object v3, v1, Lcom/bumptech/glide/load/resource/d/g;->k:Lcom/bumptech/glide/load/resource/d/g$a;

    .line 7194
    :cond_2
    iget-object v2, v1, Lcom/bumptech/glide/load/resource/d/g;->a:Lcom/bumptech/glide/b/a;

    invoke-interface {v2}, Lcom/bumptech/glide/b/a;->clear()V

    .line 7195
    iput-boolean v0, v1, Lcom/bumptech/glide/load/resource/d/g;->g:Z

    return-void
.end method

.method public registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->k:Ljava/util/List;

    if-nez v0, :cond_1

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->k:Ljava/util/List;

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 310
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->d()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 315
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->d()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setFrameTransformation(Lcom/bumptech/glide/load/j;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/resource/d/g;->a(Lcom/bumptech/glide/load/j;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setLoopCount(I)V
    .locals 1

    const/4 v0, -0x1

    if-gtz p1, :cond_1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    .line 402
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object p1, p1, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    .line 9161
    iget-object p1, p1, Lcom/bumptech/glide/load/resource/d/g;->a:Lcom/bumptech/glide/b/a;

    invoke-interface {p1}, Lcom/bumptech/glide/b/a;->getTotalIterationCount()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, -0x1

    .line 404
    :cond_2
    iput p1, p0, Lcom/bumptech/glide/load/resource/d/c;->g:I

    return-void

    .line 406
    :cond_3
    iput p1, p0, Lcom/bumptech/glide/load/resource/d/c;->g:I

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 255
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->d:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View\'s visibility."

    invoke-static {v0, v1}, Lcom/bumptech/glide/g/j;->checkArgument(ZLjava/lang/String;)V

    .line 258
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/d/c;->e:Z

    if-nez p1, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->b()V

    goto :goto_0

    .line 261
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->c:Z

    if-eqz v0, :cond_1

    .line 262
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->a()V

    .line 264
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->c:Z

    const/4 v0, 0x0

    .line 5206
    iput v0, p0, Lcom/bumptech/glide/load/resource/d/c;->f:I

    .line 224
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->e:Z

    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->a()V

    :cond_0
    return-void
.end method

.method public startFromFirstFrame()V
    .locals 4

    .line 215
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "You cannot restart a currently running animation."

    invoke-static {v0, v2}, Lcom/bumptech/glide/g/j;->checkArgument(ZLjava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    .line 4237
    iget-boolean v2, v0, Lcom/bumptech/glide/load/resource/d/g;->d:Z

    xor-int/2addr v2, v1

    const-string v3, "Can\'t restart a running animation"

    invoke-static {v2, v3}, Lcom/bumptech/glide/g/j;->checkArgument(ZLjava/lang/String;)V

    .line 4238
    iput-boolean v1, v0, Lcom/bumptech/glide/load/resource/d/g;->e:Z

    .line 4239
    iget-object v1, v0, Lcom/bumptech/glide/load/resource/d/g;->k:Lcom/bumptech/glide/load/resource/d/g$a;

    if-eqz v1, :cond_0

    .line 4240
    iget-object v1, v0, Lcom/bumptech/glide/load/resource/d/g;->c:Lcom/bumptech/glide/h;

    iget-object v2, v0, Lcom/bumptech/glide/load/resource/d/g;->k:Lcom/bumptech/glide/load/resource/d/g$a;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/h;->clear(Lcom/bumptech/glide/e/a/i;)V

    const/4 v1, 0x0

    .line 4241
    iput-object v1, v0, Lcom/bumptech/glide/load/resource/d/g;->k:Lcom/bumptech/glide/load/resource/d/g$a;

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 231
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->c:Z

    .line 232
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->b()V

    return-void
.end method

.method public unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->k:Ljava/util/List;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 436
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
