.class public Lcom/ebay/android/widget/CropImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "CropImageView.java"

# interfaces
.implements Lcom/ebay/android/widget/ImageViewLoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState;,
        Lcom/ebay/android/widget/CropImageView$OnImageLoadListener;
    }
.end annotation


# static fields
.field private static final LOG_INFO:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

.field public static final RECT_MAX_WIDTH_HEIGHT:F = 500.0f


# instance fields
.field private angle:F

.field private animMatrix:Landroid/graphics/Matrix;

.field private final baseMatrix:Landroid/graphics/Matrix;

.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapAnimator:Lcom/ebay/mobile/photomanager/v2/animation/SimpleValueAnimator;

.field private bitmapCenter:Landroid/graphics/PointF;

.field private bitmapHeight:F

.field private bitmapWidth:F

.field private bottom:I

.field protected cropRect:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final displayMatrix:Landroid/graphics/Matrix;

.field private ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

.field private final handler:Landroid/os/Handler;

.field private height:I

.field private hv:Lcom/ebay/android/widget/HighlightView;

.field private hvPressed:Lcom/ebay/android/widget/HighlightView;

.field private isBitmapInitialized:Z

.field private isInCropMode:Z

.field private lastX:F

.field private lastY:F

.field private left:I

.field loader:Lcom/ebay/android/widget/ImageViewLoader;

.field private loaderDispatchRunnable:Ljava/lang/Runnable;

.field private final matrixValues:[F

.field private maxZoom:F

.field private motionEdge:I

.field private onImageLoadListener:Lcom/ebay/android/widget/CropImageView$OnImageLoadListener;

.field private onLayoutRunnable:Ljava/lang/Runnable;

.field private requestedImageHeight:I

.field private requestedImageWidth:I

.field private right:I

.field protected rotation:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private scale:F

.field private final suppMatrix:Landroid/graphics/Matrix;

.field private top:I

.field private final viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 54
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "CropImageView"

    const-string v2, "Log crop photo view"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/android/widget/CropImageView;->LOG_INFO:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/ebay/android/widget/CropImageView;->baseMatrix:Landroid/graphics/Matrix;

    .line 70
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/ebay/android/widget/CropImageView;->suppMatrix:Landroid/graphics/Matrix;

    .line 73
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/ebay/android/widget/CropImageView;->displayMatrix:Landroid/graphics/Matrix;

    const/16 p1, 0x9

    .line 75
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/ebay/android/widget/CropImageView;->matrixValues:[F

    .line 76
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/ebay/android/widget/CropImageView;->handler:Landroid/os/Handler;

    const/4 p1, -0x1

    .line 79
    iput p1, p0, Lcom/ebay/android/widget/CropImageView;->width:I

    .line 80
    iput p1, p0, Lcom/ebay/android/widget/CropImageView;->height:I

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/ebay/android/widget/CropImageView;->onLayoutRunnable:Ljava/lang/Runnable;

    .line 85
    iput-object p1, p0, Lcom/ebay/android/widget/CropImageView;->hvPressed:Lcom/ebay/android/widget/HighlightView;

    .line 88
    new-instance p2, Lcom/ebay/android/widget/ViewVisibility;

    invoke-direct {p2, p0}, Lcom/ebay/android/widget/ViewVisibility;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/ebay/android/widget/CropImageView;->viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 93
    iput p2, p0, Lcom/ebay/android/widget/CropImageView;->scale:F

    const/4 p2, 0x0

    .line 94
    iput p2, p0, Lcom/ebay/android/widget/CropImageView;->angle:F

    .line 95
    iput p2, p0, Lcom/ebay/android/widget/CropImageView;->bitmapWidth:F

    .line 96
    iput p2, p0, Lcom/ebay/android/widget/CropImageView;->bitmapHeight:F

    .line 97
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/ebay/android/widget/CropImageView;->animMatrix:Landroid/graphics/Matrix;

    .line 98
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/ebay/android/widget/CropImageView;->bitmapCenter:Landroid/graphics/PointF;

    const/4 p2, 0x0

    .line 99
    iput-boolean p2, p0, Lcom/ebay/android/widget/CropImageView;->isBitmapInitialized:Z

    .line 100
    iput-boolean p2, p0, Lcom/ebay/android/widget/CropImageView;->isInCropMode:Z

    .line 104
    iput-object p1, p0, Lcom/ebay/android/widget/CropImageView;->cropRect:Landroid/graphics/Rect;

    .line 106
    iput p2, p0, Lcom/ebay/android/widget/CropImageView;->rotation:I

    .line 109
    new-instance p2, Lcom/ebay/android/widget/CropImageView$1;

    invoke-direct {p2, p0}, Lcom/ebay/android/widget/CropImageView$1;-><init>(Lcom/ebay/android/widget/CropImageView;)V

    iput-object p2, p0, Lcom/ebay/android/widget/CropImageView;->loaderDispatchRunnable:Ljava/lang/Runnable;

    .line 132
    invoke-direct {p0}, Lcom/ebay/android/widget/CropImageView;->getFwActivityContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/shell/app/FwActivity;

    if-eqz p2, :cond_0

    .line 133
    invoke-interface {p2}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/ebay/android/widget/CropImageView;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    .line 135
    new-instance p1, Lcom/ebay/mobile/photomanager/v2/animation/SimpleAnimator;

    invoke-direct {p1}, Lcom/ebay/mobile/photomanager/v2/animation/SimpleAnimator;-><init>()V

    iput-object p1, p0, Lcom/ebay/android/widget/CropImageView;->bitmapAnimator:Lcom/ebay/mobile/photomanager/v2/animation/SimpleValueAnimator;

    .line 137
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/CropImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method static synthetic access$002(Lcom/ebay/android/widget/CropImageView;F)F
    .locals 0

    .line 52
    iput p1, p0, Lcom/ebay/android/widget/CropImageView;->angle:F

    return p1
.end method

.method static synthetic access$1000(Lcom/ebay/android/widget/CropImageView;)Landroid/os/Handler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ebay/android/widget/CropImageView;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ebay/android/widget/CropImageView;F)F
    .locals 0

    .line 52
    iput p1, p0, Lcom/ebay/android/widget/CropImageView;->scale:F

    return p1
.end method

.method static synthetic access$200(Lcom/ebay/android/widget/CropImageView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/ebay/android/widget/CropImageView;->setMatrix()V

    return-void
.end method

.method static synthetic access$300(Lcom/ebay/android/widget/CropImageView;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/ebay/android/widget/CropImageView;->initImage(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/ebay/android/widget/CropImageView;)F
    .locals 0

    .line 52
    iget p0, p0, Lcom/ebay/android/widget/CropImageView;->maxZoom:F

    return p0
.end method

.method static synthetic access$500(Lcom/ebay/android/widget/CropImageView;)F
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/ebay/android/widget/CropImageView;->getScale()F

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/ebay/android/widget/CropImageView;)Landroid/graphics/Matrix;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ebay/android/widget/CropImageView;->suppMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ebay/android/widget/CropImageView;)Landroid/graphics/Matrix;
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/ebay/android/widget/CropImageView;->buildImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/ebay/android/widget/CropImageView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/ebay/android/widget/CropImageView;->center()V

    return-void
.end method

.method static synthetic access$900(Lcom/ebay/android/widget/CropImageView;)Lcom/ebay/android/widget/HighlightView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ebay/android/widget/CropImageView;->hv:Lcom/ebay/android/widget/HighlightView;

    return-object p0
.end method

.method private buildImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 710
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->displayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ebay/android/widget/CropImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 711
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->displayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ebay/android/widget/CropImageView;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 712
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->displayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private calcScale(IIF)F
    .locals 4

    .line 291
    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    .line 296
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/ebay/android/widget/CropImageView;->bitmapWidth:F

    .line 297
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/ebay/android/widget/CropImageView;->bitmapHeight:F

    .line 298
    iget v0, p0, Lcom/ebay/android/widget/CropImageView;->bitmapWidth:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    int-to-float v0, p1

    .line 299
    iput v0, p0, Lcom/ebay/android/widget/CropImageView;->bitmapWidth:F

    .line 300
    :cond_1
    iget v0, p0, Lcom/ebay/android/widget/CropImageView;->bitmapHeight:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    int-to-float v0, p2

    .line 301
    iput v0, p0, Lcom/ebay/android/widget/CropImageView;->bitmapHeight:F

    :cond_2
    int-to-float p1, p1

    int-to-float p2, p2

    div-float v0, p1, p2

    .line 303
    invoke-direct {p0, p3}, Lcom/ebay/android/widget/CropImageView;->getRotatedWidth(F)F

    move-result v2

    invoke-direct {p0, p3}, Lcom/ebay/android/widget/CropImageView;->getRotatedHeight(F)F

    move-result v3

    div-float/2addr v2, v3

    cmpl-float v3, v2, v0

    if-ltz v3, :cond_3

    .line 306
    invoke-direct {p0, p3}, Lcom/ebay/android/widget/CropImageView;->getRotatedWidth(F)F

    move-result p2

    div-float v1, p1, p2

    goto :goto_0

    :cond_3
    cmpg-float p1, v2, v0

    if-gez p1, :cond_4

    .line 308
    invoke-direct {p0, p3}, Lcom/ebay/android/widget/CropImageView;->getRotatedHeight(F)F

    move-result p1

    div-float v1, p2, p1

    :cond_4
    :goto_0
    return v1
.end method

.method private cancelAndClearLoader()V
    .locals 1

    .line 1014
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0}, Lcom/ebay/android/widget/ImageViewLoader;->cancel()V

    const/4 v0, 0x0

    .line 1017
    iput-object v0, p0, Lcom/ebay/android/widget/CropImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    :cond_0
    return-void
