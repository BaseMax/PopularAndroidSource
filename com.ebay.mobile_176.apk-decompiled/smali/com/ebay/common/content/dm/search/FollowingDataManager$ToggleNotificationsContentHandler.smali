.class final Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationsContentHandler;
.super Lcom/ebay/nautilus/domain/content/DmParameterizedTaskHandler;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ToggleNotificationsContentHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DmParameterizedTaskHandler<",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
        "Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;",
        "Lcom/ebay/nautilus/domain/content/Content<",
        "Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;",
        ">;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 951
    sget-object v0, Lcom/ebay/nautilus/domain/content/DmObserverStrategy;->DISPATCH_CALLBACK:Lcom/ebay/nautilus/domain/content/DmObserverStrategy;

    .line 952
    invoke-static {}, Lcom/ebay/nautilus/domain/content/DmResultAdapter;->contentAsResult()Lcom/ebay/nautilus/domain/content/DmResultAdapter;

    move-result-object v1

    .line 951
    invoke-direct {p0, v0, v1}, Lcom/ebay/nautilus/domain/content/DmParameterizedTaskHandler;-><init>(Lcom/ebay/nautilus/domain/content/DmObserverStrategy;Lcom/ebay/nautilus/domain/content/DmResultAdapter;)V

    return-void
.end method


# virtual methods
.method protected createTask(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationTask;
    .locals 1
    .param p1    # Lcom/ebay/common/content/dm/search/FollowingDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1000
    new-instance v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationTask;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationTask;-><init>(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationsContentHandler;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)V

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

    .line 945
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;

    check-cast p3, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationsContentHandler;->createTask(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationTask;

    move-result-object p1

    return-object p1
.end method

.method protected dispatchResult(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
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

    .line 992
    invoke-interface {p3, p1, p4, p5, p6}, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;->onToggleNotificationComplete(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V

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

    .line 945
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;

    check-cast p3, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;

    check-cast p4, Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;

    invoke-virtual/range {p0 .. p6}, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationsContentHandler;->dispatchResult(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V

    return-void
.end method

.method protected setMemoryCacheContent(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;J)Lcom/ebay/nautilus/domain/content/DmCacheContent;
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
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;",
            "Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;",
            "J)",
            "Lcom/ebay/nautilus/domain/content/DmCacheContent<",
            "Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;",
            ">;"
        }
    .end annotation

    .line 963
    invoke-super/range {p0 .. p5}, Lcom/ebay/nautilus/domain/content/DmParameterizedTaskHandler;->setMemoryCacheContent(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Ljava/lang/Object;J)Lcom/ebay/nautilus/domain/content/DmCacheContent;

    move-result-object p3

    .line 964
    iget-object p4, p3, Lcom/ebay/nautilus/domain/content/DmCacheContent;->data:Ljava/lang/Object;

    check-cast p4, Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;

    .line 966
    new-instance p5, Lcom/ebay/common/model/search/following/FollowListData;

    iget-object v0, p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadFollowsContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;

    .line 967
    invoke-virtual {v0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;->getData(Lcom/ebay/nautilus/domain/content/DataManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/search/following/FollowListData;

    invoke-direct {p5, v0}, Lcom/ebay/common/model/search/following/FollowListData;-><init>(Lcom/ebay/common/model/search/following/FollowListData;)V

    .line 969
    iget-object v0, p5, Lcom/ebay/common/model/search/following/FollowListData;->savedSearchCacheData:Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    iget-object v1, p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;->id:Ljava/lang/String;

    .line 970
    invoke-virtual {v0, v1}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->findByInterestId(Ljava/lang/String;)Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 975
    iget-boolean p2, p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;->toggleOn:Z

    if-eqz p2, :cond_0

    .line 976
    iget-object p2, v0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->notifications:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 978
    :cond_0
    iget-object p2, v0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->notifications:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 980
    :goto_0
    iget-object p2, p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadFollowsContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;

    invoke-virtual {p2, p1, p5}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;->setData(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;)V

    :cond_1
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

    .line 945
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;

    check-cast p3, Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;

    invoke-virtual/range {p0 .. p5}, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationsContentHandler;->setMemoryCacheContent(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;J)Lcom/ebay/nautilus/domain/content/DmCacheContent;

    move-result-object p1

    return-object p1
.end method
