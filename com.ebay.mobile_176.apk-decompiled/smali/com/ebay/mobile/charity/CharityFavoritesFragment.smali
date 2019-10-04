.class public Lcom/ebay/mobile/charity/CharityFavoritesFragment;
.super Lcom/ebay/nautilus/shell/app/BaseDmDialogFragment;
.source "CharityFavoritesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ebay/app/DialogFragmentCallback;
.implements Lcom/ebay/mobile/charity/CharitySelectionListener;
.implements Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/charity/CharityFavoritesFragment$ErrorHandler;,
        Lcom/ebay/mobile/charity/CharityFavoritesFragment$OnStartCharitySearch;
    }
.end annotation


# static fields
.field public static final CHARITY_SELECTED_ID:Ljava/lang/String; = "charity_selected_id"

.field public static final CHARITY_SELECTION_ENABLED:Ljava/lang/String; = "charity_selection_enabled"

.field public static final CHARITY_SELECTION_LABEL:Ljava/lang/String; = "charity_selection_label"


# instance fields
.field private cancelEdit:Landroid/view/View;

.field private charityList:Landroid/widget/LinearLayout;

.field private charityListContainer:Landroid/view/View;

.field private charityListLabel:Landroid/widget/TextView;

.field private chevronDown:Landroid/view/View;

.field private chevronUp:Landroid/view/View;

.field private edit:Landroid/view/View;

.field private errorLayout:Landroid/view/View;

.field private favorites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/Nonprofit;",
            ">;"
        }
    .end annotation
.end field

.field private helpView:Landroid/view/View;

.field private isEditInProgress:Z

.field private isSearchVisible:Z

.field protected isSelectionEnabled:Z

.field private learnMoreView:Landroid/view/View;

.field private mainContainerLayout:Landroid/view/View;

.field protected nonprofitDataManager:Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager;

.field private progress:Landroid/view/View;

.field protected scrollContainer:Landroid/widget/ScrollView;

.field protected searchContainer:Landroid/view/View;

.field protected searchText:Landroidx/appcompat/widget/SearchView;

.field private selectedCharity:Ljava/lang/String;

.field private startWithHelpOpen:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/ebay/nautilus/shell/app/BaseDmDialogFragment;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->favorites:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/charity/CharityFavoritesFragment;)Z
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->hideSearchFragment()Z

    move-result p0

    return p0
.end method

.method private hideSearchFragment()Z
    .locals 2

    .line 690
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "charity_search"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->hideSearch()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$renderCharity$1(Landroid/widget/ProgressBar;Lcom/ebay/android/widget/RemoteImageView;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/image/ImageData;)V
    .locals 0

    const/16 p1, 0x8

    .line 616
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$showInformation$0(Lcom/ebay/mobile/charity/CharityFavoritesFragment;)V
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->scrollContainer:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method

