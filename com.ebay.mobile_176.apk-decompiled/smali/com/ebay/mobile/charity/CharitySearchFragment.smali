.class public Lcom/ebay/mobile/charity/CharitySearchFragment;
.super Lcom/ebay/mobile/activities/BaseFragment;
.source "CharitySearchFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/ebay/app/DialogFragmentCallback;
.implements Lcom/ebay/common/net/AsyncList$NetworkListObserver;
.implements Lcom/ebay/nautilus/shell/app/TrackingSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;,
        Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;
    }
.end annotation


# static fields
.field public static final CHARITY_SEARCH_KEYWORDS:Ljava/lang/String; = "charity_search_keywords"

.field public static final CHARITY_SEARCH_STATE:Ljava/lang/String; = "charity_search_state"

.field public static final CHARITY_SELECTION_TEXT:Ljava/lang/String; = "charity_selection_text"


# instance fields
.field private adapter:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;

.field protected noResultsText:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation
.end field

.field private progress:Landroid/view/View;

.field protected resultContainer:Landroid/view/View;
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation
.end field

.field private resultList:Landroid/widget/ListView;

.field protected searchState:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;

.field private selectCharityButtonText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/ebay/mobile/activities/BaseFragment;-><init>()V

    return-void
.end method

.method private onGetNonProfitsComplete(Lcom/ebay/mobile/charity/NonProfitPagedListLoader;)V
    .locals 2

    .line 229
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharitySearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->progress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->searchState:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;

    iget-object v1, p1, Lcom/ebay/mobile/charity/NonProfitPagedListLoader;->list:Lcom/ebay/common/net/api/finding/PagedList;

    iput-object v1, v0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;->results:Lcom/ebay/common/net/api/finding/PagedList;

    .line 236
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->searchState:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;

    iget-object p1, p1, Lcom/ebay/mobile/charity/NonProfitPagedListLoader;->keywords:Ljava/lang/String;

    iput-object p1, v0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;->searchString:Ljava/lang/String;

    .line 237
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->adapter:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;

    iget-object v0, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->searchState:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;

    iget-object v0, v0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;->results:Lcom/ebay/common/net/api/finding/PagedList;

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;->updateResults(Ljava/util/List;)V

    .line 238
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->searchState:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;

    iget-object p1, p1, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;->results:Lcom/ebay/common/net/api/finding/PagedList;

    iget-object v0, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->searchState:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;

    iget-object v0, v0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;->searchString:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/charity/CharitySearchFragment;->updateViews(Lcom/ebay/common/net/api/finding/PagedList;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private showCharityInfo(Lcom/ebay/nautilus/domain/data/Nonprofit;)V
    .locals 3

    .line 186
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "charity_nonprofit"

    .line 187
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "charity_selection_text"

    .line 188
    iget-object v2, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->selectCharityButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "charity_selection_enabled"

    const/4 v2, 0x1

    .line 189
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 191
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharitySearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 192
    instance-of v2, v1, Lcom/ebay/mobile/charity/OnShowCharityInfo;

    if-eqz v2, :cond_0

    .line 193
    check-cast v1, Lcom/ebay/mobile/charity/OnShowCharityInfo;

    invoke-interface {v1, p1, v0}, Lcom/ebay/mobile/charity/OnShowCharityInfo;->onShowCharityInfo(Lcom/ebay/nautilus/domain/data/Nonprofit;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "GivingWorksSearch"

    return-object v0
.end method

.method public onChanged()V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->adapter:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->adapter:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;

    invoke-virtual {v0}, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const v0, 0x7f0d00b0

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x102000a

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->resultList:Landroid/widget/ListView;

    .line 73
    iget-object p2, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->resultList:Landroid/widget/ListView;

    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    iget-object p2, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->resultList:Landroid/widget/ListView;

    new-instance v0, Lcom/ebay/mobile/charity/CharitySearchFragment$1;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/charity/CharitySearchFragment$1;-><init>(Lcom/ebay/mobile/charity/CharitySearchFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 89
    new-instance p2, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;

    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharitySearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d00af

    invoke-direct {p2, v0, v1}, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->adapter:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;

    .line 90
    iget-object p2, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->resultList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->adapter:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const p2, 0x7f0a0cb2

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->progress:Landroid/view/View;

    const p2, 0x7f0a0a7c

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->noResultsText:Landroid/widget/TextView;

    const p2, 0x7f0a070f

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->resultContainer:Landroid/view/View;

    if-eqz p3, :cond_0

    const-string p2, "charity_search_state"

    .line 97
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;

    iput-object p2, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->searchState:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;

    const-string p2, "charity_selection_text"

    .line 98
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->selectCharityButtonText:Ljava/lang/String;

    .line 99
    iget-object p2, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->adapter:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;

    iget-object p3, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->searchState:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;

    iget-object p3, p3, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;->results:Lcom/ebay/common/net/api/finding/PagedList;

    invoke-virtual {p2, p3}, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;->updateResults(Ljava/util/List;)V

    .line 100
    iget-object p2, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->searchState:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;

    iget-object p2, p2, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;->results:Lcom/ebay/common/net/api/finding/PagedList;

    iget-object p3, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->searchState:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;

    iget-object p3, p3, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;->searchString:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/ebay/mobile/charity/CharitySearchFragment;->updateViews(Lcom/ebay/common/net/api/finding/PagedList;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_0
    new-instance p2, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;

    invoke-direct {p2}, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;-><init>()V

    iput-object p2, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->searchState:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;

    .line 105
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharitySearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    .line 106
    iget-object p3, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->searchState:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;

    const-string v0, "charity_search_keywords"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;->searchString:Ljava/lang/String;

    const-string p3, "charity_selection_text"

    .line 107
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->selectCharityButtonText:Ljava/lang/String;

    .line 108
    iget-object p2, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->searchState:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;

    iget-object p2, p2, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;->searchString:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/ebay/mobile/charity/CharitySearchFragment;->startKeywordSearch(Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 136
    invoke-super {p0}, Lcom/ebay/mobile/activities/BaseFragment;->onDestroy()V

    .line 138
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharitySearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0e45

    .line 139
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0710

    .line 140
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 143
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onDialogFragmentResult(Landroidx/fragment/app/DialogFragment;II)V
    .locals 0

    const/4 p1, 0x1

    if-eq p3, p1, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method public onGetNotReady()V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharitySearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    .line 167
    invoke-static {p4, p2}, Lcom/ebay/mobile/util/Util;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 169
    invoke-virtual {p4}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 171
    invoke-virtual {p2}, Landroid/view/View;->clearFocus()V

    .line 174
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/Nonprofit;

    .line 175
    invoke-direct {p0, p1}, Lcom/ebay/mobile/charity/CharitySearchFragment;->showCharityInfo(Lcom/ebay/nautilus/domain/data/Nonprofit;)V

    return-void
.end method

.method public onNetworkError(Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 125
    invoke-super {p0}, Lcom/ebay/mobile/activities/BaseFragment;->onResume()V

    .line 127
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharitySearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 128
    instance-of v1, v0, Lcom/ebay/nautilus/shell/app/FwActivity;

    if-eqz v1, :cond_0

    .line 129
    new-instance v1, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharitySearchFragment;->getTrackingEventName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {v1, v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    check-cast v0, Lcom/ebay/nautilus/shell/app/FwActivity;

    .line 130
    invoke-interface {v0}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 117
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "charity_selection_text"

    .line 118
    iget-object v1, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->selectCharityButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "charity_search_state"

    .line 119
    iget-object v1, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->searchState:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onTaskComplete(ILcom/ebay/nautilus/shell/content/FwLoader;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    check-cast p2, Lcom/ebay/mobile/charity/NonProfitPagedListLoader;

    invoke-direct {p0, p2}, Lcom/ebay/mobile/charity/CharitySearchFragment;->onGetNonProfitsComplete(Lcom/ebay/mobile/charity/NonProfitPagedListLoader;)V

    :goto_0
    return-void
.end method

.method public startKeywordSearch(Ljava/lang/String;)V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->progress:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->resultContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->noResultsText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharitySearchFragment;->getFwActivity()Lcom/ebay/nautilus/shell/app/FwActivity;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    .line 220
    new-instance v1, Lcom/ebay/mobile/charity/NonProfitPagedListLoader;

    const-class v2, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    .line 222
    invoke-interface {v0, v2}, Lcom/ebay/nautilus/kernel/content/EbayContext;->as(Ljava/lang/Class;)Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {v2}, Lcom/ebay/nautilus/domain/dagger/DomainComponent;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->ensureCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v2

    iget-object v2, v2, Lcom/ebay/nautilus/domain/EbayCountry;->site:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-direct {v1, v0, v2, p1}, Lcom/ebay/mobile/charity/NonProfitPagedListLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharitySearchFragment;->getFwLoaderManager()Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1, v0}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->start(ILcom/ebay/nautilus/shell/content/FwLoader;Z)V

    return-void
.end method

.method protected updateViews(Lcom/ebay/common/net/api/finding/PagedList;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/finding/PagedList<",
            "Lcom/ebay/nautilus/domain/data/Nonprofit;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 244
    invoke-virtual {p1}, Lcom/ebay/common/net/api/finding/PagedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 246
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->resultContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->noResultsText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->searchState:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;

    iget-object p1, p1, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;->results:Lcom/ebay/common/net/api/finding/PagedList;

    invoke-virtual {p1, p0}, Lcom/ebay/common/net/api/finding/PagedList;->registerObserver(Lcom/ebay/common/net/AsyncList$NetworkListObserver;)V

    goto :goto_0

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->resultContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->noResultsText:Landroid/widget/TextView;

    const v0, 0x7f120808

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/ebay/mobile/charity/CharitySearchFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->noResultsText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->searchState:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;

    iget-object p1, p1, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;->results:Lcom/ebay/common/net/api/finding/PagedList;

    if-eqz p1, :cond_1

    .line 256
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharitySearchFragment;->searchState:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;

    iget-object p1, p1, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;->results:Lcom/ebay/common/net/api/finding/PagedList;

    invoke-virtual {p1, p0}, Lcom/ebay/common/net/api/finding/PagedList;->unregisterObserver(Lcom/ebay/common/net/AsyncList$NetworkListObserver;)V

    :cond_1
    :goto_0
    return-void
.end method
