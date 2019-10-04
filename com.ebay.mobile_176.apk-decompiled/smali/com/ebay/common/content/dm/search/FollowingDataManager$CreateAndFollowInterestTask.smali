.class final Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;
.super Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CreateAndFollowInterestTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask<",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
        "Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;",
        "Lcom/ebay/nautilus/domain/content/Content<",
        "Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;",
        ">;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;",
        ">;"
    }
.end annotation


# instance fields
.field private final auth:Lcom/ebay/nautilus/domain/app/Authentication;

.field private final country:Lcom/ebay/nautilus/domain/EbayCountry;

.field private createInterest:Lcom/ebay/nautilus/domain/content/Content;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/net/api/search/following/InterestDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final createInterestTask:Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask<",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/net/api/search/following/InterestDescriptor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final deleteFollowTask:Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask<",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private followInterest:Lcom/ebay/nautilus/domain/content/Content;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/model/search/following/FollowDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final followInterestTask:Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask<",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/model/search/following/FollowDescriptor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestContentHandler;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)V
    .locals 0
    .param p1    # Lcom/ebay/common/content/dm/search/FollowingDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestContentHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1348
    invoke-virtual {p3, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestContentHandler;->createWrapper(Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DmTaskHandler;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask;-><init>(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Lcom/ebay/nautilus/domain/content/DmTaskHandler;Ljava/lang/Object;)V

    .line 1356
    new-instance p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$1;

    invoke-direct {p2, p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$1;-><init>(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;)V

    iput-object p2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->deleteFollowTask:Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;

    .line 1388
    new-instance p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$2;

    invoke-direct {p2, p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$2;-><init>(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;)V

    iput-object p2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->createInterestTask:Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;

    .line 1424
    new-instance p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$3;

    invoke-direct {p2, p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask$3;-><init>(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;)V

    iput-object p2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->followInterestTask:Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;

    .line 1349
    invoke-virtual {p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->getParams()Lcom/ebay/nautilus/domain/content/dm/UserContextObservingDataManager$KeyBase;

    move-result-object p2

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;

    iget-object p2, p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    iput-object p2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    .line 1350
    iget-object p1, p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->userContext:Lcom/ebay/nautilus/domain/content/dm/UserContext;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->ensureCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    return-void
.end method

.method static synthetic access$1000(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;)Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;
    .locals 0

    .line 1335
    iget-object p0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->followInterestTask:Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;)V
    .locals 0

    .line 1335
    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->start(Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;Ljava/lang/Object;)V
    .locals 0

    .line 1335
    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->deliverResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;
    .locals 0

    .line 1335
    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1402(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;Lcom/ebay/nautilus/domain/content/Content;)Lcom/ebay/nautilus/domain/content/Content;
    .locals 0

    .line 1335
    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->followInterest:Lcom/ebay/nautilus/domain/content/Content;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;)Lcom/ebay/nautilus/domain/app/Authentication;
    .locals 0

    .line 1335
    iget-object p0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;)Lcom/ebay/nautilus/domain/EbayCountry;
    .locals 0

    .line 1335
    iget-object p0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;
    .locals 0

    .line 1335
    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;)Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;
    .locals 0

    .line 1335
    iget-object p0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->createInterestTask:Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;)V
    .locals 0

    .line 1335
    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->start(Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;)V

    return-void
.end method

.method static synthetic access$800(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;
    .locals 0

    .line 1335
    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;)Lcom/ebay/nautilus/domain/content/Content;
    .locals 0

    .line 1335
    iget-object p0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->createInterest:Lcom/ebay/nautilus/domain/content/Content;

    return-object p0
.end method

.method static synthetic access$902(Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;Lcom/ebay/nautilus/domain/content/Content;)Lcom/ebay/nautilus/domain/content/Content;
    .locals 0

    .line 1335
    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->createInterest:Lcom/ebay/nautilus/domain/content/Content;

    return-object p1
.end method


# virtual methods
.method final handleResult(Z)V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    if-eqz p1, :cond_1

    .line 1519
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->hasRunningTasks()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->createInterest:Lcom/ebay/nautilus/domain/content/Content;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->followInterest:Lcom/ebay/nautilus/domain/content/Content;

    if-nez p1, :cond_1

    :cond_0
    return-void

    .line 1523
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->hasRunningTasks()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 1530
    :cond_2
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->createInterest:Lcom/ebay/nautilus/domain/content/Content;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->followInterest:Lcom/ebay/nautilus/domain/content/Content;

    if-eqz p1, :cond_5

    .line 1532
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->createInterest:Lcom/ebay/nautilus/domain/content/Content;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p1

    .line 1533
    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->followInterest:Lcom/ebay/nautilus/domain/content/Content;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v1

    .line 1536
    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasMessage()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasMessage()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1538
    invoke-virtual {v1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getMessages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getMessages()Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1541
    :cond_3
    invoke-virtual {v1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasMessage()Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_0
    move-object p1, v1

    .line 1544
    :cond_4
    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1549
    :try_start_0
    iget-object v1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->followInterest:Lcom/ebay/nautilus/domain/content/Content;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/search/following/FollowDescriptor;

    .line 1550
    iget-object v2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->createInterest:Lcom/ebay/nautilus/domain/content/Content;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    iput-object v2, v1, Lcom/ebay/common/model/search/following/FollowDescriptor;->interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    .line 1551
    new-instance v2, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    invoke-direct {v2, v1}, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;-><init>(Lcom/ebay/common/model/search/following/FollowDescriptor;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_1

    :catch_0
    const/4 p1, 0x1

    .line 1556
    new-array p1, p1, [Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    const/4 v1, 0x0

    invoke-static {}, Lcom/ebay/nautilus/domain/content/InternalDomainError;->getServerResponseNotValidMessage()Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-static {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->create([Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p1

    goto :goto_1

    :cond_5
    move-object p1, v0

    .line 1561
    :cond_6
    :goto_1
    new-instance v1, Lcom/ebay/nautilus/domain/content/Content;

    invoke-direct {v1, v0, p1}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    invoke-virtual {p0, v1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->deliverResult(Ljava/lang/Object;)V

    return-void
.end method

.method protected startLoad()V
    .locals 3

    .line 1485
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->getParams()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;

    .line 1486
    iget-object v1, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;->deleteId:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 1488
    iget-object v1, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;->interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    if-eqz v1, :cond_0

    .line 1493
    new-instance v0, Lcom/ebay/nautilus/domain/content/Content;

    sget-object v2, Lcom/ebay/nautilus/kernel/content/ResultStatus;->SUCCESS:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    iput-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->createInterest:Lcom/ebay/nautilus/domain/content/Content;

    .line 1494
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->followInterestTask:Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;

    invoke-virtual {p0, v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->start(Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;)V

    goto :goto_0

    .line 1496
    :cond_0
    iget-object v0, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;->interestParameters:Lcom/ebay/common/net/api/search/following/InterestParameters;

    if-eqz v0, :cond_1

    .line 1500
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->createInterestTask:Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;

    invoke-virtual {p0, v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->start(Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;)V

    goto :goto_0

    .line 1505
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->getHandler()Lcom/ebay/nautilus/domain/content/DmTaskHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/DmTaskHandler;->cancelLoad()Z

    goto :goto_0

    .line 1510
    :cond_2
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->deleteFollowTask:Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;

    invoke-virtual {p0, v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;->start(Lcom/ebay/nautilus/domain/content/DmMultiAsyncTask$SubTask;)V

    :goto_0
    return-void
.end method
