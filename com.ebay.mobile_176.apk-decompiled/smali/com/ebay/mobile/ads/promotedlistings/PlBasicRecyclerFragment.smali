.class public Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;
.super Lcom/ebay/nautilus/shell/app/BaseRecyclerFragment;
.source "PlBasicRecyclerFragment.java"

# interfaces
.implements Lcom/ebay/mobile/verticals/picker/actions/ActionHandler;
.implements Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager$Observer;
.implements Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;


# static fields
.field public static final ARGUMENT_PAGE_TITLE:Ljava/lang/String; = "page_title"

.field public static final ARGUMENT_RIVER:Ljava/lang/String; = "river"


# instance fields
.field private adapter:Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;

.field private componentBindingInfo:Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;

.field dataManager:Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;

.field private footer:Lcom/ebay/nautilus/shell/uxcomponents/widget/ViewModelConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/nautilus/shell/uxcomponents/widget/ViewModelConsumer<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private river:Ljava/lang/String;

.field private titleFromWidget:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private viewModel:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/ebay/nautilus/shell/app/BaseRecyclerFragment;-><init>()V

    const-string v0, ""

    .line 62
    iput-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->river:Ljava/lang/String;

    return-void
.end method

.method private ensureActivity()Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 232
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/activities/CoreActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 236
    :cond_0
    invoke-virtual {v0}, Lcom/ebay/mobile/activities/CoreActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    .line 237
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    check-cast v0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;

    return-object v0

    :cond_1
    return-object v1
.end method

