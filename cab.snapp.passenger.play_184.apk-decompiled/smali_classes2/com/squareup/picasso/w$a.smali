.class public final Lcom/squareup/picasso/w$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Lcom/squareup/picasso/Picasso$Priority;

.field private d:Landroid/net/Uri;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Z

.field private k:F

.field private l:F

.field private m:F

.field private n:Z

.field private o:Z

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/picasso/ae;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/w$a;->setResourceId(I)Lcom/squareup/picasso/w$a;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/w$a;->setUri(Landroid/net/Uri;)Lcom/squareup/picasso/w$a;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Lcom/squareup/picasso/w$a;->d:Landroid/net/Uri;

    .line 237
    iput p2, p0, Lcom/squareup/picasso/w$a;->e:I

    .line 238
    iput-object p3, p0, Lcom/squareup/picasso/w$a;->q:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method private constructor <init>(Lcom/squareup/picasso/w;)V
    .locals 2

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iget-object v0, p1, Lcom/squareup/picasso/w;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/squareup/picasso/w$a;->d:Landroid/net/Uri;

    .line 243
    iget v0, p1, Lcom/squareup/picasso/w;->resourceId:I

    iput v0, p0, Lcom/squareup/picasso/w$a;->e:I

    .line 244
    iget-object v0, p1, Lcom/squareup/picasso/w;->stableKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/picasso/w$a;->f:Ljava/lang/String;

    .line 245
    iget v0, p1, Lcom/squareup/picasso/w;->targetWidth:I

    iput v0, p0, Lcom/squareup/picasso/w$a;->a:I

    .line 246
    iget v0, p1, Lcom/squareup/picasso/w;->targetHeight:I

    iput v0, p0, Lcom/squareup/picasso/w$a;->b:I

    .line 247
    iget-boolean v0, p1, Lcom/squareup/picasso/w;->centerCrop:Z

    iput-boolean v0, p0, Lcom/squareup/picasso/w$a;->g:Z

    .line 248
    iget-boolean v0, p1, Lcom/squareup/picasso/w;->centerInside:Z

    iput-boolean v0, p0, Lcom/squareup/picasso/w$a;->i:Z

    .line 249
    iget v0, p1, Lcom/squareup/picasso/w;->centerCropGravity:I

    iput v0, p0, Lcom/squareup/picasso/w$a;->h:I

    .line 250
    iget v0, p1, Lcom/squareup/picasso/w;->rotationDegrees:F

    iput v0, p0, Lcom/squareup/picasso/w$a;->k:F

    .line 251
    iget v0, p1, Lcom/squareup/picasso/w;->rotationPivotX:F

    iput v0, p0, Lcom/squareup/picasso/w$a;->l:F

    .line 252
    iget v0, p1, Lcom/squareup/picasso/w;->rotationPivotY:F

    iput v0, p0, Lcom/squareup/picasso/w$a;->m:F

    .line 253
    iget-boolean v0, p1, Lcom/squareup/picasso/w;->hasRotationPivot:Z

    iput-boolean v0, p0, Lcom/squareup/picasso/w$a;->n:Z

    .line 254
    iget-boolean v0, p1, Lcom/squareup/picasso/w;->purgeable:Z

    iput-boolean v0, p0, Lcom/squareup/picasso/w$a;->o:Z

    .line 255
    iget-boolean v0, p1, Lcom/squareup/picasso/w;->onlyScaleDown:Z

    iput-boolean v0, p0, Lcom/squareup/picasso/w$a;->j:Z

    .line 256
    iget-object v0, p1, Lcom/squareup/picasso/w;->transformations:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/squareup/picasso/w;->transformations:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/squareup/picasso/w$a;->p:Ljava/util/List;

    .line 259
    :cond_0
    iget-object v0, p1, Lcom/squareup/picasso/w;->config:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/squareup/picasso/w$a;->q:Landroid/graphics/Bitmap$Config;

    .line 260
    iget-object p1, p1, Lcom/squareup/picasso/w;->priority:Lcom/squareup/picasso/Picasso$Priority;

    iput-object p1, p0, Lcom/squareup/picasso/w$a;->c:Lcom/squareup/picasso/Picasso$Priority;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/picasso/w;B)V
    .locals 0

    .line 206
    invoke-direct {p0, p1}, Lcom/squareup/picasso/w$a;-><init>(Lcom/squareup/picasso/w;)V

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/squareup/picasso/w$a;->d:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/squareup/picasso/w$a;->e:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final build()Lcom/squareup/picasso/w;
    .locals 22

    move-object/from16 v0, p0

    .line 492
    iget-boolean v1, v0, Lcom/squareup/picasso/w$a;->i:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/squareup/picasso/w$a;->g:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 493
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center crop and center inside can not be used together."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 495
    :cond_1
    :goto_0
    iget-boolean v1, v0, Lcom/squareup/picasso/w$a;->g:Z

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/squareup/picasso/w$a;->a:I

    if-nez v1, :cond_3

    iget v1, v0, Lcom/squareup/picasso/w$a;->b:I

    if-eqz v1, :cond_2

    goto :goto_1

    .line 496
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center crop requires calling resize with positive width and height."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 499
    :cond_3
    :goto_1
    iget-boolean v1, v0, Lcom/squareup/picasso/w$a;->i:Z

    if-eqz v1, :cond_5

    iget v1, v0, Lcom/squareup/picasso/w$a;->a:I

    if-nez v1, :cond_5

    iget v1, v0, Lcom/squareup/picasso/w$a;->b:I

    if-eqz v1, :cond_4

    goto :goto_2

    .line 500
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center inside requires calling resize with positive width and height."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 503
    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/squareup/picasso/w$a;->c:Lcom/squareup/picasso/Picasso$Priority;

    if-nez v1, :cond_6

    .line 504
    sget-object v1, Lcom/squareup/picasso/Picasso$Priority;->NORMAL:Lcom/squareup/picasso/Picasso$Priority;

    iput-object v1, v0, Lcom/squareup/picasso/w$a;->c:Lcom/squareup/picasso/Picasso$Priority;

    .line 506
    :cond_6
    new-instance v1, Lcom/squareup/picasso/w;

    move-object v2, v1

    iget-object v3, v0, Lcom/squareup/picasso/w$a;->d:Landroid/net/Uri;

    iget v4, v0, Lcom/squareup/picasso/w$a;->e:I

    iget-object v5, v0, Lcom/squareup/picasso/w$a;->f:Ljava/lang/String;

    iget-object v6, v0, Lcom/squareup/picasso/w$a;->p:Ljava/util/List;

    iget v7, v0, Lcom/squareup/picasso/w$a;->a:I

    iget v8, v0, Lcom/squareup/picasso/w$a;->b:I

    iget-boolean v9, v0, Lcom/squareup/picasso/w$a;->g:Z

    iget-boolean v10, v0, Lcom/squareup/picasso/w$a;->i:Z

    iget v11, v0, Lcom/squareup/picasso/w$a;->h:I

    iget-boolean v12, v0, Lcom/squareup/picasso/w$a;->j:Z

    iget v13, v0, Lcom/squareup/picasso/w$a;->k:F

    iget v14, v0, Lcom/squareup/picasso/w$a;->l:F

    iget v15, v0, Lcom/squareup/picasso/w$a;->m:F

    move-object/from16 v21, v1

    iget-boolean v1, v0, Lcom/squareup/picasso/w$a;->n:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lcom/squareup/picasso/w$a;->o:Z

    move/from16 v17, v1

    iget-object v1, v0, Lcom/squareup/picasso/w$a;->q:Landroid/graphics/Bitmap$Config;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/squareup/picasso/w$a;->c:Lcom/squareup/picasso/Picasso$Priority;

    move-object/from16 v19, v1

    const/16 v20, 0x0

    invoke-direct/range {v2 .. v20}, Lcom/squareup/picasso/w;-><init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZIZFFFZZLandroid/graphics/Bitmap$Config;Lcom/squareup/picasso/Picasso$Priority;B)V

    return-object v21
