.class public final Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;
.super Ljava/lang/Object;
.source "FollowingDataManager.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "LoadSearchResultCountTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask<",
        "Lcom/ebay/nautilus/domain/content/Content<",
        "Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;",
        ">;>;"
    }
.end annotation


# instance fields
.field experienceService:Z

.field followedSearch:Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

.field final synthetic this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;


# direct methods
.method constructor <init>(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;Z)V
    .locals 0

    .line 1885
    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1886
    iput-object p2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->followedSearch:Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    .line 1887
    iput-boolean p3, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->experienceService:Z

    return-void
.end method

.method private loadUsingExpSvc()Lcom/ebay/nautilus/domain/content/Content;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;",
            ">;"
        }
    .end annotation

    .line 1936
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    invoke-virtual {v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1937
    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    invoke-virtual {v1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->getDataManager()Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    invoke-virtual {v1}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->getParams()Lcom/ebay/nautilus/domain/content/dm/UserContextObservingDataManager$KeyBase;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;

    iget-object v4, v1, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    .line 1939
    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->followedSearch:Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    invoke-static {v0, v1}, Lcom/ebay/mobile/search/SearchUtil;->getSearchOptionsForFollowDescriptor(Landroid/content/Context;Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;)Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1942
    new-instance v0, Lcom/ebay/nautilus/domain/content/Content;

    const/4 v1, 0x0

    sget-object v2, Lcom/ebay/nautilus/kernel/content/ResultStatus;->UNKNOWN:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    return-object v0

    .line 1944
    :cond_0
    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->followedSearch:Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->lastViewDate:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->followedSearch:Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->lastViewDate:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->followedSearch:Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->followDate:Ljava/lang/String;

    .line 1947
    :goto_0
    new-instance v5, Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;->getQueryParameters()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v0, "_pgn"

    const/4 v10, 0x1

    .line 1948
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "_ipg"

    .line 1949
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "savedSearchStatus"

    .line 1950
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "_sastarttime"

    .line 1951
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1952
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->followedSearch:Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    invoke-virtual {v0}, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->getDomainCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v3

    .line 1955
    new-instance v0, Lcom/ebay/nautilus/domain/net/api/experience/search/SearchRequest;

    sget-object v6, Lcom/ebay/nautilus/domain/data/experience/search/SearchType;->DEFAULT:Lcom/ebay/nautilus/domain/data/experience/search/SearchType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/ebay/nautilus/domain/net/api/experience/search/SearchRequest;-><init>(Lcom/ebay/nautilus/domain/EbayCountry;Lcom/ebay/nautilus/domain/app/Authentication;Ljava/util/Map;Lcom/ebay/nautilus/domain/data/experience/search/SearchType;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Ljava/lang/String;)V

    .line 1958
    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    invoke-static {v1, v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->access$1800(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/net/api/experience/search/SearchResponse;

    .line 1960
    iget-object v1, v0, Lcom/ebay/nautilus/domain/net/api/experience/search/SearchResponse;->searchData:Lcom/ebay/nautilus/domain/data/experience/search/SearchData;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/ebay/nautilus/domain/net/api/experience/search/SearchResponse;->searchData:Lcom/ebay/nautilus/domain/data/experience/search/SearchData;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/search/SearchData;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/ebay/nautilus/domain/net/api/experience/search/SearchResponse;->searchData:Lcom/ebay/nautilus/domain/data/experience/search/SearchData;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/search/SearchData;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/search/SearchServiceMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/search/SearchServiceMeta;->pagination:Lcom/ebay/nautilus/domain/data/experience/search/Pagination;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/ebay/nautilus/domain/net/api/experience/search/SearchResponse;->searchData:Lcom/ebay/nautilus/domain/data/experience/search/SearchData;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/search/SearchData;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/search/SearchServiceMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/search/SearchServiceMeta;->pagination:Lcom/ebay/nautilus/domain/data/experience/search/Pagination;

    iget v1, v1, Lcom/ebay/nautilus/domain/data/experience/search/Pagination;->totalEntries:I

    .line 1966
    :goto_2
    iget-object v3, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->followedSearch:Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    if-lez v1, :cond_5

    const/4 v2, 0x1

    :cond_5
    iput-boolean v2, v3, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->newItems:Z

    .line 1968
    new-instance v1, Lcom/ebay/nautilus/domain/content/Content;

    iget-object v2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->followedSearch:Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/net/api/experience/search/SearchResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    return-object v1
.end method

.method private loadUsingSaas()Lcom/ebay/nautilus/domain/content/Content;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;",
            ">;"
        }
    .end annotation

    .line 1908
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    .line 1909
    invoke-virtual {v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ebay/mobile/eBayDictionaryProvider;->getDefaultSearchParameters(Landroid/content/Context;Ljava/lang/String;)Lcom/ebay/common/net/api/search/SearchParameters;

    move-result-object v0

    .line 1910
    iget-object v2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->followedSearch:Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    invoke-virtual {v2, v0}, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->getSearchParameters(Lcom/ebay/common/net/api/search/SearchParameters;)Lcom/ebay/common/net/api/search/SearchParameters;

    move-result-object v4

    .line 1911
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->followedSearch:Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    iget-wide v2, v0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->sinceTime:J

    iput-wide v2, v4, Lcom/ebay/common/net/api/search/SearchParameters;->searchSinceTime:J

    const/4 v0, 0x1

    .line 1912
    iput-boolean v0, v4, Lcom/ebay/common/net/api/search/SearchParameters;->newItemsOnly:Z

    .line 1913
    sget-object v2, Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;->CountOnly:Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    iput-object v2, v4, Lcom/ebay/common/net/api/search/SearchParameters;->queryIntent:Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    const/4 v2, 0x0

    .line 1914
    iput-boolean v2, v4, Lcom/ebay/common/net/api/search/SearchParameters;->allowRewrites:Z

    .line 1918
    new-instance v6, Lcom/ebay/common/net/api/search/SearchEventTracker;

    invoke-direct {v6, v4, v1, v1}, Lcom/ebay/common/net/api/search/SearchEventTracker;-><init>(Lcom/ebay/common/net/api/search/SearchParameters;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experimentation/Treatment;)V

    .line 1920
    new-instance v1, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;

    .line 1921
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v7

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;-><init>(Lcom/ebay/common/net/api/search/SearchParameters;ILcom/ebay/common/net/api/search/ISearchEventTracker;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;II)V

    .line 1922
    iget-object v3, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    invoke-static {v3, v1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->access$1700(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/net/api/search/SearchServiceResponse;

    .line 1925
    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v3

    .line 1926
    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/SearchServiceResponse;->getTotalCount()I

    move-result v1

    .line 1929
    iget-object v4, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->followedSearch:Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v4, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->newItems:Z

    .line 1931
    new-instance v0, Lcom/ebay/nautilus/domain/content/Content;

    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->followedSearch:Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    invoke-direct {v0, v1, v3}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    return-object v0
.end method


# virtual methods
.method public handleResult(Lcom/ebay/nautilus/domain/content/Content;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;",
            ">;Z)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1977
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    iget-object v0, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->searchesToLoad:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1979
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    new-instance v1, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;

    iget-object v2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    iget-object v3, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    iget-object v3, v3, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->searchesToLoad:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    iget-boolean v4, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->experienceService:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;-><init>(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;Z)V

    invoke-static {v0, v1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->access$1900(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;)V

    :cond_0
    if-eqz p1, :cond_2

    .line 1985
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1987
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    .line 1988
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    iget-object v0, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->followedSearches:Lcom/ebay/nautilus/domain/content/Content;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    if-nez v0, :cond_1

    .line 1990
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    new-instance v1, Lcom/ebay/nautilus/domain/content/Content;

    new-instance v2, Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    invoke-direct {v2, p1}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;-><init>(Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;)V

    invoke-direct {v1, v2}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->followedSearches:Lcom/ebay/nautilus/domain/content/Content;

    goto :goto_0

    .line 1992
    :cond_1
    invoke-virtual {v0, p1}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->update(Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;)V

    .line 1997
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    invoke-static {p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->access$2000(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 2000
    :cond_3
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    iget-object v0, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->followedSearches:Lcom/ebay/nautilus/domain/content/Content;

    invoke-static {p1, v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->access$2100(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;Ljava/lang/Object;)V

    if-nez p2, :cond_4

    .line 2002
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    new-instance p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$SetFollowedSearchCache;

    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->this$0:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;

    iget-object v1, v1, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->followedSearches:Lcom/ebay/nautilus/domain/content/Content;

    invoke-direct {p2, v0, v1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$SetFollowedSearchCache;-><init>(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;Lcom/ebay/nautilus/domain/content/Content;)V

    invoke-static {p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->access$2200(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;Z)V
    .locals 0

    .line 1878
    check-cast p1, Lcom/ebay/nautilus/domain/content/Content;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->handleResult(Lcom/ebay/nautilus/domain/content/Content;Z)V

    return-void
.end method

.method public loadInBackground()Lcom/ebay/nautilus/domain/content/Content;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;",
            ">;"
        }
    .end annotation

    .line 1894
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->followedSearch:Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1898
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->followedSearch:Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    iget-boolean v0, v0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->newItems:Z

    if-eqz v0, :cond_1

    .line 1899
    new-instance v0, Lcom/ebay/nautilus/domain/content/Content;

    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->followedSearch:Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    sget-object v2, Lcom/ebay/nautilus/kernel/content/ResultStatus;->SUCCESS:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    return-object v0

    .line 1901
    :cond_1
    iget-boolean v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->experienceService:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->loadUsingExpSvc()Lcom/ebay/nautilus/domain/content/Content;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->loadUsingSaas()Lcom/ebay/nautilus/domain/content/Content;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 1878
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;->loadInBackground()Lcom/ebay/nautilus/domain/content/Content;

    move-result-object v0

    return-object v0
.end method