.method private handleNav(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Ljava/lang/String;)Z
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 283
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->ensureActivity()Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p2

    .line 286
    invoke-static {p2, p1}, Lcom/ebay/mobile/ads/promotedlistings/navigation/PlBasicIntentBuilder;->createWebViewIntent(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 290
    :cond_0
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 292
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x686caf2e

    if-eq v3, v4, :cond_2

    const v4, -0x13d0f4f5

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "campaignSelectionPage"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "adRatePage"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :cond_3
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 299
    :pswitch_0
    invoke-direct {p0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->ensureActivity()Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;

    move-result-object p1

    const-string v0, "PL_BASIC_CAMPAIGN_SELECTION_RIVER"

    invoke-virtual {p1, v0, p2}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;->loadRiver(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 295
    :pswitch_1
    invoke-direct {p0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->ensureActivity()Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;

    move-result-object p1

    const-string v0, "PL_BASIC_AD_RATE_RIVER"

    invoke-virtual {p1, v0, p2}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;->loadRiver(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleOperation(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)Z
    .locals 5

    .line 310
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 312
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x59da5cf1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const v3, -0x4bb77753

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "update_promotion"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "delete_promotion"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 319
    :pswitch_0
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->getProgressContainer()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->dataManager:Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;

    invoke-virtual {p1, p0}, Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;->upsertPromotion(Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager$Observer;)Lcom/ebay/nautilus/domain/content/TaskSync;

    goto :goto_1

    .line 315
    :pswitch_1
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->getProgressContainer()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->dataManager:Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;

    invoke-virtual {p1, p0}, Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;->deletePromotion(Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager$Observer;)Lcom/ebay/nautilus/domain/content/TaskSync;

    return v4

    :cond_3
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$IIqRC31kZgnESpTsSy3DEIhEu2A(Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->onSetLoadState(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic lambda$Mjt52Vj0JDGUUnIivIqXGs1h0Ok(Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->onResultStatus(Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    return-void
.end method

.method public static synthetic lambda$ku4z267q2bTLIODgTsa9X_CGPTs(Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->onTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$qoabSoR0-ZnuD3hDQLtcF9Zs0Kc(Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicRiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->onComponents(Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicRiver;)V

    return-void
.end method

.method private onComponents(Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicRiver;)V
    .locals 3
    .param p1    # Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicRiver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 186
    invoke-interface {p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicRiver;->getMainComponents()Ljava/util/List;

    move-result-object v1

    .line 188
    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 190
    iget-object v2, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->adapter:Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;

    invoke-virtual {v2}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;->getItemCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->adapter:Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;

    invoke-virtual {v2}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;->clear()V

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->adapter:Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;

    invoke-virtual {v2, v1}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;->addAll(Ljava/util/List;)V

    goto :goto_0

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->adapter:Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;

    invoke-virtual {v1}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;->clear()V

    .line 199
    :goto_0
    iget-object v1, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->footer:Lcom/ebay/nautilus/shell/uxcomponents/widget/ViewModelConsumer;

    if-eqz v1, :cond_4

    .line 201
    invoke-interface {p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicRiver;->getFooterComponent()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 202
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->footer:Lcom/ebay/nautilus/shell/uxcomponents/widget/ViewModelConsumer;

    invoke-interface {p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicRiver;->getFooterComponent()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ebay/nautilus/shell/uxcomponents/widget/ViewModelConsumer;->setContents(Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)V

    goto :goto_1

    .line 204
    :cond_2
    iget-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->footer:Lcom/ebay/nautilus/shell/uxcomponents/widget/ViewModelConsumer;

    invoke-interface {p1, v0}, Lcom/ebay/nautilus/shell/uxcomponents/widget/ViewModelConsumer;->setContents(Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)V

    goto :goto_1

    .line 210
    :cond_3
    iget-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->adapter:Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;

    invoke-virtual {p1}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;->clear()V

    .line 212
    iget-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->footer:Lcom/ebay/nautilus/shell/uxcomponents/widget/ViewModelConsumer;

    if-eqz p1, :cond_4

    .line 213
    iget-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->footer:Lcom/ebay/nautilus/shell/uxcomponents/widget/ViewModelConsumer;

    invoke-interface {p1, v0}, Lcom/ebay/nautilus/shell/uxcomponents/widget/ViewModelConsumer;->setContents(Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private onResultStatus(Lcom/ebay/nautilus/kernel/content/ResultStatus;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 220
    invoke-static {p0, v0, p1}, Lcom/ebay/common/view/EbayErrorHandler;->handleResultStatus(Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Z

    :cond_0
    return-void
.end method

.method private onSetLoadState(Ljava/lang/Integer;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 226
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->setLoadState(I)V

    :cond_0
    return-void
.end method

.method private onTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 173
    invoke-direct {p0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->ensureActivity()Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->titleFromWidget:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->ensureActivity()Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->ensureActivity()Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->titleFromWidget:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected getEmptyViewResource()I
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->getErrorViewResource()I

    move-result v0

    return v0
.end method

.method protected getErrorViewResource()I
    .locals 1

    const v0, 0x7f0d0338

    return v0
.end method

.method public handles(Landroid/view/View;Lcom/ebay/mobile/verticals/picker/actions/ActionInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected initializeRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .line 70
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/BaseRecyclerFragment;->initializeRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 73
    invoke-static {p0}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$-CC;->builder(Landroidx/fragment/app/Fragment;)Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$Builder;

    move-result-object v0

    .line 74
    invoke-interface {v0, p0}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$Builder;->setItemClickListener(Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;)Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$Builder;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$Builder;->build()Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->componentBindingInfo:Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;

    .line 76
    new-instance v0, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;

    iget-object v1, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->componentBindingInfo:Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;-><init>(Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;)V

    iput-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->adapter:Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;

    .line 78
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->adapter:Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 80
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 86
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/BaseRecyclerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "river"

    const-string v1, ""

    .line 91
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->river:Ljava/lang/String;

    const-string v0, "page_title"

    .line 92
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->titleFromWidget:Ljava/lang/String;

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->initDataManagers()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 102
    iget-object p3, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->logInfo:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p3, p3, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p3, :cond_0

    .line 103
    iget-object p3, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->logInfo:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v0, "OnCreateView"

    invoke-virtual {p3, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_0
    const p3, 0x7f0d033b

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onFinish(Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/kernel/content/ResultStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/domain/content/DirtyStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 332
    invoke-direct {p0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->ensureActivity()Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 334
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;->getSuccessMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;->finishWithSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V
    .locals 4

    .line 140
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/BaseRecyclerFragment;->onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V

    .line 142
    invoke-direct {p0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->ensureActivity()Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    new-instance v1, Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager$KeyParams;

    invoke-virtual {v0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;->getListingId()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager$KeyParams;-><init>(J)V

    .line 146
    invoke-virtual {p1, v1, p0}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->initialize(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;

    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->dataManager:Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/view/View;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)Z
    .locals 3

    .line 250
    instance-of p1, p2, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCampaignSelectionItemViewModel;

    if-eqz p1, :cond_0

    .line 252
    check-cast p2, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCampaignSelectionItemViewModel;

    invoke-virtual {p2}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCampaignSelectionItemViewModel;->onItemClick()V

    .line 253
    invoke-direct {p0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->ensureActivity()Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;->unloadRiver()V

    const/4 p1, 0x1

    return p1

    .line 257
    :cond_0
    instance-of p1, p2, Lcom/ebay/mobile/ads/promotedlistings/navigation/PlBasicActionHandler;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 259
    check-cast p2, Lcom/ebay/mobile/ads/promotedlistings/navigation/PlBasicActionHandler;

    .line 260
    invoke-interface {p2}, Lcom/ebay/mobile/ads/promotedlistings/navigation/PlBasicActionHandler;->getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 262
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->type:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    if-nez v1, :cond_1

    goto :goto_0

    .line 265
    :cond_1
    sget-object v1, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$type$base$ActionType:[I

    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->type:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 270
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->handleOperation(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)Z

    move-result p1

    return p1

    .line 268
    :pswitch_1
    invoke-interface {p2}, Lcom/ebay/mobile/ads/promotedlistings/navigation/PlBasicActionHandler;->getLandingTitle()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->handleNav(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0

    :cond_3
    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic onLoad(Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/kernel/content/ResultStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/domain/content/DirtyStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager$Observer$-CC;->$default$onLoad(Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager$Observer;Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V

    return-void
.end method

.method protected onRefresh()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->viewModel:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;

    invoke-virtual {v0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->refresh()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 122
    invoke-super {p0}, Lcom/ebay/nautilus/shell/app/BaseRecyclerFragment;->onResume()V

    .line 125
    invoke-direct {p0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->ensureActivity()Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {v0}, Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;->getListingId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->river:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->get(Landroidx/fragment/app/Fragment;Ljava/lang/Long;Ljava/lang/String;)Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->viewModel:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;

    .line 131
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->viewModel:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;

    invoke-virtual {v0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->getTitle()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/ebay/mobile/ads/promotedlistings/-$$Lambda$PlBasicRecyclerFragment$ku4z267q2bTLIODgTsa9X_CGPTs;

    invoke-direct {v1, p0}, Lcom/ebay/mobile/ads/promotedlistings/-$$Lambda$PlBasicRecyclerFragment$ku4z267q2bTLIODgTsa9X_CGPTs;-><init>(Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 132
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->viewModel:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;

    invoke-virtual {v0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->getRiver()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/ebay/mobile/ads/promotedlistings/-$$Lambda$PlBasicRecyclerFragment$qoabSoR0-ZnuD3hDQLtcF9Zs0Kc;

    invoke-direct {v1, p0}, Lcom/ebay/mobile/ads/promotedlistings/-$$Lambda$PlBasicRecyclerFragment$qoabSoR0-ZnuD3hDQLtcF9Zs0Kc;-><init>(Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 133
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->viewModel:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;

    invoke-virtual {v0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->getResultStatus()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/ebay/mobile/ads/promotedlistings/-$$Lambda$PlBasicRecyclerFragment$Mjt52Vj0JDGUUnIivIqXGs1h0Ok;

    invoke-direct {v1, p0}, Lcom/ebay/mobile/ads/promotedlistings/-$$Lambda$PlBasicRecyclerFragment$Mjt52Vj0JDGUUnIivIqXGs1h0Ok;-><init>(Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 134
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->viewModel:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;

    invoke-virtual {v0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->getLoadState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/ebay/mobile/ads/promotedlistings/-$$Lambda$PlBasicRecyclerFragment$IIqRC31kZgnESpTsSy3DEIhEu2A;

    invoke-direct {v1, p0}, Lcom/ebay/mobile/ads/promotedlistings/-$$Lambda$PlBasicRecyclerFragment$IIqRC31kZgnESpTsSy3DEIhEu2A;-><init>(Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 112
    invoke-super {p0, p1, p2}, Lcom/ebay/nautilus/shell/app/BaseRecyclerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a0c26

    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/shell/uxcomponents/widget/ViewModelConsumer;

    iput-object p2, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->footer:Lcom/ebay/nautilus/shell/uxcomponents/widget/ViewModelConsumer;

    .line 116
    iget-object p2, p0, Lcom/ebay/mobile/ads/promotedlistings/PlBasicRecyclerFragment;->componentBindingInfo:Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;

    invoke-interface {p2, p1}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;->set(Landroid/view/View;)V

    return-void
.end method

.method public supports(Lcom/ebay/mobile/verticals/picker/actions/ActionInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
