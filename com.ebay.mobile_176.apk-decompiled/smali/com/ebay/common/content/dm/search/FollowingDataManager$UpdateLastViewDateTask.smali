.class final Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateTask;
.super Lcom/ebay/nautilus/domain/content/DmAsyncTask;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UpdateLastViewDateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DmAsyncTask<",
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


# instance fields
.field private final auth:Lcom/ebay/nautilus/domain/app/Authentication;

.field private final country:Lcom/ebay/nautilus/domain/EbayCountry;


# direct methods
.method public constructor <init>(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateContentHandler;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)V
    .locals 0
    .param p1    # Lcom/ebay/common/content/dm/search/FollowingDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateContentHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1575
    invoke-virtual {p3, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateContentHandler;->createWrapper(Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DmTaskHandler;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/domain/content/DmAsyncTask;-><init>(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Lcom/ebay/nautilus/domain/content/DmTaskHandler;Ljava/lang/Object;)V

    .line 1576
    invoke-virtual {p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->getParams()Lcom/ebay/nautilus/domain/content/dm/UserContextObservingDataManager$KeyBase;

    move-result-object p2

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;

    iget-object p2, p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    iput-object p2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateTask;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    .line 1577
    iget-object p1, p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->userContext:Lcom/ebay/nautilus/domain/content/dm/UserContext;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->ensureCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateTask;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    return-void
.end method


# virtual methods
.method protected loadInBackground()Lcom/ebay/nautilus/domain/content/Content;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 1583
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateTask;->getParams()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;

    .line 1585
    new-instance v7, Lcom/ebay/common/net/api/search/following/PatchFollowRequest;

    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateTask;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    iget-object v2, v1, Lcom/ebay/nautilus/domain/app/Authentication;->iafToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateTask;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    iget-object v4, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;->entityId:Ljava/lang/String;

    iget-object v5, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;->followType:Lcom/ebay/nautilus/domain/data/FollowType;

    iget-object v6, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;->lastViewDate:Ljava/util/Date;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/ebay/common/net/api/search/following/PatchFollowRequest;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/EbayCountry;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/FollowType;Ljava/util/Date;)V

    .line 1592
    invoke-virtual {p0, v7}, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateTask;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/net/api/search/following/EmptyResponse;

    .line 1593
    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/following/EmptyResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v1

    .line 1596
    invoke-virtual {v1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1598
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateTask;->getDataManager()Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    .line 1601
    invoke-static {v2}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->access$200(Lcom/ebay/common/content/dm/search/FollowingDataManager;)Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;->getFromCache(Lcom/ebay/nautilus/domain/content/DataManager;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    if-eqz v3, :cond_0

    .line 1604
    iget-object v4, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;->entityId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->findByInterestId(Ljava/lang/String;)Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    .line 1607
    iput-boolean v5, v4, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->newItems:Z

    .line 1608
    iget-wide v5, v4, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->sinceTime:J

    iput-wide v5, v4, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->viewTime:J

    .line 1609
    iget-object v5, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;->lastViewDate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->sinceTime:J

    .line 1610
    iget-object v5, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;->lastViewDate:Ljava/util/Date;

    invoke-static {v5}, Lcom/ebay/nautilus/domain/net/EbayDateUtils;->formatIso8601DateTimeUtc(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->lastViewDate:Ljava/lang/String;

    .line 1611
    invoke-virtual {v3, v4}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->update(Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;)V

    .line 1612
    invoke-static {v2}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->access$200(Lcom/ebay/common/content/dm/search/FollowingDataManager;)Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;->putInCache(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;)V

    .line 1617
    :cond_0
    new-instance v2, Lcom/ebay/nautilus/domain/content/Content;

    iget-object v0, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;->lastViewDate:Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    return-object v2
.end method

.method protected bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 1565
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateTask;->loadInBackground()Lcom/ebay/nautilus/domain/content/Content;

    move-result-object v0

    return-object v0
.end method
