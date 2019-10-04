.class public final Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "BrowseCategoriesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListDecoration"
.end annotation


# instance fields
.field private final background:Landroid/graphics/drawable/Drawable;

.field private final contentPaddingInPx:I

.field private final contentTopPaddingInPx:I

.field private final divider:Landroid/graphics/drawable/Drawable;

.field private final numberOfNavigationNodes:I

.field private final showChildDividers:Z

.field private final showParentDividers:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIIZZ)V
    .locals 0

    .line 701
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 702
    iput-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;->divider:Landroid/graphics/drawable/Drawable;

    .line 703
    iput p3, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;->numberOfNavigationNodes:I

    .line 704
    iput-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;->background:Landroid/graphics/drawable/Drawable;

    .line 705
    iput-boolean p7, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;->showChildDividers:Z

    .line 706
    iput-boolean p6, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;->showParentDividers:Z

    .line 707
    iput p5, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;->contentPaddingInPx:I

    .line 708
    iput p4, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;->contentTopPaddingInPx:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 798
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 800
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_0

    .line 802
    iget p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;->contentTopPaddingInPx:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 804
    :cond_0
    iget p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;->contentPaddingInPx:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 805
    iget p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;->contentPaddingInPx:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .line 713
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 715
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 716
    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 718
    :goto_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p3

    .line 719
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v3, v4

    const/4 v5, -0x1

    :goto_1
    if-nez v3, :cond_1

    if-ge v5, p3, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 725
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    :cond_1
    sub-int/2addr p3, v2

    if-lt p3, v1, :cond_2

    add-int/2addr v1, v2

    .line 730
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    :cond_2
    if-nez v4, :cond_3

    .line 733
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    :cond_3
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 738
    new-instance p3, Landroid/graphics/Rect;

    .line 739
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;->contentPaddingInPx:I

    sub-int/2addr v0, v1

    .line 740
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;->contentTopPaddingInPx:I

    sub-int/2addr v1, v2

    .line 741
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v2

    iget v3, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;->contentPaddingInPx:I

    add-int/2addr v2, v3

    .line 742
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;->contentPaddingInPx:I

    add-int/2addr v3, v4

    invoke-direct {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 744
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 745
    iget-object p3, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;->background:Landroid/graphics/drawable/Drawable;

    invoke-static {p3, p2}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->access$600(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 746
    iget-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 9

    .line 752
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 754
    instance-of v0, p2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 755
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 757
    :goto_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p3

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v2, v3

    const/4 v4, -0x1

    :goto_1
    if-nez v2, :cond_1

    if-ge v4, p3, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 763
    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_2
    if-nez v3, :cond_2

    if-ltz v2, :cond_2

    add-int/lit8 v2, v2, -0x1

    .line 768
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    .line 770
    :cond_2
    iget-boolean v3, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;->showParentDividers:Z

    if-nez v3, :cond_3

    .line 771
    iget v4, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;->numberOfNavigationNodes:I

    .line 772
    :cond_3
    iget-boolean v3, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;->showChildDividers:Z

    if-nez v3, :cond_4

    .line 773
    iget v3, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;->numberOfNavigationNodes:I

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_4
    :goto_3
    if-gt v4, v2, :cond_8

    add-int v1, v4, v0

    if-ge p3, v1, :cond_5

    goto :goto_5

    .line 780
    :cond_5
    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    const v5, 0x7f0a12a9

    .line 783
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 784
    iget-object v6, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;->divider:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;->numberOfNavigationNodes:I

    if-lt v4, v7, :cond_6

    if-eqz v5, :cond_6

    .line 786
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;->contentPaddingInPx:I

    add-int/2addr v4, v5

    goto :goto_4

    .line 787
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 788
    :goto_4
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 789
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v7

    .line 790
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v8, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v8

    add-int/2addr v3, v8

    .line 784
    invoke-virtual {v6, v4, v5, v7, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 791
    iget-object v3, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    :goto_5
    move v4, v1

    goto :goto_3

    :cond_8
    return-void
.end method
