.class public final Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$BranchNodeOnClickListener;
.super Ljava/lang/Object;
.source "BrowseCategoriesFragment.java"

# interfaces
.implements Lcom/ebay/mobile/common/view/ViewModel$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BranchNodeOnClickListener"
.end annotation


# instance fields
.field private final fragmentReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)V
    .locals 1

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$BranchNodeOnClickListener;->fragmentReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Lcom/ebay/mobile/common/view/ViewModel;)V
    .locals 6

    .line 623
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$BranchNodeOnClickListener;->fragmentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    if-eqz p1, :cond_6

    .line 624
    invoke-virtual {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 627
    :cond_0
    instance-of v0, p2, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;

    if-nez v0, :cond_1

    return-void

    .line 630
    :cond_1
    check-cast p2, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;

    iget-object p2, p2, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    if-nez p2, :cond_2

    return-void

    .line 634
    :cond_2
    invoke-virtual {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "selectedCategoryId"

    iget-wide v2, p2, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 635
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "categoryId"

    .line 636
    iget-wide v2, p2, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "categoryName"

    .line 637
    iget-object v2, p2, Lcom/ebay/nautilus/domain/data/EbayCategory;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "categoryLevel"

    .line 638
    iget v2, p2, Lcom/ebay/nautilus/domain/data/EbayCategory;->level:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "categoryImageUrl"

    .line 640
    invoke-static {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->access$300(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p2, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    .line 641
    invoke-static {v2, v3}, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->getCategoryImageUrl(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 642
    :cond_3
    invoke-static {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->access$400(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)Ljava/lang/String;

    move-result-object v2

    .line 639
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-static {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->access$500(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)Lcom/ebay/nautilus/domain/EbaySite;

    move-result-object v1

    sget-object v2, Lcom/ebay/nautilus/domain/EbaySite;->US:Lcom/ebay/nautilus/domain/EbaySite;

    if-ne v1, v2, :cond_4

    iget-wide v1, p2, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    const-wide/16 v3, 0x1770

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    sget-object v1, Lcom/ebay/nautilus/domain/EbaySite;->MOTOR:Lcom/ebay/nautilus/domain/EbaySite;

    goto :goto_1

    .line 646
    :cond_4
    invoke-static {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->access$500(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)Lcom/ebay/nautilus/domain/EbaySite;

    move-result-object v1

    :goto_1
    const-string v2, "categorySite"

    .line 647
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 648
    invoke-static {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->access$200(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)[Lcom/ebay/nautilus/domain/data/EbayCategory;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lcom/ebay/nautilus/domain/data/EbayCategory;

    .line 649
    invoke-static {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->access$200(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)[Lcom/ebay/nautilus/domain/data/EbayCategory;

    move-result-object v2

    invoke-static {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->access$200(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)[Lcom/ebay/nautilus/domain/data/EbayCategory;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 650
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput-object p2, v1, v2

    const-string v2, "navigationIdPath"

    .line 651
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 652
    invoke-virtual {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 654
    invoke-virtual {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 656
    invoke-virtual {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v2

    const v3, 0x10f0001

    .line 657
    invoke-virtual {v2, v3}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v3

    const v4, 0x10f0002

    .line 658
    invoke-virtual {v2, v4}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v2

    .line 661
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->setSharedElementEnterTransition(Ljava/lang/Object;)V

    const/4 v4, 0x0

    .line 663
    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->setEnterTransition(Ljava/lang/Object;)V

    .line 664
    invoke-virtual {p1, v4}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->setExitTransition(Ljava/lang/Object;)V

    .line 667
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->setSharedElementReturnTransition(Ljava/lang/Object;)V

    .line 669
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setReturnTransition(Ljava/lang/Object;)V

    .line 670
    invoke-virtual {p1, v4}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->setReenterTransition(Ljava/lang/Object;)V

    .line 672
    invoke-static {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->access$000(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;

    move-result-object v2

    iget-wide v3, p2, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    invoke-virtual {v2, v3, v4}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->findAdapterPositionByEbayCategoryId(J)I

    move-result v2

    .line 673
    invoke-static {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->access$100(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 674
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 675
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroidx/fragment/app/FragmentTransaction;->addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 677
    :cond_5
    iget p2, p2, Lcom/ebay/nautilus/domain/data/EbayCategory;->level:I

    invoke-static {p2}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->createFragmentTag(I)Ljava/lang/String;

    move-result-object p2

    .line 679
    invoke-virtual {v1, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 680
    invoke-virtual {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {v2, p1, v0, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 682
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void

    :cond_6
    :goto_2
    return-void
.end method
