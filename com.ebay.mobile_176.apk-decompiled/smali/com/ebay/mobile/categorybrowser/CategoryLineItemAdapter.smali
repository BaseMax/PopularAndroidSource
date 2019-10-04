.class public final Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;
.super Lcom/ebay/mobile/common/view/RecyclerContentAdapter;
.source "CategoryLineItemAdapter.java"


# static fields
.field public static final VIEW_TYPE_LINE_ITEM:I = 0x3

.field public static final VIEW_TYPE_LINE_ITEM_BRANCH:I = 0x4

.field public static final VIEW_TYPE_NAVIGATION_BRANCH:I = 0x1

.field public static final VIEW_TYPE_NAVIGATION_CURRENT:I = 0x2

.field public static final VIEW_TYPE_NAVIGATION_ROOT:I = 0x0

.field public static final VIEW_TYPE_PROGRESS_INDICATOR:I = 0x5


# instance fields
.field private final ebaySite:Lcom/ebay/nautilus/domain/EbaySite;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ebay/nautilus/domain/EbaySite;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Lcom/ebay/mobile/common/view/RecyclerContentAdapter;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->ebaySite:Lcom/ebay/nautilus/domain/EbaySite;

    .line 40
    const-class p1, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;

    const/4 p2, 0x0

    const v0, 0x7f0d0086

    invoke-virtual {p0, p2, p1, v0}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->addViewType(ILjava/lang/Class;I)V

    .line 41
    const-class p1, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;

    const/4 p2, 0x1

    const v0, 0x7f0d0084

    invoke-virtual {p0, p2, p1, v0}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->addViewType(ILjava/lang/Class;I)V

    .line 42
    const-class p1, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;

    const/4 p2, 0x2

    const v0, 0x7f0d0085

    invoke-virtual {p0, p2, p1, v0}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->addViewType(ILjava/lang/Class;I)V

    .line 43
    const-class p1, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;

    const/4 p2, 0x4

    const v0, 0x7f0d0082

    invoke-virtual {p0, p2, p1, v0}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->addViewType(ILjava/lang/Class;I)V

    .line 44
    const-class p1, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;

    const/4 p2, 0x3

    const v0, 0x7f0d0081

    invoke-virtual {p0, p2, p1, v0}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->addViewType(ILjava/lang/Class;I)V

    .line 45
    const-class p1, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;

    const/4 p2, 0x5

    const v0, 0x7f0d0083

    invoke-virtual {p0, p2, p1, v0}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->addViewType(ILjava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method public findAdapterPositionByEbayCategoryId(J)I
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->dataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 163
    iget-object v2, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->dataSet:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/mobile/common/view/ViewModel;

    .line 164
    instance-of v3, v2, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;

    if-eqz v3, :cond_0

    .line 166
    check-cast v2, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;

    .line 167
    iget-object v3, v2, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    if-eqz v3, :cond_0

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

    .line 177
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->dataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public setBreadcrumbs([Lcom/ebay/nautilus/domain/data/EbayCategory;)V
    .locals 11

    const/4 v0, 0x2

    .line 94
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->getPositionForViewType(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    .line 98
    :cond_0
    iget-object v3, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->dataSet:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lez v1, :cond_1

    if-ge v1, v3, :cond_1

    .line 101
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->dataSet:Ljava/util/List;

    iget-object v6, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->dataSet:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-interface {v5, v1, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 102
    iget-object v5, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->dataSet:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 103
    iget-object v5, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->dataSet:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    invoke-virtual {p0, v2, v1}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->notifyItemRangeRemoved(II)V

    .line 108
    :cond_1
    array-length v1, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    add-int/lit8 v5, v1, -0x1

    if-ne v3, v5, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    .line 116
    :goto_1
    aget-object v6, p1, v3

    if-ne v5, v0, :cond_4

    .line 117
    iget-wide v7, v6, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_4

    goto :goto_2

    .line 119
    :cond_4
    iget-object v7, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->dataSet:Ljava/util/List;

    new-instance v8, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;

    iget-object v9, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->ebaySite:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {p0, v5}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->getOnClickListener(I)Lcom/ebay/mobile/common/view/ViewModel$OnClickListener;

    move-result-object v10

    invoke-direct {v8, v5, v9, v6, v10}, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;-><init>(ILcom/ebay/nautilus/domain/EbaySite;Lcom/ebay/nautilus/domain/data/EbayCategory;Lcom/ebay/mobile/common/view/ViewModel$OnClickListener;)V

    invoke-interface {v7, v3, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    :cond_5
    array-length p1, p1

    invoke-virtual {p0, v2, p1}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public setChildCategories([Lcom/ebay/nautilus/domain/data/EbayCategoryNode;)V
    .locals 9

    const/4 v0, 0x2

    .line 132
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->getPositionForViewType(I)I

    move-result v0

    .line 133
    iget-object v1, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->dataSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    if-ge v0, v1, :cond_0

    .line 136
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->dataSet:Ljava/util/List;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v4, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 137
    iget-object v4, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->dataSet:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 138
    iget-object v4, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->dataSet:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, -0x1

    .line 139
    invoke-virtual {p0, v5, v1}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->notifyItemRangeRemoved(II)V

    .line 143
    :cond_0
    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 145
    iget-object v4, v3, Lcom/ebay/nautilus/domain/data/EbayCategoryNode;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    iget-boolean v4, v4, Lcom/ebay/nautilus/domain/data/EbayCategory;->isLeaf:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    .line 146
    :goto_1
    iget-object v5, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->dataSet:Ljava/util/List;

    new-instance v6, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;

    iget-object v7, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->ebaySite:Lcom/ebay/nautilus/domain/EbaySite;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/EbayCategoryNode;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    invoke-virtual {p0, v4}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->getOnClickListener(I)Lcom/ebay/mobile/common/view/ViewModel$OnClickListener;

    move-result-object v8

    invoke-direct {v6, v4, v7, v3, v8}, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;-><init>(ILcom/ebay/nautilus/domain/EbaySite;Lcom/ebay/nautilus/domain/data/EbayCategory;Lcom/ebay/mobile/common/view/ViewModel$OnClickListener;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v0, 0x1

    .line 148
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    add-int/2addr v0, p1

    invoke-virtual {p0, v1, v0}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public setLoading(Z)V
    .locals 5

    const/4 v0, 0x5

    const/4 v1, -0x1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 57
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->getPositionForViewType(I)I

    move-result p1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->dataSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez p1, :cond_1

    if-ge p1, v1, :cond_1

    .line 64
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->dataSet:Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v4, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 65
    iget-object v2, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->dataSet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 66
    iget-object v2, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->dataSet:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, -0x1

    .line 67
    invoke-virtual {p0, p1, v1}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->notifyItemRangeRemoved(II)V

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->dataSet:Ljava/util/List;

    new-instance v1, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;

    iget-object v2, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->ebaySite:Lcom/ebay/nautilus/domain/EbaySite;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3, v3}, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;-><init>(ILcom/ebay/nautilus/domain/EbaySite;Lcom/ebay/nautilus/domain/data/EbayCategory;Lcom/ebay/mobile/common/view/ViewModel$OnClickListener;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->dataSet:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->notifyItemInserted(I)V

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->getPositionForViewType(I)I

    move-result p1

    if-le p1, v1, :cond_3

    .line 78
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->dataSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 79
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->notifyItemRemoved(I)V

    :cond_3
    :goto_0
    return-void
.end method
