.class final Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;
.super Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadInterestsTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$SetInterestsCache;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestTask;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestsCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask<",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;",
        "Lcom/ebay/nautilus/domain/content/Content<",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;",
        ">;",
        "Lcom/ebay/common/model/search/following/FollowListData;",
        ">;"
    }
.end annotation


# instance fields
.field private final auth:Lcom/ebay/nautilus/domain/app/Authentication;

.field private final country:Lcom/ebay/nautilus/domain/EbayCountry;

.field interests:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/model/search/following/FollowListData;Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsContentHandler;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)V
    .locals 0
    .param p1    # Lcom/ebay/common/content/dm/search/FollowingDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsContentHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2059
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask;-><init>(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Lcom/ebay/nautilus/domain/content/DmTaskHandler;Ljava/lang/Object;)V

    .line 2051
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->interests:Ljava/util/Queue;

    .line 2060
    invoke-virtual {p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->getParams()Lcom/ebay/nautilus/domain/content/dm/UserContextObservingDataManager$KeyBase;

    move-result-object p2

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;

    iget-object p2, p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    iput-object p2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    .line 2061
    iget-object p1, p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->userContext:Lcom/ebay/nautilus/domain/content/dm/UserContext;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->ensureCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    return-void
.end method

.method static synthetic access$2500(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;)V
    .locals 0

    .line 2047
    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->start(Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;)Lcom/ebay/nautilus/domain/app/Authentication;
    .locals 0

    .line 2047
    iget-object p0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;)Lcom/ebay/nautilus/domain/EbayCountry;
    .locals 0

    .line 2047
    iget-object p0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;
    .locals 0

    .line 2047
    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;)Z
    .locals 0

    .line 2047
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->hasRunningTasks()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;)V
    .locals 0

    .line 2047
    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->start(Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;)V

    return-void
.end method


# virtual methods
.method final handleResult(Z)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    if-nez p1, :cond_3

    .line 2081
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->hasRunningTasks()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 2085
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2087
    :cond_1
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->interests:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2089
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->interests:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/content/Content;

    .line 2090
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2092
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;

    iget-object v0, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;->interests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    .line 2093
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2096
    :cond_2
    new-instance v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;

    invoke-direct {v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;-><init>()V

    .line 2097
    iput-object p1, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;->interests:Ljava/util/List;

    .line 2098
    new-instance p1, Lcom/ebay/nautilus/domain/content/Content;

    invoke-direct {p1, v0}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;)V

    .line 2100
    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->deliverResult(Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method protected initialize()Lcom/ebay/nautilus/kernel/content/ResultStatus;
    .locals 3

    .line 2067
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->getParams()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2068
    new-array v0, v0, [Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    const/4 v1, 0x0

    invoke-static {}, Lcom/ebay/nautilus/domain/content/InternalDomainError;->getInvalidArgumentMessage()Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->create([Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v0

    return-object v0

    .line 2069
    :cond_0
    invoke-super {p0}, Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask;->initialize()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v0

    return-object v0
.end method

.method protected startLoad()V
    .locals 2

    .line 2075
    new-instance v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestsCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask$LoadInterestsCache;-><init>(Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;Lcom/ebay/common/content/dm/search/FollowingDataManager$1;)V

    invoke-virtual {p0, v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;->start(Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;)V

    return-void
.end method
