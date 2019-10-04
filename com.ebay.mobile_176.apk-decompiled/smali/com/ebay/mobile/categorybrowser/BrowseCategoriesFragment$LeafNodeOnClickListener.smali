.class public final Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$LeafNodeOnClickListener;
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
    name = "LeafNodeOnClickListener"
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

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$LeafNodeOnClickListener;->fragmentReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Lcom/ebay/mobile/common/view/ViewModel;)V
    .locals 5

    .line 488
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$LeafNodeOnClickListener;->fragmentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    if-eqz v0, :cond_9

    .line 489
    invoke-virtual {v0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 492
    :cond_0
    invoke-virtual {v0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 494
    instance-of v2, p2, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;

    if-nez v2, :cond_1

    return-void

    .line 497
    :cond_1
    check-cast p2, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;

    .line 500
    iget v2, p2, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->viewType:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_4

    if-eqz p1, :cond_4

    .line 501
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v2, 0x7f0a12f3

    if-eq p1, v2, :cond_4

    .line 503
    iget-object p1, p2, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    if-nez p1, :cond_2

    return-void

    .line 507
    :cond_2
    iget p2, p1, Lcom/ebay/nautilus/domain/data/EbayCategory;->level:I

    invoke-static {p2}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->createFragmentTag(I)Ljava/lang/String;

    move-result-object p2

    .line 509
    invoke-virtual {v0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 512
    iget p1, p1, Lcom/ebay/nautilus/domain/data/EbayCategory;->level:I

    if-ge p1, v4, :cond_3

    .line 514
    invoke-virtual {v0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object p1

    const v2, 0x10f0004

    .line 515
    invoke-virtual {p1, v2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object p1

    .line 517
    invoke-virtual {v0, p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->setReturnTransition(Ljava/lang/Object;)V

    .line 520
    :cond_3
    invoke-virtual {v1, p2, v4}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    return-void

    .line 525
    :cond_4
    iget-object p1, p2, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    iget p1, p1, Lcom/ebay/nautilus/domain/data/EbayCategory;->level:I

    if-le p1, v4, :cond_8

    invoke-virtual {p2}, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->isCategorySearchInvalid()Z

    move-result p1

    if-eqz p1, :cond_5

    goto/16 :goto_1

    .line 529
    :cond_5
    instance-of p1, v1, Lcom/ebay/nautilus/shell/app/FwActivity;

    if-eqz p1, :cond_6

    .line 531
    new-instance p1, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    const-string v2, "Browse"

    sget-object v3, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {p1, v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    const-string v2, "catlbl"

    .line 533
    iget-object v3, p2, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/EbayCategory;->name:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "catID"

    .line 534
    iget-object v3, p2, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    iget-wide v3, v3, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    move-object v2, v1

    check-cast v2, Lcom/ebay/nautilus/shell/app/FwActivity;

    invoke-interface {v2}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 538
    :cond_6
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object p1

    .line 539
    sget-object v2, Lcom/ebay/mobile/dcs/Dcs$Browse$B;->feature:Lcom/ebay/mobile/dcs/Dcs$Browse$B;

    invoke-interface {p1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 543
    invoke-virtual {v0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->isInMotors()Z

    move-result p1

    if-nez p1, :cond_7

    .line 545
    new-instance p1, Lcom/ebay/mobile/browse/BrowseIntentBuilder;

    invoke-static {}, Lcom/ebay/common/net/api/browse/BrowseParameters;->getEmptyBrowseParameters()Lcom/ebay/common/net/api/browse/BrowseParameters;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/ebay/mobile/browse/BrowseIntentBuilder;-><init>(Landroid/content/Context;Lcom/ebay/common/net/api/browse/BrowseParameters;)V

    new-instance v0, Lcom/ebay/common/model/search/EbayCategorySummary;

    iget-object v2, p2, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    iget-wide v2, v2, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    iget-object p2, p2, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/EbayCategory;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3, p2}, Lcom/ebay/common/model/search/EbayCategorySummary;-><init>(JLjava/lang/String;)V

    .line 546
    invoke-virtual {p1, v0}, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->setCategory(Lcom/ebay/common/model/search/EbayCategorySummary;)Lcom/ebay/mobile/browse/BrowseIntentBuilder;

    move-result-object p1

    new-instance p2, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v0, "Browse"

    const-string v2, "browsecat"

    invoke-direct {p2, v0, v2}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-virtual {p1, p2}, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Lcom/ebay/mobile/browse/BrowseIntentBuilder;

    move-result-object p1

    .line 549
    invoke-virtual {p1}, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 553
    :cond_7
    new-instance p1, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v0, "HomePage"

    const-string v2, "browsecat"

    const-string v3, "AllCategories"

    invoke-direct {p1, v0, v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    new-instance v0, Lcom/ebay/mobile/search/SearchIntentBuilder;

    invoke-direct {v0, v1}, Lcom/ebay/mobile/search/SearchIntentBuilder;-><init>(Landroid/content/Context;)V

    iget-object v2, p2, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    iget-wide v2, v2, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    iget-object p2, p2, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/EbayCategory;->name:Ljava/lang/String;

    .line 559
    invoke-virtual {v0, v2, v3, p2}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setCategory(JLjava/lang/String;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object p2

    .line 560
    invoke-virtual {p2}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setCategoryConstrained()Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object p2

    .line 561
    invoke-virtual {p2, p1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object p1

    .line 562
    invoke-virtual {p1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 565
    :goto_0
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_8
    :goto_1
    return-void

    :cond_9
    :goto_2
    return-void
.end method
