.class public Lcom/ebay/android/widget/MaxSizeLinearLayout;
.super Landroid/widget/LinearLayout;
.source "MaxSizeLinearLayout.java"

# interfaces
.implements Lcom/ebay/android/widget/MaxSizeHelper$MaxSizeWidget;


# instance fields
.field maxSizeData:Lcom/ebay/android/widget/MaxSizeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance p1, Lcom/ebay/android/widget/MaxSizeHelper;

    invoke-direct {p1}, Lcom/ebay/android/widget/MaxSizeHelper;-><init>()V

    iput-object p1, p0, Lcom/ebay/android/widget/MaxSizeLinearLayout;->maxSizeData:Lcom/ebay/android/widget/MaxSizeHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Lcom/ebay/android/widget/MaxSizeHelper;

    invoke-direct {v0, p1, p2}, Lcom/ebay/android/widget/MaxSizeHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/ebay/android/widget/MaxSizeLinearLayout;->maxSizeData:Lcom/ebay/android/widget/MaxSizeHelper;

    return-void
.end method


# virtual methods
.method public getMaxHeight()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/ebay/android/widget/MaxSizeLinearLayout;->maxSizeData:Lcom/ebay/android/widget/MaxSizeHelper;

    invoke-virtual {v0}, Lcom/ebay/android/widget/MaxSizeHelper;->getMaxHeight()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/ebay/android/widget/MaxSizeLinearLayout;->maxSizeData:Lcom/ebay/android/widget/MaxSizeHelper;

    invoke-virtual {v0}, Lcom/ebay/android/widget/MaxSizeHelper;->getMaxWidth()I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/ebay/android/widget/MaxSizeLinearLayout;->maxSizeData:Lcom/ebay/android/widget/MaxSizeHelper;

    invoke-virtual {v0, p1}, Lcom/ebay/android/widget/MaxSizeHelper;->getWidthMeasureSpec(I)I

    move-result p1

    iget-object v0, p0, Lcom/ebay/android/widget/MaxSizeLinearLayout;->maxSizeData:Lcom/ebay/android/widget/MaxSizeHelper;

    .line 31
    invoke-virtual {v0, p2}, Lcom/ebay/android/widget/MaxSizeHelper;->getHeightMeasureSpec(I)I

    move-result p2

    .line 30
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/ebay/android/widget/MaxSizeLinearLayout;->maxSizeData:Lcom/ebay/android/widget/MaxSizeHelper;

    invoke-virtual {v0, p1}, Lcom/ebay/android/widget/MaxSizeHelper;->setMaxHeight(I)V

    .line 44
    invoke-virtual {p0}, Lcom/ebay/android/widget/MaxSizeLinearLayout;->requestLayout()V

    .line 45
    invoke-virtual {p0}, Lcom/ebay/android/widget/MaxSizeLinearLayout;->invalidate()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/ebay/android/widget/MaxSizeLinearLayout;->maxSizeData:Lcom/ebay/android/widget/MaxSizeHelper;

    invoke-virtual {v0, p1}, Lcom/ebay/android/widget/MaxSizeHelper;->setMaxWidth(I)V

    .line 58
    invoke-virtual {p0}, Lcom/ebay/android/widget/MaxSizeLinearLayout;->requestLayout()V

    .line 59
    invoke-virtual {p0}, Lcom/ebay/android/widget/MaxSizeLinearLayout;->invalidate()V

    return-void
.end method
