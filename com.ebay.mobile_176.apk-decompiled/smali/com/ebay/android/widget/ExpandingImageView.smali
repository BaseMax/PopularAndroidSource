.class public Lcom/ebay/android/widget/ExpandingImageView;
.super Lcom/ebay/android/widget/RemoteImageView;
.source "ExpandingImageView.java"


# instance fields
.field private adjustHeight:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/ebay/android/widget/RemoteImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/ebay/android/widget/ExpandingImageView;->adjustHeight:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/ebay/android/widget/RemoteImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/ebay/android/widget/ExpandingImageView;->adjustHeight:Z

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6

    .line 38
    invoke-virtual {p0}, Lcom/ebay/android/widget/ExpandingImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_1
    if-lez v2, :cond_3

    if-lez v1, :cond_3

    .line 44
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 45
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 47
    iget-boolean v4, p0, Lcom/ebay/android/widget/ExpandingImageView;->adjustHeight:Z

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v4, :cond_2

    mul-int v0, v0, v1

    .line 49
    div-int/2addr v0, v2

    if-eq v0, v3, :cond_3

    .line 52
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_2

    :cond_2
    mul-int v3, v3, v2

    .line 57
    div-int/2addr v3, v1

    if-eq v3, v0, :cond_3

    .line 60
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 65
    :cond_3
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/ebay/android/widget/RemoteImageView;->onMeasure(II)V

    return-void
.end method
