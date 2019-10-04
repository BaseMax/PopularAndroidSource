.class Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$1;
.super Ljava/lang/Object;
.source "BrowseCategoriesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$1;->this$0:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 295
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$1;->this$0:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    invoke-static {v0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->access$000(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$1;->this$0:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    invoke-static {v0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->access$100(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$1;->this$0:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    iget-wide v0, v0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->selectedCategoryId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$1;->this$0:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    iget-wide v0, v0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->selectedCategoryId:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$1;->this$0:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    .line 298
    invoke-static {v0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->access$200(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)[Lcom/ebay/nautilus/domain/data/EbayCategory;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$1;->this$0:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    invoke-static {v1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->access$200(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)[Lcom/ebay/nautilus/domain/data/EbayCategory;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-wide v0, v0, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    .line 299
    :goto_0
    iget-object v2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$1;->this$0:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    invoke-static {v2}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->access$000(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->findAdapterPositionByEbayCategoryId(J)I

    move-result v0

    .line 300
    iget-object v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$1;->this$0:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    invoke-static {v1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->access$100(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 302
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method
