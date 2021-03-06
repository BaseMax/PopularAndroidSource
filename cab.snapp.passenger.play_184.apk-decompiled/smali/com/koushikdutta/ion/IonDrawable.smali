.class Lcom/koushikdutta/ion/IonDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;,
        Lcom/koushikdutta/ion/IonDrawable$IonDrawableCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_PAINT_FLAGS:I = 0x6

.field private static final FADE_DURATION:J = 0xc8L

.field private static final LOG_2:D

.field private static final TILE_DIM:I = 0x100


# instance fields
.field private final NULL_BITMAPINFO:Landroid/graphics/drawable/Drawable;

.field private final NULL_ERROR:Landroid/graphics/drawable/Drawable;

.field private final NULL_PLACEHOLDER:Landroid/graphics/drawable/Drawable;

.field private alpha:I

.field private bitmapDrawable:Landroid/graphics/drawable/Drawable;

.field private bitmapDrawableFactory:Lcom/koushikdutta/ion/BitmapDrawableFactory;

.field private bitmapFetcher:Lcom/koushikdutta/ion/BitmapFetcher;

.field private callback:Lcom/koushikdutta/ion/IonDrawable$IonDrawableCallback;

.field private error:Landroid/graphics/drawable/Drawable;

.field private errorResource:I

.field private fadeIn:Z

.field private gifDecoder:Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;

.field private info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

.field private ion:Lcom/koushikdutta/ion/Ion;

.field private loadCallback:Lcom/koushikdutta/async/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/b/f<",
            "Lcom/koushikdutta/ion/IonDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private maxLevel:I

.field private paint:Landroid/graphics/Paint;

.field private placeholder:Landroid/graphics/drawable/Drawable;

.field private placeholderResource:I

.field private repeatAnimation:Z

.field private resizeHeight:I

.field private resizeWidth:I

.field private resources:Landroid/content/res/Resources;

.field private servedFrom:Lcom/koushikdutta/ion/ResponseServedFrom;

.field private textureDim:I

.field private tileCallback:Lcom/koushikdutta/async/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/b/f<",
            "Lcom/koushikdutta/ion/bitmap/BitmapInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/koushikdutta/ion/IonDrawable;->LOG_2:D

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 281
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0xff

    .line 37
    iput v0, p0, Lcom/koushikdutta/ion/IonDrawable;->alpha:I

    .line 435
    new-instance v0, Lcom/koushikdutta/ion/IonDrawable$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/IonDrawable$1;-><init>(Lcom/koushikdutta/ion/IonDrawable;)V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->tileCallback:Lcom/koushikdutta/async/b/f;

    .line 283
    invoke-virtual {p0, v3, v3}, Lcom/koushikdutta/ion/IonDrawable;->setId(II)V

    .line 284
    invoke-virtual {p0, v4, v4}, Lcom/koushikdutta/ion/IonDrawable;->setId(II)V

    .line 285
    invoke-virtual {p0, v2, v2}, Lcom/koushikdutta/ion/IonDrawable;->setId(II)V

    .line 287
    invoke-virtual {p0, v3}, Lcom/koushikdutta/ion/IonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->NULL_PLACEHOLDER:Landroid/graphics/drawable/Drawable;

    .line 288
    invoke-virtual {p0, v4}, Lcom/koushikdutta/ion/IonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->NULL_BITMAPINFO:Landroid/graphics/drawable/Drawable;

    .line 289
    invoke-virtual {p0, v2}, Lcom/koushikdutta/ion/IonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->NULL_ERROR:Landroid/graphics/drawable/Drawable;

    .line 291
    iput-object p1, p0, Lcom/koushikdutta/ion/IonDrawable;->resources:Landroid/content/res/Resources;

    .line 292
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/koushikdutta/ion/IonDrawable;->paint:Landroid/graphics/Paint;

    .line 293
    new-instance p1, Lcom/koushikdutta/ion/IonDrawable$IonDrawableCallback;

    invoke-direct {p1, p0}, Lcom/koushikdutta/ion/IonDrawable$IonDrawableCallback;-><init>(Lcom/koushikdutta/ion/IonDrawable;)V

    iput-object p1, p0, Lcom/koushikdutta/ion/IonDrawable;->callback:Lcom/koushikdutta/ion/IonDrawable$IonDrawableCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/ion/IonDrawable;)Lcom/koushikdutta/async/b/f;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/koushikdutta/ion/IonDrawable;->loadCallback:Lcom/koushikdutta/async/b/f;

    return-object p0
