.class final Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowTask;
.super Lcom/ebay/nautilus/domain/content/DmAsyncTask;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BulkDeleteFollowTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DmAsyncTask<",
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


# instance fields
.field private final auth:Lcom/ebay/nautilus/domain/app/Authentication;

.field private final country:Lcom/ebay/nautilus/domain/EbayCountry;


# direct methods
.method public constructor <init>(Lcom/ebay/common/content/dm/search/FollowingDataManager;Ljava/util/Set;Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowContentHandler;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)V
    .locals 0
    .param p1    # Lcom/ebay/common/content/dm/search/FollowingDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowContentHandler;
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
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowContentHandler;",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
            ")V"
        }
    .end annotation

    .line 1680
    invoke-virtual {p3, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowContentHandler;->createWrapper(Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DmTaskHandler;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/domain/content/DmAsyncTask;-><init>(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Lcom/ebay/nautilus/domain/content/DmTaskHandler;Ljava/lang/Object;)V

    .line 1681
    invoke-virtual {p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->getParams()Lcom/ebay/nautilus/domain/content/dm/UserContextObservingDataManager$KeyBase;

    move-result-object p2

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;

    iget-object p2, p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    iput-object p2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowTask;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    .line 1682
    iget-object p1, p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->userContext:Lcom/ebay/nautilus/domain/content/dm/UserContext;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->ensureCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowTask;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    return-void
.end method


# virtual methods
.method protected loadInBackground()Lcom/ebay/nautilus/domain/content/Content;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/FollowType;",
            ">;>;>;"
        }
    .end annotation

    .line 1688
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowTask;->getParams()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1690
    new-instance v1, Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest;

    iget-object v2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowTask;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/app/Authentication;->iafToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowTask;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    invoke-direct {v1, v0, v2, v3}, Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest;-><init>(Ljava/util/Set;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbayCountry;)V

    .line 1692
    invoke-virtual {p0, v1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowTask;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/net/api/search/following/EmptyResponse;

    .line 1693
    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/following/EmptyResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v1

    .line 1695
    new-instance v2, Lcom/ebay/nautilus/domain/content/Content;

    invoke-direct {v2, v0, v1}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    return-object v2
.end method

.method protected bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 1665
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowTask;->loadInBackground()Lcom/ebay/nautilus/domain/content/Content;

    move-result-object v0

    return-object v0
.end method
