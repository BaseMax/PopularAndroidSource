.class final Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestContentHandler;
.super Lcom/ebay/nautilus/domain/content/DmParameterizedTaskHandler;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CreateAndFollowInterestContentHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DmParameterizedTaskHandler<",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
        "Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;",
        "Lcom/ebay/nautilus/domain/content/Content<",
        "Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;",
        ">;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 750
    sget-object v0, Lcom/ebay/nautilus/domain/content/DmObserverStrategy;->SINGLE_CALLBACK:Lcom/ebay/nautilus/domain/content/DmObserverStrategy;

    invoke-static {}, Lcom/ebay/nautilus/domain/content/DmResultAdapter;->contentAsResult()Lcom/ebay/nautilus/domain/content/DmResultAdapter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ebay/nautilus/domain/content/DmParameterizedTaskHandler;-><init>(Lcom/ebay/nautilus/domain/content/DmObserverStrategy;Lcom/ebay/nautilus/domain/content/DmResultAdapter;)V

    return-void
.end method


# virtual methods
.method protected createTask(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;
    .locals 1
    .param p1    # Lcom/ebay/common/content/dm/search/FollowingDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 790
    new-instance v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;-><init>(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestContentHandler;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)V

    return-object v0
.end method

.method protected bridge synthetic createTask(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DmTask;
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/content/DataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 743
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;

    check-cast p3, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestContentHandler;->createTask(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;

    move-result-object p1

    return-object p1
.end method

.method protected dispatchResult(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 7
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

    .line 778
    iget-object v0, p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;->deleteId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 779
    sget-object v3, Lcom/ebay/nautilus/domain/data/FollowType;->INTEREST:Lcom/ebay/nautilus/domain/data/FollowType;

    iget-object v4, p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;->deleteId:Ljava/lang/String;

    move-object v1, p3

    move-object v2, p1

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;->onDeleteFollowComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V

    .line 782
    :cond_0
    invoke-interface {p3, p1, p4, p5, p6}, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;->onFollowSearchComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/model/search/following/FollowDescriptor;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V

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

    .line 743
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;

    check-cast p3, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;

    check-cast p4, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    invoke-virtual/range {p0 .. p6}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestContentHandler;->dispatchResult(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V

    return-void
.end method

.method protected setMemoryCacheContent(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;J)Lcom/ebay/nautilus/domain/content/DmCacheContent;
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
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;",
            "Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;",
            "J)",
            "Lcom/ebay/nautilus/domain/content/DmCacheContent<",
            "Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;",
            ">;"
        }
    .end annotation

    .line 759
    invoke-super/range {p0 .. p5}, Lcom/ebay/nautilus/domain/content/DmParameterizedTaskHandler;->setMemoryCacheContent(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Ljava/lang/Object;J)Lcom/ebay/nautilus/domain/content/DmCacheContent;

    move-result-object p4

    .line 761
    new-instance p5, Lcom/ebay/common/model/search/following/FollowListData;

    iget-object v0, p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadFollowsContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;

    invoke-virtual {v0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;->getData(Lcom/ebay/nautilus/domain/content/DataManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/search/following/FollowListData;

    invoke-direct {p5, v0}, Lcom/ebay/common/model/search/following/FollowListData;-><init>(Lcom/ebay/common/model/search/following/FollowListData;)V

    .line 764
    iget-object v0, p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;->deleteId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 765
    sget-object v0, Lcom/ebay/nautilus/domain/data/FollowType;->INTEREST:Lcom/ebay/nautilus/domain/data/FollowType;

    iget-object p2, p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;->deleteId:Ljava/lang/String;

    invoke-virtual {p5, v0, p2}, Lcom/ebay/common/model/search/following/FollowListData;->removeById(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;)V

    .line 767
    :cond_0
    iget-object p2, p5, Lcom/ebay/common/model/search/following/FollowListData;->savedSearchCacheData:Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    invoke-virtual {p2, p3}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->add(Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;)Z

    .line 768
    iget-object p2, p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadFollowsContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;

    invoke-virtual {p2, p1, p5}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;->setData(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;)V

    return-object p4
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

    .line 743
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;

    check-cast p3, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    invoke-virtual/range {p0 .. p5}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestContentHandler;->setMemoryCacheContent(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;J)Lcom/ebay/nautilus/domain/content/DmCacheContent;

    move-result-object p1

    return-object p1
.end method
