.class public Lcom/ebay/mobile/camera/CameraControlsContainer;
.super Landroid/widget/FrameLayout;
.source "CameraControlsContainer.java"


# instance fields
.field private cameraControlsMinHeight:I

.field private toolbarHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/mobile/camera/CameraControlsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ebay/mobile/camera/CameraControlsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/CameraControlsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070104

    .line 44
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/ebay/mobile/camera/CameraControlsContainer;->cameraControlsMinHeight:I

    const p2, 0x7f07010b

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/ebay/mobile/camera/CameraControlsContainer;->toolbarHeight:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 51
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 52
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 53
    sget-object v1, Lcom/ebay/mobile/widget/cameraview/CameraView;->DEFAULT_ASPECT_RATIO:Lcom/ebay/mobile/widget/cameraview/aspectratio/AspectRatio;

    invoke-virtual {v1}, Lcom/ebay/mobile/widget/cameraview/aspectratio/AspectRatio;->toFloat()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 56
    iget v1, p0, Lcom/ebay/mobile/camera/CameraControlsContainer;->toolbarHeight:I

    sub-int/2addr p2, v1

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/ebay/mobile/camera/CameraControlsContainer;->cameraControlsMinHeight:I

    sub-int/2addr p2, v0

    if-lez p2, :cond_0

    .line 58
    iget v0, p0, Lcom/ebay/mobile/camera/CameraControlsContainer;->cameraControlsMinHeight:I

    add-int/2addr v0, p2

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/ebay/mobile/camera/CameraControlsContainer;->cameraControlsMinHeight:I

    :goto_0
    const/high16 p2, 0x40000000    # 2.0f

    .line 60
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
