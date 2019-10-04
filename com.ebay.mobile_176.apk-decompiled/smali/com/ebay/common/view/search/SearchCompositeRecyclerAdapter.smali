.class public Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;
.super Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter;
.source "SearchCompositeRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter<",
        "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;",
        ">;"
    }
.end annotation


# static fields
.field protected static final VIEW_TYPE_COMPATIBILITY_ANSWER:I = 0x1f

.field public static final VIEW_TYPE_GOOGLE_TEXT_AD:I = 0x19

.field public static final VIEW_TYPE_IMAGE_SEARCH_ANSWER:I = 0x2a

.field public static final VIEW_TYPE_ITEMS_CAROUSEL:I = 0x27

.field public static final VIEW_TYPE_LABELED_ITEM:I = 0x14

.field public static final VIEW_TYPE_LABELED_ITEM_LEFT:I = 0x21

.field public static final VIEW_TYPE_LABELED_ITEM_RIGHT:I = 0x22

.field public static final VIEW_TYPE_MESSAGE_ANSWER:I = 0x25

.field public static final VIEW_TYPE_QUERY_ANSWER_MAG:I = 0x2c

.field protected static final VIEW_TYPE_QUERY_ANSWER_MESSAGE:I = 0x20

.field protected static final VIEW_TYPE_QUERY_ANSWER_PILL_CAROUSEL:I = 0x1c

.field protected static final VIEW_TYPE_QUERY_ANSWER_TEXT_LIST:I = 0x1d

.field protected static final VIEW_TYPE_QUERY_IMAGE_ANSWER_CAROUSEL:I = 0x1e

.field public static final VIEW_TYPE_REGULAR_ITEM:I = 0x13

.field public static final VIEW_TYPE_REGULAR_ITEM_LEFT:I = 0x23

.field public static final VIEW_TYPE_REGULAR_ITEM_RIGHT:I = 0x24

.field public static final VIEW_TYPE_REWRITE_KEYWORD_CONSTRAINT:I = 0x26

.field public static final VIEW_TYPE_SAVED_SEARCH_ANSWER:I = 0x2d

.field public static final VIEW_TYPE_TOGGLE_MESSAGE_ANSWER:I = 0x2b


# instance fields
.field private final activity:Lcom/ebay/nautilus/shell/app/BaseActivity;

.field private answersClickListener:Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;

.field protected final componentClickListener:Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;

.field private final configurationManager:Lcom/ebay/mobile/search/refine/SearchConfiguration$Manager;

.field protected final garageItemClickListener:Lcom/ebay/mobile/compatibility/MotorsCompatibilityGarageItemClickListener;

.field private final headerNewSearch:I

.field private final headerRewriteEnd:I

.field private final headerRewriteKeywordConstraint:I

.field private final headerStatic:I

.field private final headerUndo:I

.field protected final isTile:Z

.field private final pulsarTrackingListener:Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;

.field private final resourceId:I

.field private final searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

