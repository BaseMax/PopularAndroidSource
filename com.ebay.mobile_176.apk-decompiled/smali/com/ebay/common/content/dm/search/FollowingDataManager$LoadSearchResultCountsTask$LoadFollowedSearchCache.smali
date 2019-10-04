.class final Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadFollowedSearchCache;
.super Ljava/lang/Object;
.source "FollowingDataManager.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadFollowedSearchCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask<",
        "Lcom/ebay/common/net/api/search/following/FollowedSearchList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;


# direct methods
.method private constructor <init>(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;)V
    .locals 0

    .line 1822
    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadFollowedSearchCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;Lcom/ebay/common/content/dm/search/FollowingDataManager$1;)V
    .locals 0

    .line 1822
    invoke-direct {p0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadFollowedSearchCache;-><init>(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;)V

    return-void
.end method


# virtual methods
.method public handleResult(Lcom/ebay/common/net/api/search/following/FollowedSearchList;Z)V
    .locals 2

    .line 1838
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadFollowedSearchCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    invoke-virtual {v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->getDataManager()Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    if-nez p1, :cond_0

    .line 1841
    iget-object v1, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadFollowsContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;

    .line 1842
    invoke-virtual {v1, v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;->getData(Lcom/ebay/nautilus/domain/content/DataManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/search/following/FollowListData;

    if-eqz v0, :cond_0

    .line 1845
    iget-object p1, v0, Lcom/ebay/common/model/search/following/FollowListData;->savedSearchCacheData:Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    :cond_0
    if-eqz p1, :cond_1

    .line 1851
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadFollowedSearchCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    new-instance v1, Lcom/ebay/nautilus/domain/content/Content;

    invoke-direct {v1, p1}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->followedSearches:Lcom/ebay/nautilus/domain/content/Content;

    if-nez p2, :cond_1

    .line 1853
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadFollowedSearchCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    invoke-static {}, Lcom/ebay/nautilus/domain/content/dm/search/ep/SearchExperienceServiceEpConfiguration;->getInstance()Lcom/ebay/nautilus/domain/content/dm/search/ep/SearchExperienceServiceEpConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/content/dm/search/ep/SearchExperienceServiceEpConfiguration;->isExpSvcEnabled()Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->access$1600(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;Lcom/ebay/common/net/api/search/following/FollowedSearchList;Z)V

    .line 1855
    :cond_1
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadFollowedSearchCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    invoke-virtual {p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->handleResult(Z)V

    return-void
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;Z)V
    .locals 0

    .line 1822
    check-cast p1, Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadFollowedSearchCache;->handleResult(Lcom/ebay/common/net/api/search/following/FollowedSearchList;Z)V

    return-void
.end method

.method public loadInBackground()Lcom/ebay/common/net/api/search/following/FollowedSearchList;
    .locals 2

    .line 1828
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadFollowedSearchCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    iget-object v0, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->followedSearches:Lcom/ebay/nautilus/domain/content/Content;

    if-eqz v0, :cond_0

    .line 1829
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadFollowedSearchCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    iget-object v0, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->followedSearches:Lcom/ebay/nautilus/domain/content/Content;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 1832
    :cond_1
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadFollowedSearchCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    invoke-virtual {v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->getHandler()Lcom/ebay/nautilus/domain/content/DmTaskHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadFollowedSearchCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    invoke-virtual {v1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->getDataManager()Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/content/DmTaskHandler;->getFromCache(Lcom/ebay/nautilus/domain/content/DataManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    :goto_1
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 1822
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadFollowedSearchCache;->loadInBackground()Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    move-result-object v0

    return-object v0
.end method
