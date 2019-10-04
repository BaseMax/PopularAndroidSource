.class final Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowContentHandler;
.super Lcom/ebay/nautilus/domain/content/DmParameterizedTaskHandler;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeleteFollowContentHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DmParameterizedTaskHandler<",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
        "Ljava/lang/String;",
        "Lcom/ebay/nautilus/domain/content/Content<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 852
    sget-object v0, Lcom/ebay/nautilus/domain/content/DmObserverStrategy;->DISPATCH_CALLBACK:Lcom/ebay/nautilus/domain/content/DmObserverStrategy;

    invoke-static {}, Lcom/ebay/nautilus/domain/content/DmResultAdapter;->contentAsResult()Lcom/ebay/nautilus/domain/content/DmResultAdapter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ebay/nautilus/domain/content/DmParameterizedTaskHandler;-><init>(Lcom/ebay/nautilus/domain/content/DmObserverStrategy;Lcom/ebay/nautilus/domain/content/DmResultAdapter;)V

    return-void
.end method


# virtual methods
.method protected createTask(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowTask;
    .locals 1
    .param p1    # Lcom/ebay/common/content/dm/search/FollowingDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 885
    new-instance v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowTask;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowTask;-><init>(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowContentHandler;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)V

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

    .line 847
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;

    check-cast p3, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowContentHandler;->createTask(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowTask;

    move-result-object p1

    return-object p1
.end method

.method protected dispatchResult(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Ljava/lang/String;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 6
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

    .line 877
    iget-object v2, p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;->followType:Lcom/ebay/nautilus/domain/data/FollowType;

    move-object v0, p3

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;->onDeleteFollowComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V

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

    .line 847
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;

    check-cast p3, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;

    check-cast p4, Ljava/lang/String;

    invoke-virtual/range {p0 .. p6}, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowContentHandler;->dispatchResult(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Ljava/lang/String;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V

    return-void
.end method

.method protected setMemoryCacheContent(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;Ljava/lang/String;J)Lcom/ebay/nautilus/domain/content/DmCacheContent;
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
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/ebay/nautilus/domain/content/DmCacheContent<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 861
    invoke-super/range {p0 .. p5}, Lcom/ebay/nautilus/domain/content/DmParameterizedTaskHandler;->setMemoryCacheContent(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Ljava/lang/Object;J)Lcom/ebay/nautilus/domain/content/DmCacheContent;

    move-result-object p3

    .line 862
    iget-object p4, p3, Lcom/ebay/nautilus/domain/content/DmCacheContent;->data:Ljava/lang/Object;

    check-cast p4, Ljava/lang/String;

    .line 864
    new-instance p5, Lcom/ebay/common/model/search/following/FollowListData;

    iget-object v0, p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadFollowsContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;

    .line 865
    invoke-virtual {v0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;->getData(Lcom/ebay/nautilus/domain/content/DataManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/search/following/FollowListData;

    invoke-direct {p5, v0}, Lcom/ebay/common/model/search/following/FollowListData;-><init>(Lcom/ebay/common/model/search/following/FollowListData;)V

    .line 866
    iget-object p2, p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;->followType:Lcom/ebay/nautilus/domain/data/FollowType;

    invoke-virtual {p5, p2, p4}, Lcom/ebay/common/model/search/following/FollowListData;->removeById(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;)V

    .line 867
    iget-object p2, p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadFollowsContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;

    invoke-virtual {p2, p1, p5}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;->setData(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;)V

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

    .line 847
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;

    check-cast p3, Ljava/lang/String;

    invoke-virtual/range {p0 .. p5}, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowContentHandler;->setMemoryCacheContent(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;Ljava/lang/String;J)Lcom/ebay/nautilus/domain/content/DmCacheContent;

    move-result-object p1

    return-object p1
.end method