.end method

.method public final centerCrop()Lcom/squareup/picasso/w$a;
    .locals 1

    const/16 v0, 0x11

    .line 346
    invoke-virtual {p0, v0}, Lcom/squareup/picasso/w$a;->centerCrop(I)Lcom/squareup/picasso/w$a;

    move-result-object v0

    return-object v0
.end method

.method public final centerCrop(I)Lcom/squareup/picasso/w$a;
    .locals 1

    .line 355
    iget-boolean v0, p0, Lcom/squareup/picasso/w$a;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 358
    iput-boolean v0, p0, Lcom/squareup/picasso/w$a;->g:Z

    .line 359
    iput p1, p0, Lcom/squareup/picasso/w$a;->h:I

    return-object p0

    .line 356
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Center crop can not be used after calling centerInside"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final centerInside()Lcom/squareup/picasso/w$a;
    .locals 2

    .line 375
    iget-boolean v0, p0, Lcom/squareup/picasso/w$a;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 378
    iput-boolean v0, p0, Lcom/squareup/picasso/w$a;->i:Z

    return-object p0

    .line 376
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center inside can not be used after calling centerCrop"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final clearCenterCrop()Lcom/squareup/picasso/w$a;
    .locals 1

    const/4 v0, 0x0

    .line 365
    iput-boolean v0, p0, Lcom/squareup/picasso/w$a;->g:Z

    const/16 v0, 0x11

    .line 366
    iput v0, p0, Lcom/squareup/picasso/w$a;->h:I

    return-object p0
