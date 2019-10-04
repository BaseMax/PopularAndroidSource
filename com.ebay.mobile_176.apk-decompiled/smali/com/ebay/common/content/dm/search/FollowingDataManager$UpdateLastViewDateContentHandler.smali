.class final Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateContentHandler;
.super Lcom/ebay/nautilus/domain/content/DmParameterizedTaskHandler;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UpdateLastViewDateContentHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DmParameterizedTaskHandler<",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
        "Ljava/util/Date;",
        "Lcom/ebay/nautilus/domain/content/Content<",
        "Ljava/util/Date;",
        ">;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 801
    sget-object v0, Lcom/ebay/nautilus/domain/content/DmObserverStrategy;->DISPATCH_CALLBACK:Lcom/ebay/nautilus/domain/content/DmObserverStrategy;

    invoke-static {}, Lcom/ebay/nautilus/domain/content/DmResultAdapter;->contentAsResult()Lcom/ebay/nautilus/domain/content/DmResultAdapter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ebay/nautilus/domain/content/DmParameterizedTaskHandler;-><init>(Lcom/ebay/nautilus/domain/content/DmObserverStrategy;Lcom/ebay/nautilus/domain/content/DmResultAdapter;)V

    return-void
.end method


# virtual methods
.method protected createTask(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateTask;
    .locals 1
    .param p1    # Lcom/ebay/common/content/dm/search/FollowingDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 843
    new-instance v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateTask;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateTask;-><init>(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateContentHandler;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)V

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

    .line 795
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;

    check-cast p3, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateContentHandler;->createTask(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateTask;

    move-result-object p1

    return-object p1
.end method

.method protected dispatchResult(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Ljava/util/Date;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
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

    .line 835
    invoke-interface {p3, p1, p4, p5, p6}, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;->onUpdateLastViewDateComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;Ljava/util/Date;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V

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

    .line 795
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;

    check-cast p3, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;

    check-cast p4, Ljava/util/Date;

    invoke-virtual/range {p0 .. p6}, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateContentHandler;->dispatchResult(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Ljava/util/Date;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V

    return-void
.end method

.method protected setMemoryCacheContent(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;Ljava/util/Date;J)Lcom/ebay/nautilus/domain/content/DmCacheContent;
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
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;",
            "Ljava/util/Date;",
            "J)",
            "Lcom/ebay/nautilus/domain/content/DmCacheContent<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 810
    invoke-super/range {p0 .. p5}, Lcom/ebay/nautilus/domain/content/DmParameterizedTaskHandler;->setMemoryCacheContent(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Ljava/lang/Object;J)Lcom/ebay/nautilus/domain/content/DmCacheContent;

    move-result-object p3

    .line 811
    iget-object p4, p3, Lcom/ebay/nautilus/domain/content/DmCacheContent;->data:Ljava/lang/Object;

    check-cast p4, Ljava/util/Date;

    .line 813
    invoke-static {p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->access$200(Lcom/ebay/common/content/dm/search/FollowingDataManager;)Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;->getData(Lcom/ebay/nautilus/domain/content/DataManager;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    if-eqz p5, :cond_0

    .line 816
    iget-object p2, p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;->entityId:Ljava/lang/String;

    invoke-virtual {p5, p2}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->findByInterestId(Ljava/lang/String;)Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 819
    iput-boolean v0, p2, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->newItems:Z

    .line 820
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->sinceTime:J

    .line 821
    invoke-static {p4}, Lcom/ebay/nautilus/domain/net/EbayDateUtils;->formatIso8601DateTimeUtc(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p2, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->lastViewDate:Ljava/lang/String;

    .line 822
    invoke-virtual {p5, p2}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->update(Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;)V

    .line 823
    invoke-static {p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->access$200(Lcom/ebay/common/content/dm/search/FollowingDataManager;)Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;

    move-result-object p2

    invoke-virtual {p2, p1, p5}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;->setData(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;)V

    :cond_0
    return-object p3
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

    .line 795
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;

    check-cast p3, Ljava/util/Date;

    invoke-virtual/range {p0 .. p5}, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateContentHandler;->setMemoryCacheContent(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;Ljava/util/Date;J)Lcom/ebay/nautilus/domain/content/DmCacheContent;

    move-result-object p1

    return-object p1
.end method
