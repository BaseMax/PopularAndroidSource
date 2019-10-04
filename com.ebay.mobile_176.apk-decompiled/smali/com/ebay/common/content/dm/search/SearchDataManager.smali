.class public Lcom/ebay/common/content/dm/search/SearchDataManager;
.super Lcom/ebay/nautilus/domain/content/DataManager;
.source "SearchDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/content/dm/search/SearchDataManager$ConcreteObserver;,
        Lcom/ebay/common/content/dm/search/SearchDataManager$KeyParams;,
        Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;,
        Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;,
        Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultEventRouter;,
        Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DataManager<",
        "Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_NUMBER_PAGES:I = 0x32

.field private static final logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field private currentSearchResultTask:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;

.field private lastResultState:Lcom/ebay/common/net/api/search/SearchResultState;

.field private final params:Lcom/ebay/common/content/dm/search/SearchDataManager$KeyParams;

.field private searchResultEventRouter:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultEventRouter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "SearchDataManager"

    const-string v2, "Log search data manager usage"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/content/dm/search/SearchDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method protected constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/Class;Lcom/ebay/common/content/dm/search/SearchDataManager$KeyParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            "Ljava/lang/Class<",
            "Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;",
            ">;",
            "Lcom/ebay/common/content/dm/search/SearchDataManager$KeyParams;",
            ")V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/ebay/nautilus/domain/content/DataManager;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->currentSearchResultTask:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;

    .line 45
    iput-object p1, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->searchResultEventRouter:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultEventRouter;

    .line 48
    iput-object p1, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->lastResultState:Lcom/ebay/common/net/api/search/SearchResultState;

    .line 77
    iput-object p3, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->params:Lcom/ebay/common/content/dm/search/SearchDataManager$KeyParams;

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/common/content/dm/search/SearchDataManager;)Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultEventRouter;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->searchResultEventRouter:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultEventRouter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ebay/common/content/dm/search/SearchDataManager;)Lcom/ebay/common/net/api/search/SearchResultState;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->lastResultState:Lcom/ebay/common/net/api/search/SearchResultState;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ebay/common/content/dm/search/SearchDataManager;)Ljava/lang/Object;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->dispatcher:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ebay/common/content/dm/search/SearchDataManager;Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;Lcom/ebay/common/net/api/search/SearchResult;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/ebay/common/content/dm/search/SearchDataManager;->handleSearchResultLoaded(Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;Lcom/ebay/common/net/api/search/SearchResult;)V

    return-void
.end method

