.class final Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowContentHandler;
.super Lcom/ebay/nautilus/domain/content/DmParameterizedTaskHandler;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BulkDeleteFollowContentHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DmParameterizedTaskHandler<",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Lcom/ebay/nautilus/domain/data/FollowType;",
        ">;>;",
        "Lcom/ebay/nautilus/domain/content/Content<",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Lcom/ebay/nautilus/domain/data/FollowType;",
        ">;>;>;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Lcom/ebay/nautilus/domain/data/FollowType;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 898
    sget-object v0, Lcom/ebay/nautilus/domain/content/DmObserverStrategy;->DISPATCH_CALLBACK:Lcom/ebay/nautilus/domain/content/DmObserverStrategy;

    invoke-static {}, Lcom/ebay/nautilus/domain/content/DmResultAdapter;->contentAsResult()Lcom/ebay/nautilus/domain/content/DmResultAdapter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ebay/nautilus/domain/content/DmParameterizedTaskHandler;-><init>(Lcom/ebay/nautilus/domain/content/DmObserverStrategy;Lcom/ebay/nautilus/domain/content/DmResultAdapter;)V

    return-void
.end method


# virtual methods
.method protected createTask(Lcom/ebay/common/content/dm/search/FollowingDataManager;Ljava/util/Set;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowTask;
    .locals 1
    .param p1    # Lcom/ebay/common/content/dm/search/FollowingDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/FollowType;",
            ">;>;",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
            ")",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowTask;"
        }
    .end annotation

    .line 941
    new-instance v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowTask;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowTask;-><init>(Lcom/ebay/common/content/dm/search/FollowingDataManager;Ljava/util/Set;Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowContentHandler;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)V

    return-object v0
.end method

.method protected bridge synthetic createTask(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DmTask;
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/content/DataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 889
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    check-cast p2, Ljava/util/Set;

    check-cast p3, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowContentHandler;->createTask(Lcom/ebay/common/content/dm/search/FollowingDataManager;Ljava/util/Set;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowTask;

    move-result-object p1

    return-object p1
.end method

.method protected dispatchResult(Lcom/ebay/common/content/dm/search/FollowingDataManager;Ljava/util/Set;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Ljava/util/Set;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0
    .param p1    # Lcom/ebay/common/content/dm/search/FollowingDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/ebay/nautilus/kernel/content/ResultStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/ebay/nautilus/domain/content/DirtyStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/FollowType;",
            ">;>;",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/FollowType;",
            ">;>;",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus;",
            "Lcom/ebay/nautilus/domain/content/DirtyStatus;",
            ")V"
        }
    .end annotation

    .line 934
    invoke-interface {p3, p1, p4, p5, p6}, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;->onBulkDeleteFollowComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;Ljava/util/Set;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V

    return-void
.end method

.method protected bridge synthetic dispatchResult(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/content/DataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/ebay/nautilus/kernel/content/ResultStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/ebay/nautilus/domain/content/DirtyStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 889
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    check-cast p2, Ljava/util/Set;

    check-cast p3, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;

    check-cast p4, Ljava/util/Set;

    invoke-virtual/range {p0 .. p6}, Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowContentHandler;->dispatchResult(Lcom/ebay/common/content/dm/search/FollowingDataManager;Ljava/util/Set;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Ljava/util/Set;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V

    return-void
.end method

.method protected setMemoryCacheContent(Lcom/ebay/common/content/dm/search/FollowingDataManager;Ljava/util/Set;Ljava/util/Set;J)Lcom/ebay/nautilus/domain/content/DmCacheContent;
    .locals 1
    .param p1    # Lcom/ebay/common/content/dm/search/FollowingDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/FollowType;",
            ">;>;",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/FollowType;",
            ">;>;J)",
            "Lcom/ebay/nautilus/domain/content/DmCacheContent<",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/FollowType;",
            ">;>;>;"
        }
    .end annotation

    .line 911
    invoke-super/range {p0 .. p5}, Lcom/ebay/nautilus/domain/content/DmParameterizedTaskHandler;->setMemoryCacheContent(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Ljava/lang/Object;J)Lcom/ebay/nautilus/domain/content/DmCacheContent;

    move-result-object p2

    .line 913
    iget-object p3, p2, Lcom/ebay/nautilus/domain/content/DmCacheContent;->data:Ljava/lang/Object;

    check-cast p3, Ljava/util/Set;

    .line 915
    new-instance p4, Lcom/ebay/common/model/search/following/FollowListData;

    iget-object p5, p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadFollowsContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;

    .line 916
    invoke-virtual {p5, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;->getData(Lcom/ebay/nautilus/domain/content/DataManager;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/ebay/common/model/search/following/FollowListData;

    invoke-direct {p4, p5}, Lcom/ebay/common/model/search/following/FollowListData;-><init>(Lcom/ebay/common/model/search/following/FollowListData;)V

    .line 917
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    .line 918
    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/FollowType;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p4, v0, p5}, Lcom/ebay/common/model/search/following/FollowListData;->removeById(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;)V

    goto :goto_0

    .line 920
    :cond_0
    iget-object p3, p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadFollowsContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;

    invoke-virtual {p3, p1, p4}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;->setData(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;)V

    return-object p2
.end method

.method protected bridge synthetic setMemoryCacheContent(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Ljava/lang/Object;J)Lcom/ebay/nautilus/domain/content/DmCacheContent;
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/content/DataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 889
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    check-cast p2, Ljava/util/Set;

    check-cast p3, Ljava/util/Set;

    invoke-virtual/range {p0 .. p5}, Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowContentHandler;->setMemoryCacheContent(Lcom/ebay/common/content/dm/search/FollowingDataManager;Ljava/util/Set;Ljava/util/Set;J)Lcom/ebay/nautilus/domain/content/DmCacheContent;

    move-result-object p1

    return-object p1
.end method
