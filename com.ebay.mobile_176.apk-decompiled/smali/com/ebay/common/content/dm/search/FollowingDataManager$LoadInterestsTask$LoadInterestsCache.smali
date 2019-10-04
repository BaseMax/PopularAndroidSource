.class final Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestsCache;
.super Ljava/lang/Object;
.source "FollowingDataManager.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadInterestsCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask<",
        "Ljava/util/List<",
        "Lcom/ebay/common/net/api/search/following/InterestDescriptor;",
        ">;>;"
    }
.end annotation


# instance fields
.field collection:Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;

.field final synthetic this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;


# direct methods
.method private constructor <init>(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;)V
    .locals 1

    .line 2104
    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestsCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2106
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestsCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;

    invoke-virtual {p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->getDataManager()Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    invoke-static {p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->access$100(Lcom/ebay/common/content/dm/search/FollowingDataManager;)Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsContentHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestsCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;

    invoke-virtual {v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->getDataManager()Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsContentHandler;->getData(Lcom/ebay/nautilus/domain/content/DataManager;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestsCache;->collection:Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;Lcom/ebay/common/content/dm/search/FollowingDataManager$1;)V
    .locals 0

    .line 2104
    invoke-direct {p0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestsCache;-><init>(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleResult(Ljava/lang/Object;Z)V
    .locals 0

    .line 2104
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestsCache;->handleResult(Ljava/util/List;Z)V

    return-void
.end method

.method public handleResult(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/following/InterestDescriptor;",
            ">;Z)V"
        }
    .end annotation

    .line 2124
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsNautilusInteger;->searchFollowMaxInterestsPerRequest:Lcom/ebay/nautilus/domain/dcs/DcsNautilusInteger;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropInteger;)I

    move-result v0

    .line 2127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2129
    iget-object v2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestsCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;

    invoke-virtual {v2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->getParams()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/model/search/following/FollowListData;

    iget-object v2, v2, Lcom/ebay/common/model/search/following/FollowListData;->savedSearchCacheData:Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    .line 2130
    invoke-virtual {v2}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->getFollowedSearches()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    .line 2133
    iget-object v4, v3, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    if-nez v4, :cond_0

    .line 2134
    iget-object v3, v3, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->interestId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 2139
    new-instance v2, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;

    invoke-direct {v2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;-><init>()V

    .line 2140
    iput-object p1, v2, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;->interests:Ljava/util/List;

    .line 2142
    iget-object v3, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestsCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;

    iget-object v3, v3, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->interests:Ljava/util/Queue;

    new-instance v4, Lcom/ebay/nautilus/domain/content/Content;

    invoke-direct {v4, v2}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2143
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    .line 2144
    iget-wide v2, v2, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->interestId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2148
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 2149
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestsCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;

    invoke-virtual {p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->handleResult(Z)V

    :cond_3
    const/4 p1, 0x0

    .line 2155
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_5

    .line 2158
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int v3, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2157
    invoke-interface {v1, p1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    if-nez p2, :cond_4

    .line 2161
    iget-object v2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestsCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;

    new-instance v4, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestTask;

    iget-object v5, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestsCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;

    invoke-direct {v4, v5, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestTask;-><init>(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;Ljava/util/List;)V

    invoke-static {v2, v4}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->access$2500(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;)V

    :cond_4
    move p1, v3

    goto :goto_2

    :cond_5
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 2104
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestsCache;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/following/InterestDescriptor;",
            ">;"
        }
    .end annotation

    .line 2112
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestsCache;->collection:Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;

    if-nez v0, :cond_0

    .line 2113
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestsCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;

    invoke-virtual {v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->getHandler()Lcom/ebay/nautilus/domain/content/DmTaskHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestsCache;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;

    invoke-virtual {v1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->getDataManager()Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/content/DmTaskHandler;->getFromCache(Lcom/ebay/nautilus/domain/content/DataManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;

    iput-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestsCache;->collection:Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;

    .line 2114
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestsCache;->collection:Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 2117
    :cond_1
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestsCache;->collection:Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;

    iget-object v0, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;->interests:Ljava/util/List;

    return-object v0
.end method
