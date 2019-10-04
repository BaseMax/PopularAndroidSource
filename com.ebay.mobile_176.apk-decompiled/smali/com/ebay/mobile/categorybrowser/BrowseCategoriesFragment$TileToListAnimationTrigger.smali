.class public final Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger;
.super Landroidx/core/app/SharedElementCallback;
.source "BrowseCategoriesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TileToListAnimationTrigger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;


# direct methods
.method public constructor <init>(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger;->this$0:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    invoke-direct {p0}, Landroidx/core/app/SharedElementCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 830
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 832
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger;->this$0:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    invoke-static {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->access$100(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 834
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger;->this$0:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    invoke-static {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->access$100(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger;->this$0:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    invoke-static {p2}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->access$100(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getBottom()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setTranslationY(F)V

    .line 835
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger;->this$0:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    invoke-static {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->access$100(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 836
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xc8

    .line 837
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger$1;

    invoke-direct {p2, p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger$1;-><init>(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger;)V

    .line 838
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    .line 847
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 848
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 815
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 817
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger;->this$0:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    invoke-static {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->access$100(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 819
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger;->this$0:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    invoke-static {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->access$100(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 820
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger;->this$0:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    .line 821
    invoke-static {p2}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->access$100(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getBottom()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 822
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method
