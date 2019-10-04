.class final Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersTask;
.super Lcom/ebay/nautilus/domain/content/DmAsyncTask;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GetFollowersTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DmAsyncTask<",
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


# instance fields
.field private final auth:Lcom/ebay/nautilus/domain/app/Authentication;

.field private final country:Lcom/ebay/nautilus/domain/EbayCountry;


# direct methods
.method public constructor <init>(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersContentHandler;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)V
    .locals 0
    .param p1    # Lcom/ebay/common/content/dm/search/FollowingDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersContentHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1741
    invoke-virtual {p3, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersContentHandler;->createWrapper(Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DmTaskHandler;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/domain/content/DmAsyncTask;-><init>(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Lcom/ebay/nautilus/domain/content/DmTaskHandler;Ljava/lang/Object;)V

    .line 1742
    invoke-virtual {p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->getParams()Lcom/ebay/nautilus/domain/content/dm/UserContextObservingDataManager$KeyBase;

    move-result-object p2

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;

    iget-object p2, p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    iput-object p2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersTask;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    .line 1743
    iget-object p1, p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->userContext:Lcom/ebay/nautilus/domain/content/dm/UserContext;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->ensureCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersTask;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    return-void
.end method


# virtual methods
.method protected loadInBackground()Lcom/ebay/nautilus/domain/content/Content;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/net/api/search/following/FollowerSummary;",
            ">;"
        }
    .end annotation

    .line 1749
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersTask;->getParams()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersParams;

    .line 1751
    new-instance v1, Lcom/ebay/common/net/api/search/following/GetFollowersRequest;

    iget-object v2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersTask;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/app/Authentication;->iafToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersTask;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    iget-object v4, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersParams;->followType:Lcom/ebay/nautilus/domain/data/FollowType;

    iget-object v0, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersParams;->id:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/ebay/common/net/api/search/following/GetFollowersRequest;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/EbayCountry;Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;)V

    .line 1752
    invoke-virtual {p0, v1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersTask;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/search/following/GetFollowersResponse;

    .line 1753
    invoke-virtual {v0}, Lcom/ebay/common/net/api/search/following/GetFollowersResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v1

    .line 1755
    new-instance v2, Lcom/ebay/nautilus/domain/content/Content;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/following/GetFollowersResponse;->followerSummary:Lcom/ebay/common/net/api/search/following/FollowerSummary;

    invoke-direct {v2, v0, v1}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    return-object v2
.end method

.method protected bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 1731
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersTask;->loadInBackground()Lcom/ebay/nautilus/domain/content/Content;

    move-result-object v0

    return-object v0
.end method
