.class final Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowTask;
.super Lcom/ebay/nautilus/domain/content/DmAsyncTask;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeleteFollowTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DmAsyncTask<",
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


# instance fields
.field private final auth:Lcom/ebay/nautilus/domain/app/Authentication;

.field private final country:Lcom/ebay/nautilus/domain/EbayCountry;


# direct methods
.method public constructor <init>(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowContentHandler;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)V
    .locals 0
    .param p1    # Lcom/ebay/common/content/dm/search/FollowingDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowContentHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1631
    invoke-virtual {p3, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowContentHandler;->createWrapper(Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DmTaskHandler;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/domain/content/DmAsyncTask;-><init>(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Lcom/ebay/nautilus/domain/content/DmTaskHandler;Ljava/lang/Object;)V

    .line 1632
    invoke-virtual {p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->getParams()Lcom/ebay/nautilus/domain/content/dm/UserContextObservingDataManager$KeyBase;

    move-result-object p2

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;

    iget-object p2, p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    iput-object p2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowTask;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    .line 1633
    iget-object p1, p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->userContext:Lcom/ebay/nautilus/domain/content/dm/UserContext;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->ensureCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowTask;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    return-void
.end method


# virtual methods
.method protected loadInBackground()Lcom/ebay/nautilus/domain/content/Content;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1639
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowTask;->getParams()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;

    .line 1642
    sget-object v1, Lcom/ebay/common/content/dm/search/FollowingDataManager$1;->$SwitchMap$com$ebay$nautilus$domain$data$FollowType:[I

    iget-object v2, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;->followType:Lcom/ebay/nautilus/domain/data/FollowType;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/FollowType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1652
    iget-object v1, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;->id:Ljava/lang/String;

    goto :goto_0

    .line 1646
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1656
    :goto_0
    new-instance v2, Lcom/ebay/common/net/api/search/following/DeleteFollowRequest;

    iget-object v3, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;->followType:Lcom/ebay/nautilus/domain/data/FollowType;

    iget-object v4, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowTask;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/app/Authentication;->iafToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowTask;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/ebay/common/net/api/search/following/DeleteFollowRequest;-><init>(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbayCountry;)V

    .line 1658
    invoke-virtual {p0, v2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowTask;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/net/api/search/following/EmptyResponse;

    .line 1659
    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/following/EmptyResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v1

    .line 1661
    new-instance v2, Lcom/ebay/nautilus/domain/content/Content;

    iget-object v0, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;->id:Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    return-object v2
.end method

.method protected bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 1621
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowTask;->loadInBackground()Lcom/ebay/nautilus/domain/content/Content;

    move-result-object v0

    return-object v0
.end method
