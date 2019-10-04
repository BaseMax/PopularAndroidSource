.class public Lcom/ebay/common/content/dm/search/FollowingDataManager;
.super Lcom/ebay/nautilus/domain/content/dm/UserContextObservingDataManager;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/content/dm/search/FollowingDataManager$SimpleObserver;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsTask;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountsTask;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsTask;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersTask;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationTask;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowTask;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowTask;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateTask;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestTask;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$FollowEntityTask;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$FlushCachesTask;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsContentHandler;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersContentHandler;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationsContentHandler;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowContentHandler;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowContentHandler;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateContentHandler;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestContentHandler;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$FlushCachesContentHandler;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$FollowContentHandler;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersParams;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateFollowParams;,
        Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/dm/UserContextObservingDataManager<",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;",
        ">;"
    }
.end annotation


# static fields
.field private static followsCacheManager:Lcom/ebay/nautilus/kernel/cache/MultiTierTtlCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/nautilus/kernel/cache/MultiTierTtlCache<",
            "Lcom/ebay/common/net/api/search/following/FollowedSearchList;",
            ">;"
        }
    .end annotation
.end field

.field private static interestsCacheManager:Lcom/ebay/nautilus/kernel/cache/MultiTierTtlCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/nautilus/kernel/cache/MultiTierTtlCache<",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bulkDeleteFollowContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowContentHandler;

.field private final createAndFollowInterestContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestContentHandler;

.field private final deleteFollowContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowContentHandler;

.field private final flushCachesContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$FlushCachesContentHandler;

.field private final followCollectionContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$FollowContentHandler;

.field private final followUserContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$FollowContentHandler;

.field private final loadFollowersContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersContentHandler;

.field final loadFollowsContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;

.field private final loadInterestsContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsContentHandler;

.field private final loadSearchResultCountContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;

.field private final toggleNotificationContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationsContentHandler;

.field private final updateLastViewDateContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateContentHandler;

.field protected final userContext:Lcom/ebay/nautilus/domain/content/dm/UserContext;


