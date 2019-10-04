.class public final Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$NavigationOnClickListener;
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
    name = "NavigationOnClickListener"
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

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$NavigationOnClickListener;->fragmentReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Lcom/ebay/mobile/common/view/ViewModel;)V
    .locals 4

    .line 445
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$NavigationOnClickListener;->fragmentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    if-nez p1, :cond_0

    return-void

    .line 449
    :cond_0
    instance-of v0, p2, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;

    if-nez v0, :cond_1

    return-void

    .line 452
    :cond_1
    check-cast p2, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;

    iget-object p2, p2, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    if-nez p2, :cond_2

    return-void

    .line 456
    :cond_2
    iget v0, p2, Lcom/ebay/nautilus/domain/data/EbayCategory;->level:I

    invoke-static {v0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->createFragmentTag(I)Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-virtual {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 461
    iget p2, p2, Lcom/ebay/nautilus/domain/data/EbayCategory;->level:I

    const/4 v2, 0x1

    if-ge p2, v2, :cond_3

    .line 463
    invoke-virtual {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object p2

    const v3, 0x10f0004

    .line 464
    invoke-virtual {p2, v3}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object p2

    .line 466
    invoke-virtual {p1, p2}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->setReturnTransition(Ljava/lang/Object;)V

    .line 469
    :cond_3
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    return-void
.end method