.end method

.method public final clearCenterInside()Lcom/squareup/picasso/w$a;
    .locals 1

    const/4 v0, 0x0

    .line 384
    iput-boolean v0, p0, Lcom/squareup/picasso/w$a;->i:Z

    return-object p0
.end method

.method public final clearOnlyScaleDown()Lcom/squareup/picasso/w$a;
    .locals 1

    const/4 v0, 0x0

    .line 402
    iput-boolean v0, p0, Lcom/squareup/picasso/w$a;->j:Z

    return-object p0
.end method

.method public final clearResize()Lcom/squareup/picasso/w$a;
    .locals 1

    const/4 v0, 0x0

    .line 333
    iput v0, p0, Lcom/squareup/picasso/w$a;->a:I

    .line 334
    iput v0, p0, Lcom/squareup/picasso/w$a;->b:I

    .line 335
    iput-boolean v0, p0, Lcom/squareup/picasso/w$a;->g:Z

    .line 336
    iput-boolean v0, p0, Lcom/squareup/picasso/w$a;->i:Z

    return-object p0
.end method

.method public final clearRotation()Lcom/squareup/picasso/w$a;
    .locals 1

    const/4 v0, 0x0

    .line 423
    iput v0, p0, Lcom/squareup/picasso/w$a;->k:F

    .line 424
    iput v0, p0, Lcom/squareup/picasso/w$a;->l:F

    .line 425
    iput v0, p0, Lcom/squareup/picasso/w$a;->m:F

    const/4 v0, 0x0

    .line 426
    iput-boolean v0, p0, Lcom/squareup/picasso/w$a;->n:Z

    return-object p0
.end method

.method public final config(Landroid/graphics/Bitmap$Config;)Lcom/squareup/picasso/w$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 440
    iput-object p1, p0, Lcom/squareup/picasso/w$a;->q:Landroid/graphics/Bitmap$Config;

    return-object p0

    .line 438
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "config == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onlyScaleDown()Lcom/squareup/picasso/w$a;
    .locals 2

    .line 393
    iget v0, p0, Lcom/squareup/picasso/w$a;->b:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/squareup/picasso/w$a;->a:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onlyScaleDown can not be applied without resize"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 396
    iput-boolean v0, p0, Lcom/squareup/picasso/w$a;->j:Z

    return-object p0