.end method

.method static synthetic access$100(Lcom/koushikdutta/ion/IonDrawable;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/koushikdutta/ion/IonDrawable;->repeatAnimation:Z

    return p0
.end method

.method private drawDeepZoom(Landroid/graphics/Canvas;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 626
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 627
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/ion/IonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 629
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 631
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v4

    .line 632
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float v4, v4, v6

    const/high16 v6, 0x43800000    # 256.0f

    div-float/2addr v5, v6

    float-to-double v7, v5

    .line 634
    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    sget-wide v9, Lcom/koushikdutta/ion/IonDrawable;->LOG_2:D

    div-double/2addr v7, v9

    div-float/2addr v4, v6

    float-to-double v4, v4

    .line 635
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    sget-wide v9, Lcom/koushikdutta/ion/IonDrawable;->LOG_2:D

    div-double/2addr v4, v9

    .line 636
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 638
    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 639
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 640
    iget v9, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 641
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v10

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 642
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 643
    iget v5, v0, Lcom/koushikdutta/ion/IonDrawable;->maxLevel:I

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 644
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x1

    shl-int v10, v5, v4

    .line 646
    iget v11, v0, Lcom/koushikdutta/ion/IonDrawable;->textureDim:I

    div-int/2addr v11, v10

    .line 652
    iget-object v12, v0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v12, v12, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    if-eqz v12, :cond_0

    .line 653
    iget-object v12, v0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v12, v12, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/ion/IonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    iget-object v15, v0, Lcom/koushikdutta/ion/IonDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 662
    :cond_0
    iget-object v12, v0, Lcom/koushikdutta/ion/IonDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v14, -0x1000000

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 663
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/ion/IonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    iget-object v14, v0, Lcom/koushikdutta/ion/IonDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v14}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    const/4 v12, 0x1

    .line 667
    :goto_1
    div-int v14, v11, v12

    const/16 v15, 0x100

    if-le v14, v15, :cond_1

    shl-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_2
    if-ge v14, v10, :cond_10

    mul-int v13, v11, v14

    add-int/lit8 v21, v14, 0x1

    mul-int v15, v11, v21

    .line 673
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-lt v5, v9, :cond_f

    if-gt v13, v2, :cond_10

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v10, :cond_f

    mul-int v7, v11, v15

    add-int/lit8 v22, v15, 0x1

    move/from16 v23, v2

    mul-int v2, v11, v22

    move/from16 v24, v9

    .line 682
    iget v9, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lt v2, v6, :cond_e

    if-gt v7, v8, :cond_d

    .line 689
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v7, v13, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x7

    new-array v7, v2, [Ljava/lang/Object;

    .line 693
    iget-object v2, v0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v2, v2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->key:Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v2, v7, v17

    const-string v2, ","

    const/16 v17, 0x1

    aput-object v2, v7, v17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v25, 0x2

    aput-object v17, v7, v25

    const/16 v26, 0x3

    aput-object v2, v7, v26

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v27, 0x4

    aput-object v17, v7, v27

    const/16 v28, 0x5

    aput-object v2, v7, v28

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v29, 0x6

    aput-object v17, v7, v29

    invoke-static {v7}, Lcom/koushikdutta/async/e/c;->toKeyString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v30, v3

    .line 694
    iget-object v3, v0, Lcom/koushikdutta/ion/IonDrawable;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v3, v3, Lcom/koushikdutta/ion/Ion;->bitmapCache:Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    invoke-virtual {v3, v7}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->get(Ljava/lang/String;)Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    move-result-object v3

    move/from16 v31, v5

    if-eqz v3, :cond_2

    .line 695
    iget-object v5, v3, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    .line 698
    iget-object v2, v3, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/koushikdutta/ion/IonDrawable;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move/from16 v18, v4

    goto/16 :goto_9

    .line 703
    :cond_2
    iget-object v5, v0, Lcom/koushikdutta/ion/IonDrawable;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v5, v5, Lcom/koushikdutta/ion/Ion;->bitmapsPending:Lcom/koushikdutta/async/e/e;

    invoke-virtual {v5, v7}, Lcom/koushikdutta/async/e/e;->tag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 706
    new-instance v5, Lcom/koushikdutta/ion/LoadBitmapRegion;

    move-object/from16 v32, v3

    iget-object v3, v0, Lcom/koushikdutta/ion/IonDrawable;->ion:Lcom/koushikdutta/ion/Ion;

    move/from16 v33, v6

    iget-object v6, v0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v6, v6, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->decoder:Landroid/graphics/BitmapRegionDecoder;

    move/from16 v35, v8

    move/from16 v34, v15

    const/16 v8, 0x100

    move-object v15, v5

    move-object/from16 v16, v3

    move-object/from16 v17, v7

    move-object/from16 v18, v6

    move-object/from16 v19, v9

    move/from16 v20, v12

    invoke-direct/range {v15 .. v20}, Lcom/koushikdutta/ion/LoadBitmapRegion;-><init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;I)V

    goto :goto_4

    :cond_3
    move-object/from16 v32, v3

    move/from16 v33, v6

    move/from16 v35, v8

    move/from16 v34, v15

    const/16 v8, 0x100

    .line 708
    :goto_4
    iget-object v3, v0, Lcom/koushikdutta/ion/IonDrawable;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v3, v3, Lcom/koushikdutta/ion/Ion;->bitmapsPending:Lcom/koushikdutta/async/e/e;

    iget-object v5, v0, Lcom/koushikdutta/ion/IonDrawable;->tileCallback:Lcom/koushikdutta/async/b/f;

    invoke-virtual {v3, v7, v5}, Lcom/koushikdutta/async/e/e;->add(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v4, -0x1

    .line 714
    rem-int/lit8 v15, v34, 0x2

    const/4 v5, 0x1

    if-ne v15, v5, :cond_4

    const/4 v6, 0x1

    goto :goto_5

    :cond_4
    const/4 v6, 0x0

    .line 716
    :goto_5
    rem-int/lit8 v7, v14, 0x2

    if-ne v7, v5, :cond_5

    const/4 v5, 0x1

    goto :goto_6

    :cond_5
    const/4 v5, 0x0

    :goto_6
    shr-int/lit8 v7, v34, 0x1

    shr-int/lit8 v15, v14, 0x1

    move/from16 v16, v5

    const/4 v5, 0x1

    :goto_7
    move/from16 v18, v4

    if-ltz v3, :cond_9

    const/4 v8, 0x7

    new-array v4, v8, [Ljava/lang/Object;

    .line 722
    iget-object v8, v0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v8, v8, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->key:Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v8, v4, v19

    const/4 v8, 0x1

    aput-object v2, v4, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v25

    aput-object v2, v4, v26

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v27

    aput-object v2, v4, v28

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v29

    invoke-static {v4}, Lcom/koushikdutta/async/e/c;->toKeyString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 723
    iget-object v8, v0, Lcom/koushikdutta/ion/IonDrawable;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v8, v8, Lcom/koushikdutta/ion/Ion;->bitmapCache:Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    invoke-virtual {v8, v4}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->get(Ljava/lang/String;)Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 724
    iget-object v8, v4, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_a

    .line 726
    :cond_6
    rem-int/lit8 v8, v7, 0x2

    move-object/from16 v20, v2

    const/4 v2, 0x1

    if-ne v8, v2, :cond_7

    shl-int v8, v2, v5

    add-int/2addr v6, v8

    .line 729
    :cond_7
    rem-int/lit8 v8, v15, 0x2

    if-ne v8, v2, :cond_8

    shl-int v8, v2, v5

    add-int v16, v16, v8

    :cond_8
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v5, v5, 0x1

    shr-int/lit8 v7, v7, 0x1

    shr-int/lit8 v15, v15, 0x1

    move-object/from16 v32, v4

    move/from16 v4, v18

    move-object/from16 v2, v20

    const/16 v8, 0x100

    goto :goto_7

    :cond_9
    const/16 v19, 0x0

    move-object/from16 v4, v32

    :cond_a
    if-eqz v4, :cond_c

    .line 739
    iget-object v2, v4, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    shl-int v3, v2, v3

    .line 744
    iget v7, v0, Lcom/koushikdutta/ion/IonDrawable;->textureDim:I

    div-int/2addr v7, v3

    const/4 v3, 0x1

    .line 746
    :goto_8
    div-int v8, v7, v3

    const/16 v15, 0x100

    if-le v8, v15, :cond_b

    shl-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_b
    shr-int v3, v8, v5

    mul-int v6, v6, v3

    mul-int v5, v3, v16

    .line 753
    new-instance v7, Landroid/graphics/Rect;

    add-int v8, v6, v3

    add-int/2addr v3, v5

    invoke-direct {v7, v6, v5, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 754
    iget-object v3, v4, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lcom/koushikdutta/ion/IonDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v7, v9, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_a

    :cond_c
    const/4 v2, 0x1

    const/16 v15, 0x100

    goto :goto_a

    :cond_d
    move-object/from16 v30, v3

    move/from16 v18, v4

    move/from16 v33, v6

    move/from16 v35, v8

    goto :goto_b

    :cond_e
    move-object/from16 v30, v3

    move/from16 v18, v4

    move/from16 v31, v5

    :goto_9
    move/from16 v33, v6

    move/from16 v35, v8

    const/4 v2, 0x1

    const/16 v15, 0x100

    const/16 v19, 0x0

    :goto_a
    move/from16 v4, v18

    move/from16 v15, v22

    move/from16 v2, v23

    move/from16 v9, v24

    move-object/from16 v3, v30

    move/from16 v5, v31

    move/from16 v6, v33

    move/from16 v8, v35

    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_f
    move/from16 v23, v2

    move-object/from16 v30, v3

    move/from16 v18, v4

    move/from16 v33, v6

    move/from16 v35, v8

    move/from16 v24, v9

    :goto_b
    const/4 v2, 0x1

    const/16 v15, 0x100

    const/16 v19, 0x0

    move/from16 v4, v18

    move/from16 v14, v21

    move/from16 v2, v23

    move/from16 v9, v24

    move-object/from16 v3, v30

    move/from16 v6, v33

    move/from16 v8, v35

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_10
    return-void
.end method

.method static getOrCreateIonDrawable(Landroid/widget/ImageView;)Lcom/koushikdutta/ion/IonDrawable;
    .locals 2

    .line 786
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 788
    instance-of v1, v0, Lcom/koushikdutta/ion/IonDrawable;

    if-nez v1, :cond_0

    goto :goto_0

    .line 791
    :cond_0
    check-cast v0, Lcom/koushikdutta/ion/IonDrawable;

    goto :goto_1

    .line 789
    :cond_1
    :goto_0
    new-instance v0, Lcom/koushikdutta/ion/IonDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/ion/IonDrawable;-><init>(Landroid/content/res/Resources;)V

    :goto_1
    const/4 v1, 0x0

    .line 794
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private tryGetBitmapResource()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 412
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->bitmapDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 416
    :cond_1
    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->gifDecoder:Lcom/koushikdutta/ion/gif/GifDecoder;

    if-eqz v0, :cond_2

    return-object v1

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->decoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_3

    return-object v1

    .line 420
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    return-object v1

    .line 422
    :cond_4
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->bitmapDrawableFactory:Lcom/koushikdutta/ion/BitmapDrawableFactory;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonDrawable;->resources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v2, v2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/koushikdutta/ion/BitmapDrawableFactory;->fromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->bitmapDrawable:Landroid/graphics/drawable/Drawable;

    .line 423
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->bitmapDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private tryGetErrorResource()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->error:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    .line 405
    :cond_0
    iget v0, p0, Lcom/koushikdutta/ion/IonDrawable;->errorResource:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 407
    :cond_1
    iget-object v1, p0, Lcom/koushikdutta/ion/IonDrawable;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->error:Landroid/graphics/drawable/Drawable;

    .line 408
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->error:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private tryGetPlaceholderResource()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    .line 429
    :cond_0
    iget v0, p0, Lcom/koushikdutta/ion/IonDrawable;->placeholderResource:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 431
    :cond_1
    iget-object v1, p0, Lcom/koushikdutta/ion/IonDrawable;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 432
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->callback:Lcom/koushikdutta/ion/IonDrawable$IonDrawableCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/koushikdutta/ion/IonDrawable$IonDrawableCallback;->register(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;)V

    .line 277
    iput-object v1, p0, Lcom/koushikdutta/ion/IonDrawable;->bitmapFetcher:Lcom/koushikdutta/ion/BitmapFetcher;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 495
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 497
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 500
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->bitmapFetcher:Lcom/koushikdutta/ion/BitmapFetcher;

    if-eqz v0, :cond_4

    .line 501
    iget v0, v0, Lcom/koushikdutta/ion/BitmapFetcher;->sampleWidth:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->bitmapFetcher:Lcom/koushikdutta/ion/BitmapFetcher;

    iget v0, v0, Lcom/koushikdutta/ion/BitmapFetcher;->sampleHeight:I

    if-nez v0, :cond_2

    .line 502
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 503
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->bitmapFetcher:Lcom/koushikdutta/ion/BitmapFetcher;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    iput v3, v0, Lcom/koushikdutta/ion/BitmapFetcher;->sampleWidth:I

    .line 504
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 505
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->bitmapFetcher:Lcom/koushikdutta/ion/BitmapFetcher;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    iput p1, v0, Lcom/koushikdutta/ion/BitmapFetcher;->sampleHeight:I

    .line 508
    :cond_1
    iget-object p1, p0, Lcom/koushikdutta/ion/IonDrawable;->bitmapFetcher:Lcom/koushikdutta/ion/BitmapFetcher;

    invoke-virtual {p1}, Lcom/koushikdutta/ion/BitmapFetcher;->recomputeDecodeKey()V

    .line 509
    iget-object p1, p0, Lcom/koushikdutta/ion/IonDrawable;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object p1, p1, Lcom/koushikdutta/ion/Ion;->bitmapCache:Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->bitmapFetcher:Lcom/koushikdutta/ion/BitmapFetcher;

    iget-object v0, v0, Lcom/koushikdutta/ion/BitmapFetcher;->bitmapKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->get(Ljava/lang/String;)Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 512
    iput-object v1, p0, Lcom/koushikdutta/ion/IonDrawable;->bitmapFetcher:Lcom/koushikdutta/ion/BitmapFetcher;

    .line 515
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->callback:Lcom/koushikdutta/ion/IonDrawable$IonDrawableCallback;

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/ion/IonDrawable$IonDrawableCallback;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    return-void

    .line 521
    :cond_2
    iget-object p1, p0, Lcom/koushikdutta/ion/IonDrawable;->callback:Lcom/koushikdutta/ion/IonDrawable$IonDrawableCallback;

    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v2, p0, Lcom/koushikdutta/ion/IonDrawable;->bitmapFetcher:Lcom/koushikdutta/ion/BitmapFetcher;

    iget-object v2, v2, Lcom/koushikdutta/ion/BitmapFetcher;->bitmapKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/koushikdutta/ion/IonDrawable$IonDrawableCallback;->register(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;)V

    .line 525
    iget-object p1, p0, Lcom/koushikdutta/ion/IonDrawable;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-static {p1}, Lcom/koushikdutta/ion/BitmapFetcher;->shouldDeferImageView(Lcom/koushikdutta/ion/Ion;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 526
    iget-object p1, p0, Lcom/koushikdutta/ion/IonDrawable;->bitmapFetcher:Lcom/koushikdutta/ion/BitmapFetcher;

    invoke-virtual {p1}, Lcom/koushikdutta/ion/BitmapFetcher;->defer()Lcom/koushikdutta/ion/DeferredLoadBitmap;

    goto :goto_0

    .line 528
    :cond_3
    iget-object p1, p0, Lcom/koushikdutta/ion/IonDrawable;->bitmapFetcher:Lcom/koushikdutta/ion/BitmapFetcher;

    invoke-virtual {p1}, Lcom/koushikdutta/ion/BitmapFetcher;->execute()V

    .line 531
    :goto_0
    iput-object v1, p0, Lcom/koushikdutta/ion/IonDrawable;->bitmapFetcher:Lcom/koushikdutta/ion/BitmapFetcher;

    :cond_4
    return-void

    .line 538
    :cond_5
    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->decoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_6

    .line 539
    invoke-direct {p0, p1}, Lcom/koushikdutta/ion/IonDrawable;->drawDeepZoom(Landroid/graphics/Canvas;)V

    return-void

    .line 543
    :cond_6
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-wide v2, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->drawTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_7

    .line 544
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->drawTime:J

    .line 546
    :cond_7
    iget v0, p0, Lcom/koushikdutta/ion/IonDrawable;->alpha:I

    int-to-long v2, v0

    .line 548
    iget-boolean v0, p0, Lcom/koushikdutta/ion/IonDrawable;->fadeIn:Z

    if-eqz v0, :cond_8

    .line 549
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-wide v4, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->drawTime:J

    sub-long/2addr v2, v4

    const/16 v0, 0x8

    shl-long/2addr v2, v0

    const-wide/16 v4, 0xc8

    div-long/2addr v2, v4

    .line 550
    iget v0, p0, Lcom/koushikdutta/ion/IonDrawable;->alpha:I

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 554
    :cond_8
    iget v0, p0, Lcom/koushikdutta/ion/IonDrawable;->alpha:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-nez v0, :cond_9

    .line 555
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 556
    iput-object v1, p0, Lcom/koushikdutta/ion/IonDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 557
    iget-object v4, p0, Lcom/koushikdutta/ion/IonDrawable;->NULL_PLACEHOLDER:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v4}, Lcom/koushikdutta/ion/IonDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    goto :goto_1

    .line 561
    :cond_9
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 562
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonDrawable;->invalidateSelf()V

    .line 565
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->gifDecoder:Lcom/koushikdutta/ion/gif/GifDecoder;

    if-eqz v0, :cond_c

    .line 566
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 568
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->gifDecoder:Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->getCurrentFrame()Lcom/koushikdutta/ion/gif/GifFrame;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 570
    iget-object v4, p0, Lcom/koushikdutta/ion/IonDrawable;->paint:Landroid/graphics/Paint;

    long-to-int v3, v2

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 571
    iget-object v0, v0, Lcom/koushikdutta/ion/gif/GifFrame;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/koushikdutta/ion/IonDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 572
    iget-object p1, p0, Lcom/koushikdutta/ion/IonDrawable;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/koushikdutta/ion/IonDrawable;->alpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 573
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonDrawable;->invalidateSelf()V

    :cond_b
    return-void

    .line 578
    :cond_c
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    .line 579
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->bitmapDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    long-to-int v1, v2

    .line 580
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2

    .line 582
    :cond_d
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->error:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    long-to-int v1, v2

    .line 583
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 586
    :cond_e
    :goto_2
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getBitmapInfo()Lcom/koushikdutta/ion/bitmap/BitmapInfo;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    return-object v0
.end method

.method public getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    if-nez v0, :cond_0

    .line 81
    iget v0, p0, Lcom/koushikdutta/ion/IonDrawable;->placeholderResource:I

    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/koushikdutta/ion/IonDrawable;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 85
    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 86
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonDrawable;->resources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v2, v2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->gifDecoder:Lcom/koushikdutta/ion/gif/GifDecoder;

    if-eqz v0, :cond_4

    .line 88
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->gifDecoder:Lcom/koushikdutta/ion/gif/GifDecoder;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/gif/GifDecoder;->getLastFrame()Lcom/koushikdutta/ion/gif/GifFrame;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 90
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/koushikdutta/ion/IonDrawable;->resources:Landroid/content/res/Resources;

    iget-object v0, v0, Lcom/koushikdutta/ion/gif/GifFrame;->image:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1

    .line 91
    :cond_2
    iget v0, p0, Lcom/koushikdutta/ion/IonDrawable;->placeholderResource:I

    if-eqz v0, :cond_3

    .line 92
    iget-object v1, p0, Lcom/koushikdutta/ion/IonDrawable;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1

    .line 96
    :cond_4
    iget v0, p0, Lcom/koushikdutta/ion/IonDrawable;->errorResource:I

    if-eqz v0, :cond_5

    .line 97
    iget-object v1, p0, Lcom/koushikdutta/ion/IonDrawable;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_5
    return-object v1
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->decoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->originalSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonDrawable;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v0

    return v0

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->gifDecoder:Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;

    if-eqz v0, :cond_2

    .line 479
    iget-object v0, v0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->gifDecoder:Lcom/koushikdutta/ion/gif/GifDecoder;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/gif/GifDecoder;->getHeight()I

    move-result v0

    return v0

    .line 480
    :cond_2
    iget v0, p0, Lcom/koushikdutta/ion/IonDrawable;->resizeHeight:I

    if-lez v0, :cond_3

    return v0

    .line 482
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    if-eqz v0, :cond_4

    .line 483
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonDrawable;->tryGetErrorResource()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 485
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 487
    :cond_4
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonDrawable;->tryGetPlaceholderResource()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 489
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_5
    const/4 v0, -0x1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->decoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->originalSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonDrawable;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v0

    return v0

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->gifDecoder:Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;

    if-eqz v0, :cond_2

    .line 452
    iget-object v0, v0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->gifDecoder:Lcom/koushikdutta/ion/gif/GifDecoder;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/gif/GifDecoder;->getWidth()I

    move-result v0

    return v0

    .line 454
    :cond_2
    iget v0, p0, Lcom/koushikdutta/ion/IonDrawable;->resizeWidth:I

    if-lez v0, :cond_3

    return v0

    .line 457
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    if-eqz v0, :cond_4

    .line 458
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonDrawable;->tryGetErrorResource()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 460
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 463
    :cond_4
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonDrawable;->tryGetPlaceholderResource()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 465
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_5
    const/4 v0, -0x1

    return v0
.end method

.method public getLoadCallback()Lcom/koushikdutta/async/b/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/b/f<",
            "Lcom/koushikdutta/ion/IonDrawable;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->loadCallback:Lcom/koushikdutta/async/b/f;

    return-object v0
.end method

.method public getOpacity()I
    .locals 2

    .line 781
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 782
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->getOpacity()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x3

    return v0
.end method

.method public ion(Lcom/koushikdutta/ion/Ion;)Lcom/koushikdutta/ion/IonDrawable;
    .locals 1

    if-eqz p1, :cond_0

    .line 75
    iput-object p1, p0, Lcom/koushikdutta/ion/IonDrawable;->ion:Lcom/koushikdutta/ion/Ion;

    return-object p0

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "null ion"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 768
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setAlpha(I)V

    .line 769
    iput p1, p0, Lcom/koushikdutta/ion/IonDrawable;->alpha:I

    .line 770
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setBitmap(Lcom/koushikdutta/ion/bitmap/BitmapInfo;Lcom/koushikdutta/ion/ResponseServedFrom;)Lcom/koushikdutta/ion/IonDrawable;
    .locals 4

    .line 335
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonDrawable;->cancel()V

    .line 339
    iput-object p2, p0, Lcom/koushikdutta/ion/IonDrawable;->servedFrom:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 340
    iput-object p1, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    const/4 p2, 0x0

    .line 341
    iput-object p2, p0, Lcom/koushikdutta/ion/IonDrawable;->gifDecoder:Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;

    .line 342
    iput-object p2, p0, Lcom/koushikdutta/ion/IonDrawable;->bitmapDrawable:Landroid/graphics/drawable/Drawable;

    .line 343
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonDrawable;->invalidateSelf()V

    if-nez p1, :cond_1

    return-object p0

    .line 347
    :cond_1
    iget-object p2, p1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->decoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz p2, :cond_2

    .line 349
    iget-object p2, p1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->originalSize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-double v0, p2

    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 350
    iget-object p1, p1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->originalSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v2

    .line 354
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    .line 355
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    sget-wide v0, Lcom/koushikdutta/ion/IonDrawable;->LOG_2:D

    div-double/2addr p1, v0

    .line 357
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/koushikdutta/ion/IonDrawable;->maxLevel:I

    const/16 p1, 0x100

    .line 361
    iget p2, p0, Lcom/koushikdutta/ion/IonDrawable;->maxLevel:I

    shl-int/2addr p1, p2

    iput p1, p0, Lcom/koushikdutta/ion/IonDrawable;->textureDim:I

    goto :goto_0

    .line 363
    :cond_2
    iget-object p2, p1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->gifDecoder:Lcom/koushikdutta/ion/gif/GifDecoder;

    if-eqz p2, :cond_3

    .line 364
    new-instance p2, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;

    invoke-direct {p2, p0, p1}, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;-><init>(Lcom/koushikdutta/ion/IonDrawable;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    iput-object p2, p0, Lcom/koushikdutta/ion/IonDrawable;->gifDecoder:Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;

    :cond_3
    :goto_0
    return-object p0
.end method

.method public setBitmapDrawableFactory(Lcom/koushikdutta/ion/BitmapDrawableFactory;)Lcom/koushikdutta/ion/IonDrawable;
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/koushikdutta/ion/IonDrawable;->bitmapDrawableFactory:Lcom/koushikdutta/ion/BitmapDrawableFactory;

    return-object p0
.end method

.method public setBitmapFetcher(Lcom/koushikdutta/ion/BitmapFetcher;)Lcom/koushikdutta/ion/IonDrawable;
    .locals 1

    .line 264
    iput-object p1, p0, Lcom/koushikdutta/ion/IonDrawable;->bitmapFetcher:Lcom/koushikdutta/ion/BitmapFetcher;

    .line 265
    iget-object p1, p0, Lcom/koushikdutta/ion/IonDrawable;->ion:Lcom/koushikdutta/ion/Ion;

    if-eqz p1, :cond_0

    return-object p0

    .line 266
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "null ion"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 775
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 776
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setError(ILandroid/graphics/drawable/Drawable;)Lcom/koushikdutta/ion/IonDrawable;
    .locals 1

    if-eqz p2, :cond_0

    .line 385
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->error:Landroid/graphics/drawable/Drawable;

    if-eq p2, v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/koushikdutta/ion/IonDrawable;->errorResource:I

    if-ne p1, v0, :cond_2

    :cond_1
    return-object p0

    .line 388
    :cond_2
    iput p1, p0, Lcom/koushikdutta/ion/IonDrawable;->errorResource:I

    .line 389
    iput-object p2, p0, Lcom/koushikdutta/ion/IonDrawable;->error:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setFadeIn(Z)Lcom/koushikdutta/ion/IonDrawable;
    .locals 0

    .line 259
    iput-boolean p1, p0, Lcom/koushikdutta/ion/IonDrawable;->fadeIn:Z

    return-object p0
.end method

.method public setLoadCallback(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/ion/IonDrawable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/b/f<",
            "Lcom/koushikdutta/ion/IonDrawable;",
            ">;)",
            "Lcom/koushikdutta/ion/IonDrawable;"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/koushikdutta/ion/IonDrawable;->loadCallback:Lcom/koushikdutta/async/b/f;

    return-object p0
.end method

.method public setPlaceholder(ILandroid/graphics/drawable/Drawable;)Lcom/koushikdutta/ion/IonDrawable;
    .locals 1

    if-eqz p2, :cond_0

    .line 394
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    if-eq p2, v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/koushikdutta/ion/IonDrawable;->placeholderResource:I

    if-ne p1, v0, :cond_2

    :cond_1
    return-object p0

    .line 397
    :cond_2
    iput p1, p0, Lcom/koushikdutta/ion/IonDrawable;->placeholderResource:I

    .line 398
    iput-object p2, p0, Lcom/koushikdutta/ion/IonDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setRepeatAnimation(Z)Lcom/koushikdutta/ion/IonDrawable;
    .locals 0

    .line 371
    iput-boolean p1, p0, Lcom/koushikdutta/ion/IonDrawable;->repeatAnimation:Z

    return-object p0
.end method

.method public setSize(II)Lcom/koushikdutta/ion/IonDrawable;
    .locals 1

    .line 376
    iget v0, p0, Lcom/koushikdutta/ion/IonDrawable;->resizeWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/koushikdutta/ion/IonDrawable;->resizeHeight:I

    if-ne v0, p2, :cond_0

    return-object p0

    .line 378
    :cond_0
    iput p1, p0, Lcom/koushikdutta/ion/IonDrawable;->resizeWidth:I

    .line 379
    iput p2, p0, Lcom/koushikdutta/ion/IonDrawable;->resizeHeight:I

    .line 380
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonDrawable;->invalidateSelf()V

    return-object p0
.end method

.method public updateLayers()Lcom/koushikdutta/ion/IonDrawable;
    .locals 3

    .line 298
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonDrawable;->tryGetPlaceholderResource()Landroid/graphics/drawable/Drawable;

    .line 299
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->NULL_PLACEHOLDER:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/ion/IonDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/ion/IonDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 304
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->NULL_BITMAPINFO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Lcom/koushikdutta/ion/IonDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 306
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->NULL_ERROR:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/ion/IonDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    return-object p0

    .line 311
    :cond_1
    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->decoder:Landroid/graphics/BitmapRegionDecoder;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->gifDecoder:Lcom/koushikdutta/ion/gif/GifDecoder;

    if-nez v0, :cond_3

    .line 312
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->NULL_BITMAPINFO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Lcom/koushikdutta/ion/IonDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 313
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonDrawable;->tryGetErrorResource()Landroid/graphics/drawable/Drawable;

    .line 314
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->error:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->NULL_ERROR:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/ion/IonDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    goto :goto_1

    .line 317
    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/ion/IonDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    :goto_1
    return-object p0

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->decoder:Landroid/graphics/BitmapRegionDecoder;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->gifDecoder:Lcom/koushikdutta/ion/gif/GifDecoder;

    if-nez v0, :cond_4

    .line 323
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonDrawable;->tryGetBitmapResource()Landroid/graphics/drawable/Drawable;

    .line 324
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->bitmapDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Lcom/koushikdutta/ion/IonDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    goto :goto_2

    .line 328
    :cond_4
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->NULL_BITMAPINFO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Lcom/koushikdutta/ion/IonDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 330
    :goto_2
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable;->NULL_ERROR:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/ion/IonDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    return-object p0
.end method
