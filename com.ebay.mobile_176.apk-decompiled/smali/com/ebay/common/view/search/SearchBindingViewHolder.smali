.class public Lcom/ebay/common/view/search/SearchBindingViewHolder;
.super Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$ItemViewHolder;
.source "SearchBindingViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/view/search/SearchBindingViewHolder$WatchableItemProvider;,
        Lcom/ebay/common/view/search/SearchBindingViewHolder$ListingViewModelProvider;,
        Lcom/ebay/common/view/search/SearchBindingViewHolder$ContainerViewModelProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$ItemViewHolder<",
        "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;",
        ">;"
    }
.end annotation


# instance fields
.field protected final owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;

.field protected final viewDataBinding:Landroidx/databinding/ViewDataBinding;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/shell/app/BaseActivity;Landroidx/databinding/ViewDataBinding;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;)V
    .locals 2

    .line 54
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$ItemViewHolder;-><init>(Landroid/view/View;Landroid/widget/TextView;)V

    .line 55
    iput-object p1, p0, Lcom/ebay/common/view/search/SearchBindingViewHolder;->owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    .line 56
    iput-object p2, p0, Lcom/ebay/common/view/search/SearchBindingViewHolder;->viewDataBinding:Landroidx/databinding/ViewDataBinding;

    .line 57
    invoke-static {}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfoBasicImpl;->builder()Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$Builder;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$Builder;->setItemClickListener(Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;)Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$Builder;

    move-result-object p1

    .line 58
    invoke-interface {p1, p4}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$Builder;->setPulsarTrackingListener(Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;)Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$Builder;

    move-result-object p1

    .line 59
    invoke-interface {p1}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$Builder;->build()Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/ebay/common/view/search/SearchBindingViewHolder;->viewDataBinding:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;->set(Landroid/view/View;)V

    .line 60
    iget-object p1, p0, Lcom/ebay/common/view/search/SearchBindingViewHolder;->viewDataBinding:Landroidx/databinding/ViewDataBinding;

    const/16 p2, 0x8

    invoke-virtual {p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    return-void
.end method

.method private setRelatedSearchQueryTrackingData(Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)V
    .locals 6

    .line 130
    instance-of v0, p1, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersContainerViewModel;

    if-eqz v0, :cond_1

    .line 132
    check-cast p1, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersContainerViewModel;

    .line 133
    invoke-virtual {p1}, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersContainerViewModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 134
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 137
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 138
    instance-of v3, v2, Lcom/ebay/mobile/search/answers/v1/QueryViewModel;

    if-eqz v3, :cond_0

    .line 140
    check-cast v2, Lcom/ebay/mobile/search/answers/v1/QueryViewModel;

    .line 142
    new-instance v3, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v4, "RelatedSearchesClick"

    invoke-direct {v3, v4}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 143
    invoke-virtual {v3, v4}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v3

    const-string v4, "rsrank"

    add-int/lit8 v5, v1, 0x1

    .line 144
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v3

    const-string v4, "rslength"

    .line 146
    invoke-virtual {v2}, Lcom/ebay/mobile/search/answers/v1/QueryViewModel;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 145
    invoke-virtual {v3, v4, v5}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v3

    .line 147
    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v3

    iput-object v3, v2, Lcom/ebay/mobile/search/answers/v1/QueryViewModel;->legacyMtsTrackingData:Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setTitleMovementMethod(Ljava/lang/CharSequence;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/ebay/common/view/search/SearchBindingViewHolder;->viewDataBinding:Landroidx/databinding/ViewDataBinding;

    instance-of v0, v0, Lcom/ebay/mobile/databinding/AnswersUxMessageBinding;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/ebay/common/view/search/SearchBindingViewHolder;->viewDataBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/ebay/mobile/databinding/AnswersUxMessageBinding;

    .line 189
    iget-object v0, v0, Lcom/ebay/mobile/databinding/AnswersUxMessageBinding;->textviewMessageTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 190
    instance-of p1, p1, Landroid/text/SpannedString;

    if-eqz p1, :cond_0

    .line 191
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onBindView(ILcom/ebay/common/net/api/search/idealmodel/SrpListItem;)V
    .locals 3

    .line 67
    instance-of p1, p2, Lcom/ebay/common/view/search/SearchBindingViewHolder$ContainerViewModelProvider;

    if-eqz p1, :cond_5

    .line 69
    move-object p1, p2

    check-cast p1, Lcom/ebay/common/view/search/SearchBindingViewHolder$ContainerViewModelProvider;

    .line 70
    iget-object v0, p0, Lcom/ebay/common/view/search/SearchBindingViewHolder;->owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    invoke-virtual {v0}, Lcom/ebay/nautilus/shell/app/BaseActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    .line 72
    invoke-interface {p1}, Lcom/ebay/common/view/search/SearchBindingViewHolder$ContainerViewModelProvider;->getComponentViewModel()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object v1

    if-nez v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/ebay/common/view/search/SearchBindingViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/ebay/common/view/search/SearchBindingViewHolder$ContainerViewModelProvider;->setContainerViewModel(Landroid/content/Context;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 74
    :cond_0
    invoke-interface {p1}, Lcom/ebay/common/view/search/SearchBindingViewHolder$ContainerViewModelProvider;->getComponentViewModel()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 79
    iget-boolean v1, p2, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->trackingSent:Z

    if-nez v1, :cond_1

    .line 81
    instance-of v1, p2, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;

    if-eqz v1, :cond_1

    .line 83
    move-object v1, p2

    check-cast v1, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;

    if-eqz v0, :cond_1

    .line 84
    iget-object v1, v1, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;->uxComponentType:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    sget-object v2, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->QUERY_ANSWER_TEXT_LIST:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    if-ne v1, v2, :cond_1

    .line 87
    new-instance v1, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v2, "RelatedSearchesImp"

    invoke-direct {v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 88
    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p2, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->trackingSent:Z

    .line 91
    invoke-direct {p0, p1}, Lcom/ebay/common/view/search/SearchBindingViewHolder;->setRelatedSearchQueryTrackingData(Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)V

    .line 96
    :cond_1
    iget-object p2, p0, Lcom/ebay/common/view/search/SearchBindingViewHolder;->owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    instance-of p2, p2, Lcom/ebay/mobile/search/SearchActivitySync;

    if-eqz p2, :cond_3

    .line 98
    iget-object p2, p0, Lcom/ebay/common/view/search/SearchBindingViewHolder;->owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    check-cast p2, Lcom/ebay/mobile/search/SearchActivitySync;

    .line 100
    instance-of v0, p1, Lcom/ebay/mobile/search/answers/v1/SaveSearchViewModel;

    if-eqz v0, :cond_2

    .line 102
    move-object v0, p1

    check-cast v0, Lcom/ebay/mobile/search/answers/v1/SaveSearchViewModel;

    .line 103
    invoke-interface {p2, v0}, Lcom/ebay/mobile/search/SearchActivitySync;->setSaveSearchViewModel(Lcom/ebay/mobile/search/answers/v1/SaveSearchViewModel;)V

    .line 104
    invoke-interface {p2}, Lcom/ebay/mobile/search/SearchActivitySync;->isFollowing()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/ebay/mobile/search/answers/v1/SaveSearchViewModel;->setIsFollowing(Z)V

    .line 107
    :cond_2
    instance-of p2, p1, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;

    if-eqz p2, :cond_3

    .line 108
    move-object p2, p1

    check-cast p2, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;

    iget-object v0, p0, Lcom/ebay/common/view/search/SearchBindingViewHolder;->owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    invoke-interface {p2, v0}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;->onBind(Landroid/content/Context;)V

    .line 111
    :cond_3
    iget-object p2, p0, Lcom/ebay/common/view/search/SearchBindingViewHolder;->viewDataBinding:Landroidx/databinding/ViewDataBinding;

    const/4 v0, 0x5

    invoke-virtual {p2, v0, p1}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 112
    instance-of p2, p1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;

    if-eqz p2, :cond_4

    .line 114
    check-cast p1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;

    .line 115
    invoke-virtual {p1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/common/view/search/SearchBindingViewHolder;->setTitleMovementMethod(Ljava/lang/CharSequence;)V

    .line 118
    :cond_4
    iget-object p1, p0, Lcom/ebay/common/view/search/SearchBindingViewHolder;->viewDataBinding:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    :cond_5
    return-void
.end method

.method protected bridge synthetic onBindView(ILjava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p2, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/view/search/SearchBindingViewHolder;->onBindView(ILcom/ebay/common/net/api/search/idealmodel/SrpListItem;)V

    return-void
.end method
