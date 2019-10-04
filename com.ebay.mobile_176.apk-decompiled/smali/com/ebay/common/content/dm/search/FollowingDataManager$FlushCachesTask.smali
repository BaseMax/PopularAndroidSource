.class final Lcom/ebay/common/content/dm/search/FollowingDataManager$FlushCachesTask;
.super Lcom/ebay/nautilus/domain/content/DmAsyncTask;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FlushCachesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DmAsyncTask<",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
        "Ljava/lang/Boolean;",
        "Lcom/ebay/nautilus/domain/content/Content<",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$FlushCachesContentHandler;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)V
    .locals 1
    .param p1    # Lcom/ebay/common/content/dm/search/FollowingDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/common/content/dm/search/FollowingDataManager$FlushCachesContentHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1221
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/ebay/nautilus/domain/content/DmAsyncTask;-><init>(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Lcom/ebay/nautilus/domain/content/DmTaskHandler;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected loadInBackground()Lcom/ebay/nautilus/domain/content/Content;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1227
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$FlushCachesTask;->getDataManager()Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    .line 1229
    invoke-virtual {v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->getFollowedSearchesCacheManager()Lcom/ebay/nautilus/kernel/cache/MultiTierTtlCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->getParams()Lcom/ebay/nautilus/domain/content/dm/UserContextObservingDataManager$KeyBase;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;

    iget-object v0, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/app/Authentication;->user:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/ebay/nautilus/kernel/cache/MultiTierTtlCache;->remove(Ljava/lang/String;)Z

    move-result v0

    .line 1230
    new-instance v1, Lcom/ebay/nautilus/domain/content/Content;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method protected bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 1215
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$FlushCachesTask;->loadInBackground()Lcom/ebay/nautilus/domain/content/Content;

    move-result-object v0

    return-object v0
.end method
