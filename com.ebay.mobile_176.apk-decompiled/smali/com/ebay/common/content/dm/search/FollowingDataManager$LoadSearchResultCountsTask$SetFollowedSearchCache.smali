.class final Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$SetFollowedSearchCache;
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
    name = "SetFollowedSearchCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field followedSearches:Lcom/ebay/nautilus/domain/content/Content;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/net/api/search/following/FollowedSearchList;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;


# direct methods
.method public constructor <init>(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;Lcom/ebay/nautilus/domain/content/Content;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/net/api/search/following/FollowedSearchList;",
            ">;)V"
        }
    .end annotation

    .line 2012
    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$SetFollowedSearchCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2013
    iput-object p2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$SetFollowedSearchCache;->followedSearches:Lcom/ebay/nautilus/domain/content/Content;

    return-void
.end method


# virtual methods
.method public handleResult(Ljava/lang/Boolean;Z)V
    .locals 0

    .line 2042
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$SetFollowedSearchCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    iget-object p2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$SetFollowedSearchCache;->followedSearches:Lcom/ebay/nautilus/domain/content/Content;

    invoke-static {p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->access$2300(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;Z)V
    .locals 0

    .line 2007
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$SetFollowedSearchCache;->handleResult(Ljava/lang/Boolean;Z)V

    return-void
.end method

.method public loadInBackground()Ljava/lang/Boolean;
    .locals 3

    .line 2020
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$SetFollowedSearchCache;->followedSearches:Lcom/ebay/nautilus/domain/content/Content;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$SetFollowedSearchCache;->followedSearches:Lcom/ebay/nautilus/domain/content/Content;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2024
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$SetFollowedSearchCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    invoke-virtual {v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->getDataManager()Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    .line 2026
    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$SetFollowedSearchCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    invoke-virtual {v1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->getHandler()Lcom/ebay/nautilus/domain/content/DmTaskHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ebay/nautilus/domain/content/DmTaskHandler;->getFromCache(Lcom/ebay/nautilus/domain/content/DataManager;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    if-nez v1, :cond_1

    .line 2029
    new-instance v1, Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    invoke-direct {v1}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;-><init>()V

    .line 2030
    iget-object v2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$SetFollowedSearchCache;->followedSearches:Lcom/ebay/nautilus/domain/content/Content;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    invoke-virtual {v2}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->getFollowedSearches()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->addAll(Ljava/util/List;)Z

    goto :goto_0

    .line 2033
    :cond_1
    iget-object v2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$SetFollowedSearchCache;->followedSearches:Lcom/ebay/nautilus/domain/content/Content;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    invoke-virtual {v2}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->getFollowedSearches()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->updateAll(Ljava/util/List;)V

    .line 2035
    :goto_0
    iget-object v2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$SetFollowedSearchCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    invoke-virtual {v2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->getHandler()Lcom/ebay/nautilus/domain/content/DmTaskHandler;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/ebay/nautilus/domain/content/DmTaskHandler;->putInCache(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 2036
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 2021
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 2007
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$SetFollowedSearchCache;->loadInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
