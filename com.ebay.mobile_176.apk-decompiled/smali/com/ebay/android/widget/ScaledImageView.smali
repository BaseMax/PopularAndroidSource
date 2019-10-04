.class public Lcom/ebay/android/widget/ScaledImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ScaledImageView.java"


# instance fields
.field private final scaledWidth:I

.field private final screenWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/ebay/android/widget/ScaledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/android/widget/ScaledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/ebay/android/widget/ScaledImageView;->screenWidth:F

    .line 38
    sget-object v0, Lcom/ebay/nautilus/shell/R$styleable;->ScaledImageView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 39
    sget p2, Lcom/ebay/nautilus/shell/R$styleable;->ScaledImageView_scaledWidthPercent:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/ebay/android/widget/ScaledImageView;->scaledWidth:I

    .line 40
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    .line 46
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->onMeasure(II)V

    .line 48
    iget p1, p0, Lcom/ebay/android/widget/ScaledImageView;->scaledWidth:I

    if-nez p1, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/android/widget/ScaledImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 52
    invoke-virtual {p0}, Lcom/ebay/android/widget/ScaledImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    .line 53
    invoke-virtual {p0}, Lcom/ebay/android/widget/ScaledImageView;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Lcom/ebay/android/widget/ScaledImageView;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    .line 54
    invoke-virtual {p0}, Lcom/ebay/android/widget/ScaledImageView;->getMeasuredHeight()I

    move-result v0

    .line 56
    iget v1, p0, Lcom/ebay/android/widget/ScaledImageView;->screenWidth:F

    add-int/2addr p2, p1

    int-to-float p1, p2

    sub-float/2addr v1, p1

    float-to-double p1, v1

    iget v1, p0, Lcom/ebay/android/widget/ScaledImageView;->scaledWidth:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    mul-double p1, p1, v1

    double-to-int p1, p1

    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/ebay/android/widget/ScaledImageView;->setMeasuredDimension(II)V

    return-void
.end method
