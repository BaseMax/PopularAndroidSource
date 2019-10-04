.class public Lcom/ebay/android/widget/MaxSizeHelper;
.super Ljava/lang/Object;
.source "MaxSizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/android/widget/MaxSizeHelper$MaxSizeWidget;
    }
.end annotation


# instance fields
.field private maxHeight:I

.field private maxWidth:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/ebay/android/widget/MaxSizeHelper;->maxWidth:I

    .line 51
    iput v0, p0, Lcom/ebay/android/widget/MaxSizeHelper;->maxHeight:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object v0, Lcom/ebay/nautilus/shell/R$styleable;->MaxSizeHelper:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 57
    sget p2, Lcom/ebay/nautilus/shell/R$styleable;->MaxSizeHelper_maxWidth:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 58
    sget v1, Lcom/ebay/nautilus/shell/R$styleable;->MaxSizeHelper_maxHeight:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 59
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    iput p2, p0, Lcom/ebay/android/widget/MaxSizeHelper;->maxWidth:I

    .line 62
    iput v0, p0, Lcom/ebay/android/widget/MaxSizeHelper;->maxHeight:I

    return-void
.end method


# virtual methods
.method public getHeightMeasureSpec(I)I
    .locals 3

    .line 104
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 105
    iget v1, p0, Lcom/ebay/android/widget/MaxSizeHelper;->maxHeight:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/ebay/android/widget/MaxSizeHelper;->maxHeight:I

    if-ge v1, v0, :cond_0

    .line 107
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 108
    iget v0, p0, Lcom/ebay/android/widget/MaxSizeHelper;->maxHeight:I

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    return p1
.end method

.method public getMaxHeight()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/ebay/android/widget/MaxSizeHelper;->maxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/ebay/android/widget/MaxSizeHelper;->maxWidth:I

    return v0
.end method

.method public getWidthMeasureSpec(I)I
    .locals 3

    .line 93
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 94
    iget v1, p0, Lcom/ebay/android/widget/MaxSizeHelper;->maxWidth:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/ebay/android/widget/MaxSizeHelper;->maxWidth:I

    if-ge v1, v0, :cond_0

    .line 96
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 97
    iget v0, p0, Lcom/ebay/android/widget/MaxSizeHelper;->maxWidth:I

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    return p1
.end method

.method public setMaxHeight(I)V
    .locals 1

    const/4 v0, -0x1

    if-gt p1, v0, :cond_0

    const/4 p1, -0x1

    .line 75
    :cond_0
    iput p1, p0, Lcom/ebay/android/widget/MaxSizeHelper;->maxHeight:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    const/4 v0, -0x1

    if-gt p1, v0, :cond_0

    const/4 p1, -0x1

    .line 88
    :cond_0
    iput p1, p0, Lcom/ebay/android/widget/MaxSizeHelper;->maxWidth:I

    return-void
.end method
