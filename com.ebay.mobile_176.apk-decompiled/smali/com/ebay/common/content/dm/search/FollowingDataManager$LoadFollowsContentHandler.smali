.class final Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;
.super Lcom/ebay/nautilus/domain/content/DmDataHandler;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadFollowsContentHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DmDataHandler<",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
        "Lcom/ebay/common/model/search/following/FollowListData;",
        "Lcom/ebay/nautilus/domain/content/Content<",
        "Lcom/ebay/common/model/search/following/FollowListData;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1036
    sget-object v0, Lcom/ebay/nautilus/domain/content/DmObserverStrategy;->DISPATCH_CALLBACK:Lcom/ebay/nautilus/domain/content/DmObserverStrategy;

    invoke-static {}, Lcom/ebay/nautilus/domain/content/DmResultAdapter;->contentAsResult()Lcom/ebay/nautilus/domain/content/DmResultAdapter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ebay/nautilus/domain/content/DmDataHandler;-><init>(Lcom/ebay/nautilus/domain/content/DmObserverStrategy;Lcom/ebay/nautilus/domain/content/DmResultAdapter;)V

    return-void
.end method


# virtual methods
.method protected createTask(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/DmTask;
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
            "Lcom/ebay/nautilus/domain/content/DmTask<",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
            "Lcom/ebay/common/model/search/following/FollowListData;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/model/search/following/FollowListData;",
            ">;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1066
    new-instance v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsTask;

    invoke-direct {v0, p1, p0, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsTask;-><init>(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)V

    return-object v0
.end method

.method protected bridge synthetic createTask(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DmTask;
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/content/DataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1031
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;->createTask(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/DmTask;

    move-result-object p1

    return-object p1
.end method

.method protected dispatchResult(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Lcom/ebay/common/model/search/following/FollowListData;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
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

    .line 1044
    invoke-interface {p2, p1, p3, p4, p5}, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;->onFollowListChanged(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/model/search/following/FollowListData;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V

    if-eqz p3, :cond_1

    .line 1049
    iget-object p3, p3, Lcom/ebay/common/model/search/following/FollowListData;->savedSearchCacheData:Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    invoke-virtual {p3}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->getFollowedSearches()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    .line 1051
    iget-object p4, p4, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    if-nez p4, :cond_0

    .line 1053
    invoke-virtual {p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadInterests(Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/TaskSync;

    :cond_1
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

    .line 1031
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;

    check-cast p3, Lcom/ebay/common/model/search/following/FollowListData;

    invoke-virtual/range {p0 .. p5}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;->dispatchResult(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Lcom/ebay/common/model/search/following/FollowListData;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V

    return-void
.end method
