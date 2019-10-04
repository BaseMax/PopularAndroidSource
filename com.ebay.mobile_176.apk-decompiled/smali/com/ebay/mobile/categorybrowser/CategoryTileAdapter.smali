.class public final Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;
.super Lcom/ebay/mobile/common/view/RecyclerContentAdapter;
.source "CategoryTileAdapter.java"


# static fields
.field public static final VIEW_TYPE_CATEGORY:I = 0x1


# instance fields
.field private final numberOfColumns:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ebay/nautilus/domain/EbaySite;I)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Lcom/ebay/mobile/common/view/RecyclerContentAdapter;-><init>(Landroid/content/Context;)V

    .line 34
    iput p3, p0, Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;->numberOfColumns:I

    .line 36
    const-class p1, Lcom/ebay/mobile/categorybrowser/CategoryTileViewHolder;

    const/4 p3, 0x1

    const v0, 0x7f0d0087

    invoke-virtual {p0, p3, p1, v0}, Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;->addViewType(ILjava/lang/Class;I)V

    const/4 p1, 0x0

    .line 38
    new-array p1, p1, [Lcom/ebay/nautilus/domain/data/EbayCategoryNode;

    invoke-virtual {p0, p2, p1}, Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;->setCategories(Lcom/ebay/nautilus/domain/EbaySite;[Lcom/ebay/nautilus/domain/data/EbayCategoryNode;)V

    return-void
.end method


# virtual methods
.method public createLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 50
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget v2, p0, Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;->numberOfColumns:I

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public findAdapterPositionByEbayCategoryId(J)I
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;->dataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 80
    iget-object v2, p0, Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;->dataSet:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/mobile/common/view/ViewModel;

    .line 81
    instance-of v3, v2, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;

    iget-object v2, v2, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    iget-wide v2, v2, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getItemCount()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;->dataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public setCategories(Lcom/ebay/nautilus/domain/EbaySite;[Lcom/ebay/nautilus/domain/data/EbayCategoryNode;)V
    .locals 7

    .line 61
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;->dataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 63
    iget-object v3, p0, Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;->dataSet:Ljava/util/List;

    new-instance v4, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/EbayCategoryNode;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    const/4 v5, 0x1

    .line 64
    invoke-virtual {p0, v5}, Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;->getOnClickListener(I)Lcom/ebay/mobile/common/view/ViewModel$OnClickListener;

    move-result-object v6

    invoke-direct {v4, v5, p1, v2, v6}, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;-><init>(ILcom/ebay/nautilus/domain/EbaySite;Lcom/ebay/nautilus/domain/data/EbayCategory;Lcom/ebay/mobile/common/view/ViewModel$OnClickListener;)V

    .line 63
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;->notifyDataSetChanged()V

    return-void
.end method