.field private final showGridLayout:Z


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/shell/app/BaseActivity;IZLcom/ebay/common/net/api/search/SearchParameters;Lcom/ebay/mobile/compatibility/MotorsCompatibilityGarageItemClickListener;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;Lcom/ebay/mobile/search/refine/SearchConfiguration$Manager;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter;-><init>(Landroid/content/Context;I)V

    .line 98
    iput-object p1, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->activity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    .line 100
    iput p2, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->resourceId:I

    .line 101
    iput-boolean p3, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->isTile:Z

    const p2, 0x7f0d03f7

    .line 103
    iput p2, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->headerNewSearch:I

    const p2, 0x7f0d03fa

    .line 104
    iput p2, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->headerUndo:I

    const p2, 0x7f0d03f9

    .line 105
    iput p2, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->headerStatic:I

    const p2, 0x7f0d03f8

    .line 106
    iput p2, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->headerRewriteEnd:I

    const p2, 0x7f0d0424

    .line 107
    iput p2, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->headerRewriteKeywordConstraint:I

    .line 108
    iput-object p4, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    .line 110
    iput-object p6, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->answersClickListener:Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;

    .line 111
    iput-object p5, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->garageItemClickListener:Lcom/ebay/mobile/compatibility/MotorsCompatibilityGarageItemClickListener;

    .line 112
    iput-object p8, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->componentClickListener:Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;

    .line 113
    iput-object p7, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->pulsarTrackingListener:Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;

    .line 114
    iput-object p9, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->configurationManager:Lcom/ebay/mobile/search/refine/SearchConfiguration$Manager;

    .line 116
    invoke-virtual {p1}, Lcom/ebay/nautilus/shell/app/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/ebay/mobile/search/SearchUtil;->getSearchResultsGridColumns(Landroid/content/res/Resources;)I

    move-result p1

    .line 117
    invoke-static {p1}, Lcom/ebay/mobile/search/SearchUtil;->shouldShowSearchResultsInGrid(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->showGridLayout:Z

    return-void
.end method

.method private getRewriteType(Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;)I
    .locals 1

    .line 198
    iget-object v0, p1, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->rewriteViewModel:Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    iget-boolean v0, v0, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->isRecoursable:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->rewriteViewModel:Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    iget-boolean v0, v0, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->promotedToPrimary:Z

    if-nez v0, :cond_0

    const/16 p1, 0x15

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p1, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->rewriteViewModel:Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    iget-boolean v0, v0, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->promotedToPrimary:Z

    if-eqz v0, :cond_1

    const/16 p1, 0x16

    goto :goto_0

    .line 202
    :cond_1
    iget-boolean v0, p1, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->isSiteConstraint:Z

    if-eqz v0, :cond_2

    const/16 p1, 0x18

    goto :goto_0

    .line 204
    :cond_2
    iget-boolean p1, p1, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;->isKeywordConstraint:Z

    if-eqz p1, :cond_3

    const/16 p1, 0x26

    goto :goto_0

    :cond_3
    const/16 p1, 0x17

    :goto_0
    return p1
.end method

.method private onCreateAdsViewHolder(Landroid/view/ViewGroup;I)Lcom/ebay/common/view/AdsViewHolder;
    .locals 3

    .line 440
    new-instance p2, Lcom/ebay/common/view/AdsViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d03db

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/ebay/common/view/AdsViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method private onCreateCompatibilityAnswerViewHolder(Landroid/view/ViewGroup;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;)Lcom/ebay/common/view/search/SearchBindingViewHolder;
    .locals 3

    .line 307
    sget v0, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_HORIZONTAL_LIST:I

    .line 308
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    .line 309
    invoke-static {v1, v0, p1, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a131c

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 313
    new-instance v0, Lcom/ebay/common/view/search/SearchBindingViewHolder;

    iget-object v1, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->activity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    iget-object v2, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->pulsarTrackingListener:Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/ebay/common/view/search/SearchBindingViewHolder;-><init>(Lcom/ebay/nautilus/shell/app/BaseActivity;Landroidx/databinding/ViewDataBinding;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private onCreateImageSearchViewHolder(Landroid/view/ViewGroup;)Lcom/ebay/common/view/search/SearchBindingViewHolder;
    .locals 4

    .line 483
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d004a

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 487
    new-instance v0, Lcom/ebay/common/view/search/SearchBindingViewHolder;

    iget-object v1, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->activity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    iget-object v2, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->answersClickListener:Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;

    iget-object v3, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->pulsarTrackingListener:Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/ebay/common/view/search/SearchBindingViewHolder;-><init>(Lcom/ebay/nautilus/shell/app/BaseActivity;Landroidx/databinding/ViewDataBinding;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private onCreateItemsCarouselViewHolder(Landroid/view/ViewGroup;)Lcom/ebay/common/view/search/SearchBindingViewHolder;
    .locals 4

    .line 470
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_HORIZONTAL_LIST_DIVIDED:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 474
    new-instance v0, Lcom/ebay/common/view/search/SearchBindingViewHolder;

    iget-object v1, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->activity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    iget-object v2, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->answersClickListener:Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;

    iget-object v3, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->pulsarTrackingListener:Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/ebay/common/view/search/SearchBindingViewHolder;-><init>(Lcom/ebay/nautilus/shell/app/BaseActivity;Landroidx/databinding/ViewDataBinding;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private onCreateMagViewHolder(Landroid/view/ViewGroup;)Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$BaseViewHolder;
    .locals 4

    .line 407
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 409
    invoke-static {v0, p1, v1}, Lcom/ebay/mobile/databinding/SearchGuidanceHorizontalListItemsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/ebay/mobile/databinding/SearchGuidanceHorizontalListItemsBinding;

    move-result-object p1

    .line 410
    iget-object v0, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->configurationManager:Lcom/ebay/mobile/search/refine/SearchConfiguration$Manager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->configurationManager:Lcom/ebay/mobile/search/refine/SearchConfiguration$Manager;

    .line 411
    invoke-interface {v0}, Lcom/ebay/mobile/search/refine/SearchConfiguration$Manager;->getSearchConfiguration()Lcom/ebay/mobile/search/refine/SearchConfiguration;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 413
    :goto_0
    new-instance v1, Lcom/ebay/mobile/search/answers/MagContainerViewHolder;

    iget-object v2, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->componentClickListener:Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;

    iget-object v3, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->pulsarTrackingListener:Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/ebay/mobile/search/answers/MagContainerViewHolder;-><init>(Lcom/ebay/mobile/databinding/SearchGuidanceHorizontalListItemsBinding;Lcom/ebay/mobile/search/refine/SearchConfiguration;Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;)V

    return-object v1
.end method

.method private onCreateMessageAnswerViewHolder(Landroid/view/ViewGroup;)Lcom/ebay/common/view/search/SearchBindingViewHolder;
    .locals 4

    .line 447
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d004e

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 449
    new-instance v1, Lcom/ebay/common/view/search/SearchBindingViewHolder;

    iget-object v2, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->activity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    iget-object v3, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->pulsarTrackingListener:Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/ebay/common/view/search/SearchBindingViewHolder;-><init>(Lcom/ebay/nautilus/shell/app/BaseActivity;Landroidx/databinding/ViewDataBinding;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method private onCreateMotorFinderConfirmationViewHolder(Landroid/view/ViewGroup;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;)Lcom/ebay/common/view/search/SearchBindingViewHolder;
    .locals 9

    .line 323
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d013c

    const/4 v2, 0x0

    .line 324
    invoke-static {v0, v1, p1, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 327
    invoke-virtual {v5}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a131b

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 328
    new-instance p1, Lcom/ebay/mobile/compatibility/answers/MotorTireMessageBindingViewHolder;

    iget-object v4, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->activity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    iget-object v8, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->pulsarTrackingListener:Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/ebay/mobile/compatibility/answers/MotorTireMessageBindingViewHolder;-><init>(Lcom/ebay/nautilus/shell/app/BaseActivity;Landroidx/databinding/ViewDataBinding;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private onCreateQueryAnswerRelatedSearchesViewHolder(Landroid/view/ViewGroup;)Lcom/ebay/common/view/search/SearchBindingViewHolder;
    .locals 4

    .line 418
    sget v0, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_HORIZONTAL_LIST_DIVIDED:I

    .line 422
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    .line 424
    invoke-static {v1, v0, p1, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 426
    new-instance v0, Lcom/ebay/common/view/search/SearchBindingViewHolder;

    iget-object v1, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->activity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    iget-object v2, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->answersClickListener:Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;

    iget-object v3, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->pulsarTrackingListener:Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/ebay/common/view/search/SearchBindingViewHolder;-><init>(Lcom/ebay/nautilus/shell/app/BaseActivity;Landroidx/databinding/ViewDataBinding;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private onCreateQueryAnswersViewHolder(Landroid/view/ViewGroup;I)Lcom/ebay/common/view/search/SearchBindingViewHolder;
    .locals 3

    const/16 v0, 0x1d

    if-eq p2, v0, :cond_1

    const/16 v0, 0x20

    if-eq p2, v0, :cond_0

    .line 389
    sget p2, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_HORIZONTAL_LIST:I

    goto :goto_0

    :cond_0
    const p2, 0x7f0d004c

    goto :goto_0

    .line 386
    :cond_1
    sget p2, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_HORIZONTAL_LIST_DIVIDED:I

    :goto_0
    const/4 v0, 0x0

    .line 395
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    .line 397
    invoke-static {v1, p2, p1, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 399
    new-instance v0, Lcom/ebay/common/view/search/SearchBindingViewHolder;

    iget-object p2, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->activity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    iget-object v1, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->answersClickListener:Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;

    iget-object v2, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->pulsarTrackingListener:Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;

    invoke-direct {v0, p2, p1, v1, v2}, Lcom/ebay/common/view/search/SearchBindingViewHolder;-><init>(Lcom/ebay/nautilus/shell/app/BaseActivity;Landroidx/databinding/ViewDataBinding;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;)V

    :cond_2
    return-object v0
.end method

.method private onCreateRewriteViewHolder(Landroid/view/ViewGroup;I)Lcom/ebay/common/view/RewriteViewHolder;
    .locals 2

    const/16 v0, 0x26

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 354
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->headerRewriteEnd:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 351
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->headerStatic:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 345
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->headerUndo:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 342
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->headerNewSearch:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 348
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->headerRewriteKeywordConstraint:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 357
    :goto_0
    new-instance p2, Lcom/ebay/common/view/RewriteViewHolder;

    iget-object v0, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->activity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p2, v0, p1, v1}, Lcom/ebay/common/view/RewriteViewHolder;-><init>(Lcom/ebay/nautilus/shell/app/BaseActivity;Landroid/view/View;Landroid/widget/TextView;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onCreateSaveSearchViewHolder(Landroid/view/ViewGroup;)Lcom/ebay/common/view/search/SearchBindingViewHolder;
    .locals 4

    .line 496
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0050

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 500
    new-instance v0, Lcom/ebay/common/view/search/SearchBindingViewHolder;

    iget-object v1, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->activity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    iget-object v2, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->answersClickListener:Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;

    iget-object v3, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->pulsarTrackingListener:Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/ebay/common/view/search/SearchBindingViewHolder;-><init>(Lcom/ebay/nautilus/shell/app/BaseActivity;Landroidx/databinding/ViewDataBinding;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private onCreateToggleMessageAnswerViewHolder(Landroid/view/ViewGroup;)Lcom/ebay/common/view/search/SearchBindingViewHolder;
    .locals 4

    .line 456
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0051

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 460
    new-instance v0, Lcom/ebay/common/view/search/SearchBindingViewHolder;

    iget-object v1, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->activity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    iget-object v2, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->answersClickListener:Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;

    iget-object v3, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->pulsarTrackingListener:Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/ebay/common/view/search/SearchBindingViewHolder;-><init>(Lcom/ebay/nautilus/shell/app/BaseActivity;Landroidx/databinding/ViewDataBinding;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private onCreateVerticalPromotionViewHolder(Landroid/view/ViewGroup;)Lcom/ebay/common/view/VerticalPromotionViewHolder;
    .locals 3

    .line 434
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0427

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 435
    new-instance v0, Lcom/ebay/common/view/VerticalPromotionViewHolder;

    iget-object v1, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->activity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    invoke-direct {v0, v1, p1}, Lcom/ebay/common/view/VerticalPromotionViewHolder;-><init>(Lcom/ebay/nautilus/shell/app/BaseActivity;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 7

    .line 128
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_9

    const/16 v1, 0x13

    .line 133
    iget-boolean v2, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->showGridLayout:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    add-int/lit8 v2, p1, -0x1

    .line 134
    invoke-super {p0, v2}, Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;

    iget v2, v2, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->viewType:I

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 135
    :goto_0
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;

    .line 137
    sget-object v4, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter$1;->$SwitchMap$com$ebay$common$net$api$search$idealmodel$SrpListItem$SrpListItemType:[I

    iget-object v5, p1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->itemType:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    invoke-virtual {v5}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/16 v5, 0x23

    const/16 v6, 0x21

    packed-switch v4, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const/16 p1, 0x2d

    return p1

    :pswitch_1
    const/16 p1, 0x2a

    return p1

    :pswitch_2
    const/16 p1, 0x27

    return p1

    :pswitch_3
    const/16 p1, 0x2b

    return p1

    :pswitch_4
    const/16 p1, 0x25

    return p1

    :pswitch_5
    const/16 p1, 0x1b

    return p1

    .line 175
    :pswitch_6
    check-cast p1, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;

    invoke-virtual {p0, p1}, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->getQueryAnswerType(Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;)I

    move-result p1

    return p1

    :pswitch_7
    const/16 p1, 0x19

    return p1

    :pswitch_8
    const/16 p1, 0x29

    return p1

    :pswitch_9
    const/16 p1, 0x28

    return p1

    :pswitch_a
    const/16 p1, 0x1f

    return p1

    .line 165
    :pswitch_b
    check-cast p1, Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;

    invoke-direct {p0, p1}, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->getRewriteType(Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;)I

    move-result p1

    return p1

    :pswitch_c
    const/16 v0, 0x14

    .line 153
    iget-boolean v1, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->showGridLayout:Z

    if-eqz v1, :cond_4

    if-eq v2, v3, :cond_1

    if-eq v2, v6, :cond_2

    :cond_1
    if-ne v2, v5, :cond_3

    :cond_2
    const/16 v6, 0x22

    const/16 v0, 0x22

    goto :goto_1

    :cond_3
    const/16 v0, 0x21

    .line 160
    :goto_1
    iput v0, p1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->viewType:I

    :cond_4
    return v0

    .line 140
    :pswitch_d
    iget-boolean v0, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->showGridLayout:Z

    if-eqz v0, :cond_8

    if-eq v2, v3, :cond_5

    if-eq v2, v6, :cond_6

    :cond_5
    if-ne v2, v5, :cond_7

    :cond_6
    const/16 v0, 0x24

    const/16 v1, 0x24

    goto :goto_2

    :cond_7
    const/16 v1, 0x23

    .line 147
    :goto_2
    iput v1, p1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->viewType:I

    :cond_8
    return v1

    :cond_9
    :goto_3
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getQueryAnswerType(Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;)I
    .locals 1

    .line 214
    sget-object v0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter$1;->$SwitchMap$com$ebay$nautilus$domain$data$answers$AnswersUxComponentType:[I

    iget-object p1, p1, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;->uxComponentType:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/16 p1, 0x1c

    return p1

    :pswitch_0
    const/16 p1, 0x2c

    return p1

    :pswitch_1
    const/16 p1, 0x20

    return p1

    :pswitch_2
    const/16 p1, 0x1e

    return p1

    :pswitch_3
    const/16 p1, 0x1d

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getResourceId()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->resourceId:I

    return v0
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;)Lcom/ebay/common/view/search/SearchBindingViewHolder;
    .locals 10

    .line 367
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 369
    iget v1, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->resourceId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 371
    new-instance p1, Lcom/ebay/common/view/search/SearchItemBindingViewHolder;

    iget-object v4, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->activity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    iget-object v6, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->answersClickListener:Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;

    iget-object v7, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->pulsarTrackingListener:Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;

    iget-object v8, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    iget v9, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->resourceId:I

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/ebay/common/view/search/SearchItemBindingViewHolder;-><init>(Lcom/ebay/nautilus/shell/app/BaseActivity;Landroidx/databinding/ViewDataBinding;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;Lcom/ebay/common/net/api/search/SearchParameters;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic onCreateItemViewHolder(Landroid/view/ViewGroup;)Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$ItemViewHolder;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;)Lcom/ebay/common/view/search/SearchBindingViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$BaseViewHolder;
    .locals 2

    packed-switch p2, :pswitch_data_0

    .line 298
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$BaseViewHolder;

    move-result-object p1

    goto/16 :goto_0

    .line 294
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->onCreateSaveSearchViewHolder(Landroid/view/ViewGroup;)Lcom/ebay/common/view/search/SearchBindingViewHolder;

    move-result-object p1

    goto/16 :goto_0

    .line 274
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->onCreateMagViewHolder(Landroid/view/ViewGroup;)Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$BaseViewHolder;

    move-result-object p1

    goto :goto_0

    .line 285
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->onCreateToggleMessageAnswerViewHolder(Landroid/view/ViewGroup;)Lcom/ebay/common/view/search/SearchBindingViewHolder;

    move-result-object p1

    goto :goto_0

    .line 291
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->onCreateImageSearchViewHolder(Landroid/view/ViewGroup;)Lcom/ebay/common/view/search/SearchBindingViewHolder;

    move-result-object p1

    goto :goto_0

    .line 253
    :pswitch_5
    new-instance p2, Lcom/ebay/mobile/verticals/motor/MotorFinderItemClickListener;

    iget-object v0, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->activity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    iget-object v1, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    invoke-direct {p2, v0, v1}, Lcom/ebay/mobile/verticals/motor/MotorFinderItemClickListener;-><init>(Lcom/ebay/nautilus/shell/app/BaseActivity;Lcom/ebay/common/net/api/search/SearchParameters;)V

    new-instance v0, Lcom/ebay/mobile/verticals/motor/MotorTireMessageClickListener;

    iget-object v1, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->activity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    invoke-direct {v0, v1}, Lcom/ebay/mobile/verticals/motor/MotorTireMessageClickListener;-><init>(Lcom/ebay/nautilus/shell/app/BaseActivity;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->onCreateMotorFinderConfirmationViewHolder(Landroid/view/ViewGroup;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;)Lcom/ebay/common/view/search/SearchBindingViewHolder;

    move-result-object p1

    goto :goto_0

    .line 249
    :pswitch_6
    new-instance p2, Lcom/ebay/mobile/verticals/motor/MotorFinderItemClickListener;

    iget-object v0, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->activity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    iget-object v1, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    invoke-direct {p2, v0, v1}, Lcom/ebay/mobile/verticals/motor/MotorFinderItemClickListener;-><init>(Lcom/ebay/nautilus/shell/app/BaseActivity;Lcom/ebay/common/net/api/search/SearchParameters;)V

    invoke-direct {p0, p1, p2}, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->onCreateCompatibilityAnswerViewHolder(Landroid/view/ViewGroup;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;)Lcom/ebay/common/view/search/SearchBindingViewHolder;

    move-result-object p1

    goto :goto_0

    .line 288
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->onCreateItemsCarouselViewHolder(Landroid/view/ViewGroup;)Lcom/ebay/common/view/search/SearchBindingViewHolder;

    move-result-object p1

    goto :goto_0

    .line 282
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->onCreateMessageAnswerViewHolder(Landroid/view/ViewGroup;)Lcom/ebay/common/view/search/SearchBindingViewHolder;

    move-result-object p1

    goto :goto_0

    .line 245
    :pswitch_9
    new-instance p2, Lcom/ebay/mobile/compatibility/answers/GarageItemClickListenerAdaptor;

    iget-object v0, p0, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->garageItemClickListener:Lcom/ebay/mobile/compatibility/MotorsCompatibilityGarageItemClickListener;

    invoke-direct {p2, v0}, Lcom/ebay/mobile/compatibility/answers/GarageItemClickListenerAdaptor;-><init>(Lcom/ebay/mobile/compatibility/MotorsCompatibilityGarageItemClickListener;)V

    invoke-direct {p0, p1, p2}, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->onCreateCompatibilityAnswerViewHolder(Landroid/view/ViewGroup;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;)Lcom/ebay/common/view/search/SearchBindingViewHolder;

    move-result-object p1

    goto :goto_0

    .line 271
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->onCreateQueryAnswerRelatedSearchesViewHolder(Landroid/view/ViewGroup;)Lcom/ebay/common/view/search/SearchBindingViewHolder;

    move-result-object p1

    goto :goto_0

    .line 279
    :pswitch_b
    invoke-direct {p0, p1, p2}, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->onCreateQueryAnswersViewHolder(Landroid/view/ViewGroup;I)Lcom/ebay/common/view/search/SearchBindingViewHolder;

    move-result-object p1

    goto :goto_0

    .line 268
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->onCreateVerticalPromotionViewHolder(Landroid/view/ViewGroup;)Lcom/ebay/common/view/VerticalPromotionViewHolder;

    move-result-object p1

    goto :goto_0

    .line 265
    :pswitch_d
    invoke-direct {p0, p1, p2}, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->onCreateAdsViewHolder(Landroid/view/ViewGroup;I)Lcom/ebay/common/view/AdsViewHolder;

    move-result-object p1

    goto :goto_0

    .line 262
    :pswitch_e
    invoke-direct {p0, p1, p2}, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->onCreateRewriteViewHolder(Landroid/view/ViewGroup;I)Lcom/ebay/common/view/RewriteViewHolder;

    move-result-object p1

    goto :goto_0

    .line 242
    :pswitch_f
    invoke-virtual {p0, p1}, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;)Lcom/ebay/common/view/search/SearchBindingViewHolder;

    move-result-object p1

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_8
        :pswitch_e
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/ebay/common/view/search/SearchCompositeRecyclerAdapter;->onViewRecycled(Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$BaseViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$BaseViewHolder;)V
    .locals 1

    .line 508
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 510
    iget-object v0, p1, Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$BaseViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lcom/ebay/nautilus/shell/uxcomponents/widget/BaseContainerView;

    if-eqz v0, :cond_0

    .line 511
    iget-object p1, p1, Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$BaseViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/ebay/nautilus/shell/uxcomponents/widget/BaseContainerView;

    invoke-virtual {p1}, Lcom/ebay/nautilus/shell/uxcomponents/widget/BaseContainerView;->saveViewState()V

    :cond_0
    return-void
.end method