.method private renderCharities(Landroid/widget/LinearLayout;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/Nonprofit;",
            ">;)V"
        }
    .end annotation

    .line 547
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 548
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/Nonprofit;

    .line 550
    iget-object v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->charityList:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->renderCharity(Lcom/ebay/nautilus/domain/data/Nonprofit;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 551
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private renderCharity(Lcom/ebay/nautilus/domain/data/Nonprofit;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 604
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d00af

    invoke-virtual {v0, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a0708

    .line 605
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ebay/android/widget/RemoteImageView;

    const v2, 0x7f0a0713

    .line 606
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0709

    .line 607
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    const v4, 0x7f0a0d8e

    .line 608
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a0712

    .line 609
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 611
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 612
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    new-instance v6, Lcom/ebay/mobile/charity/-$$Lambda$CharityFavoritesFragment$pF_JCW49jMAN58jWEFOWVDCpWPg;

    invoke-direct {v6, v3}, Lcom/ebay/mobile/charity/-$$Lambda$CharityFavoritesFragment$pF_JCW49jMAN58jWEFOWVDCpWPg;-><init>(Landroid/widget/ProgressBar;)V

    invoke-virtual {v0, v6}, Lcom/ebay/android/widget/RemoteImageView;->setOnRemoteImageLoadedListener(Lcom/ebay/android/widget/RemoteImageView$OnRemoteImageLoadedListener;)V

    .line 617
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/Nonprofit;->getLogoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ebay/android/widget/RemoteImageView;->setRemoteImageUrl(Ljava/lang/String;)V

    .line 618
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/Nonprofit;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    invoke-virtual {v4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 622
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    iget-boolean v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isSelectionEnabled:Z

    const/16 v2, 0x8

    if-nez v0, :cond_1

    .line 626
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 627
    iget-boolean p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isEditInProgress:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 631
    :cond_1
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/Nonprofit;->nonprofitId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->selectedCharity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 632
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 634
    :cond_2
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-object p2
.end method

.method private showEmpty(Z)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 490
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->charityListLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 491
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->charityList:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 492
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->charityListContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 493
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->learnMoreView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 494
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->helpView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 495
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->edit:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 496
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->cancelEdit:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 500
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->charityListLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 501
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->charityList:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 502
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->edit:Landroid/view/View;

    iget-boolean v2, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isSelectionEnabled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isEditInProgress:Z

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 503
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->cancelEdit:Landroid/view/View;

    iget-boolean v2, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isSelectionEnabled:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isEditInProgress:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 504
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->charityListContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->learnMoreView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 506
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->helpView:Landroid/view/View;

    iget-object v2, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->chevronUp:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private showError(Lcom/ebay/nautilus/kernel/content/ResultStatus;)V
    .locals 3

    .line 517
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->mainContainerLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->progress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 519
    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getFirstError()Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    move-result-object v0

    .line 521
    iget-object v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->errorLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    new-instance v1, Lcom/ebay/mobile/charity/CharityFavoritesFragment$ErrorHandler;

    iget-object v2, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->errorLayout:Landroid/view/View;

    invoke-direct {v1, p0, v2}, Lcom/ebay/mobile/charity/CharityFavoritesFragment$ErrorHandler;-><init>(Lcom/ebay/mobile/charity/CharityFavoritesFragment;Landroid/view/View;)V

    .line 524
    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->canRetry()Z

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/ebay/mobile/charity/CharityFavoritesFragment$ErrorHandler;->showError(Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;Z)V

    :cond_0
    return-void
.end method

.method private showInformation(Z)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 467
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->chevronUp:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 468
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->chevronDown:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 469
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->helpView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 470
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->scrollContainer:Landroid/widget/ScrollView;

    new-instance v0, Lcom/ebay/mobile/charity/-$$Lambda$CharityFavoritesFragment$gH00CwTg9jpplRVq0Xrji0Itn3E;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/charity/-$$Lambda$CharityFavoritesFragment$gH00CwTg9jpplRVq0Xrji0Itn3E;-><init>(Lcom/ebay/mobile/charity/CharityFavoritesFragment;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 474
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->chevronUp:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->chevronDown:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 476
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->helpView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateCharities(Landroid/widget/LinearLayout;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/Nonprofit;",
            ">;)V"
        }
    .end annotation

    .line 564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 565
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 568
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 569
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/domain/data/Nonprofit;

    .line 570
    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/Nonprofit;->externalId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 573
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    const/4 v4, 0x0

    .line 574
    :goto_1
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 576
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 577
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ebay/nautilus/domain/data/Nonprofit;

    .line 579
    iget-object v7, v6, Lcom/ebay/nautilus/domain/data/Nonprofit;->externalId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object v6, v6, Lcom/ebay/nautilus/domain/data/Nonprofit;->externalId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 581
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 585
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/Nonprofit;

    .line 587
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/Nonprofit;->externalId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 588
    iget-object v4, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->charityList:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v4}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->renderCharity(Lcom/ebay/nautilus/domain/data/Nonprofit;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 591
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 592
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_3

    .line 593
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 594
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_6
    return-void
.end method

.method private updateEditFavorites(Z)V
    .locals 5

    .line 648
    iput-boolean p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isEditInProgress:Z

    .line 650
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->edit:Landroid/view/View;

    iget-boolean v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isSelectionEnabled:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isEditInProgress:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 651
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->cancelEdit:Landroid/view/View;

    iget-boolean v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isSelectionEnabled:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isEditInProgress:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 652
    :goto_2
    iget-object v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->charityList:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 654
    iget-object v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->charityList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0a0d8e

    .line 655
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v4, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isEditInProgress:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    const/16 v4, 0x8

    :goto_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    .line 659
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->cancelEdit:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_4

    .line 661
    :cond_4
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->edit:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :goto_4
    return-void
.end method


# virtual methods
.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "GivingWorksHome"

    return-object v0
.end method

.method protected hideSearch()V
    .locals 2

    .line 707
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "charity_search"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 711
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 712
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->searchContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 715
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->scrollContainer:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 716
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->scrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected invalidate()V
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->progress:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->errorLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->mainContainerLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->nonprofitDataManager:Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager;->forceReloadData()V

    return-void
.end method

.method protected onBackPressed()V
    .locals 5

    .line 778
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->favorites:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->favorites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 779
    :goto_0
    iget-object v2, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->edit:Landroid/view/View;

    iget-boolean v3, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isSelectionEnabled:Z

    const/16 v4, 0x8

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isEditInProgress:Z

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 780
    iget-object v2, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->cancelEdit:Landroid/view/View;

    iget-boolean v3, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isSelectionEnabled:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isEditInProgress:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onCharitySelected(Lcom/ebay/nautilus/domain/data/Nonprofit;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 424
    :goto_0
    iget-object v2, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->favorites:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 425
    iget-object v2, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->favorites:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/Nonprofit;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/Nonprofit;->nonprofitId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/Nonprofit;->nonprofitId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_4

    .line 434
    iget-object v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->progress:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->mainContainerLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 436
    iget-object v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->nonprofitDataManager:Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager;

    invoke-virtual {v1, p1}, Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager;->addNonprofit(Lcom/ebay/nautilus/domain/data/Nonprofit;)V

    .line 437
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->edit:Landroid/view/View;

    iget-boolean v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isSelectionEnabled:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isEditInProgress:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 438
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->cancelEdit:Landroid/view/View;

    iget-boolean v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isSelectionEnabled:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isEditInProgress:Z

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/16 v0, 0x8

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 441
    :cond_4
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 342
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/Nonprofit;

    .line 343
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->nonprofitDataManager:Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager;

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager;->removeNonprofit(Lcom/ebay/nautilus/domain/data/Nonprofit;)V

    goto :goto_0

    .line 308
    :sswitch_1
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->dismiss()V

    goto :goto_0

    .line 304
    :sswitch_2
    invoke-direct {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->hideSearchFragment()Z

    move-result p1

    if-nez p1, :cond_2

    .line 305
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->dismiss()V

    goto :goto_0

    .line 317
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ebay/mobile/util/Util;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 319
    iget-boolean v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isEditInProgress:Z

    if-nez v0, :cond_2

    .line 322
    iget-boolean v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isSelectionEnabled:Z

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 325
    instance-of v1, v0, Lcom/ebay/mobile/charity/CharitySelectionListener;

    if-eqz v1, :cond_2

    .line 326
    check-cast v0, Lcom/ebay/mobile/charity/CharitySelectionListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/Nonprofit;

    invoke-interface {v0, p1}, Lcom/ebay/mobile/charity/CharitySelectionListener;->onCharitySelected(Lcom/ebay/nautilus/domain/data/Nonprofit;)V

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/Nonprofit;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->showCharityInfo(Lcom/ebay/nautilus/domain/data/Nonprofit;)V

    goto :goto_0

    .line 311
    :sswitch_4
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->chevronUp:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 312
    invoke-direct {p0, v2}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->showInformation(Z)V

    goto :goto_0

    .line 314
    :cond_1
    invoke-direct {p0, v1}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->showInformation(Z)V

    goto :goto_0

    .line 334
    :sswitch_5
    invoke-direct {p0, v1}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->updateEditFavorites(Z)V

    goto :goto_0

    .line 338
    :sswitch_6
    invoke-direct {p0, v2}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->updateEditFavorites(Z)V

    :cond_2
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a06fc -> :sswitch_6
        0x7f0a06fd -> :sswitch_5
        0x7f0a070d -> :sswitch_4
        0x7f0a070e -> :sswitch_3
        0x7f0a0a1d -> :sswitch_2
        0x7f0a0a1e -> :sswitch_1
        0x7f0a0d8e -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/BaseDmDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const v0, 0x7f130015

    .line 107
    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->setStyle(II)V

    .line 108
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->initDataManagers()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 122
    new-instance p1, Lcom/ebay/mobile/charity/CharityFavoritesFragment$1;

    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getTheme()I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Lcom/ebay/mobile/charity/CharityFavoritesFragment$1;-><init>(Lcom/ebay/mobile/charity/CharityFavoritesFragment;Landroid/content/Context;I)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7f0d00ad

    .line 139
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 141
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->setupViews(Landroid/view/View;)V

    .line 144
    iput-boolean v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->startWithHelpOpen:Z

    const/4 p2, 0x1

    if-eqz p3, :cond_1

    const-string v1, "is_help_visible"

    .line 148
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    iput-boolean p2, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->startWithHelpOpen:Z

    :cond_0
    const-string v1, "is_selection_enabled"

    .line 152
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isSelectionEnabled:Z

    const-string v1, "is_edit_in_progress"

    .line 153
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isEditInProgress:Z

    const-string v1, "charity_selected_id"

    .line 154
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->selectedCharity:Ljava/lang/String;

    const-string v1, "is_search_visible"

    .line 160
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isSearchVisible:Z

    goto :goto_1

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 164
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v1, "charity_selection_label"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    const/4 v1, -0x1

    if-le p3, v1, :cond_3

    if-eqz p3, :cond_2

    .line 168
    iget-object v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->charityListLabel:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 170
    :cond_2
    iget-object p3, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->charityListLabel:Landroid/widget/TextView;

    const v1, 0x7f120562

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v1, "charity_selection_enabled"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isSelectionEnabled:Z

    .line 174
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v1, "charity_selected_id"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->selectedCharity:Ljava/lang/String;

    .line 177
    :cond_4
    :goto_1
    iget-object p3, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->edit:Landroid/view/View;

    iget-boolean v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isSelectionEnabled:Z

    const/16 v2, 0x8

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isEditInProgress:Z

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object p3, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->cancelEdit:Landroid/view/View;

    iget-boolean v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isSelectionEnabled:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isEditInProgress:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object p3, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->scrollContainer:Landroid/widget/ScrollView;

    iget-boolean v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isSearchVisible:Z

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_4

    :cond_7
    const/16 v1, 0x8

    :goto_4
    invoke-virtual {p3, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 181
    iget-object p3, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->searchContainer:Landroid/view/View;

    iget-boolean v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isSearchVisible:Z

    if-eqz v1, :cond_8

    const/4 v2, 0x0

    :cond_8
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object p3, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->searchText:Landroidx/appcompat/widget/SearchView;

    const v1, 0x7f0a0e70

    invoke-virtual {p3, v1}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 184
    new-array p2, p2, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, p2, v0

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-object p1
.end method

.method public onDialogFragmentResult(Landroidx/fragment/app/DialogFragment;II)V
    .locals 0

    const/4 p1, 0x1

    if-eq p3, p1, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method protected onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V
    .locals 1

    .line 294
    sget-object v0, Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager;->KEY:Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager$KeyParams;

    invoke-virtual {p1, v0, p0}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->initialize(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager;

    iput-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->nonprofitDataManager:Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager;

    .line 295
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->nonprofitDataManager:Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager;->forceReloadData()V

    return-void
.end method

.method public onNonProfitsChanged(Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager;Lcom/ebay/nautilus/domain/content/Content;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/Nonprofit;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 374
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    .line 377
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p1

    .line 378
    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getMessages()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/common/util/EbayErrorUtil;->userNotLoggedIn(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/mobile/MyApp;->signOutForIafTokenFailure(Landroid/app/Activity;)V

    .line 382
    :cond_1
    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    invoke-direct {p0, p1}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->showError(Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    return-void

    .line 388
    :cond_2
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->favorites:Ljava/util/List;

    .line 389
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->progress:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 390
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->errorLayout:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 391
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->mainContainerLayout:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 394
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->favorites:Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->favorites:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 401
    :cond_3
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->charityList:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_4

    .line 403
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->charityList:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->favorites:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->renderCharities(Landroid/widget/LinearLayout;Ljava/util/List;)V

    .line 404
    iget-boolean p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->startWithHelpOpen:Z

    if-eqz p1, :cond_5

    .line 405
    invoke-direct {p0, v0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->showInformation(Z)V

    goto :goto_0

    .line 408
    :cond_4
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->charityList:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->favorites:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->updateCharities(Landroid/widget/LinearLayout;Ljava/util/List;)V

    .line 410
    :cond_5
    :goto_0
    invoke-direct {p0, p2}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->showEmpty(Z)V

    goto :goto_2

    .line 395
    :cond_6
    :goto_1
    invoke-direct {p0, v0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->showEmpty(Z)V

    :goto_2
    return-void

    :cond_7
    :goto_3
    return-void
.end method

.method public onPause()V
    .locals 5

    .line 263
    invoke-super {p0}, Lcom/ebay/nautilus/shell/app/BaseDmDialogFragment;->onPause()V

    .line 264
    iget-boolean v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->startWithHelpOpen:Z

    if-nez v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->charityList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 270
    iget-object v3, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->charityList:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 271
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/Nonprofit;

    .line 272
    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/Nonprofit;->nonprofitId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_0

    const-string v3, ";"

    .line 274
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 277
    instance-of v3, v2, Lcom/ebay/nautilus/shell/app/FwActivity;

    if-eqz v3, :cond_2

    .line 278
    new-instance v3, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v4, "MyCharities"

    invoke-direct {v3, v4}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 279
    invoke-virtual {v3, v4}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v3

    const-string v4, "favchar"

    .line 280
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    const-string v3, "charityID"

    .line 281
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v0

    check-cast v2, Lcom/ebay/nautilus/shell/app/FwActivity;

    .line 283
    invoke-interface {v2}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 247
    invoke-super {p0}, Lcom/ebay/nautilus/shell/app/BaseDmDialogFragment;->onResume()V

    .line 249
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 250
    instance-of v1, v0, Lcom/ebay/nautilus/shell/app/FwActivity;

    if-eqz v1, :cond_0

    .line 251
    new-instance v1, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getTrackingEventName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 252
    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v1

    check-cast v0, Lcom/ebay/nautilus/shell/app/FwActivity;

    .line 254
    invoke-interface {v0}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 256
    :cond_0
    iget-boolean v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isSearchVisible:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 257
    iput-boolean v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isSearchVisible:Z

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 234
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/BaseDmDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "charity_selected_id"

    .line 235
    iget-object v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->selectedCharity:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "is_help_visible"

    .line 236
    iget-object v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->chevronUp:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "is_selection_enabled"

    .line 237
    iget-boolean v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isSelectionEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "is_edit_in_progress"

    .line 238
    iget-boolean v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->isEditInProgress:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "charity_search"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v1, "is_search_visible"

    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected setFavorites(Ljava/util/List;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/Nonprofit;",
            ">;)V"
        }
    .end annotation

    .line 447
    iput-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->favorites:Ljava/util/List;

    return-void
.end method

.method protected setupViews(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a0e71

    .line 191
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    iput-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->searchText:Landroidx/appcompat/widget/SearchView;

    .line 192
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->searchText:Landroidx/appcompat/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    .line 193
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->searchText:Landroidx/appcompat/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 194
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->searchText:Landroidx/appcompat/widget/SearchView;

    new-instance v1, Lcom/ebay/mobile/charity/CharityFavoritesFragment$2;

    invoke-direct {v1, p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment$2;-><init>(Lcom/ebay/mobile/charity/CharityFavoritesFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    const v0, 0x7f0a0454

    .line 210
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->mainContainerLayout:Landroid/view/View;

    const v0, 0x7f0a0710

    .line 211
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->searchContainer:Landroid/view/View;

    const v0, 0x7f0a0e45

    .line 212
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->scrollContainer:Landroid/widget/ScrollView;

    const v0, 0x7f0a05f5

    .line 213
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->errorLayout:Landroid/view/View;

    .line 214
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->errorLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->errorLayout:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f0a0703

    .line 216
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->helpView:Landroid/view/View;

    const v0, 0x7f0a070d

    .line 217
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->learnMoreView:Landroid/view/View;

    const v1, 0x7f0a070c

    .line 218
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->chevronUp:Landroid/view/View;

    const v1, 0x7f0a070b

    .line 219
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->chevronDown:Landroid/view/View;

    const v1, 0x7f0a0cb2

    .line 220
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->progress:Landroid/view/View;

    const v1, 0x7f0a0700

    .line 221
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->charityListContainer:Landroid/view/View;

    const v1, 0x7f0a0701

    .line 222
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->charityListLabel:Landroid/widget/TextView;

    const v1, 0x7f0a06ff

    .line 223
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->charityList:Landroid/widget/LinearLayout;

    .line 224
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a06fd

    .line 225
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->edit:Landroid/view/View;

    .line 226
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->edit:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a06fc

    .line 227
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->cancelEdit:Landroid/view/View;

    .line 228
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->cancelEdit:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected showCharityInfo(Lcom/ebay/nautilus/domain/data/Nonprofit;)V
    .locals 3

    .line 672
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "charity_nonprofit"

    .line 673
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "charity_selection_enabled"

    const/4 v2, 0x0

    .line 674
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 677
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 678
    instance-of v2, v1, Lcom/ebay/mobile/charity/OnShowCharityInfo;

    if-eqz v2, :cond_0

    .line 679
    check-cast v1, Lcom/ebay/mobile/charity/OnShowCharityInfo;

    invoke-interface {v1, p1, v0}, Lcom/ebay/mobile/charity/OnShowCharityInfo;->onShowCharityInfo(Lcom/ebay/nautilus/domain/data/Nonprofit;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected startKeywordSearch()V
    .locals 4

    .line 723
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->searchText:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 724
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_1

    .line 726
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 729
    new-instance v1, Lcom/ebay/app/AlertDialogFragment$Builder;

    invoke-direct {v1}, Lcom/ebay/app/AlertDialogFragment$Builder;-><init>()V

    const v3, 0x7f12021f

    .line 730
    invoke-virtual {v1, v3}, Lcom/ebay/app/AlertDialogFragment$Builder;->setTitle(I)Lcom/ebay/app/AlertDialogFragment$Builder;

    const v3, 0x7f12021e

    .line 731
    invoke-virtual {v1, v3}, Lcom/ebay/app/AlertDialogFragment$Builder;->setMessage(I)Lcom/ebay/app/AlertDialogFragment$Builder;

    const v3, 0x7f1208ab

    .line 732
    invoke-virtual {p0, v3}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ebay/app/AlertDialogFragment$Builder;->setPositiveButton(Ljava/lang/CharSequence;)Lcom/ebay/app/AlertDialogFragment$Builder;

    .line 733
    invoke-virtual {v1, v2}, Lcom/ebay/app/AlertDialogFragment$Builder;->createFromActivity(I)Lcom/ebay/app/AlertDialogFragment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/ebay/app/AlertDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 739
    :cond_1
    invoke-direct {p0, v2}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->updateEditFavorites(Z)V

    .line 742
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->startSearch(Ljava/lang/String;)V

    return-void
.end method

.method protected startSearch(Ljava/lang/String;)V
    .locals 2

    .line 759
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->scrollContainer:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 760
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->searchContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 762
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "charity_search"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 766
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "charity_search_keywords"

    .line 767
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 769
    instance-of v1, p1, Lcom/ebay/mobile/charity/CharityFavoritesFragment$OnStartCharitySearch;

    if-eqz v1, :cond_1

    .line 770
    check-cast p1, Lcom/ebay/mobile/charity/CharityFavoritesFragment$OnStartCharitySearch;

    invoke-interface {p1, v0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment$OnStartCharitySearch;->onStartCharitySearch(Landroid/os/Bundle;)V

    goto :goto_0

    .line 773
    :cond_0
    check-cast v0, Lcom/ebay/mobile/charity/CharitySearchFragment;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/charity/CharitySearchFragment;->startKeywordSearch(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
