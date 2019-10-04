.class Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger$1;
.super Ljava/lang/Object;
.source "BrowseCategoriesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger$1;->this$1:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 843
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger$1;->this$1:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger;

    iget-object v0, v0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger;->this$0:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    invoke-static {v0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->access$100(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger$1;->this$1:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger;

    iget-object v0, v0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger;->this$0:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    invoke-static {v0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->access$100(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTranslationY(F)V

    :cond_0
    return-void
.end method
