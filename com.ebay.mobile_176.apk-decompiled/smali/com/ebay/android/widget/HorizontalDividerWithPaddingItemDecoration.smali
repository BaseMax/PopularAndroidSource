.class public Lcom/ebay/android/widget/HorizontalDividerWithPaddingItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "HorizontalDividerWithPaddingItemDecoration.java"


# instance fields
.field private final divider:Landroid/graphics/drawable/Drawable;

.field private final drawAtBeginning:Z

.field private final drawAtEnd:Z

.field private final height:I

.field private final padding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 34
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ebay/android/widget/HorizontalDividerWithPaddingItemDecoration;-><init>(Landroid/content/Context;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZZ)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 47
    sget v0, Lcom/ebay/nautilus/shell/R$attr;->listDividerHorizontal:I

    invoke-static {p1, v0}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/android/widget/HorizontalDividerWithPaddingItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    .line 48
    iput-boolean p2, p0, Lcom/ebay/android/widget/HorizontalDividerWithPaddingItemDecoration;->drawAtEnd:Z

    .line 49
    iput-boolean p3, p0, Lcom/ebay/android/widget/HorizontalDividerWithPaddingItemDecoration;->drawAtBeginning:Z

    .line 50
    iget-object p2, p0, Lcom/ebay/android/widget/HorizontalDividerWithPaddingItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    iput p2, p0, Lcom/ebay/android/widget/HorizontalDividerWithPaddingItemDecoration;->height:I

    if-eqz p4, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/ebay/nautilus/shell/R$dimen;->ebayContentSideMargin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/ebay/android/widget/HorizontalDividerWithPaddingItemDecoration;->padding:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/ebay/android/widget/HorizontalDividerWithPaddingItemDecoration;->padding:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/ebay/android/widget/HorizontalDividerWithPaddingItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDrawAtBeginning()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/ebay/android/widget/HorizontalDividerWithPaddingItemDecoration;->drawAtBeginning:Z

    return v0
.end method

.method public getDrawAtEnd()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/ebay/android/widget/HorizontalDividerWithPaddingItemDecoration;->drawAtEnd:Z

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/ebay/android/widget/HorizontalDividerWithPaddingItemDecoration;->height:I

    return v0
.end method

.method public getPadding()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/ebay/android/widget/HorizontalDividerWithPaddingItemDecoration;->padding:I

    return v0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .line 60
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result p3

    iget v0, p0, Lcom/ebay/android/widget/HorizontalDividerWithPaddingItemDecoration;->padding:I

    add-int/2addr p3, v0

    .line 61
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/ebay/android/widget/HorizontalDividerWithPaddingItemDecoration;->padding:I

    sub-int/2addr v0, v1

    .line 63
    iget-boolean v1, p0, Lcom/ebay/android/widget/HorizontalDividerWithPaddingItemDecoration;->drawAtEnd:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 68
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 70
    iget-boolean v4, p0, Lcom/ebay/android/widget/HorizontalDividerWithPaddingItemDecoration;->drawAtBeginning:Z

    if-nez v4, :cond_1

    .line 72
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 77
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v3

    .line 78
    iget v3, p0, Lcom/ebay/android/widget/HorizontalDividerWithPaddingItemDecoration;->height:I

    add-int/2addr v3, v4

    .line 79
    iget-object v5, p0, Lcom/ebay/android/widget/HorizontalDividerWithPaddingItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p3, v4, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 80
    iget-object v3, p0, Lcom/ebay/android/widget/HorizontalDividerWithPaddingItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
