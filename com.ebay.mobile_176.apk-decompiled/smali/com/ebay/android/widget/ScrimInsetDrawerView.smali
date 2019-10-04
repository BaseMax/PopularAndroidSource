.class public Lcom/ebay/android/widget/ScrimInsetDrawerView;
.super Landroid/widget/FrameLayout;
.source "ScrimInsetDrawerView.java"


# instance fields
.field mInsetForeground:Landroid/graphics/drawable/Drawable;

.field mInsets:Landroid/graphics/Rect;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/ebay/android/widget/ScrimInsetDrawerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/android/widget/ScrimInsetDrawerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mTempRect:Landroid/graphics/Rect;

    .line 43
    sget-object v0, Lcom/ebay/nautilus/shell/R$styleable;->ScrimInsetDrawerView:[I

    sget v1, Lcom/ebay/nautilus/shell/R$style;->ScrimInsetDrawerViewStyle:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 45
    sget p2, Lcom/ebay/nautilus/shell/R$styleable;->ScrimInsetDrawerView_elevation:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 47
    sget p2, Lcom/ebay/nautilus/shell/R$styleable;->ScrimInsetDrawerView_elevation:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 51
    :cond_0
    sget p2, Lcom/ebay/nautilus/shell/R$styleable;->ScrimInsetDrawerView_insetForeground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x1

    .line 52
    invoke-virtual {p0, p2}, Lcom/ebay/android/widget/ScrimInsetDrawerView;->setWillNotDraw(Z)V

    .line 54
    sget p3, Lcom/ebay/nautilus/shell/R$styleable;->ScrimInsetDrawerView_android_fitsSystemWindows:I

    .line 55
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 54
    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 57
    new-instance p2, Lcom/ebay/android/widget/ScrimInsetDrawerView$1;

    invoke-direct {p2, p0}, Lcom/ebay/android/widget/ScrimInsetDrawerView$1;-><init>(Lcom/ebay/android/widget/ScrimInsetDrawerView;)V

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 79
    sget p2, Lcom/ebay/nautilus/shell/R$styleable;->ScrimInsetDrawerView_android_background:I

    .line 80
    invoke-virtual {p0}, Lcom/ebay/android/widget/ScrimInsetDrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x106000d

    invoke-virtual {p0}, Lcom/ebay/android/widget/ScrimInsetDrawerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {p3, v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p3

    .line 79
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/ebay/android/widget/ScrimInsetDrawerView;->setBackgroundColor(I)V

    .line 82
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 100
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 102
    invoke-virtual {p0}, Lcom/ebay/android/widget/ScrimInsetDrawerView;->getWidth()I

    move-result v0

    .line 103
    invoke-virtual {p0}, Lcom/ebay/android/widget/ScrimInsetDrawerView;->getHeight()I

    move-result v1

    .line 104
    iget-object v2, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsets:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 107
    invoke-virtual {p0}, Lcom/ebay/android/widget/ScrimInsetDrawerView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/ebay/android/widget/ScrimInsetDrawerView;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 110
    iget-object v3, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 111
    iget-object v3, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 112
    iget-object v3, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 115
    iget-object v3, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v1, v4

    invoke-virtual {v3, v5, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 116
    iget-object v3, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 117
    iget-object v3, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 120
    iget-object v3, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v1, v7

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 121
    iget-object v3, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 122
    iget-object v3, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 125
    iget-object v3, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v4, v0, v4

    iget-object v5, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v6

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 126
    iget-object v0, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 127
    iget-object v0, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 129
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 136
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 137
    iget-object v0, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 146
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 147
    iget-object v0, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method protected onInsetsChanged(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 4

    .line 88
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result p1

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, v0}, Lcom/ebay/android/widget/ScrimInsetDrawerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 94
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 93
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    return-void
.end method
