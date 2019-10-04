.class public Lcom/ebay/common/view/RewriteViewHolder;
.super Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$ItemViewHolder;
.source "RewriteViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$ItemViewHolder<",
        "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private bannerItem:Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;

.field private final owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/shell/app/BaseActivity;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0

    .line 27
    invoke-direct {p0, p2, p3}, Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$ItemViewHolder;-><init>(Landroid/view/View;Landroid/widget/TextView;)V

    .line 29
    iput-object p1, p0, Lcom/ebay/common/view/RewriteViewHolder;->owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    .line 30
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setText(Landroid/widget/TextView;)V
    .locals 6

    .line 50
    iget-object v0, p0, Lcom/ebay/common/view/RewriteViewHolder;->bannerItem:Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;

    invoke-virtual {v0}, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->getRewriteMessage()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object p1, p0, Lcom/ebay/common/view/RewriteViewHolder;->bannerItem:Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->rewriteViewModel:Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    .line 55
    sget-object v1, Lcom/ebay/common/view/RewriteViewHolder$1;->$SwitchMap$com$ebay$common$net$api$search$answers$wire$AnswerResponse$RewriteType:[I

    iget-object v2, p1, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->rewriteType:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    invoke-virtual {v2}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 60
    :pswitch_0
    iget-object v1, p1, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/ebay/common/view/RewriteViewHolder;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ebay/common/view/RewriteViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120809

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    iget-object p1, p1, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    aput-object p1, v4, v0

    .line 63
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onBindView(ILcom/ebay/common/net/api/search/idealmodel/SrpListItem;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 39
    :cond_0
    check-cast p2, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;

    iput-object p2, p0, Lcom/ebay/common/view/RewriteViewHolder;->bannerItem:Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;

    .line 40
    iget-object p1, p0, Lcom/ebay/common/view/RewriteViewHolder;->textView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/ebay/common/view/RewriteViewHolder;->setText(Landroid/widget/TextView;)V

    return-void
.end method

.method protected bridge synthetic onBindView(ILjava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/view/RewriteViewHolder;->onBindView(ILcom/ebay/common/net/api/search/idealmodel/SrpListItem;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 75
    iget-object p1, p0, Lcom/ebay/common/view/RewriteViewHolder;->owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    invoke-virtual {p1}, Lcom/ebay/nautilus/shell/app/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0a06bc

    .line 76
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/search/SearchResultFragment;

    .line 78
    iget-object v0, p0, Lcom/ebay/common/view/RewriteViewHolder;->bannerItem:Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->rewriteViewModel:Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    if-eqz v0, :cond_1

    .line 82
    sget-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->RECALL_FILTERING:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    iget-object v1, p0, Lcom/ebay/common/view/RewriteViewHolder;->bannerItem:Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->rewriteViewModel:Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->rewriteType:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/ebay/common/view/RewriteViewHolder;->bannerItem:Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->rewriteViewModel:Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    iput-boolean v2, v0, Lcom/ebay/common/net/api/search/SearchParameters;->blacklistRecallFiltering:Z

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/view/RewriteViewHolder;->bannerItem:Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->rewriteViewModel:Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/ebay/mobile/search/SearchResultFragment;->restartSearch(Lcom/ebay/common/net/api/search/SearchParameters;ZZ)V

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/ebay/common/view/RewriteViewHolder;->bannerItem:Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->trackingList:Ljava/util/List;

    const/4 v0, 0x0

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;->NAVSRC:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;

    .line 90
    invoke-static {p1, v0, v1}, Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;->getTracking(Ljava/util/List;Lcom/ebay/nautilus/domain/data/experience/type/base/XpTrackingActionType;Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;)Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;

    move-result-object p1

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;->NAVSRC:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;

    .line 89
    invoke-static {p1, v0}, Lcom/ebay/nautilus/domain/analytics/ExperienceTrackingUtil;->convertTracking(Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 93
    iget-object v0, p0, Lcom/ebay/common/view/RewriteViewHolder;->owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    invoke-virtual {v0}, Lcom/ebay/nautilus/shell/app/BaseActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    :cond_2
    return-void
.end method
