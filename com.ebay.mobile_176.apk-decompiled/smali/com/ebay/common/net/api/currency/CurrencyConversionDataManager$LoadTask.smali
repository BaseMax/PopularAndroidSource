.class final Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;
.super Lcom/ebay/nautilus/kernel/util/DelayedAsyncTask;
.source "CurrencyConversionDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/kernel/util/DelayedAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/ebay/nautilus/domain/content/Content<",
        "Lcom/ebay/common/model/currency/CurrencyConversionRate;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final cacheKey:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;

.field public final cacheLock:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;

.field public final conversionParams:Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;

.field public final observer:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;

.field final synthetic this$0:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->this$0:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/DelayedAsyncTask;-><init>()V

    .line 463
    iput-object p2, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->observer:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;

    .line 464
    iput-object p3, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->cacheKey:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;

    .line 465
    iput-object p4, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->cacheLock:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;

    .line 466
    iput-object p5, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->conversionParams:Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/ebay/nautilus/domain/content/Content;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/model/currency/CurrencyConversionRate;",
            ">;"
        }
    .end annotation

    .line 475
    sget-object p1, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_0

    .line 476
    sget-object p1, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling currency conversion API for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->conversionParams:Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 478
    :cond_0
    new-instance p1, Lcom/ebay/nautilus/kernel/content/ResultStatusOwner;

    invoke-direct {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatusOwner;-><init>()V

    .line 479
    iget-object v0, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->this$0:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;

    new-instance v1, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest;

    iget-object v2, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->conversionParams:Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;

    invoke-direct {v1, v2}, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest;-><init>(Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;)V

    invoke-virtual {v0, v1, p1}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->safeSendRequest(Lcom/ebay/nautilus/kernel/net/Request;Lcom/ebay/nautilus/kernel/content/ResultStatusOwner;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse;

    .line 481
    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatusOwner;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p1

    .line 485
    invoke-static {p1}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->treatableAsError(Lcom/ebay/nautilus/kernel/content/ResultStatus;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 487
    sget-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_1

    .line 488
    sget-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error from API, not caching result: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 490
    :cond_1
    new-instance v0, Lcom/ebay/nautilus/domain/content/Content;

    invoke-direct {v0, v2, p1}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    goto/16 :goto_0

    .line 494
    :cond_2
    iget-object v0, v0, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse;->currencyConversionRate:Lcom/ebay/common/model/currency/CurrencyConversionRate;

    .line 495
    sget-object v1, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v1, v1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v1, :cond_3

    .line 496
    sget-object v1, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successful rate conversion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 497
    :cond_3
    new-instance v1, Lcom/ebay/nautilus/domain/content/Content;

    invoke-direct {v1, v0, p1}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    .line 499
    iget-object v3, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->this$0:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;

    iget-object v4, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->cacheKey:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;

    invoke-static {v3, v4, v0}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->access$100(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;Lcom/ebay/common/model/currency/CurrencyConversionRate;)V

    .line 500
    iget-object v3, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->cacheLock:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;

    invoke-virtual {v3, v1}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;->setData(Ljava/lang/Object;)V

    .line 501
    iget-object v3, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->cacheKey:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;

    iget-boolean v3, v3, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;->bypassCache:Z

    if-nez v3, :cond_5

    .line 504
    invoke-virtual {v0}, Lcom/ebay/common/model/currency/CurrencyConversionRate;->createReciprocalRate()Lcom/ebay/common/model/currency/CurrencyConversionRate;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 507
    sget-object v4, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v4, v4, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v4, :cond_4

    .line 508
    sget-object v4, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reciprocal rate created: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 509
    :cond_4
    new-instance v4, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;

    iget-object v5, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->cacheKey:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;

    iget-object v5, v5, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;->toCurr:Ljava/lang/String;

    iget-object v6, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->cacheKey:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;

    iget-object v6, v6, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;->fromCurr:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 510
    new-instance v5, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;

    invoke-direct {v5}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;-><init>()V

    .line 511
    sget-object v6, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;->DONE:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    iput-object v6, v5, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;->loadState:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    .line 512
    new-instance v6, Lcom/ebay/nautilus/domain/content/Content;

    invoke-direct {v6, v3, p1}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    invoke-virtual {v5, v6}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;->setData(Ljava/lang/Object;)V

    .line 514
    iget-object v3, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->this$0:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;

    invoke-static {v3, v0}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->access$200(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;Lcom/ebay/common/model/currency/CurrencyConversionRate;)J

    move-result-wide v6

    invoke-static {}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->access$300()Lcom/ebay/nautilus/kernel/time/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/nautilus/kernel/time/Clock;->instant()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 515
    iget-object v0, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->this$0:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;

    invoke-static {v0}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->access$400(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;)Lcom/ebay/nautilus/kernel/cache/TtlCache;

    move-result-object v0

    invoke-interface {v0, v4, v5, v6, v7}, Lcom/ebay/nautilus/kernel/cache/TtlCache;->put(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    :cond_5
    move-object v0, v1

    .line 520
    :goto_0
    iget-object v1, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->cacheLock:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;

    monitor-enter v1

    .line 522
    :try_start_0
    sget-object v3, Lcom/ebay/nautilus/kernel/content/ResultStatus;->CANCELED:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    if-ne p1, v3, :cond_6

    iget-object p1, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->cacheKey:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;

    iget-boolean p1, p1, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;->bypassCache:Z

    if-nez p1, :cond_6

    .line 525
    iget-object p1, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->this$0:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;

    invoke-static {p1}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->access$400(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;)Lcom/ebay/nautilus/kernel/cache/TtlCache;

    move-result-object p1

    iget-object v2, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->cacheKey:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;

    invoke-interface {p1, v2}, Lcom/ebay/nautilus/kernel/cache/TtlCache;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 529
    :cond_6
    iget-object p1, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->cacheLock:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;

    sget-object v3, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;->DONE:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    iput-object v3, p1, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;->loadState:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    .line 530
    iget-object p1, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->cacheLock:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;

    iput-object v2, p1, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;->loadTask:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;

    .line 532
    iget-object p1, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->cacheLock:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;

    invoke-virtual {p1}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;->setLoadTime()V

    .line 534
    :goto_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 453
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->doInBackground([Ljava/lang/Void;)Lcom/ebay/nautilus/domain/content/Content;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 4

    .line 542
    invoke-super {p0}, Lcom/ebay/nautilus/kernel/util/DelayedAsyncTask;->onCancelled()V

    .line 543
    iget-object v0, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->this$0:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;

    iget-object v1, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->observer:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;

    invoke-static {}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->access$500()Lcom/ebay/nautilus/domain/content/Content;

    move-result-object v2

    iget-object v3, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->conversionParams:Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;

    invoke-static {v0, v1, v2, v3}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->access$600(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;Lcom/ebay/nautilus/domain/content/Content;Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;)V

    return-void
.end method

.method protected onPostExecute(Lcom/ebay/nautilus/domain/content/Content;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/model/currency/CurrencyConversionRate;",
            ">;)V"
        }
    .end annotation

    .line 549
    invoke-super {p0, p1}, Lcom/ebay/nautilus/kernel/util/DelayedAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 550
    iget-object v0, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->this$0:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;

    iget-object v1, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->observer:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;

    iget-object v2, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->conversionParams:Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;

    invoke-static {v0, v1, p1, v2}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->access$600(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;Lcom/ebay/nautilus/domain/content/Content;Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 453
    check-cast p1, Lcom/ebay/nautilus/domain/content/Content;

    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->onPostExecute(Lcom/ebay/nautilus/domain/content/Content;)V

    return-void
.end method
