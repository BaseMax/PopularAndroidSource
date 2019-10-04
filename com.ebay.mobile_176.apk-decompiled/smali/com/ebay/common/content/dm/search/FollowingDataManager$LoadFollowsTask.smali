.class final Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsTask;
.super Lcom/ebay/nautilus/domain/content/DmAsyncTask;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadFollowsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DmAsyncTask<",
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


# instance fields
.field private final auth:Lcom/ebay/nautilus/domain/app/Authentication;

.field private final country:Lcom/ebay/nautilus/domain/EbayCountry;


# direct methods
.method public constructor <init>(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)V
    .locals 1
    .param p1    # Lcom/ebay/common/content/dm/search/FollowingDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1770
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/ebay/nautilus/domain/content/DmAsyncTask;-><init>(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Lcom/ebay/nautilus/domain/content/DmTaskHandler;Ljava/lang/Object;)V

    .line 1771
    invoke-virtual {p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->getParams()Lcom/ebay/nautilus/domain/content/dm/UserContextObservingDataManager$KeyBase;

    move-result-object p2

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;

    iget-object p2, p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    iput-object p2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsTask;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    .line 1772
    iget-object p1, p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->userContext:Lcom/ebay/nautilus/domain/content/dm/UserContext;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->ensureCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsTask;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    return-void
.end method


# virtual methods
.method protected loadInBackground()Lcom/ebay/nautilus/domain/content/Content;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/model/search/following/FollowListData;",
            ">;"
        }
    .end annotation

    .line 1778
    new-instance v0, Lcom/ebay/common/net/api/search/following/GetFollowsRequest;

    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsTask;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/app/Authentication;->iafToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsTask;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/net/api/search/following/GetFollowsRequest;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/EbayCountry;)V

    .line 1779
    invoke-virtual {p0, v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsTask;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/search/following/GetFollowsResponse;

    .line 1780
    invoke-virtual {v0}, Lcom/ebay/common/net/api/search/following/GetFollowsResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v1

    .line 1782
    iget-object v2, v0, Lcom/ebay/common/net/api/search/following/GetFollowsResponse;->follows:Lcom/ebay/common/model/search/following/FollowList;

    if-eqz v2, :cond_0

    .line 1783
    new-instance v2, Lcom/ebay/common/model/search/following/FollowListData;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/following/GetFollowsResponse;->follows:Lcom/ebay/common/model/search/following/FollowList;

    invoke-direct {v2, v0}, Lcom/ebay/common/model/search/following/FollowListData;-><init>(Lcom/ebay/common/model/search/following/FollowList;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1784
    :goto_0
    new-instance v0, Lcom/ebay/nautilus/domain/content/Content;

    invoke-direct {v0, v2, v1}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    return-object v0
.end method

.method protected bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 1759
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsTask;->loadInBackground()Lcom/ebay/nautilus/domain/content/Content;

    move-result-object v0

    return-object v0
.end method
