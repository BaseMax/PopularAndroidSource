.class final Lcom/ebay/common/content/dm/search/FollowingDataManager$FlushCachesContentHandler;
.super Lcom/ebay/nautilus/domain/content/DmTaskHandler;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FlushCachesContentHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DmTaskHandler<",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
        "Ljava/lang/Boolean;",
        "Lcom/ebay/nautilus/domain/content/Content<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 707
    sget-object v0, Lcom/ebay/nautilus/domain/content/DmObserverStrategy;->DISPATCH_CALLBACK:Lcom/ebay/nautilus/domain/content/DmObserverStrategy;

    invoke-static {}, Lcom/ebay/nautilus/domain/content/DmResultAdapter;->contentAsResult()Lcom/ebay/nautilus/domain/content/DmResultAdapter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ebay/nautilus/domain/content/DmTaskHandler;-><init>(Lcom/ebay/nautilus/domain/content/DmObserverStrategy;Lcom/ebay/nautilus/domain/content/DmResultAdapter;)V

    return-void
.end method


# virtual methods
.method protected createTask(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/common/content/dm/search/FollowingDataManager$FlushCachesTask;
    .locals 1
    .param p1    # Lcom/ebay/common/content/dm/search/FollowingDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 739
    new-instance v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$FlushCachesTask;

    invoke-direct {v0, p1, p0, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$FlushCachesTask;-><init>(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$FlushCachesContentHandler;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)V

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

    .line 702
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$FlushCachesContentHandler;->createTask(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/common/content/dm/search/FollowingDataManager$FlushCachesTask;

    move-result-object p1

    return-object p1
.end method

.method protected dispatchResult(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Ljava/lang/Boolean;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
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

    .line 731
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 730
    invoke-interface {p2, p1, p3, p4, p5}, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;->onFlushCachesComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;ZLcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V

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

    .line 702
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual/range {p0 .. p5}, Lcom/ebay/common/content/dm/search/FollowingDataManager$FlushCachesContentHandler;->dispatchResult(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Ljava/lang/Boolean;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V

    return-void
.end method

.method protected setMemoryCacheContent(Lcom/ebay/common/content/dm/search/FollowingDataManager;Ljava/lang/Boolean;J)Lcom/ebay/nautilus/domain/content/DmCacheContent;
    .locals 0
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
            "Ljava/lang/Boolean;",
            "J)",
            "Lcom/ebay/nautilus/domain/content/DmCacheContent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 716
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/domain/content/DmTaskHandler;->setMemoryCacheContent(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;J)Lcom/ebay/nautilus/domain/content/DmCacheContent;

    move-result-object p2

    .line 718
    iget-object p3, p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadFollowsContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;

    invoke-virtual {p3, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;->clear(Lcom/ebay/nautilus/domain/content/DataManager;)V

    .line 719
    invoke-static {p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->access$100(Lcom/ebay/common/content/dm/search/FollowingDataManager;)Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsContentHandler;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsContentHandler;->clear(Lcom/ebay/nautilus/domain/content/DataManager;)V

    .line 720
    invoke-static {p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->access$200(Lcom/ebay/common/content/dm/search/FollowingDataManager;)Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;->clear(Lcom/ebay/nautilus/domain/content/DataManager;)V

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

    .line 702
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ebay/common/content/dm/search/FollowingDataManager$FlushCachesContentHandler;->setMemoryCacheContent(Lcom/ebay/common/content/dm/search/FollowingDataManager;Ljava/lang/Boolean;J)Lcom/ebay/nautilus/domain/content/DmCacheContent;

    move-result-object p1

    return-object p1
.end method
