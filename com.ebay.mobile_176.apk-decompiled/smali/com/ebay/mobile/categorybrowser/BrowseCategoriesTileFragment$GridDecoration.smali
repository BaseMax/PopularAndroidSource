.class public final Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$GridDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "BrowseCategoriesTileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GridDecoration"
.end annotation


# instance fields
.field private final background:Landroid/graphics/drawable/Drawable;

.field private final cellPaddingInPx:I

.field private final contentPaddingInPx:I

.field private final divider:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 465
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 466
    iput-object p3, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$GridDecoration;->divider:Landroid/graphics/drawable/Drawable;

    .line 468
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 469
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {p3, p2, p1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$GridDecoration;->background:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f0700ee

    .line 470
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$GridDecoration;->contentPaddingInPx:I

    const p1, 0x7f0700ec

    .line 471
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$GridDecoration;->cellPaddingInPx:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .line 567
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p4

    check-cast p4, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 568
    instance-of v0, p4, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 569
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 571
    :goto_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    .line 573
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p4

    const/4 v1, 0x0

    if-ge p4, v0, :cond_1

    .line 577
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 578
    iget v2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$GridDecoration;->contentPaddingInPx:I

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v2, p2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 582
    :cond_1
    iput v1, p1, Landroid/graphics/Rect;->top:I

    :goto_1
    int-to-double p2, p3

    int-to-double v2, v0

    div-double/2addr p2, v2

    .line 584
    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p2, v4

    mul-double p2, p2, v2

    int-to-double v2, p4

    cmpg-double p2, p2, v2

    if-gtz p2, :cond_2

    .line 587
    iget p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$GridDecoration;->contentPaddingInPx:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 591
    :cond_2
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 593
    :goto_2
    iget p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$GridDecoration;->cellPaddingInPx:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 594
    iget p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$GridDecoration;->cellPaddingInPx:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    .line 476
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 478
    instance-of v0, p3, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 479
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 481
    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    .line 482
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    .line 483
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v4

    const/4 v5, 0x0

    if-lt v3, v0, :cond_1

    sub-int v6, v3, v0

    .line 488
    invoke-virtual {p3, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v5

    :goto_1
    if-nez v6, :cond_2

    .line 491
    invoke-virtual {p3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    :cond_2
    sub-int v3, v2, v4

    if-lt v3, v0, :cond_3

    add-int/2addr v0, v4

    .line 497
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_3
    if-ge v3, v0, :cond_4

    .line 501
    invoke-virtual {p3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    .line 502
    rem-int v0, v4, v0

    sub-int v0, v4, v0

    sub-int/2addr v0, v1

    .line 503
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v5

    :goto_2
    if-nez v5, :cond_5

    sub-int/2addr v2, v1

    if-ge v4, v2, :cond_5

    add-int/lit8 v1, v4, 0x1

    .line 507
    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    :cond_5
    if-nez v0, :cond_6

    .line 510
    invoke-virtual {p3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    :cond_6
    if-eqz v6, :cond_8

    if-eqz v0, :cond_8

    .line 515
    new-instance p3, Landroid/graphics/Rect;

    .line 516
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$GridDecoration;->contentPaddingInPx:I

    sub-int/2addr v1, v2

    .line 517
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$GridDecoration;->contentPaddingInPx:I

    sub-int/2addr v2, v3

    .line 518
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$GridDecoration;->contentPaddingInPx:I

    add-int/2addr v3, v4

    if-nez v5, :cond_7

    .line 520
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$GridDecoration;->contentPaddingInPx:I

    add-int/2addr v0, v4

    goto :goto_3

    .line 521
    :cond_7
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$GridDecoration;->contentPaddingInPx:I

    add-int/2addr v0, v4

    :goto_3
    invoke-direct {p3, v1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 523
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$GridDecoration;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 524
    iget-object p3, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$GridDecoration;->background:Landroid/graphics/drawable/Drawable;

    invoke-static {p3, p2}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->access$000(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 525
    iget-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$GridDecoration;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 10

    .line 532
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 534
    instance-of v0, p3, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 535
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 537
    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    .line 539
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 540
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    :goto_1
    if-gt v2, v3, :cond_5

    add-int v4, v2, v0

    if-gt p2, v4, :cond_1

    goto :goto_3

    .line 547
    :cond_1
    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x0

    if-le v0, v1, :cond_2

    add-int/lit8 v6, v4, -0x1

    if-ge v6, p2, :cond_2

    .line 551
    invoke-virtual {p3, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    :cond_2
    if-eqz v2, :cond_4

    .line 555
    iget-object v6, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$GridDecoration;->divider:Landroid/graphics/drawable/Drawable;

    .line 556
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 557
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v8

    if-eqz v5, :cond_3

    .line 558
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    .line 559
    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v9, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$GridDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v9

    add-int/2addr v2, v9

    .line 555
    invoke-virtual {v6, v7, v8, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 560
    iget-object v2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$GridDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_3
    move v2, v4

    goto :goto_1

    :cond_5
    return-void
.end method
