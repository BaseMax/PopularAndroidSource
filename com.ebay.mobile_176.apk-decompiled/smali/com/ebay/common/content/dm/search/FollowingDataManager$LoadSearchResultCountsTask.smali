.class final Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;
.super Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadSearchResultCountsTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$SetFollowedSearchCache;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadFollowedSearchCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask<",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
        "Lcom/ebay/common/net/api/search/following/FollowedSearchList;",
        "Lcom/ebay/nautilus/domain/content/Content<",
        "Lcom/ebay/common/net/api/search/following/FollowedSearchList;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final maxConcurrentSearchTasks:I


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

.field final searchCountLoadLimit:I

.field searchesToLoad:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1794
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$I;->followingDataManagerMaxAsyncSearchRequests:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$I;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropInteger;)I

    move-result v0

    sput v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->maxConcurrentSearchTasks:I

    return-void
.end method

.method public constructor <init>(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)V
    .locals 1
    .param p1    # Lcom/ebay/common/content/dm/search/FollowingDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1801
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask;-><init>(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Lcom/ebay/nautilus/domain/content/DmTaskHandler;Ljava/lang/Object;)V

    .line 1795
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    iput-object p3, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->searchesToLoad:Ljava/util/Queue;

    .line 1802
    new-instance p3, Lcom/ebay/nautilus/domain/content/Content;

    invoke-virtual {p2, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;->getData(Lcom/ebay/nautilus/domain/content/DataManager;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->followedSearches:Lcom/ebay/nautilus/domain/content/Content;

    .line 1803
    invoke-virtual {p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;->getSearchCountLoadLimit()I

    move-result p1

    iput p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->searchCountLoadLimit:I

    return-void
.end method

.method static synthetic access$1600(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;Lcom/ebay/common/net/api/search/following/FollowedSearchList;Z)V
    .locals 0

    .line 1788
    invoke-direct {p0, p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->addSearchesToLoad(Lcom/ebay/common/net/api/search/following/FollowedSearchList;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;
    .locals 0

    .line 1788
    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;
    .locals 0

    .line 1788
    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;)V
    .locals 0

    .line 1788
    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->start(Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;)Z
    .locals 0

    .line 1788
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->hasRunningTasks()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;Ljava/lang/Object;)V
    .locals 0

    .line 1788
    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->deliverResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;)V
    .locals 0

    .line 1788
    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->start(Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;Ljava/lang/Object;)V
    .locals 0

    .line 1788
    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->deliverResult(Ljava/lang/Object;)V

    return-void
.end method

.method private addSearchesToLoad(Lcom/ebay/common/net/api/search/following/FollowedSearchList;Z)V
    .locals 5

    .line 1861
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1862
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1863
    invoke-virtual {p1}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->getFollowedSearches()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    .line 1866
    iget v3, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->searchCountLoadLimit:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    iget v4, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->searchCountLoadLimit:I

    if-lt v3, v4, :cond_0

    goto :goto_1

    .line 1869
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    sget v4, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->maxConcurrentSearchTasks:I

    if-ge v3, v4, :cond_1

    .line 1870
    new-instance v3, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;

    invoke-direct {v3, p0, v1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadSearchResultCountTask;-><init>(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;Z)V

    invoke-virtual {p0, v3}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->start(Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;)V

    goto :goto_0

    .line 1872
    :cond_1
    iget-object v3, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->searchesToLoad:Ljava/util/Queue;

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method final handleResult(Z)V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    if-nez p1, :cond_0

    .line 1817
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->followedSearches:Lcom/ebay/nautilus/domain/content/Content;

    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected startLoad()V
    .locals 2

    .line 1809
    new-instance v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadFollowedSearchCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask$LoadFollowedSearchCache;-><init>(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;Lcom/ebay/common/content/dm/search/FollowingDataManager$1;)V

    invoke-virtual {p0, v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;->start(Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;)V

    return-void
.end method
