.class public abstract Lcom/ebay/common/net/api/search/SearchPagedListManager;
.super Lcom/ebay/nautilus/domain/content/dm/PagedListManager;
.source "SearchPagedListManager.java"

# interfaces
.implements Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentQuery;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/dm/PagedListManager<",
        "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;",
        ">;",
        "Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentQuery;"
    }
.end annotation


# instance fields
.field protected firstPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;",
            ">;"
        }
    .end annotation
.end field

.field private lastResultStatus:Lcom/ebay/nautilus/kernel/content/ResultStatus;

.field private nextTrackableItemRank:I

.field protected observer:Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentObserver;

.field protected params:Lcom/ebay/common/net/api/search/SearchParameters;

.field protected totalCount:I


# direct methods
.method public constructor <init>(ILcom/ebay/common/net/api/search/SearchParameters;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Lcom/ebay/nautilus/domain/content/dm/PagedListManager;-><init>(I)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchPagedListManager;->firstPage:Ljava/util/List;

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/ebay/common/net/api/search/SearchPagedListManager;->totalCount:I

    .line 27
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchPagedListManager;->lastResultStatus:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    const/4 p1, 0x1

    .line 33
    iput p1, p0, Lcom/ebay/common/net/api/search/SearchPagedListManager;->nextTrackableItemRank:I

    .line 61
    iput-object p2, p0, Lcom/ebay/common/net/api/search/SearchPagedListManager;->params:Lcom/ebay/common/net/api/search/SearchParameters;

    return-void
.end method


# virtual methods
.method public abstract fill(Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;",
            ">;"
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/SearchPagedListManager;->getData()Lcom/ebay/nautilus/domain/content/ListContent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/SearchPagedListManager;->getData()Lcom/ebay/nautilus/domain/content/ListContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/ListContent;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHigestPageLoaded()I
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/SearchPagedListManager;->getData()Lcom/ebay/nautilus/domain/content/ListContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/ListContent;->getPagesLoaded()I

    move-result v0

    return v0
.end method

.method public getLastResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchPagedListManager;->lastResultStatus:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    return-object v0
.end method

.method protected getPage(ILjava/util/ArrayList;)Lcom/ebay/nautilus/kernel/content/ResultStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;",
            ">;)",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 121
    sget-object v0, Lcom/ebay/nautilus/kernel/content/ResultStatus;->SUCCESS:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 124
    :try_start_0
    iput-object v0, p0, Lcom/ebay/common/net/api/search/SearchPagedListManager;->lastResultStatus:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    if-ne p1, v1, :cond_1

    const/4 p1, -0x1

    .line 129
    iput p1, p0, Lcom/ebay/common/net/api/search/SearchPagedListManager;->totalNumberOfItems:I

    .line 130
    iput p1, p0, Lcom/ebay/common/net/api/search/SearchPagedListManager;->highestPageIndex:I

    .line 132
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/SearchPagedListManager;->query()V

    .line 135
    iget p1, p0, Lcom/ebay/common/net/api/search/SearchPagedListManager;->totalNumberOfItems:I

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/ebay/common/net/api/search/SearchPagedListManager;->highestPageIndex:I

    if-ltz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchPagedListManager;->firstPage:Ljava/util/List;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchPagedListManager;->firstPage:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 140
    iget-object p1, p0, Lcom/ebay/common/net/api/search/SearchPagedListManager;->firstPage:Ljava/util/List;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 136
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The implementation for query() must set both totalNumberOfItems and highestPageIndex"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/ebay/common/net/api/search/SearchPagedListManager;->fill(Ljava/util/ArrayList;I)V

    .line 145
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/SearchPagedListManager;->getLastResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 149
    new-array p2, v1, [Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    const/4 v0, 0x0

    new-instance v1, Lcom/ebay/nautilus/kernel/net/IoError;

    invoke-direct {v1, p1}, Lcom/ebay/nautilus/kernel/net/IoError;-><init>(Ljava/io/IOException;)V

    aput-object v1, p2, v0

    invoke-static {p2}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->create([Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public abstract getPageSize()I
.end method

.method protected handleLoadListResult(Lcom/ebay/nautilus/domain/content/ListContent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/ListContent<",
            "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;",
            ">;)V"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchPagedListManager;->observer:Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentObserver;

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchPagedListManager;->observer:Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentObserver;

    invoke-interface {v0, p1}, Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentObserver;->onSearchContentChanged(Lcom/ebay/nautilus/domain/content/ListContent;)V

    return-void
.end method

.method public loadPage(I)V
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/search/SearchPagedListManager;->load(I)V

    return-void
.end method

.method public onLoadStarted()V
    .locals 0

    return-void
.end method

.method public abstract query()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method protected rerankTrackableRows(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;

    .line 188
    iget v1, v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->trackingRank:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 192
    iget v1, p0, Lcom/ebay/common/net/api/search/SearchPagedListManager;->nextTrackableItemRank:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ebay/common/net/api/search/SearchPagedListManager;->nextTrackableItemRank:I

    iput v1, v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->trackingRank:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setLastResultStatus(Lcom/ebay/nautilus/kernel/content/ResultStatus;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchPagedListManager;->lastResultStatus:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    return-void
.end method

.method public setObserver(Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentObserver;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchPagedListManager;->observer:Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentObserver;

    return-void
.end method

.method public startQuery()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/SearchPagedListManager;->markDirty()V

    .line 172
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/SearchPagedListManager;->loadInitialPageSynchronous()Lcom/ebay/nautilus/domain/content/ListContent;

    return-void
.end method