.end method

.method public final priority(Lcom/squareup/picasso/Picasso$Priority;)Lcom/squareup/picasso/w$a;
    .locals 1

    if-eqz p1, :cond_1

    .line 449
    iget-object v0, p0, Lcom/squareup/picasso/w$a;->c:Lcom/squareup/picasso/Picasso$Priority;

    if-nez v0, :cond_0

    .line 452
    iput-object p1, p0, Lcom/squareup/picasso/w$a;->c:Lcom/squareup/picasso/Picasso$Priority;

    return-object p0

    .line 450
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Priority already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 447
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Priority invalid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final purgeable()Lcom/squareup/picasso/w$a;
    .locals 1

    const/4 v0, 0x1

    .line 431
    iput-boolean v0, p0, Lcom/squareup/picasso/w$a;->o:Z

    return-object p0
.end method

.method public final resize(II)Lcom/squareup/picasso/w$a;
    .locals 0

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At least one dimension has to be positive number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 326
    :cond_1
    :goto_0
    iput p1, p0, Lcom/squareup/picasso/w$a;->a:I

    .line 327
    iput p2, p0, Lcom/squareup/picasso/w$a;->b:I

    return-object p0

    .line 321
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Height must be positive number or 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 318
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width must be positive number or 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final rotate(F)Lcom/squareup/picasso/w$a;
    .locals 0

    .line 408
    iput p1, p0, Lcom/squareup/picasso/w$a;->k:F

    return-object p0
.end method

.method public final rotate(FFF)Lcom/squareup/picasso/w$a;
    .locals 0

    .line 414
    iput p1, p0, Lcom/squareup/picasso/w$a;->k:F

    .line 415
    iput p2, p0, Lcom/squareup/picasso/w$a;->l:F

    .line 416
    iput p3, p0, Lcom/squareup/picasso/w$a;->m:F

    const/4 p1, 0x1

    .line 417
    iput-boolean p1, p0, Lcom/squareup/picasso/w$a;->n:Z

    return-object p0
.end method

.method public final setResourceId(I)Lcom/squareup/picasso/w$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 298
    iput p1, p0, Lcom/squareup/picasso/w$a;->e:I

    const/4 p1, 0x0

    .line 299
    iput-object p1, p0, Lcom/squareup/picasso/w$a;->d:Landroid/net/Uri;

    return-object p0

    .line 296
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Image resource ID may not be 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setUri(Landroid/net/Uri;)Lcom/squareup/picasso/w$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 284
    iput-object p1, p0, Lcom/squareup/picasso/w$a;->d:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 285
    iput p1, p0, Lcom/squareup/picasso/w$a;->e:I

    return-object p0

    .line 282
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Image URI may not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final stableKey(Ljava/lang/String;)Lcom/squareup/picasso/w$a;
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/squareup/picasso/w$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final transform(Lcom/squareup/picasso/ae;)Lcom/squareup/picasso/w$a;
    .locals 2

    if-eqz p1, :cond_2

    .line 465
    invoke-interface {p1}, Lcom/squareup/picasso/ae;->key()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/squareup/picasso/w$a;->p:Ljava/util/List;

    if-nez v0, :cond_0

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/picasso/w$a;->p:Ljava/util/List;

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/w$a;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 466
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Transformation key must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 463
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Transformation must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final transform(Ljava/util/List;)Lcom/squareup/picasso/w$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/squareup/picasso/ae;",
            ">;)",
            "Lcom/squareup/picasso/w$a;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 484
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 485
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/picasso/ae;

    invoke-virtual {p0, v2}, Lcom/squareup/picasso/w$a;->transform(Lcom/squareup/picasso/ae;)Lcom/squareup/picasso/w$a;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    .line 482
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Transformation list must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
