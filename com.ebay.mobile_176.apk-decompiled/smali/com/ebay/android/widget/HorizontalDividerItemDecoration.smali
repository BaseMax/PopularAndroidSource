.class public Lcom/ebay/android/widget/HorizontalDividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "HorizontalDividerItemDecoration.java"


# instance fields
.field private final divider:Landroid/graphics/drawable/Drawable;

.field private final drawAtEnd:Z

.field private final height:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 28
    sget v0, Lcom/ebay/nautilus/shell/R$attr;->listDividerHorizontal:I

    sget v1, Lcom/ebay/nautilus/shell/R$drawable;->divider_horizontal:I

    invoke-static {p1, v0, v1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/android/widget/HorizontalDividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    .line 29
    iput-boolean p2, p0, Lcom/ebay/android/widget/HorizontalDividerItemDecoration;->drawAtEnd:Z

    .line 30
    iget-object p1, p0, Lcom/ebay/android/widget/HorizontalDividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/ebay/android/widget/HorizontalDividerItemDecoration;->height:I

    return-void
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .line 36
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result p3

    .line 37
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 38
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    .line 42
    iget-boolean v2, p0, Lcom/ebay/android/widget/HorizontalDividerItemDecoration;->drawAtEnd:Z

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 48
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 49
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 50
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    .line 51
    iget v4, p0, Lcom/ebay/android/widget/HorizontalDividerItemDecoration;->height:I

    add-int/2addr v4, v3

    .line 52
    iget-object v5, p0, Lcom/ebay/android/widget/HorizontalDividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p3, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 53
    iget-object v3, p0, Lcom/ebay/android/widget/HorizontalDividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