# direct methods
.method private constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;)V
    .locals 2

    .line 122
    const-class v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;

    invoke-direct {p0, p1, v0, p2}, Lcom/ebay/nautilus/domain/content/dm/UserContextObservingDataManager;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/Class;Lcom/ebay/nautilus/domain/content/dm/UserContextObservingDataManager$KeyBase;)V

    .line 99
    new-instance p1, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;

    invoke-direct {p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadFollowsContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;

    .line 102
    new-instance p1, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationsContentHandler;

    invoke-direct {p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationsContentHandler;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->toggleNotificationContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationsContentHandler;

    .line 104
    new-instance p1, Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersContentHandler;

    invoke-direct {p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersContentHandler;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadFollowersContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersContentHandler;

    .line 105
    new-instance p1, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowContentHandler;

    invoke-direct {p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowContentHandler;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->deleteFollowContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowContentHandler;

    .line 106
    new-instance p1, Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowContentHandler;

    invoke-direct {p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowContentHandler;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->bulkDeleteFollowContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowContentHandler;

    .line 107
    new-instance p1, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateContentHandler;

    invoke-direct {p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateContentHandler;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->updateLastViewDateContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateContentHandler;

    .line 109
    new-instance p1, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestContentHandler;

    invoke-direct {p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestContentHandler;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->createAndFollowInterestContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestContentHandler;

    .line 111
    new-instance p1, Lcom/ebay/common/content/dm/search/FollowingDataManager$FollowContentHandler;

    sget-object v0, Lcom/ebay/nautilus/domain/data/FollowType;->COLLECTION:Lcom/ebay/nautilus/domain/data/FollowType;

    invoke-direct {p1, v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$FollowContentHandler;-><init>(Lcom/ebay/nautilus/domain/data/FollowType;)V

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->followCollectionContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$FollowContentHandler;

    .line 112
    new-instance p1, Lcom/ebay/common/content/dm/search/FollowingDataManager$FollowContentHandler;

    sget-object v0, Lcom/ebay/nautilus/domain/data/FollowType;->USER:Lcom/ebay/nautilus/domain/data/FollowType;

    invoke-direct {p1, v0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$FollowContentHandler;-><init>(Lcom/ebay/nautilus/domain/data/FollowType;)V

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->followUserContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$FollowContentHandler;

    .line 113
    new-instance p1, Lcom/ebay/common/content/dm/search/FollowingDataManager$FlushCachesContentHandler;

    invoke-direct {p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$FlushCachesContentHandler;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->flushCachesContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$FlushCachesContentHandler;

    .line 124
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    const-class v0, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {p1, v0}, Lcom/ebay/nautilus/kernel/content/EbayContext;->as(Ljava/lang/Class;)Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {p1}, Lcom/ebay/nautilus/domain/dagger/DomainComponent;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->userContext:Lcom/ebay/nautilus/domain/content/dm/UserContext;

    .line 125
    new-instance p1, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsContentHandler;

    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->getInterestsCacheManager()Lcom/ebay/nautilus/kernel/cache/MultiTierTtlCache;

    move-result-object v0

    iget-object v1, p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/app/Authentication;->user:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsContentHandler;-><init>(Lcom/ebay/nautilus/kernel/cache/MultiTierTtlCache;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadInterestsContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsContentHandler;

    .line 126
    new-instance p1, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;

    .line 127
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->getFollowedSearchesCacheManager()Lcom/ebay/nautilus/kernel/cache/MultiTierTtlCache;

    move-result-object v0

    iget-object p2, p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/app/Authentication;->user:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;-><init>(Lcom/ebay/nautilus/kernel/cache/MultiTierTtlCache;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadSearchResultCountContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$1;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ebay/common/content/dm/search/FollowingDataManager;)Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsContentHandler;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadInterestsContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsContentHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ebay/common/content/dm/search/FollowingDataManager;)Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadSearchResultCountContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;

    return-object p0
.end method


# virtual methods
.method public bulkDeleteFollows(Ljava/util/Set;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/TaskSync;
    .locals 1
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/FollowType;",
            ">;>;",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
            ")",
            "Lcom/ebay/nautilus/domain/content/TaskSync<",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/FollowType;",
            ">;>;>;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->bulkDeleteFollowContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowContentHandler;

    invoke-virtual {v0, p0, p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$BulkDeleteFollowContentHandler;->requestData(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/TaskSync;

    move-result-object p1

    return-object p1
.end method

.method public deleteFollow(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/TaskSync;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/data/FollowType;",
            "Ljava/lang/String;",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
            ")",
            "Lcom/ebay/nautilus/domain/content/TaskSync<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 320
    new-instance v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;

    invoke-direct {v0, p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowParams;-><init>(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;)V

    .line 323
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->deleteFollowContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowContentHandler;

    invoke-virtual {p1, p0, v0, p3}, Lcom/ebay/common/content/dm/search/FollowingDataManager$DeleteFollowContentHandler;->requestData(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/TaskSync;

    move-result-object p1

    return-object p1
.end method

.method public followCollection(Ljava/lang/String;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/TaskSync;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
            ")",
            "Lcom/ebay/nautilus/domain/content/TaskSync<",
            "Lcom/ebay/common/model/search/following/FollowDescriptor;",
            ">;"
        }
    .end annotation

    .line 255
    new-instance v6, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateFollowParams;

    sget-object v1, Lcom/ebay/nautilus/domain/data/FollowType;->COLLECTION:Lcom/ebay/nautilus/domain/data/FollowType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateFollowParams;-><init>(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;Lcom/ebay/common/net/api/search/following/InterestDescriptor;Ljava/lang/String;Ljava/util/List;)V

    .line 259
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->followCollectionContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$FollowContentHandler;

    invoke-virtual {p1, p0, v6, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$FollowContentHandler;->requestData(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/TaskSync;

    move-result-object p1

    return-object p1
.end method

.method public followSearch(Lcom/ebay/common/net/api/search/following/InterestParameters;Lcom/ebay/common/net/api/search/following/InterestDescriptor;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/TaskSync;
    .locals 7
    .param p1    # Lcom/ebay/common/net/api/search/following/InterestParameters;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/common/net/api/search/following/InterestDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/search/following/InterestParameters;",
            "Lcom/ebay/common/net/api/search/following/InterestDescriptor;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
            ")",
            "Lcom/ebay/nautilus/domain/content/TaskSync<",
            "Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;",
            ">;"
        }
    .end annotation

    .line 281
    new-instance v6, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateInterestParams;-><init>(Lcom/ebay/common/net/api/search/following/InterestParameters;Lcom/ebay/common/net/api/search/following/InterestDescriptor;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 283
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->createAndFollowInterestContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestContentHandler;

    invoke-virtual {p1, p0, v6, p6}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateAndFollowInterestContentHandler;->requestData(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/TaskSync;

    move-result-object p1

    return-object p1
.end method

.method public followUser(Ljava/lang/String;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/TaskSync;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
            ")",
            "Lcom/ebay/nautilus/domain/content/TaskSync<",
            "Lcom/ebay/common/model/search/following/FollowDescriptor;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v6, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateFollowParams;

    sget-object v1, Lcom/ebay/nautilus/domain/data/FollowType;->USER:Lcom/ebay/nautilus/domain/data/FollowType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateFollowParams;-><init>(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;Lcom/ebay/common/net/api/search/following/InterestDescriptor;Ljava/lang/String;Ljava/util/List;)V

    .line 238
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->followUserContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$FollowContentHandler;

    .line 239
    invoke-virtual {p1, p0, v6, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$FollowContentHandler;->requestData(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/TaskSync;

    move-result-object p1

    return-object p1
.end method

.method protected getFollowedSearchesCacheManager()Lcom/ebay/nautilus/kernel/cache/MultiTierTtlCache;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/kernel/cache/MultiTierTtlCache<",
            "Lcom/ebay/common/net/api/search/following/FollowedSearchList;",
            ">;"
        }
    .end annotation

    .line 173
    const-class v0, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    monitor-enter v0

    .line 175
    :try_start_0
    sget-object v1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->followsCacheManager:Lcom/ebay/nautilus/kernel/cache/MultiTierTtlCache;

    if-nez v1, :cond_0

    .line 177
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v1

    .line 180
    invoke-static {}, Lcom/ebay/nautilus/domain/datamapping/DataMapperFactory;->getDefaultMapper()Lcom/ebay/nautilus/kernel/datamapping/DataMapper;

    move-result-object v2

    const-class v3, Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    invoke-static {v2, v3}, Lcom/ebay/nautilus/kernel/cache/JsonPersistenceMapper;->create(Lcom/ebay/nautilus/kernel/datamapping/DataMapper;Ljava/lang/Class;)Lcom/ebay/nautilus/kernel/cache/JsonPersistenceMapper;

    move-result-object v5

    .line 183
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v4

    const-string v6, "FollowingDataManager:FollowedSearches"

    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$I;->followedSearchesInflatedCacheSize:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$I;

    .line 184
    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropInteger;)I

    move-result v7

    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$I;->followedSearchesFlatCacheSize:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$I;

    .line 185
    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropInteger;)I

    move-result v8

    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$I;->followedSearchesDiskCacheSize:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$I;

    .line 186
    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropInteger;)I

    move-result v2

    int-to-long v9, v2

    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$I;->followedSearchesMaxCacheTtl:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$I;

    .line 187
    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropInteger;)I

    move-result v1

    int-to-long v11, v1

    const/4 v13, 0x1

    .line 182
    invoke-static/range {v4 .. v13}, Lcom/ebay/nautilus/kernel/cache/TtlCacheFactory;->createMultiTierTtlCache(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/cache/PersistenceMapper;Ljava/lang/String;IIJJZ)Lcom/ebay/nautilus/kernel/cache/MultiTierTtlCache;

    move-result-object v1

    sput-object v1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->followsCacheManager:Lcom/ebay/nautilus/kernel/cache/MultiTierTtlCache;

    .line 190
    :cond_0
    sget-object v1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->followsCacheManager:Lcom/ebay/nautilus/kernel/cache/MultiTierTtlCache;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 191
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getInterestsCacheManager()Lcom/ebay/nautilus/kernel/cache/MultiTierTtlCache;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/kernel/cache/MultiTierTtlCache<",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;",
            ">;"
        }
    .end annotation

    .line 140
    const-class v0, Lcom/ebay/common/content/dm/search/FollowingDataManager;

    monitor-enter v0

    .line 142
    :try_start_0
    sget-object v1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->interestsCacheManager:Lcom/ebay/nautilus/kernel/cache/MultiTierTtlCache;

    if-nez v1, :cond_0

    .line 144
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v1

    .line 147
    invoke-static {}, Lcom/ebay/nautilus/domain/datamapping/DataMapperFactory;->getDefaultMapper()Lcom/ebay/nautilus/kernel/datamapping/DataMapper;

    move-result-object v2

    const-class v3, Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;

    invoke-static {v2, v3}, Lcom/ebay/nautilus/kernel/cache/JsonPersistenceMapper;->create(Lcom/ebay/nautilus/kernel/datamapping/DataMapper;Ljava/lang/Class;)Lcom/ebay/nautilus/kernel/cache/JsonPersistenceMapper;

    move-result-object v5

    .line 151
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v4

    const-string v6, "FollowingDataManager:Interests"

    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$I;->interestsInflatedCacheSize:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$I;

    .line 152
    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropInteger;)I

    move-result v7

    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$I;->interestsFlatCacheSize:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$I;

    .line 153
    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropInteger;)I

    move-result v8

    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$I;->interestsDiskCacheSize:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$I;

    .line 154
    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropInteger;)I

    move-result v1

    int-to-long v9, v1

    const-wide v11, 0x3fffffffffffffffL    # 1.9999999999999998

    const/4 v13, 0x1

    .line 149
    invoke-static/range {v4 .. v13}, Lcom/ebay/nautilus/kernel/cache/TtlCacheFactory;->createMultiTierTtlCache(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/cache/PersistenceMapper;Ljava/lang/String;IIJJZ)Lcom/ebay/nautilus/kernel/cache/MultiTierTtlCache;

    move-result-object v1

    sput-object v1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->interestsCacheManager:Lcom/ebay/nautilus/kernel/cache/MultiTierTtlCache;

    .line 158
    :cond_0
    sget-object v1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->interestsCacheManager:Lcom/ebay/nautilus/kernel/cache/MultiTierTtlCache;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 159
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadData(Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)V
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadFollows(Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/TaskSync;

    return-void
.end method

.method public bridge synthetic loadData(Ljava/lang/Object;)V
    .locals 0

    .line 95
    check-cast p1, Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;

    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadData(Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)V

    return-void
.end method

.method public loadFollowers(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/TaskSync;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/data/FollowType;",
            "Ljava/lang/String;",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
            ")",
            "Lcom/ebay/nautilus/domain/content/TaskSync<",
            "Lcom/ebay/common/net/api/search/following/FollowerSummary;",
            ">;"
        }
    .end annotation

    .line 378
    new-instance v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersParams;

    invoke-direct {v0, p1, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersParams;-><init>(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;)V

    .line 381
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadFollowersContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersContentHandler;

    invoke-virtual {p1, p0, v0, p3}, Lcom/ebay/common/content/dm/search/FollowingDataManager$GetFollowersContentHandler;->requestData(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/TaskSync;

    move-result-object p1

    return-object p1
.end method

.method public loadFollows(Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/TaskSync;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
            ")",
            "Lcom/ebay/nautilus/domain/content/TaskSync<",
            "Lcom/ebay/common/model/search/following/FollowListData;",
            ">;"
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadFollowsContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;

    invoke-virtual {v0, p0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadFollowsContentHandler;->requestData(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/TaskSync;

    move-result-object p1

    return-object p1
.end method

.method public loadInterests(Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/TaskSync;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
            ")",
            "Lcom/ebay/nautilus/domain/content/TaskSync<",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$InterestsCollection;",
            ">;"
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadInterestsContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsContentHandler;

    invoke-virtual {v0, p0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadInterestsContentHandler;->requestData(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/TaskSync;

    move-result-object p1

    return-object p1
.end method

.method public loadSearchResultCounts(Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;I)Lcom/ebay/nautilus/domain/content/TaskSync;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
            "I)",
            "Lcom/ebay/nautilus/domain/content/TaskSync<",
            "Lcom/ebay/common/net/api/search/following/FollowedSearchList;",
            ">;"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadSearchResultCountContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;

    invoke-virtual {v0, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;->setSearchCountLoadLimit(I)V

    .line 427
    iget-object p2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadSearchResultCountContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;

    invoke-virtual {p2, p0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;->requestData(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/TaskSync;

    move-result-object p1

    return-object p1
.end method

.method public onCurrentUserChanged(Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    if-nez p4, :cond_0

    .line 2593
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->loadSearchResultCountContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;

    invoke-virtual {p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$LoadSearchResultCountContentHandler;->cancelLoad()Z

    :cond_0
    return-void
.end method

.method public reset(Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/TaskSync;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
            ")",
            "Lcom/ebay/nautilus/domain/content/TaskSync<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->flushCachesContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$FlushCachesContentHandler;

    invoke-virtual {v0, p0, p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager$FlushCachesContentHandler;->requestData(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/TaskSync;

    move-result-object p1

    return-object p1
.end method

.method public toggleNotification(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;ZLcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/TaskSync;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/data/FollowType;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
            ")",
            "Lcom/ebay/nautilus/domain/content/TaskSync<",
            "Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;",
            ">;"
        }
    .end annotation

    .line 358
    new-instance v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationParams;-><init>(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;ZLcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;)V

    .line 362
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->toggleNotificationContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationsContentHandler;

    invoke-virtual {p1, p0, v0, p5}, Lcom/ebay/common/content/dm/search/FollowingDataManager$ToggleNotificationsContentHandler;->requestData(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/TaskSync;

    move-result-object p1

    return-object p1
.end method

.method public updateLastViewDate(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;Ljava/util/Date;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)Lcom/ebay/nautilus/domain/content/TaskSync;
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/FollowType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Date;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/data/FollowType;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
            ")",
            "Lcom/ebay/nautilus/domain/content/TaskSync<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;

    invoke-direct {v0, p1, p2, p3}, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateParams;-><init>(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;Ljava/util/Date;)V

    .line 304
    iget-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager;->updateLastViewDateContentHandler:Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateContentHandler;

    invoke-virtual {p1, p0, v0, p4}, Lcom/ebay/common/content/dm/search/FollowingDataManager$UpdateLastViewDateContentHandler;->requestData(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/TaskSync;

    move-result-object p1

    return-object p1
.end method
