.class public Lcom/ebay/android/widget/ContainerLayout;
.super Landroid/widget/LinearLayout;
.source "ContainerLayout.java"


# instance fields
.field private final divider:Landroid/graphics/Paint;

.field private dividerPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/ebay/android/widget/ContainerLayout;->divider:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/ebay/android/widget/ContainerLayout;->dividerPadding:I

    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/ContainerLayout;->setOrientation(I)V

    .line 26
    iget-object p1, p0, Lcom/ebay/android/widget/ContainerLayout;->divider:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/ebay/android/widget/ContainerLayout;->getDefaultDividerColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ebay/android/widget/ContainerLayout;->divider:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/ebay/android/widget/ContainerLayout;->dividerPadding:I

    const/4 v1, 0x1

    .line 32
    invoke-virtual {p0, v1}, Lcom/ebay/android/widget/ContainerLayout;->setOrientation(I)V

    .line 34
    sget-object v2, Lcom/ebay/nautilus/shell/R$styleable;->ContainerLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    .line 41
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 42
    sget v5, Lcom/ebay/nautilus/shell/R$styleable;->ContainerLayout_containerDividerPadding:I

    if-ne v3, v5, :cond_0

    .line 43
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/ebay/android/widget/ContainerLayout;->dividerPadding:I

    goto :goto_1

    .line 44
    :cond_0
    sget v5, Lcom/ebay/nautilus/shell/R$styleable;->ContainerLayout_dividerColor:I

    if-ne v3, v5, :cond_1

    .line 45
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    move v4, v3

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v3, :cond_3

    .line 52
    invoke-direct {p0}, Lcom/ebay/android/widget/ContainerLayout;->getDefaultDividerColor()I

    move-result v4

    .line 53
    :cond_3
    iget-object p1, p0, Lcom/ebay/android/widget/ContainerLayout;->divider:Landroid/graphics/Paint;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private getDefaultDividerColor()I
    .locals 5

    .line 58
    invoke-virtual {p0}, Lcom/ebay/android/widget/ContainerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/ebay/nautilus/shell/R$attr;->listContainerOutsideBackground:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    sget v2, Lcom/ebay/nautilus/shell/R$color;->listContainerLightOutsideBackground:I

    iput v2, v1, Landroid/util/TypedValue;->resourceId:I

    .line 62
    :cond_0
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_1

    .line 63
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, v1, Landroid/util/TypedValue;->data:I

    .line 64
    :cond_1
    iget v0, v1, Landroid/util/TypedValue;->data:I

    return v0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p1, Landroid/widget/Button;

    if-nez v0, :cond_5

    .line 72
    instance-of v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 74
    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 79
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    or-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    or-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    or-int/2addr v2, v3

    const/4 v3, -0x1

    if-nez v2, :cond_0

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-eq v2, v3, :cond_3

    .line 82
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 83
    instance-of v4, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v4, :cond_1

    .line 84
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 86
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/ebay/android/widget/ContainerLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAddStatesFromChildren(Z)V

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 89
    invoke-virtual {v0, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    instance-of p1, p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    if-eqz p1, :cond_2

    .line 92
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    check-cast p3, Landroid/widget/LinearLayout$LayoutParams;

    iget p3, p3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-direct {p1, v3, v2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    :goto_0
    move-object p3, p1

    move-object p1, v0

    goto :goto_1

    .line 95
    :cond_2
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_3
    :goto_1
    const v0, 0x1080062

    .line 101
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 102
    invoke-virtual {p0}, Lcom/ebay/android/widget/ContainerLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10102f0

    invoke-virtual {v3, v4, v2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 103
    iget v0, v2, Landroid/util/TypedValue;->resourceId:I

    .line 104
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 106
    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 112
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 114
    iget-object v0, p0, Lcom/ebay/android/widget/ContainerLayout;->divider:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/android/widget/ContainerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 122
    invoke-virtual {p0, v1}, Lcom/ebay/android/widget/ContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 123
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    .line 129
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 130
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, v5

    .line 131
    invoke-virtual {p0}, Lcom/ebay/android/widget/ContainerLayout;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Lcom/ebay/android/widget/ContainerLayout;->dividerPadding:I

    add-int/2addr v5, v6

    int-to-float v7, v5

    int-to-float v10, v3

    invoke-virtual {p0}, Lcom/ebay/android/widget/ContainerLayout;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/ebay/android/widget/ContainerLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/ebay/android/widget/ContainerLayout;->dividerPadding:I

    sub-int/2addr v5, v6

    int-to-float v9, v5

    iget-object v11, p0, Lcom/ebay/android/widget/ContainerLayout;->divider:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v3, v4

    .line 134
    invoke-virtual {p0}, Lcom/ebay/android/widget/ContainerLayout;->getPaddingLeft()I

    move-result v4

    iget v5, p0, Lcom/ebay/android/widget/ContainerLayout;->dividerPadding:I

    add-int/2addr v4, v5

    int-to-float v6, v4

    int-to-float v9, v3

    invoke-virtual {p0}, Lcom/ebay/android/widget/ContainerLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/ebay/android/widget/ContainerLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/ebay/android/widget/ContainerLayout;->dividerPadding:I

    sub-int/2addr v3, v4

    int-to-float v8, v3

    iget-object v10, p0, Lcom/ebay/android/widget/ContainerLayout;->divider:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v9

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
