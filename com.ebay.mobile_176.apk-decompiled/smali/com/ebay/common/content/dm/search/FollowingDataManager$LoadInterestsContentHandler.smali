.class final Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsContentHandler;
.super Lcom/ebay/nautilus/domain/content/DmCacheManagedDataHandler;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadInterestsContentHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DmCacheManagedDataHandler<",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;",
        "Lcom/ebay/nautilus/domain/content/Content<",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/cache/MultiTierTtlCache;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/kernel/cache/MultiTierTtlCache<",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1153
    sget-object v0, Lcom/ebay/nautilus/domain/content/DmObserverStrategy;->DISPATCH_CALLBACK:Lcom/ebay/nautilus/domain/content/DmObserverStrategy;

    invoke-static {}, Lcom/ebay/nautilus/domain/content/DmResultAdapter;->contentAsResult()Lcom/ebay/nautilus/domain/content/DmResultAdapter;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ebay/nautilus/domain/content/DmCacheManagedDataHandler;-><init>(Lcom/ebay/nautilus/domain/content/DmObserverStrategy;Lcom/ebay/nautilus/domain/content/DmResultAdapter;Lcom/ebay/nautilus/kernel/cache/MultiTierTtlCache;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createTask(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/DmTask;
    .locals 2
    .param p1    # Lcom/ebay/common/content/dm/search/FollowingDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
            ")",
            "Lcom/ebay/nautilus/domain/content/DmTask<",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;",
            ">;",
            "Lcom/ebay/common/model/search/following/FollowListData;",
            ">;"
        }
    .end annotation

    .line 1208
    iget-object v0, p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadFollowsContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;

    invoke-virtual {v0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;->getData(Lcom/ebay/nautilus/domain/content/DataManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/search/following/FollowListData;

    .line 1209
    new-instance v1, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;

    invoke-direct {v1, p1, v0, p0, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;-><init>(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/model/search/following/FollowListData;Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsContentHandler;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)V

    return-object v1
.end method

.method protected bridge synthetic createTask(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DmTask;
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/content/DataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1148
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsContentHandler;->createTask(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/DmTask;

    move-result-object p1

    return-object p1
.end method

.method protected dispatchResult(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0
    .param p1    # Lcom/ebay/common/content/dm/search/FollowingDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/kernel/content/ResultStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/ebay/nautilus/domain/content/DirtyStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1199
    iget-object p3, p3, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;->interests:Ljava/util/List;

    invoke-interface {p2, p1, p3, p4, p5}, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;->onInterestsChanged(Lcom/ebay/common/content/dm/search/FollowingDataManager;Ljava/util/List;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V

    return-void
.end method

.method protected bridge synthetic dispatchResult(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/content/DataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/kernel/content/ResultStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/ebay/nautilus/domain/content/DirtyStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1148
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;

    check-cast p3, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;

    invoke-virtual/range {p0 .. p5}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsContentHandler;->dispatchResult(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V

    return-void
.end method

.method public requestData(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/TaskSync;
    .locals 1
    .param p1    # Lcom/ebay/common/content/dm/search/FollowingDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
            ")",
            "Lcom/ebay/nautilus/domain/content/TaskSync<",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;",
            ">;"
        }
    .end annotation

    .line 1169
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->verifyMain()V

    .line 1171
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsContentHandler;->getLoadingTask()Lcom/ebay/nautilus/domain/content/DmTask;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1173
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsContentHandler;->createTask(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/DmTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/DmTask;->execute()Lcom/ebay/nautilus/domain/content/TaskSync;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic requestData(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/TaskSync;
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/content/DataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1148
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsContentHandler;->requestData(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/TaskSync;

    move-result-object p1

    return-object p1
.end method

.method protected setMemoryCacheContent(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;J)Lcom/ebay/nautilus/domain/content/DmCacheContent;
    .locals 2
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
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;",
            "J)",
            "Lcom/ebay/nautilus/domain/content/DmCacheContent<",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;",
            ">;"
        }
    .end annotation

    .line 1182
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/domain/content/DmCacheManagedDataHandler;->setMemoryCacheContent(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;J)Lcom/ebay/nautilus/domain/content/DmCacheContent;

    move-result-object p2

    .line 1183
    iget-object p3, p2, Lcom/ebay/nautilus/domain/content/DmCacheContent;->data:Ljava/lang/Object;

    check-cast p3, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;

    .line 1185
    new-instance p4, Lcom/ebay/common/model/search/following/FollowListData;

    iget-object v0, p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadFollowsContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;

    invoke-virtual {v0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;->getData(Lcom/ebay/nautilus/domain/content/DataManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/search/following/FollowListData;

    invoke-direct {p4, v0}, Lcom/ebay/common/model/search/following/FollowListData;-><init>(Lcom/ebay/common/model/search/following/FollowListData;)V

    .line 1186
    iget-object p3, p3, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;->interests:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    .line 1187
    iget-object v1, p4, Lcom/ebay/common/model/search/following/FollowListData;->savedSearchCacheData:Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    invoke-virtual {v1, v0}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->addInterest(Lcom/ebay/common/net/api/search/following/InterestDescriptor;)V

    goto :goto_0

    .line 1189
    :cond_0
    iget-object p3, p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadFollowsContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;

    invoke-virtual {p3, p1, p4}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;->setData(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;)V

    return-object p2
.end method

.method protected bridge synthetic setMemoryCacheContent(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;J)Lcom/ebay/nautilus/domain/content/DmCacheContent;
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/content/DataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1148
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsContentHandler;->setMemoryCacheContent(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;J)Lcom/ebay/nautilus/domain/content/DmCacheContent;

    move-result-object p1

    return-object p1
.end method