.method private deliverResultState(Lcom/ebay/common/net/api/search/SearchResultState;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->dispatcher:Ljava/lang/Object;

    check-cast v0, Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;

    invoke-interface {v0, p1}, Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;->onSearchComplete(Lcom/ebay/common/net/api/search/SearchResultState;)V

    return-void
.end method

.method private handleSearchResultLoaded(Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;Lcom/ebay/common/net/api/search/SearchResult;)V
    .locals 1

    .line 228
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->verifyMain()V

    .line 231
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->currentSearchResultTask:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;

    if-eq p1, v0, :cond_0

    return-void

    .line 234
    :cond_0
    invoke-virtual {p1}, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->getParams()Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->currentSearchResultTask:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;

    .line 242
    invoke-virtual {p1}, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {p1}, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->getParams()Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;

    move-result-object p1

    iget-object p1, p1, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    .line 252
    new-instance v0, Lcom/ebay/common/net/api/search/SearchResultState;

    invoke-direct {v0, p2, p1}, Lcom/ebay/common/net/api/search/SearchResultState;-><init>(Lcom/ebay/common/net/api/search/SearchResult;Lcom/ebay/common/net/api/search/SearchParameters;)V

    iput-object v0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->lastResultState:Lcom/ebay/common/net/api/search/SearchResultState;

    .line 264
    new-instance p1, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultEventRouter;

    invoke-direct {p1, p0, p2}, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultEventRouter;-><init>(Lcom/ebay/common/content/dm/search/SearchDataManager;Lcom/ebay/common/net/api/search/SearchResult;)V

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->searchResultEventRouter:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultEventRouter;

    .line 269
    invoke-virtual {p2}, Lcom/ebay/common/net/api/search/SearchResult;->getSearchParameters()Lcom/ebay/common/net/api/search/SearchParameters;

    move-result-object p1

    if-nez p1, :cond_2

    .line 271
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->lastResultState:Lcom/ebay/common/net/api/search/SearchResultState;

    invoke-direct {p0, p1}, Lcom/ebay/common/content/dm/search/SearchDataManager;->deliverResultState(Lcom/ebay/common/net/api/search/SearchResultState;)V

    return-void

    .line 275
    :cond_2
    iget p1, p2, Lcom/ebay/common/net/api/search/SearchResult;->totalItemCount:I

    .line 278
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->lastResultState:Lcom/ebay/common/net/api/search/SearchResultState;

    invoke-direct {p0, p1}, Lcom/ebay/common/content/dm/search/SearchDataManager;->deliverResultState(Lcom/ebay/common/net/api/search/SearchResultState;)V

    return-void

    .line 244
    :cond_3
    :goto_0
    sget-object p1, Lcom/ebay/common/content/dm/search/SearchDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_4

    .line 245
    sget-object p1, Lcom/ebay/common/content/dm/search/SearchDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string p2, "handleSearchResultLoaded() - current task was cancelled"

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private loadDataInternal(Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;)V
    .locals 4

    if-nez p2, :cond_2

    .line 172
    sget-object p1, Lcom/ebay/common/content/dm/search/SearchDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_0

    .line 173
    sget-object p1, Lcom/ebay/common/content/dm/search/SearchDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string p2, "loadDataInternal() - no new params; reissuing cached result"

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->lastResultState:Lcom/ebay/common/net/api/search/SearchResultState;

    if-eqz p1, :cond_1

    .line 178
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->lastResultState:Lcom/ebay/common/net/api/search/SearchResultState;

    invoke-virtual {p1}, Lcom/ebay/common/net/api/search/SearchResultState;->setDelivered()V

    .line 181
    :cond_1
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->lastResultState:Lcom/ebay/common/net/api/search/SearchResultState;

    invoke-direct {p0, p1}, Lcom/ebay/common/content/dm/search/SearchDataManager;->deliverResultState(Lcom/ebay/common/net/api/search/SearchResultState;)V

    return-void

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->currentSearchResultTask:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 188
    sget-object v0, Lcom/ebay/common/content/dm/search/SearchDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_3

    .line 189
    sget-object v0, Lcom/ebay/common/content/dm/search/SearchDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v3, "loadDataInternal() - cancelling in-flight task"

    invoke-virtual {v0, v3}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->currentSearchResultTask:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;

    invoke-virtual {v0, v1}, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->cancel(Z)Z

    .line 191
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->currentSearchResultTask:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;

    invoke-virtual {v0}, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->getParams()Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;->ownerObserver:Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;

    if-eqz v0, :cond_4

    .line 193
    invoke-interface {v0}, Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;->onSearchCancelled()V

    .line 194
    :cond_4
    iput-object v2, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->currentSearchResultTask:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;

    .line 201
    :cond_5
    new-instance v0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;

    invoke-direct {v0, p0, p2}, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;-><init>(Lcom/ebay/common/content/dm/search/SearchDataManager;Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;)V

    iput-object v0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->currentSearchResultTask:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;

    .line 202
    iput-object v2, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->lastResultState:Lcom/ebay/common/net/api/search/SearchResultState;

    .line 204
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->currentSearchResultTask:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Void;

    check-cast v2, Ljava/lang/Void;

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/ebay/common/content/dm/search/SearchDataManager;->executeOnThreadPool(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    if-eqz p1, :cond_6

    .line 210
    iget-object v0, p2, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    invoke-interface {p1, v0}, Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;->onSearchStarted(Lcom/ebay/common/net/api/search/SearchParameters;)V

    .line 211
    :cond_6
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->dispatcher:Ljava/lang/Object;

    check-cast p1, Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;

    iget-object p2, p2, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    invoke-interface {p1, p2}, Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;->onSearchStarted(Lcom/ebay/common/net/api/search/SearchParameters;)V

    return-void
.end method


# virtual methods
.method public executeSearch(Lcom/ebay/common/net/api/search/SearchParameters;Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;Lcom/ebay/common/net/api/search/ISearchEventTracker;Lcom/ebay/common/net/api/search/SearchImageHolder;)V
    .locals 9

    .line 110
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->verifyMain()V

    .line 112
    new-instance v8, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;-><init>(Lcom/ebay/common/content/dm/search/SearchDataManager;Lcom/ebay/common/net/api/search/SearchParameters;Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;Lcom/ebay/common/net/api/search/ISearchEventTracker;Lcom/ebay/common/net/api/search/SearchImageHolder;)V

    .line 115
    invoke-direct {p0, p3, v8}, Lcom/ebay/common/content/dm/search/SearchDataManager;->loadDataInternal(Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;)V

    return-void
.end method

.method public getParams()Ljava/lang/Object;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->params:Lcom/ebay/common/content/dm/search/SearchDataManager$KeyParams;

    return-object v0
.end method

.method public isRunningSearch()Z
    .locals 1

    .line 124
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->verifyMain()V

    .line 126
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->currentSearchResultTask:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadData(Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;)V
    .locals 1

    .line 84
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->verifyMain()V

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/ebay/common/content/dm/search/SearchDataManager;->loadDataInternal(Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;)V

    return-void
.end method

.method public bridge synthetic loadData(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;

    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/search/SearchDataManager;->loadData(Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;)V

    return-void
.end method

.method public loadPage(I)V
    .locals 2

    .line 152
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->verifyMain()V

    .line 154
    sget-object v0, Lcom/ebay/common/content/dm/search/SearchDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/ebay/common/content/dm/search/SearchDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "loadNextPage()"

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->lastResultState:Lcom/ebay/common/net/api/search/SearchResultState;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->lastResultState:Lcom/ebay/common/net/api/search/SearchResultState;

    invoke-virtual {v0}, Lcom/ebay/common/net/api/search/SearchResultState;->getResult()Lcom/ebay/common/net/api/search/SearchResult;

    move-result-object v0

    .line 160
    iget-object v0, v0, Lcom/ebay/common/net/api/search/SearchResult;->resultOwner:Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentQuery;

    invoke-interface {v0, p1}, Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentQuery;->loadPage(I)V

    :cond_1
    return-void
.end method

.method public retryFailedPages()V
    .locals 2

    .line 136
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->verifyMain()V

    .line 138
    sget-object v0, Lcom/ebay/common/content/dm/search/SearchDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lcom/ebay/common/content/dm/search/SearchDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string/jumbo v1, "retryFailedPages()"

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->lastResultState:Lcom/ebay/common/net/api/search/SearchResultState;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager;->lastResultState:Lcom/ebay/common/net/api/search/SearchResultState;

    invoke-virtual {v0}, Lcom/ebay/common/net/api/search/SearchResultState;->getResult()Lcom/ebay/common/net/api/search/SearchResult;

    move-result-object v0

    .line 145
    iget-object v1, v0, Lcom/ebay/common/net/api/search/SearchResult;->resultOwner:Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentQuery;

    invoke-interface {v1}, Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentQuery;->getHigestPageLoaded()I

    move-result v1

    .line 146
    iget-object v0, v0, Lcom/ebay/common/net/api/search/SearchResult;->resultOwner:Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentQuery;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentQuery;->loadPage(I)V

    :cond_1
    return-void
.end method
