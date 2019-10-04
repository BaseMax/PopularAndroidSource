.class final Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersContentHandler;
.super Lcom/ebay/nautilus/domain/content/DmParameterizedDataHandler;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GetFollowersContentHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DmParameterizedDataHandler<",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
        "Lcom/ebay/common/net/api/search/following/FollowerSummary;",
        "Lcom/ebay/nautilus/domain/content/Content<",
        "Lcom/ebay/common/net/api/search/following/FollowerSummary;",
        ">;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersParams;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1009
    sget-object v0, Lcom/ebay/nautilus/domain/content/DmObserverStrategy;->DISPATCH_CALLBACK:Lcom/ebay/nautilus/domain/content/DmObserverStrategy;

    .line 1010
    invoke-static {}, Lcom/ebay/nautilus/domain/content/DmResultAdapter;->contentAsResult()Lcom/ebay/nautilus/domain/content/DmResultAdapter;

    move-result-object v1

    .line 1009
    invoke-direct {p0, v0, v1}, Lcom/ebay/nautilus/domain/content/DmParameterizedDataHandler;-><init>(Lcom/ebay/nautilus/domain/content/DmObserverStrategy;Lcom/ebay/nautilus/domain/content/DmResultAdapter;)V

    return-void
.end method


# virtual methods
.method protected createTask(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersTask;
    .locals 1
    .param p1    # Lcom/ebay/common/content/dm/search/FollowingDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1027
    new-instance v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersTask;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersTask;-><init>(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersContentHandler;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)V

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

    .line 1004
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersParams;

    check-cast p3, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersContentHandler;->createTask(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersTask;

    move-result-object p1

    return-object p1
.end method

.method protected dispatchResult(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Lcom/ebay/common/net/api/search/following/FollowerSummary;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
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

    .line 1019
    iget-object v2, p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersParams;->followType:Lcom/ebay/nautilus/domain/data/FollowType;

    move-object v0, p3

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;->onFollowersChanged(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/nautilus/domain/data/FollowType;Lcom/ebay/common/net/api/search/following/FollowerSummary;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V

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

    .line 1004
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersParams;

    check-cast p3, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;

    check-cast p4, Lcom/ebay/common/net/api/search/following/FollowerSummary;

    invoke-virtual/range {p0 .. p6}, Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersContentHandler;->dispatchResult(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;Lcom/ebay/common/net/api/search/following/FollowerSummary;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V

    return-void
.end method
