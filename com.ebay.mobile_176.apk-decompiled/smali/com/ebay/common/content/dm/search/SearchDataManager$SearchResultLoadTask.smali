.class public final Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;
.super Landroid/os/AsyncTask;
.source "SearchDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/SearchDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SearchResultLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/ebay/common/net/api/search/SearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field private param:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;

.field private result:Lcom/ebay/common/net/api/search/SearchResult;

.field final synthetic this$0:Lcom/ebay/common/content/dm/search/SearchDataManager;


# direct methods
.method public constructor <init>(Lcom/ebay/common/content/dm/search/SearchDataManager;Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->this$0:Lcom/ebay/common/content/dm/search/SearchDataManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 377
    iput-object p1, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->result:Lcom/ebay/common/net/api/search/SearchResult;

    .line 378
    iput-object p1, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->param:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;

    .line 387
    iput-object p2, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->param:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;

    return-void
.end method

.method private doSearch()Lcom/ebay/common/net/api/search/SearchResult;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->param:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;

    iget-object v0, v0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    .line 405
    iget-boolean v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->allowRewrites:Z

    iget-object v2, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->param:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;

    iget-object v2, v2, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v3, Lcom/ebay/mobile/dcs/DcsBoolean;->SearchExpansionEnabled:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v2, v3}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->allowRewrites:Z

    .line 407
    iget-object v1, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->this$0:Lcom/ebay/common/content/dm/search/SearchDataManager;

    invoke-virtual {v1}, Lcom/ebay/common/content/dm/search/SearchDataManager;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->param:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;

    iget-object v3, v2, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;->layoutType:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    iget-object v2, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->param:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;

    iget-object v4, v2, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;->searchTracker:Lcom/ebay/common/net/api/search/ISearchEventTracker;

    iget-object v2, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->param:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;

    iget-object v5, v2, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    iget-object v2, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->param:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;

    iget-object v6, v2, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;->searchImageHolder:Lcom/ebay/common/net/api/search/SearchImageHolder;

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lcom/ebay/common/net/api/search/SearchServiceApi;->executeSearch(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/search/SearchParameters;Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;Lcom/ebay/common/net/api/search/ISearchEventTracker;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;Lcom/ebay/common/net/api/search/SearchImageHolder;)Lcom/ebay/common/net/api/search/SearchResult;

    move-result-object v7

    .line 410
    iget-object v8, v7, Lcom/ebay/common/net/api/search/SearchResult;->resultStatus:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    .line 412
    invoke-virtual {v8}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->this$0:Lcom/ebay/common/content/dm/search/SearchDataManager;

    invoke-virtual {v1}, Lcom/ebay/common/content/dm/search/SearchDataManager;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->param:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;

    iget-object v3, v2, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;->layoutType:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    iget-object v2, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->param:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;

    iget-object v4, v2, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;->searchTracker:Lcom/ebay/common/net/api/search/ISearchEventTracker;

    .line 417
    invoke-virtual {v8}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getMessages()Ljava/util/List;

    move-result-object v5

    iget-object v2, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->param:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;

    iget-object v6, v2, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-object v2, v0

    .line 416
    invoke-static/range {v1 .. v6}, Lcom/ebay/common/net/api/search/SearchServiceApi;->doFallback(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/search/SearchParameters;Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;Lcom/ebay/common/net/api/search/ISearchEventTracker;Ljava/util/List;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)Lcom/ebay/common/net/api/search/SearchResult;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 422
    iget-object v2, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->param:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;

    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/SearchResult;->getSearchParameters()Lcom/ebay/common/net/api/search/SearchParameters;

    move-result-object v3

    iput-object v3, v2, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    goto :goto_0

    :cond_0
    move-object v1, v7

    .line 426
    :goto_0
    invoke-virtual {v8}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasWarning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 429
    invoke-virtual {v8}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getMessages()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ebay/common/net/api/search/SearchServiceApi;->isSaasPostalCodeWarning(Lcom/ebay/common/net/api/search/SearchParameters;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 431
    invoke-virtual {v0}, Lcom/ebay/common/net/api/search/SearchParameters;->clearZipCodeAndDependencies()V

    .line 432
    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/SearchResult;->setInvalidPostalCodeCorrectedSearch()V

    :cond_1
    return-object v1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/ebay/common/net/api/search/SearchResult;
    .locals 3

    .line 442
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 446
    :cond_0
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->param:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;

    if-eqz p1, :cond_1

    .line 449
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->param:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;

    iget-object p1, p1, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    .line 453
    :try_start_0
    invoke-direct {p0}, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->doSearch()Lcom/ebay/common/net/api/search/SearchResult;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->result:Lcom/ebay/common/net/api/search/SearchResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 459
    :catch_0
    new-instance p1, Lcom/ebay/common/net/api/search/SearchResult;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    const/4 v1, 0x0

    invoke-static {}, Lcom/ebay/nautilus/domain/content/InternalDomainError;->getNoNetworkMessage()Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->create([Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ebay/common/net/api/search/SearchResult;-><init>(Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->result:Lcom/ebay/common/net/api/search/SearchResult;

    .line 462
    :goto_0
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->result:Lcom/ebay/common/net/api/search/SearchResult;

    return-object p1

    .line 447
    :cond_1
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "SearchResultLoadTask expects config via constructor"

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 375
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->doInBackground([Ljava/lang/Void;)Lcom/ebay/common/net/api/search/SearchResult;

    move-result-object p1

    return-object p1
.end method

.method public getParams()Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->param:Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;

    return-object v0
.end method

.method public getResult()Lcom/ebay/common/net/api/search/SearchResult;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->result:Lcom/ebay/common/net/api/search/SearchResult;

    return-object v0
.end method

.method protected onPostExecute(Lcom/ebay/common/net/api/search/SearchResult;)V
    .locals 1

    .line 476
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 479
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->this$0:Lcom/ebay/common/content/dm/search/SearchDataManager;

    invoke-static {v0, p0, p1}, Lcom/ebay/common/content/dm/search/SearchDataManager;->access$300(Lcom/ebay/common/content/dm/search/SearchDataManager;Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;Lcom/ebay/common/net/api/search/SearchResult;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 375
    check-cast p1, Lcom/ebay/common/net/api/search/SearchResult;

    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTask;->onPostExecute(Lcom/ebay/common/net/api/search/SearchResult;)V

    return-void
.end method