.end method

.method private center()V
    .locals 7

    .line 621
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 624
    :cond_0
    invoke-direct {p0}, Lcom/ebay/android/widget/CropImageView;->buildImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 626
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/ebay/android/widget/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/ebay/android/widget/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 627
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 629
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 630
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 634
    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    cmpg-float v6, v0, v3

    if-gez v6, :cond_1

    sub-float/2addr v3, v0

    div-float/2addr v3, v5

    .line 637
    iget v0, v1, Landroid/graphics/RectF;->top:F

    sub-float v0, v3, v0

    goto :goto_0

    .line 639
    :cond_1
    iget v0, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 641
    iget v0, v1, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    goto :goto_0

    .line 643
    :cond_2
    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 645
    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 648
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v6, v2, v3

    if-gez v6, :cond_4

    sub-float/2addr v3, v2

    div-float/2addr v3, v5

    .line 651
    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float v4, v3, v1

    goto :goto_1

    .line 653
    :cond_4
    iget v2, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_5

    .line 655
    iget v1, v1, Landroid/graphics/RectF;->left:F

    neg-float v4, v1

    goto :goto_1

    .line 657
    :cond_5
    iget v2, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 659
    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float v4, v3, v1

    .line 662
    :cond_6
    :goto_1
    invoke-direct {p0, v4, v0}, Lcom/ebay/android/widget/CropImageView;->postTranslate(FF)V

    .line 663
    invoke-direct {p0}, Lcom/ebay/android/widget/CropImageView;->buildImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ebay/android/widget/CropImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private centerBasedOnHighlightView(Lcom/ebay/android/widget/HighlightView;)V
    .locals 5

    .line 946
    iget-object v0, p1, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    .line 948
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 949
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 951
    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 952
    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v1

    const v1, 0x3f19999a    # 0.6f

    mul-float v2, v2, v1

    div-float/2addr v3, v0

    mul-float v3, v3, v1

    .line 957
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 958
    invoke-direct {p0}, Lcom/ebay/android/widget/CropImageView;->getScale()F

    move-result v1

    mul-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 959
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 961
    invoke-direct {p0}, Lcom/ebay/android/widget/CropImageView;->getScale()F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    float-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x2

    .line 963
    new-array v1, v1, [F

    iget-object v2, p1, Lcom/ebay/android/widget/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v2, p1, Lcom/ebay/android/widget/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 964
    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 965
    aget v2, v1, v3

    aget v1, v1, v4

    invoke-direct {p0, v0, v2, v1}, Lcom/ebay/android/widget/CropImageView;->zoomAnimated(FFF)V

    .line 968
    :cond_0
    invoke-direct {p0, p1}, Lcom/ebay/android/widget/CropImageView;->ensureVisible(Lcom/ebay/android/widget/HighlightView;)V

    return-void
.end method

.method private configureLoader(Lcom/ebay/nautilus/domain/data/image/LoadImageData;II)V
    .locals 9
    .param p1    # Lcom/ebay/nautilus/domain/data/image/LoadImageData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1008
    new-instance v8, Lcom/ebay/android/widget/CompositeImageViewLoader;

    iget-object v2, p0, Lcom/ebay/android/widget/CropImageView;->viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

    iget-object v3, p0, Lcom/ebay/android/widget/CropImageView;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-object v4, p1

    check-cast v4, Lcom/ebay/nautilus/domain/data/image/CompositeImageData;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/ebay/android/widget/CompositeImageViewLoader;-><init>(Lcom/ebay/android/widget/ImageViewLoaderCallbacks;Lcom/ebay/android/widget/ViewVisibility;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/image/CompositeImageData;IIZ)V

    iput-object v8, p0, Lcom/ebay/android/widget/CropImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    return-void
.end method

.method private ensureVisible(Lcom/ebay/android/widget/HighlightView;)V
    .locals 5

    .line 923
    iget-object p1, p1, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    .line 925
    iget v0, p0, Lcom/ebay/android/widget/CropImageView;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 926
    iget v2, p0, Lcom/ebay/android/widget/CropImageView;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 928
    iget v3, p0, Lcom/ebay/android/widget/CropImageView;->top:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 929
    iget v4, p0, Lcom/ebay/android/widget/CropImageView;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v3, :cond_1

    move p1, v3

    :cond_1
    if-nez v0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    int-to-float v0, v0

    int-to-float p1, p1

    .line 935
    invoke-direct {p0, v0, p1}, Lcom/ebay/android/widget/CropImageView;->panBy(FF)V

    :cond_3
    return-void
.end method

.method private getFwActivityContext()Landroid/content/Context;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/content/Context;",
            ":",
            "Lcom/ebay/nautilus/shell/app/FwActivity;",
            ">()TF;"
        }
    .end annotation

    .line 1024
    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 1025
    instance-of v1, v0, Lcom/ebay/nautilus/shell/app/FwActivity;

    if-nez v1, :cond_1

    .line 1027
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    .line 1028
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getProperBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 6

    .line 685
    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 686
    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 688
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 689
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    .line 690
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    div-float v3, v0, v2

    const/high16 v4, 0x40400000    # 3.0f

    .line 693
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float v5, v1, p1

    .line 694
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 695
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 697
    invoke-virtual {p2, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    mul-float p1, p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v2

    .line 699
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 202
    :cond_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p2, p2

    .line 203
    invoke-virtual {v6, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 208
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 213
    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f12092e

    invoke-virtual {p2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 v1, 0x1

    .line 212
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 214
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private getRotatedHeight(F)F
    .locals 2

    .line 281
    iget v0, p0, Lcom/ebay/android/widget/CropImageView;->bitmapWidth:F

    iget v1, p0, Lcom/ebay/android/widget/CropImageView;->bitmapHeight:F

    invoke-direct {p0, p1, v0, v1}, Lcom/ebay/android/widget/CropImageView;->getRotatedHeight(FFF)F

    move-result p1

    return p1
.end method

.method private getRotatedHeight(FFF)F
    .locals 1

    const/high16 v0, 0x43340000    # 180.0f

    rem-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    move p2, p3

    :cond_0
    return p2
.end method

.method private getRotatedWidth(F)F
    .locals 2

    .line 271
    iget v0, p0, Lcom/ebay/android/widget/CropImageView;->bitmapWidth:F

    iget v1, p0, Lcom/ebay/android/widget/CropImageView;->bitmapHeight:F

    invoke-direct {p0, p1, v0, v1}, Lcom/ebay/android/widget/CropImageView;->getRotatedWidth(FFF)F

    move-result p1

    return p1
.end method

.method private getRotatedWidth(FFF)F
    .locals 1

    const/high16 v0, 0x43340000    # 180.0f

    rem-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    return p2
.end method

.method private getScale()F
    .locals 2

    .line 673
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->suppMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ebay/android/widget/CropImageView;->matrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 674
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->matrixValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private handleCropImage(Landroid/graphics/Rect;)V
    .locals 7
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 415
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 416
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 421
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 422
    :try_start_1
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 423
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 424
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v0, p1, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v2

    .line 429
    :goto_0
    sget-object v1, Lcom/ebay/android/widget/CropImageView;->LOG_INFO:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v2, "Error creating cropped bitmap!"

    invoke-virtual {v1, v2, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->logAsWarning(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-eqz v3, :cond_0

    .line 434
    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/CropImageView;->updateCropRect(Landroid/graphics/Rect;)V

    .line 435
    iget-boolean p1, p0, Lcom/ebay/android/widget/CropImageView;->isInCropMode:Z

    invoke-direct {p0, v4, p1}, Lcom/ebay/android/widget/CropImageView;->initImage(Landroid/graphics/Bitmap;Z)V

    :cond_0
    return-void
.end method

.method private initImage(Landroid/graphics/Bitmap;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0}, Lcom/ebay/android/widget/ImageViewLoader;->getImageInfoIfDone()Lcom/ebay/nautilus/domain/data/image/LoadImageResult;

    move-result-object v0

    .line 984
    iget-object v1, p0, Lcom/ebay/android/widget/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 985
    invoke-interface {v0}, Lcom/ebay/nautilus/domain/data/image/LoadImageResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/android/widget/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 986
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 988
    :cond_1
    iput-object p1, p0, Lcom/ebay/android/widget/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_2

    .line 992
    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->showHighlight()V

    goto :goto_0

    .line 994
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->hideCropHighlight()V

    .line 996
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->invalidate()V

    .line 998
    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->getWidth()I

    move-result p2

    if-gtz p2, :cond_3

    .line 999
    new-instance p2, Lcom/ebay/android/widget/-$$Lambda$CropImageView$W9WRW0hqU9DXhexQYq_z1xwK0Pg;

    invoke-direct {p2, p0, p1}, Lcom/ebay/android/widget/-$$Lambda$CropImageView$W9WRW0hqU9DXhexQYq_z1xwK0Pg;-><init>(Lcom/ebay/android/widget/CropImageView;Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/ebay/android/widget/CropImageView;->onLayoutRunnable:Ljava/lang/Runnable;

    goto :goto_1

    .line 1001
    :cond_3
    invoke-direct {p0, p1}, Lcom/ebay/android/widget/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;)V

    .line 1003
    :goto_1
    invoke-direct {p0}, Lcom/ebay/android/widget/CropImageView;->center()V

    return-void
.end method

.method public static synthetic lambda$initImage$0(Lcom/ebay/android/widget/CropImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 999
    invoke-direct {p0, p1}, Lcom/ebay/android/widget/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private maxZoom()F
    .locals 3

    .line 724
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/ebay/android/widget/CropImageView;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 728
    iget-object v1, p0, Lcom/ebay/android/widget/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/ebay/android/widget/CropImageView;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 729
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    return v0
.end method

.method private panBy(FF)V
    .locals 0

    .line 774
    invoke-direct {p0, p1, p2}, Lcom/ebay/android/widget/CropImageView;->postTranslate(FF)V

    .line 775
    invoke-direct {p0}, Lcom/ebay/android/widget/CropImageView;->buildImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/CropImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private postTranslate(FF)V
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 835
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->hv:Lcom/ebay/android/widget/HighlightView;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->hv:Lcom/ebay/android/widget/HighlightView;

    iget-object v0, v0, Lcom/ebay/android/widget/HighlightView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 838
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->hv:Lcom/ebay/android/widget/HighlightView;

    invoke-virtual {p1}, Lcom/ebay/android/widget/HighlightView;->invalidate()V

    :cond_0
    return-void
.end method

.method private setImageBitmapResetBase(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/ebay/android/widget/CropImageView;->getProperBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 607
    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 609
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 610
    invoke-direct {p0}, Lcom/ebay/android/widget/CropImageView;->buildImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/CropImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 611
    invoke-direct {p0}, Lcom/ebay/android/widget/CropImageView;->maxZoom()F

    move-result p1

    iput p1, p0, Lcom/ebay/android/widget/CropImageView;->maxZoom:F

    return-void
.end method

.method private setImageDrawableInternal(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 528
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 529
    invoke-direct {p0}, Lcom/ebay/android/widget/CropImageView;->updateLayout()V

    return-void
.end method

.method private setMatrix()V
    .locals 5

    .line 314
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->animMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 315
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->animMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ebay/android/widget/CropImageView;->bitmapCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/ebay/android/widget/CropImageView;->bitmapWidth:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/ebay/android/widget/CropImageView;->bitmapCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/ebay/android/widget/CropImageView;->bitmapHeight:F

    mul-float v4, v4, v3

    sub-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 316
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->animMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/ebay/android/widget/CropImageView;->scale:F

    iget v2, p0, Lcom/ebay/android/widget/CropImageView;->scale:F

    iget-object v3, p0, Lcom/ebay/android/widget/CropImageView;->bitmapCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/ebay/android/widget/CropImageView;->bitmapCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 317
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->animMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/ebay/android/widget/CropImageView;->angle:F

    iget-object v2, p0, Lcom/ebay/android/widget/CropImageView;->bitmapCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/ebay/android/widget/CropImageView;->bitmapCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    return-void
.end method

.method private setupLayout(II)V
    .locals 5

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    int-to-float v4, p2

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/ebay/android/widget/CropImageView;->bitmapCenter:Landroid/graphics/PointF;

    .line 325
    iget v0, p0, Lcom/ebay/android/widget/CropImageView;->angle:F

    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/android/widget/CropImageView;->calcScale(IIF)F

    move-result p1

    iput p1, p0, Lcom/ebay/android/widget/CropImageView;->scale:F

    .line 326
    invoke-direct {p0}, Lcom/ebay/android/widget/CropImageView;->setMatrix()V

    const/4 p1, 0x1

    .line 327
    iput-boolean p1, p0, Lcom/ebay/android/widget/CropImageView;->isBitmapInitialized:Z

    .line 328
    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->invalidate()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private updateLayout()V
    .locals 2

    .line 542
    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 544
    iget v0, p0, Lcom/ebay/android/widget/CropImageView;->width:I

    iget v1, p0, Lcom/ebay/android/widget/CropImageView;->height:I

    invoke-direct {p0, v0, v1}, Lcom/ebay/android/widget/CropImageView;->setupLayout(II)V

    :cond_0
    return-void
.end method

.method private zoomAnimated(FFF)V
    .locals 9

    .line 735
    invoke-direct {p0}, Lcom/ebay/android/widget/CropImageView;->getScale()F

    move-result v0

    sub-float/2addr p1, v0

    const/high16 v0, 0x43960000    # 300.0f

    div-float v6, p1, v0

    .line 736
    invoke-direct {p0}, Lcom/ebay/android/widget/CropImageView;->getScale()F

    move-result v5

    .line 737
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 739
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/ebay/android/widget/CropImageView$3;

    move-object v1, v0

    move-object v2, p0

    move v7, p2

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/ebay/android/widget/CropImageView$3;-><init>(Lcom/ebay/android/widget/CropImageView;JFFFF)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public cropImage()V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->hv:Lcom/ebay/android/widget/HighlightView;

    if-nez v0, :cond_0

    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->hv:Lcom/ebay/android/widget/HighlightView;

    invoke-virtual {v0}, Lcom/ebay/android/widget/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ebay/android/widget/CropImageView;->handleCropImage(Landroid/graphics/Rect;)V

    return-void
.end method

.method public cropImage(Landroid/graphics/Rect;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 403
    :cond_0
    invoke-direct {p0, p1}, Lcom/ebay/android/widget/CropImageView;->handleCropImage(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getCurrentHighlightViewCropRect()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 974
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->hv:Lcom/ebay/android/widget/HighlightView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->hv:Lcom/ebay/android/widget/HighlightView;

    invoke-virtual {v0}, Lcom/ebay/android/widget/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getEditedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public hideCropHighlight()V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 369
    iput-boolean v0, p0, Lcom/ebay/android/widget/CropImageView;->isInCropMode:Z

    .line 371
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->hv:Lcom/ebay/android/widget/HighlightView;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/ebay/android/widget/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;)V

    .line 374
    invoke-direct {p0}, Lcom/ebay/android/widget/CropImageView;->center()V

    :cond_1
    const/4 v0, 0x0

    .line 377
    iput-object v0, p0, Lcom/ebay/android/widget/CropImageView;->hv:Lcom/ebay/android/widget/HighlightView;

    .line 378
    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->invalidate()V

    return-void
.end method

.method public isBitmapEdited()Z
    .locals 1

    .line 494
    iget v0, p0, Lcom/ebay/android/widget/CropImageView;->rotation:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->cropRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isInCropMode()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/ebay/android/widget/CropImageView;->isInCropMode:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 553
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->bitmapAnimator:Lcom/ebay/mobile/photomanager/v2/animation/SimpleValueAnimator;

    invoke-interface {v0}, Lcom/ebay/mobile/photomanager/v2/animation/SimpleValueAnimator;->isAnimationStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 556
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->hv:Lcom/ebay/android/widget/HighlightView;

    if-eqz v0, :cond_2

    .line 557
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->hv:Lcom/ebay/android/widget/HighlightView;

    invoke-virtual {v0, p1}, Lcom/ebay/android/widget/HighlightView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 561
    :cond_0
    iget-boolean v0, p0, Lcom/ebay/android/widget/CropImageView;->isBitmapInitialized:Z

    if-eqz v0, :cond_1

    .line 563
    invoke-direct {p0}, Lcom/ebay/android/widget/CropImageView;->setMatrix()V

    .line 564
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/ebay/android/widget/CropImageView;->animMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->hv:Lcom/ebay/android/widget/HighlightView;

    if-eqz v0, :cond_2

    .line 568
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->hv:Lcom/ebay/android/widget/HighlightView;

    invoke-virtual {v0, p1}, Lcom/ebay/android/widget/HighlightView;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFailure(Lcom/ebay/android/widget/ImageViewLoader;)V
    .locals 0

    .line 1058
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->onImageLoadListener:Lcom/ebay/android/widget/CropImageView$OnImageLoadListener;

    if-eqz p1, :cond_0

    .line 1059
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->onImageLoadListener:Lcom/ebay/android/widget/CropImageView$OnImageLoadListener;

    invoke-interface {p1, p0}, Lcom/ebay/android/widget/CropImageView$OnImageLoadListener;->onImageLoadFailed(Lcom/ebay/android/widget/CropImageView;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 782
    iput p2, p0, Lcom/ebay/android/widget/CropImageView;->left:I

    .line 783
    iput p4, p0, Lcom/ebay/android/widget/CropImageView;->right:I

    .line 784
    iput p3, p0, Lcom/ebay/android/widget/CropImageView;->top:I

    .line 785
    iput p5, p0, Lcom/ebay/android/widget/CropImageView;->bottom:I

    .line 787
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatImageView;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    .line 788
    iput p4, p0, Lcom/ebay/android/widget/CropImageView;->width:I

    sub-int/2addr p5, p3

    .line 789
    iput p5, p0, Lcom/ebay/android/widget/CropImageView;->height:I

    .line 790
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->onLayoutRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 793
    iput-object p2, p0, Lcom/ebay/android/widget/CropImageView;->onLayoutRunnable:Ljava/lang/Runnable;

    .line 794
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 796
    :cond_0
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 798
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/ebay/android/widget/CropImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, p2}, Lcom/ebay/android/widget/CropImageView;->getProperBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 799
    invoke-direct {p0}, Lcom/ebay/android/widget/CropImageView;->buildImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/CropImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 802
    :cond_1
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    .line 804
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->hv:Lcom/ebay/android/widget/HighlightView;

    if-eqz p1, :cond_2

    .line 806
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->hv:Lcom/ebay/android/widget/HighlightView;

    iget-object p1, p1, Lcom/ebay/android/widget/HighlightView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 807
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->hv:Lcom/ebay/android/widget/HighlightView;

    invoke-virtual {p1}, Lcom/ebay/android/widget/HighlightView;->invalidate()V

    .line 808
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->hv:Lcom/ebay/android/widget/HighlightView;

    iget-boolean p1, p1, Lcom/ebay/android/widget/HighlightView;->isFocused:Z

    if-eqz p1, :cond_2

    .line 810
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->hv:Lcom/ebay/android/widget/HighlightView;

    invoke-direct {p0, p1}, Lcom/ebay/android/widget/CropImageView;->centerBasedOnHighlightView(Lcom/ebay/android/widget/HighlightView;)V

    .line 822
    :cond_2
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    iget p2, p0, Lcom/ebay/android/widget/CropImageView;->requestedImageWidth:I

    iget p3, p0, Lcom/ebay/android/widget/CropImageView;->requestedImageHeight:I

    invoke-interface {p1, p2, p3}, Lcom/ebay/android/widget/ImageViewLoader;->isAppropriateForDimension(II)Z

    move-result p1

    if-nez p1, :cond_3

    .line 824
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {p1}, Lcom/ebay/android/widget/ImageViewLoader;->getImageData()Lcom/ebay/nautilus/domain/data/image/LoadImageData;

    move-result-object p1

    .line 825
    invoke-direct {p0}, Lcom/ebay/android/widget/CropImageView;->cancelAndClearLoader()V

    .line 826
    iget p2, p0, Lcom/ebay/android/widget/CropImageView;->requestedImageWidth:I

    iget p3, p0, Lcom/ebay/android/widget/CropImageView;->requestedImageHeight:I

    invoke-direct {p0, p1, p2, p3}, Lcom/ebay/android/widget/CropImageView;->configureLoader(Lcom/ebay/nautilus/domain/data/image/LoadImageData;II)V

    .line 827
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->loaderDispatchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/CropImageView;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 510
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 511
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 513
    invoke-virtual {p0, p1, p2}, Lcom/ebay/android/widget/CropImageView;->setMeasuredDimension(II)V

    .line 515
    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/ebay/android/widget/CropImageView;->width:I

    .line 516
    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->getPaddingTop()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/ebay/android/widget/CropImageView;->height:I

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 160
    check-cast p1, Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState;

    .line 161
    invoke-virtual {p1}, Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 162
    iget v0, p1, Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState;->rotation:I

    iput v0, p0, Lcom/ebay/android/widget/CropImageView;->rotation:I

    .line 163
    iget v0, p1, Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState;->mScale:F

    iput v0, p0, Lcom/ebay/android/widget/CropImageView;->scale:F

    .line 164
    iget-object v0, p1, Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState;->cropRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/ebay/android/widget/CropImageView;->cropRect:Landroid/graphics/Rect;

    .line 165
    iget-boolean p1, p1, Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState;->isInCropMode:Z

    iput-boolean p1, p0, Lcom/ebay/android/widget/CropImageView;->isInCropMode:Z

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 148
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 149
    new-instance v1, Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState;

    invoke-direct {v1, v0}, Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 150
    iget v0, p0, Lcom/ebay/android/widget/CropImageView;->rotation:I

    iput v0, v1, Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState;->rotation:I

    .line 151
    iget v0, p0, Lcom/ebay/android/widget/CropImageView;->scale:F

    iput v0, v1, Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState;->mScale:F

    .line 152
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->cropRect:Landroid/graphics/Rect;

    iput-object v0, v1, Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState;->cropRect:Landroid/graphics/Rect;

    .line 153
    iget-boolean v0, p0, Lcom/ebay/android/widget/CropImageView;->isInCropMode:Z

    iput-boolean v0, v1, Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState;->isInCropMode:Z

    return-object v1
.end method

.method public onSuccess(Lcom/ebay/android/widget/ImageViewLoader;Lcom/ebay/nautilus/domain/data/image/LoadImageResult;)V
    .locals 0
    .param p2    # Lcom/ebay/nautilus/domain/data/image/LoadImageResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1041
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_1

    .line 1043
    invoke-interface {p2}, Lcom/ebay/nautilus/domain/data/image/LoadImageResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget p2, p0, Lcom/ebay/android/widget/CropImageView;->rotation:I

    invoke-direct {p0, p1, p2}, Lcom/ebay/android/widget/CropImageView;->getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/ebay/android/widget/CropImageView;->hv:Lcom/ebay/android/widget/HighlightView;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/ebay/android/widget/CropImageView;->initImage(Landroid/graphics/Bitmap;Z)V

    .line 1045
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->cropRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/CropImageView;->cropImage(Landroid/graphics/Rect;)V

    .line 1047
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->onImageLoadListener:Lcom/ebay/android/widget/CropImageView$OnImageLoadListener;

    if-eqz p1, :cond_1

    .line 1048
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->onImageLoadListener:Lcom/ebay/android/widget/CropImageView$OnImageLoadListener;

    invoke-interface {p1, p0}, Lcom/ebay/android/widget/CropImageView$OnImageLoadListener;->onImageLoadSuccess(Lcom/ebay/android/widget/CropImageView;)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 846
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 884
    :pswitch_0
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->hvPressed:Lcom/ebay/android/widget/HighlightView;

    if-eqz v0, :cond_2

    .line 886
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->hvPressed:Lcom/ebay/android/widget/HighlightView;

    iget v2, p0, Lcom/ebay/android/widget/CropImageView;->motionEdge:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/ebay/android/widget/CropImageView;->lastX:F

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/ebay/android/widget/CropImageView;->lastY:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/ebay/android/widget/HighlightView;->handleMotion(IFF)V

    .line 887
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/ebay/android/widget/CropImageView;->lastX:F

    .line 888
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/ebay/android/widget/CropImageView;->lastY:F

    .line 895
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->hvPressed:Lcom/ebay/android/widget/HighlightView;

    invoke-direct {p0, v0}, Lcom/ebay/android/widget/CropImageView;->ensureVisible(Lcom/ebay/android/widget/HighlightView;)V

    goto :goto_0

    .line 875
    :pswitch_1
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->hvPressed:Lcom/ebay/android/widget/HighlightView;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->hvPressed:Lcom/ebay/android/widget/HighlightView;

    invoke-direct {p0, v0}, Lcom/ebay/android/widget/CropImageView;->centerBasedOnHighlightView(Lcom/ebay/android/widget/HighlightView;)V

    .line 878
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->hvPressed:Lcom/ebay/android/widget/HighlightView;

    sget-object v2, Lcom/ebay/android/widget/HighlightView$ModifyMode;->None:Lcom/ebay/android/widget/HighlightView$ModifyMode;

    invoke-virtual {v0, v2}, Lcom/ebay/android/widget/HighlightView;->setMode(Lcom/ebay/android/widget/HighlightView$ModifyMode;)V

    :cond_0
    const/4 v0, 0x0

    .line 880
    iput-object v0, p0, Lcom/ebay/android/widget/CropImageView;->hvPressed:Lcom/ebay/android/widget/HighlightView;

    goto :goto_0

    .line 850
    :pswitch_2
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->hv:Lcom/ebay/android/widget/HighlightView;

    if-eqz v0, :cond_2

    .line 852
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->hv:Lcom/ebay/android/widget/HighlightView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/ebay/android/widget/HighlightView;->getHit(FF)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 855
    iput v0, p0, Lcom/ebay/android/widget/CropImageView;->motionEdge:I

    .line 856
    iget-object v2, p0, Lcom/ebay/android/widget/CropImageView;->hv:Lcom/ebay/android/widget/HighlightView;

    iput-object v2, p0, Lcom/ebay/android/widget/CropImageView;->hvPressed:Lcom/ebay/android/widget/HighlightView;

    .line 857
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/ebay/android/widget/CropImageView;->lastX:F

    .line 858
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/ebay/android/widget/CropImageView;->lastY:F

    const/16 v2, 0x20

    if-ne v0, v2, :cond_1

    .line 861
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->hvPressed:Lcom/ebay/android/widget/HighlightView;

    sget-object v2, Lcom/ebay/android/widget/HighlightView$ModifyMode;->Move:Lcom/ebay/android/widget/HighlightView$ModifyMode;

    invoke-virtual {v0, v2}, Lcom/ebay/android/widget/HighlightView;->setMode(Lcom/ebay/android/widget/HighlightView$ModifyMode;)V

    goto :goto_0

    .line 865
    :cond_1
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->hvPressed:Lcom/ebay/android/widget/HighlightView;

    invoke-virtual {v0}, Lcom/ebay/android/widget/HighlightView;->setFocus()V

    .line 866
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->hvPressed:Lcom/ebay/android/widget/HighlightView;

    sget-object v2, Lcom/ebay/android/widget/HighlightView$ModifyMode;->Grow:Lcom/ebay/android/widget/HighlightView$ModifyMode;

    invoke-virtual {v0, v2}, Lcom/ebay/android/widget/HighlightView;->setMode(Lcom/ebay/android/widget/HighlightView$ModifyMode;)V

    .line 900
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 908
    :pswitch_3
    invoke-direct {p0}, Lcom/ebay/android/widget/CropImageView;->getScale()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3

    .line 909
    invoke-direct {p0}, Lcom/ebay/android/widget/CropImageView;->center()V

    goto :goto_1

    .line 903
    :pswitch_4
    invoke-direct {p0}, Lcom/ebay/android/widget/CropImageView;->center()V

    :cond_3
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .line 575
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onWindowVisibilityChanged(I)V

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    if-eqz p1, :cond_3

    .line 592
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {p1}, Lcom/ebay/android/widget/ImageViewLoader;->reset()V

    const/4 p1, 0x0

    .line 593
    iput-object p1, p0, Lcom/ebay/android/widget/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 594
    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/CropImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 581
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 584
    :cond_2
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    if-eqz p1, :cond_3

    .line 585
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {p1}, Lcom/ebay/android/widget/ImageViewLoader;->dispatch()V

    :cond_3
    :goto_0
    return-void
.end method

.method public rotateBitmapWithAnimation()V
    .locals 10

    .line 228
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->bitmapAnimator:Lcom/ebay/mobile/photomanager/v2/animation/SimpleValueAnimator;

    invoke-interface {v0}, Lcom/ebay/mobile/photomanager/v2/animation/SimpleValueAnimator;->isAnimationStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    const/16 v1, -0x5a

    invoke-direct {p0, v0, v1}, Lcom/ebay/android/widget/CropImageView;->getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v9

    if-nez v9, :cond_1

    return-void

    .line 236
    :cond_1
    iget v0, p0, Lcom/ebay/android/widget/CropImageView;->rotation:I

    add-int/lit8 v0, v0, -0x5a

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/ebay/android/widget/CropImageView;->rotation:I

    .line 238
    iget v4, p0, Lcom/ebay/android/widget/CropImageView;->angle:F

    .line 239
    iget v0, p0, Lcom/ebay/android/widget/CropImageView;->angle:F

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v0, v1

    sub-float v5, v0, v4

    .line 241
    iget v6, p0, Lcom/ebay/android/widget/CropImageView;->scale:F

    .line 242
    iget v1, p0, Lcom/ebay/android/widget/CropImageView;->width:I

    iget v2, p0, Lcom/ebay/android/widget/CropImageView;->height:I

    invoke-direct {p0, v1, v2, v0}, Lcom/ebay/android/widget/CropImageView;->calcScale(IIF)F

    move-result v8

    sub-float v7, v8, v6

    .line 246
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->bitmapAnimator:Lcom/ebay/mobile/photomanager/v2/animation/SimpleValueAnimator;

    new-instance v1, Lcom/ebay/android/widget/CropImageView$2;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/ebay/android/widget/CropImageView$2;-><init>(Lcom/ebay/android/widget/CropImageView;FFFFFLandroid/graphics/Bitmap;)V

    invoke-interface {v0, v1}, Lcom/ebay/mobile/photomanager/v2/animation/SimpleValueAnimator;->addAnimatorListener(Lcom/ebay/mobile/photomanager/v2/animation/SimpleAnimatorUpdateListener;)V

    .line 266
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->bitmapAnimator:Lcom/ebay/mobile/photomanager/v2/animation/SimpleValueAnimator;

    invoke-interface {v0}, Lcom/ebay/mobile/photomanager/v2/animation/SimpleValueAnimator;->startAnimation()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public setImageData(Lcom/ebay/nautilus/domain/data/image/CompositeImageData;II)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    .line 178
    invoke-interface {v0, p1}, Lcom/ebay/android/widget/ImageViewLoader;->isAppropriateForImageData(Lcom/ebay/nautilus/domain/data/image/LoadImageData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    .line 179
    invoke-interface {v0, p2, p3}, Lcom/ebay/android/widget/ImageViewLoader;->isAppropriateForDimension(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 182
    :cond_0
    iput p2, p0, Lcom/ebay/android/widget/CropImageView;->requestedImageWidth:I

    .line 183
    iput p3, p0, Lcom/ebay/android/widget/CropImageView;->requestedImageHeight:I

    .line 184
    invoke-direct {p0}, Lcom/ebay/android/widget/CropImageView;->cancelAndClearLoader()V

    .line 185
    invoke-direct {p0, p1, p2, p3}, Lcom/ebay/android/widget/CropImageView;->configureLoader(Lcom/ebay/nautilus/domain/data/image/LoadImageData;II)V

    .line 186
    iget-object p1, p0, Lcom/ebay/android/widget/CropImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {p1}, Lcom/ebay/android/widget/ImageViewLoader;->dispatch()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 522
    iput-boolean v0, p0, Lcom/ebay/android/widget/CropImageView;->isBitmapInitialized:Z

    .line 523
    invoke-direct {p0, p1}, Lcom/ebay/android/widget/CropImageView;->setImageDrawableInternal(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    const/4 v0, 0x0

    .line 535
    iput-boolean v0, p0, Lcom/ebay/android/widget/CropImageView;->isBitmapInitialized:Z

    .line 536
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 537
    invoke-direct {p0}, Lcom/ebay/android/widget/CropImageView;->updateLayout()V

    return-void
.end method

.method public setOnImageLoadListener(Lcom/ebay/android/widget/CropImageView$OnImageLoadListener;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/ebay/android/widget/CropImageView;->onImageLoadListener:Lcom/ebay/android/widget/CropImageView$OnImageLoadListener;

    return-void
.end method

.method public showHighlight()V
    .locals 9

    .line 336
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 339
    iput-boolean v0, p0, Lcom/ebay/android/widget/CropImageView;->isInCropMode:Z

    .line 342
    new-instance v0, Lcom/ebay/android/widget/HighlightView;

    invoke-direct {v0, p0}, Lcom/ebay/android/widget/HighlightView;-><init>(Landroid/view/View;)V

    .line 344
    iget-object v1, p0, Lcom/ebay/android/widget/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 345
    iget-object v2, p0, Lcom/ebay/android/widget/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 346
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    mul-int/lit8 v4, v1, 0x9

    .line 348
    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    const/high16 v5, 0x43fa0000    # 500.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v6, v2, 0x9

    .line 349
    div-int/lit8 v6, v6, 0xa

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v1, v4

    .line 350
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v5

    .line 351
    div-int/lit8 v2, v2, 0x2

    .line 352
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v1

    int-to-float v8, v2

    add-int/2addr v1, v4

    int-to-float v1, v1

    add-int/2addr v2, v5

    int-to-float v2, v2

    invoke-direct {v6, v7, v8, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 354
    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 355
    invoke-virtual {v0, v1, v3, v6}, Lcom/ebay/android/widget/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 357
    iput-object v0, p0, Lcom/ebay/android/widget/CropImageView;->hv:Lcom/ebay/android/widget/HighlightView;

    .line 358
    invoke-virtual {p0}, Lcom/ebay/android/widget/CropImageView;->invalidate()V

    return-void
.end method

.method updateCropRect(Landroid/graphics/Rect;)V
    .locals 5
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 451
    iput-object p1, p0, Lcom/ebay/android/widget/CropImageView;->cropRect:Landroid/graphics/Rect;

    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->cropRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 458
    iput-object p1, p0, Lcom/ebay/android/widget/CropImageView;->cropRect:Landroid/graphics/Rect;

    return-void

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->cropRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 463
    iget-object v1, p0, Lcom/ebay/android/widget/CropImageView;->cropRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 466
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v0, v2, :cond_2

    return-void

    .line 470
    :cond_2
    iget-object v2, p0, Lcom/ebay/android/widget/CropImageView;->cropRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/ebay/android/widget/CropImageView;->cropRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 471
    iget-object v2, p0, Lcom/ebay/android/widget/CropImageView;->cropRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 472
    iget-object v2, p0, Lcom/ebay/android/widget/CropImageView;->cropRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v4

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 473
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView;->cropRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p1

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
