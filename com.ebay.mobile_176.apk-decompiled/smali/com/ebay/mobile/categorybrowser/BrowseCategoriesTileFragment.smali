.class public final Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;
.super Lcom/ebay/mobile/activities/BaseFragment;
.source "BrowseCategoriesTileFragment.java"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;
.implements Lcom/ebay/mobile/common/view/ViewModel$OnClickListener;
.implements Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$RecyclerViewOutlineProvider;,
        Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$GridDecoration;
    }
.end annotation


# static fields
.field public static final EXTRA_CATEGORY_SITE:Ljava/lang/String; = "categorySite"

.field public static final EXTRA_SELECTED_CATEGORY_ID:Ljava/lang/String; = "selectedCategoryId"

.field public static final NO_SELECTION:J = -0x1L


# instance fields
.field private adapter:Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;

.field private dataManager:Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;

.field private progressBar:Landroid/view/View;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field protected requestedCategoryId:J

.field protected selectedCategoryId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/ebay/mobile/activities/BaseFragment;-><init>()V

    const-wide/16 v0, -0x1

    .line 70
    iput-wide v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->selectedCategoryId:J

    .line 71
    iput-wide v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->requestedCategoryId:J

    return-void
.end method

.method static synthetic access$000(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-static {p0, p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->setOutline(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-void
.end method

.method private addLollipopTransition(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Lcom/ebay/nautilus/domain/data/EbayCategory;)V
    .locals 4

    .line 301
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->adapter:Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;

    iget-wide v1, p3, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;->findAdapterPositionByEbayCategoryId(J)I

    move-result p3

    const/4 v0, -0x1

    if-le p3, v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 305
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 307
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a07e1

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 309
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    const v1, 0x10f0001

    .line 310
    invoke-virtual {v0, v1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v1

    .line 311
    new-instance v2, Landroid/transition/ArcMotion;

    invoke-direct {v2}, Landroid/transition/ArcMotion;-><init>()V

    invoke-virtual {v1, v2}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    const v2, 0x10f0002

    .line 312
    invoke-virtual {v0, v2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v2

    const v3, 0x10f0004

    .line 313
    invoke-virtual {v0, v3}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v0

    .line 314
    const-class v3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/transition/Transition;->addTarget(Ljava/lang/Class;)Landroid/transition/Transition;

    .line 317
    invoke-virtual {p2, v1}, Landroidx/fragment/app/Fragment;->setSharedElementEnterTransition(Ljava/lang/Object;)V

    .line 319
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->setExitTransition(Ljava/lang/Object;)V

    .line 322
    invoke-virtual {p2, v1}, Landroidx/fragment/app/Fragment;->setSharedElementReturnTransition(Ljava/lang/Object;)V

    .line 324
    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->setReturnTransition(Ljava/lang/Object;)V

    .line 325
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->setReenterTransition(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 326
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->setAllowReturnTransitionOverlap(Z)V

    .line 328
    invoke-virtual {p3}, Landroid/widget/ImageView;->getTransitionName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroidx/fragment/app/FragmentTransaction;->addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$clearSelectedCategory$0(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;J)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->adapter:Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->adapter:Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;->findAdapterPositionByEbayCategoryId(J)I

    move-result p1

    .line 221
    iget-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 222
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 223
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 224
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method private static setOutline(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 2
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 600
    invoke-virtual {p1}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    .line 601
    instance-of v1, v0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$RecyclerViewOutlineProvider;

    if-nez v1, :cond_0

    .line 603
    new-instance v0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$RecyclerViewOutlineProvider;

    invoke-direct {v0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$RecyclerViewOutlineProvider;-><init>()V

    .line 604
    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 607
    :cond_0
    new-instance v1, Landroid/graphics/Outline;

    invoke-direct {v1}, Landroid/graphics/Outline;-><init>()V

    .line 608
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 609
    check-cast v0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$RecyclerViewOutlineProvider;

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$RecyclerViewOutlineProvider;->setOutline(Landroid/graphics/Outline;)V

    .line 610
    invoke-virtual {p1}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method


# virtual methods
.method public clearSelectedCategory()V
    .locals 7

    .line 204
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->isCategorySelected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "accessibility"

    .line 212
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    .line 213
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v4, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->selectedCategoryId:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    .line 215
    iget-wide v4, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->selectedCategoryId:J

    .line 216
    new-instance v1, Lcom/ebay/mobile/categorybrowser/-$$Lambda$BrowseCategoriesTileFragment$GLm_GdV2Ap1Zwpd-Kqcxm3B3Pyo;

    invoke-direct {v1, p0, v4, v5}, Lcom/ebay/mobile/categorybrowser/-$$Lambda$BrowseCategoriesTileFragment$GLm_GdV2Ap1Zwpd-Kqcxm3B3Pyo;-><init>(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;J)V

    .line 227
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    :cond_1
    iput-wide v2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->selectedCategoryId:J

    :cond_2
    return-void
.end method

.method protected isCategorySelected()Z
    .locals 4

    .line 170
    iget-wide v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->selectedCategoryId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public navigateTo(J)V
    .locals 2

    .line 182
    iput-wide p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->requestedCategoryId:J

    .line 183
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->dataManager:Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1770

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->dataManager:Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;

    .line 187
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;->getParams()Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$KeyParams;

    move-result-object p1

    iget-object p1, p1, Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$KeyParams;->ebaySite:Lcom/ebay/nautilus/domain/EbaySite;

    sget-object p2, Lcom/ebay/nautilus/domain/EbaySite;->US:Lcom/ebay/nautilus/domain/EbaySite;

    if-ne p1, p2, :cond_0

    .line 189
    new-instance p1, Lcom/ebay/nautilus/domain/data/EbayCategory;

    const-string p2, "eBay Motors"

    invoke-direct {p1, v0, v1, p2}, Lcom/ebay/nautilus/domain/data/EbayCategory;-><init>(JLjava/lang/String;)V

    const/4 p2, 0x1

    .line 191
    iput p2, p1, Lcom/ebay/nautilus/domain/data/EbayCategory;->level:I

    .line 192
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->setSelectedCategory(Lcom/ebay/nautilus/domain/data/EbayCategory;)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->dataManager:Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;

    iget-wide v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->requestedCategoryId:J

    invoke-virtual {p1, v0, v1, p0}, Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;->getPathToCategory(JLcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$Observer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackStackChanged()V
    .locals 2

    .line 444
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 448
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 450
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 451
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->clearSelectedCategory()V

    :cond_1
    return-void
.end method

.method public onCategoriesChanged(Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;JLcom/ebay/nautilus/domain/content/Content;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;",
            "J",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/EbayCategoryNode;",
            ">;)V"
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 349
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 357
    :cond_1
    iget-wide v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->requestedCategoryId:J

    const-wide/16 v3, -0x1

    cmp-long v1, p2, v1

    if-eqz v1, :cond_2

    cmp-long v1, p2, v3

    if-eqz v1, :cond_2

    return-void

    .line 361
    :cond_2
    iget-object v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->progressBar:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez p4, :cond_3

    return-void

    .line 367
    :cond_3
    invoke-virtual {p4}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v1

    .line 368
    invoke-virtual {p4}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/ebay/nautilus/domain/data/EbayCategoryNode;

    .line 371
    invoke-virtual {v1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    instance-of v2, v0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;

    if-eqz v2, :cond_4

    const/4 p1, 0x1

    .line 373
    invoke-virtual {v1, p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->setCanRetry(Z)V

    .line 374
    invoke-static {v0, v5, v1}, Lcom/ebay/common/view/EbayErrorHandler;->handleResultStatus(Landroidx/fragment/app/FragmentActivity;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Z

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_6

    .line 376
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->adapter:Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;

    if-eqz v0, :cond_6

    .line 379
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    cmp-long p2, p2, v3

    if-nez p2, :cond_5

    .line 385
    iget-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->adapter:Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;->getParams()Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$KeyParams;

    move-result-object p1

    iget-object p1, p1, Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$KeyParams;->ebaySite:Lcom/ebay/nautilus/domain/EbaySite;

    iget-object p3, p4, Lcom/ebay/nautilus/domain/data/EbayCategoryNode;->children:[Lcom/ebay/nautilus/domain/data/EbayCategoryNode;

    invoke-virtual {p2, p1, p3}, Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;->setCategories(Lcom/ebay/nautilus/domain/EbaySite;[Lcom/ebay/nautilus/domain/data/EbayCategoryNode;)V

    goto :goto_0

    .line 390
    :cond_5
    iput-wide v3, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->requestedCategoryId:J

    .line 394
    iget-object p1, p4, Lcom/ebay/nautilus/domain/data/EbayCategoryNode;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->setSelectedCategory(Lcom/ebay/nautilus/domain/data/EbayCategory;)V

    :cond_6
    :goto_0
    return-void

    :cond_7
    :goto_1
    return-void
.end method

.method public onCategoriesLoading(Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;J)V
    .locals 2

    .line 336
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 337
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-nez p1, :cond_1

    .line 341
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->progressBar:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;Lcom/ebay/mobile/common/view/ViewModel;)V
    .locals 4

    .line 402
    instance-of p1, p2, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;

    if-nez p1, :cond_0

    return-void

    .line 405
    :cond_0
    check-cast p2, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;

    iget-object p1, p2, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    .line 406
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 407
    iget-boolean v0, p1, Lcom/ebay/nautilus/domain/data/EbayCategory;->isLeaf:Z

    if-eqz v0, :cond_1

    .line 410
    instance-of v0, p2, Lcom/ebay/nautilus/shell/app/FwActivity;

    if-eqz v0, :cond_2

    .line 412
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "Browse"

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 413
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    const-string v1, "catlbl"

    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/EbayCategory;->name:Ljava/lang/String;

    .line 414
    invoke-virtual {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    const-string v1, "catID"

    iget-wide v2, p1, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    .line 415
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v0

    .line 417
    move-object v1, p2

    check-cast v1, Lcom/ebay/nautilus/shell/app/FwActivity;

    invoke-interface {v1}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 420
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v1, "HomePage"

    const-string v2, "browsecat"

    const-string v3, "AllCategories"

    invoke-direct {v0, v1, v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    new-instance v1, Lcom/ebay/mobile/search/SearchIntentBuilder;

    invoke-direct {v1, p2}, Lcom/ebay/mobile/search/SearchIntentBuilder;-><init>(Landroid/content/Context;)V

    iget-wide v2, p1, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/EbayCategory;->name:Ljava/lang/String;

    .line 426
    invoke-virtual {v1, v2, v3, p1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setCategory(JLjava/lang/String;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object p1

    .line 427
    invoke-virtual {p1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setCategoryConstrained()Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object p1

    .line 428
    invoke-virtual {p1, v0}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object p1

    .line 429
    invoke-virtual {p1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 431
    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 437
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->setSelectedCategory(Lcom/ebay/nautilus/domain/data/EbayCategory;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 82
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "selectedCategoryId"

    .line 86
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->selectedCategoryId:J

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const-string/jumbo p1, "selectedCategoryId"

    .line 88
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->selectedCategoryId:J

    goto :goto_0

    .line 90
    :cond_1
    iput-wide v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->selectedCategoryId:J

    .line 92
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->initDataManagers()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p3, 0x0

    const v0, 0x7f0d0088

    .line 98
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0cb4

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->progressBar:Landroid/view/View;

    .line 102
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->getBaseActivity()Lcom/ebay/nautilus/shell/app/BaseActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ebay/nautilus/shell/app/BaseActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p2

    .line 103
    new-instance v0, Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;

    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object p2, p2, Lcom/ebay/nautilus/domain/EbayCountry;->site:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0017

    .line 104
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v0, v1, p2, v2}, Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;-><init>(Landroid/content/Context;Lcom/ebay/nautilus/domain/EbaySite;I)V

    iput-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->adapter:Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;

    .line 105
    iget-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->adapter:Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;

    const/4 v0, 0x1

    new-array v1, v0, [I

    aput v0, v1, p3

    invoke-virtual {p2, p0, v1}, Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;->setOnClickListener(Lcom/ebay/mobile/common/view/ViewModel$OnClickListener;[I)V

    const p2, 0x7f0a0372

    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 108
    iget-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->adapter:Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 109
    iget-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->adapter:Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;

    invoke-virtual {p3}, Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;->createLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 110
    iget-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$GridDecoration;

    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0402f6

    invoke-static {v1, v2}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f08042f

    invoke-direct {p3, v0, v2, v1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$GridDecoration;-><init>(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 112
    iget-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 113
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0700ee

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float p3, p3, v1

    float-to-int p3, p3

    .line 114
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 115
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 116
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 112
    invoke-virtual {p2, p3, v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 118
    iget-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070117

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 121
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 123
    invoke-virtual {p2, p0}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    :cond_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->dataManager:Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;

    .line 137
    iput-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->progressBar:Landroid/view/View;

    .line 138
    iput-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->adapter:Lcom/ebay/mobile/categorybrowser/CategoryTileAdapter;

    .line 140
    invoke-super {p0}, Lcom/ebay/mobile/activities/BaseFragment;->onDestroyView()V

    return-void
.end method

.method protected onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V
    .locals 2

    .line 146
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/BaseFragment;->onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V

    .line 148
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->getBaseActivity()Lcom/ebay/nautilus/shell/app/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/shell/app/BaseActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    .line 149
    new-instance v1, Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$KeyParams;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/EbayCountry;->site:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-direct {v1, v0}, Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$KeyParams;-><init>(Lcom/ebay/nautilus/domain/EbaySite;)V

    invoke-virtual {p1, v1, p0}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->initialize(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;

    iput-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->dataManager:Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 164
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "selectedCategoryId"

    .line 165
    iget-wide v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->selectedCategoryId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public refresh()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->dataManager:Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->dataManager:Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;->loadData(Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$Observer;)V

    :cond_0
    return-void
.end method

.method protected setSelectedCategory(Lcom/ebay/nautilus/domain/data/EbayCategory;)V
    .locals 7

    .line 242
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz p1, :cond_6

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->isCategorySelected()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p1, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    iget-wide v4, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->selectedCategoryId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 252
    invoke-static {v2}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->createFragmentTag(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 255
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->isCategorySelected()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p1, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    iget-wide v4, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->selectedCategoryId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 257
    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "categoryId"

    .line 260
    iget-wide v4, p1, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "categoryName"

    .line 261
    iget-object v4, p1, Lcom/ebay/nautilus/domain/data/EbayCategory;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "categoryLevel"

    .line 262
    iget v4, p1, Lcom/ebay/nautilus/domain/data/EbayCategory;->level:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    iget-object v3, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->dataManager:Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;

    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;->getParams()Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$KeyParams;

    move-result-object v3

    iget-object v3, v3, Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$KeyParams;->ebaySite:Lcom/ebay/nautilus/domain/EbaySite;

    sget-object v4, Lcom/ebay/nautilus/domain/EbaySite;->US:Lcom/ebay/nautilus/domain/EbaySite;

    if-ne v3, v4, :cond_4

    iget-wide v3, p1, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    const-wide/16 v5, 0x1770

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    sget-object v3, Lcom/ebay/nautilus/domain/EbaySite;->MOTOR:Lcom/ebay/nautilus/domain/EbaySite;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->dataManager:Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;

    .line 268
    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;->getParams()Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$KeyParams;

    move-result-object v3

    iget-object v3, v3, Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$KeyParams;->ebaySite:Lcom/ebay/nautilus/domain/EbaySite;

    :goto_0
    const-string v4, "categorySite"

    .line 269
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "categoryImageUrl"

    .line 272
    iget-wide v4, p1, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    .line 273
    invoke-static {v4, v5}, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->getCategoryImageUrl(J)Ljava/lang/String;

    move-result-object v4

    .line 272
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "navigationIdPath"

    .line 277
    invoke-static {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->constructNavigationBreadcrumbs(Lcom/ebay/nautilus/domain/data/EbayCategory;)[Lcom/ebay/nautilus/domain/data/EbayCategory;

    move-result-object v4

    .line 276
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 280
    const-class v3, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 281
    iget v2, p1, Lcom/ebay/nautilus/domain/data/EbayCategory;->level:I

    invoke-static {v2}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->createFragmentTag(I)Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 286
    invoke-direct {p0, v1, v0, p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->addLollipopTransition(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Lcom/ebay/nautilus/domain/data/EbayCategory;)V

    .line 290
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const v3, 0x7f0a06bd

    .line 291
    invoke-virtual {v1, v3, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 296
    :cond_5
    iget-wide v0, p1, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    iput-wide v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->selectedCategoryId:J

    return-void

    :cond_6
    :goto_1
    return-void
.end method
