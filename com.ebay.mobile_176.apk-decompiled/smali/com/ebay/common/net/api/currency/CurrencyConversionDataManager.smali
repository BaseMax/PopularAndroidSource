.class public final Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;
.super Lcom/ebay/nautilus/domain/content/DataManager;
.source "CurrencyConversionDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;,
        Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$KeyParams;,
        Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;,
        Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;,
        Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DataManager<",
        "Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHE_ENTRY_LIFETIME:J

.field private static final CONTENT_CANCELED:Lcom/ebay/nautilus/domain/content/Content;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/model/currency/CurrencyConversionRate;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$KeyParams;

.field private static final MIN_TIME_BEFORE_RETRY_TTL:J

.field private static final STALENESS_THRESHOLD:J

.field private static final _cache:Lcom/ebay/nautilus/kernel/cache/TtlCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/nautilus/kernel/cache/TtlCache<",
            "Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;",
            "Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;",
            ">;"
        }
    .end annotation
.end field

.field private static final cacheClock:Lcom/ebay/nautilus/kernel/time/Clock;

.field private static final cacheSizeCalculator:Lcom/ebay/nautilus/kernel/cache/DefaultCacheSizeCalculator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/nautilus/kernel/cache/DefaultCacheSizeCalculator<",
            "Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;",
            "Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;",
            ">;"
        }
    .end annotation
.end field

.field public static final logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 51
    new-instance v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$KeyParams;

    invoke-direct {v0}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$KeyParams;-><init>()V

    sput-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->KEY:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$KeyParams;

    .line 53
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "CurrencyConversion"

    const-string v2, "Log currency conversion usage"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    .line 57
    new-instance v0, Lcom/ebay/nautilus/domain/content/Content;

    sget-object v1, Lcom/ebay/nautilus/kernel/content/ResultStatus;->CANCELED:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    sput-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->CONTENT_CANCELED:Lcom/ebay/nautilus/domain/content/Content;

    .line 62
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->MIN_TIME_BEFORE_RETRY_TTL:J

    .line 64
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v1, 0x15180

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->STALENESS_THRESHOLD:J

    .line 70
    sget-wide v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->STALENESS_THRESHOLD:J

    sget-wide v2, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->STALENESS_THRESHOLD:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    sput-wide v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->CACHE_ENTRY_LIFETIME:J

    .line 72
    new-instance v0, Lcom/ebay/nautilus/kernel/time/ClockWall;

    invoke-direct {v0}, Lcom/ebay/nautilus/kernel/time/ClockWall;-><init>()V

    sput-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->cacheClock:Lcom/ebay/nautilus/kernel/time/Clock;

    .line 73
    new-instance v0, Lcom/ebay/nautilus/kernel/cache/DefaultCacheSizeCalculator;

    invoke-direct {v0}, Lcom/ebay/nautilus/kernel/cache/DefaultCacheSizeCalculator;-><init>()V

    sput-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->cacheSizeCalculator:Lcom/ebay/nautilus/kernel/cache/DefaultCacheSizeCalculator;

    const-string v1, "CurrencyConversion"

    .line 77
    sget-wide v3, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->CACHE_ENTRY_LIFETIME:J

    sget-object v5, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->cacheSizeCalculator:Lcom/ebay/nautilus/kernel/cache/DefaultCacheSizeCalculator;

    sget-object v6, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->cacheClock:Lcom/ebay/nautilus/kernel/time/Clock;

    const/16 v2, 0x12c

    invoke-static/range {v1 .. v6}, Lcom/ebay/nautilus/kernel/cache/TtlCacheFactory;->createMemoryCache(Ljava/lang/String;IJLcom/ebay/nautilus/kernel/cache/CacheSizeCalculator;Lcom/ebay/nautilus/kernel/time/Clock;)Lcom/ebay/nautilus/kernel/cache/TtlCache;

    move-result-object v0

    sput-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->_cache:Lcom/ebay/nautilus/kernel/cache/TtlCache;

    return-void
.end method

.method private constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$KeyParams;)V
    .locals 0

    .line 82
    const-class p2, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;

    invoke-direct {p0, p1, p2}, Lcom/ebay/nautilus/domain/content/DataManager;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/Class;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$KeyParams;Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$KeyParams;)V

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 46
    sget-wide v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->MIN_TIME_BEFORE_RETRY_TTL:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;Lcom/ebay/common/model/currency/CurrencyConversionRate;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->updateCacheTimeout(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;Lcom/ebay/common/model/currency/CurrencyConversionRate;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;Lcom/ebay/common/model/currency/CurrencyConversionRate;)J
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->expiresAt(Lcom/ebay/common/model/currency/CurrencyConversionRate;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$300()Lcom/ebay/nautilus/kernel/time/Clock;
    .locals 1

    .line 46
    sget-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->cacheClock:Lcom/ebay/nautilus/kernel/time/Clock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;)Lcom/ebay/nautilus/kernel/cache/TtlCache;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->getCache()Lcom/ebay/nautilus/kernel/cache/TtlCache;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500()Lcom/ebay/nautilus/domain/content/Content;
    .locals 1

    .line 46
    sget-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->CONTENT_CANCELED:Lcom/ebay/nautilus/domain/content/Content;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;Lcom/ebay/nautilus/domain/content/Content;Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->dispatchLoadComplete(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;Lcom/ebay/nautilus/domain/content/Content;Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;)V

    return-void
.end method

.method private attemptLoad(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;)V
    .locals 7

    .line 233
    monitor-enter p3

    .line 235
    :try_start_0
    iget-object v0, p3, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;->loadState:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    sget-object v1, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;->DONE:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p3}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->getRate(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;)Lcom/ebay/common/model/currency/CurrencyConversionRate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->isStale(Lcom/ebay/common/model/currency/CurrencyConversionRate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    sget-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;->NEVER:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    iput-object v0, p3, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;->loadState:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    .line 239
    :cond_0
    iget-object v0, p3, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;->loadState:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    sget-object v1, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;->NEVER:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    if-ne v0, v1, :cond_3

    .line 242
    iget-object v0, p4, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;->fromCurr:Ljava/lang/String;

    iget-object v1, p4, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;->toCurr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    sget-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_1

    .line 245
    sget-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Converting to/from same currency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p4, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;->fromCurr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 247
    :cond_1
    iget-object v0, p4, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;->fromCurr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->createReflexiveConversionRate(Ljava/lang/String;)Lcom/ebay/common/model/currency/CurrencyConversionRate;

    move-result-object v0

    .line 248
    new-instance v1, Lcom/ebay/nautilus/domain/content/Content;

    invoke-direct {v1, v0}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;)V

    .line 249
    invoke-direct {p0, p2, v0}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->updateCacheTimeout(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;Lcom/ebay/common/model/currency/CurrencyConversionRate;)V

    .line 250
    invoke-virtual {p3, v1}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;->setData(Ljava/lang/Object;)V

    .line 251
    sget-object p2, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;->DONE:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    iput-object p2, p3, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;->loadState:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    .line 252
    invoke-direct {p0, p1, v1, p4}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->dispatchLoadComplete(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;Lcom/ebay/nautilus/domain/content/Content;Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;)V

    goto :goto_0

    .line 257
    :cond_2
    new-instance v6, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;-><init>(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;)V

    .line 258
    sget-object p1, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;->PENDING:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    iput-object p1, p3, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;->loadState:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    .line 259
    iput-object v6, p3, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;->loadTask:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;

    .line 260
    invoke-virtual {p3}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;->throttleTime()J

    move-result-wide p1

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/Void;

    invoke-virtual {v6, p1, p2, p4}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;->executeDelayedTask(J[Ljava/lang/Object;)Lcom/ebay/nautilus/kernel/util/DelayedAsyncTask;

    .line 263
    :cond_3
    :goto_0
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private createReflexiveConversionRate(Ljava/lang/String;)Lcom/ebay/common/model/currency/CurrencyConversionRate;
    .locals 8

    .line 317
    :try_start_0
    new-instance v7, Lcom/ebay/common/model/currency/CurrencyConversionRate;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "1.0"

    const/4 v6, 0x1

    move-object v0, v7

    move-object v4, p1

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/ebay/common/model/currency/CurrencyConversionRate;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v7, 0x0

    :goto_0
    return-object v7
.end method

.method private dispatchLoadComplete(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;Lcom/ebay/nautilus/domain/content/Content;Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/model/currency/CurrencyConversionRate;",
            ">;",
            "Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;",
            ")V"
        }
    .end annotation

    .line 401
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->treatableAsError(Lcom/ebay/nautilus/kernel/content/ResultStatus;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 403
    sget-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 404
    sget-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->dispatcher:Ljava/lang/Object;

    check-cast v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/currency/CurrencyConversionRate;

    invoke-interface {v0, p0, v1}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;->onRateChanged(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;Lcom/ebay/common/model/currency/CurrencyConversionRate;)V

    :cond_1
    if-eqz p1, :cond_3

    .line 410
    sget-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_2

    .line 411
    sget-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRateLoaded - status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 412
    :cond_2
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/common/model/currency/CurrencyConversionRate;

    invoke-interface {p1, p0, v0, p2, p3}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;->onRateLoadComplete(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/common/model/currency/CurrencyConversionRate;Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;)V

    :cond_3
    return-void
.end method

.method private expiresAt(Lcom/ebay/common/model/currency/CurrencyConversionRate;)J
    .locals 4

    .line 342
    iget-wide v0, p1, Lcom/ebay/common/model/currency/CurrencyConversionRate;->timeStamp:J

    sget-wide v2, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->CACHE_ENTRY_LIFETIME:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getCache()Lcom/ebay/nautilus/kernel/cache/TtlCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/kernel/cache/TtlCache<",
            "Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;",
            "Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;",
            ">;"
        }
    .end annotation

    .line 141
    sget-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->_cache:Lcom/ebay/nautilus/kernel/cache/TtlCache;

    return-object v0
.end method

.method private getRate(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;)Lcom/ebay/common/model/currency/CurrencyConversionRate;
    .locals 1

    .line 288
    invoke-direct {p0}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->getCache()Lcom/ebay/nautilus/kernel/cache/TtlCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ebay/nautilus/kernel/cache/TtlCache;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;

    .line 289
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->getRate(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;)Lcom/ebay/common/model/currency/CurrencyConversionRate;

    move-result-object p1

    return-object p1
.end method

.method private getRate(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;)Lcom/ebay/common/model/currency/CurrencyConversionRate;
    .locals 0

    if-eqz p1, :cond_0

    .line 302
    invoke-virtual {p1}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/content/Content;

    if-eqz p1, :cond_0

    .line 304
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/model/currency/CurrencyConversionRate;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private isStale(Lcom/ebay/common/model/currency/CurrencyConversionRate;)Z
    .locals 4

    if-eqz p1, :cond_1

    .line 353
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->staleAt(Lcom/ebay/common/model/currency/CurrencyConversionRate;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private staleAt(Lcom/ebay/common/model/currency/CurrencyConversionRate;)J
    .locals 4

    .line 332
    iget-wide v0, p1, Lcom/ebay/common/model/currency/CurrencyConversionRate;->timeStamp:J

    sget-wide v2, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->STALENESS_THRESHOLD:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method static treatableAsError(Lcom/ebay/nautilus/kernel/content/ResultStatus;)Z
    .locals 4

    .line 425
    invoke-virtual {p0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    invoke-virtual {p0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getMessages()Ljava/util/List;

    move-result-object p0

    .line 431
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    .line 433
    instance-of v2, v1, Lcom/ebay/nautilus/domain/net/EbayResponseError$LongDetails;

    if-eqz v2, :cond_0

    .line 435
    check-cast v1, Lcom/ebay/nautilus/domain/net/EbayResponseError$LongDetails;

    .line 436
    iget-object v2, v1, Lcom/ebay/nautilus/domain/net/EbayResponseError$LongDetails;->subdomain:Ljava/lang/String;

    const-string v3, "BillingCurrencyRateService"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    sget-object p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p0, p0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p0, :cond_1

    .line 439
    sget-object p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error from currency conversion service not being treated as error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method private updateCacheTimeout(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;Lcom/ebay/common/model/currency/CurrencyConversionRate;)V
    .locals 4

    .line 367
    invoke-direct {p0}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->getCache()Lcom/ebay/nautilus/kernel/cache/TtlCache;

    move-result-object v0

    .line 368
    invoke-interface {v0, p1}, Lcom/ebay/nautilus/kernel/cache/TtlCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/kernel/cache/ValueWithMeta;

    if-eqz v1, :cond_0

    .line 371
    invoke-direct {p0, p2}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->expiresAt(Lcom/ebay/common/model/currency/CurrencyConversionRate;)J

    move-result-wide v2

    .line 372
    invoke-virtual {v1, v2, v3}, Lcom/ebay/nautilus/kernel/cache/ValueWithMeta;->withExpirationAt(J)Lcom/ebay/nautilus/kernel/cache/ValueWithMeta;

    move-result-object p2

    .line 373
    invoke-interface {v0, p1, p2}, Lcom/ebay/nautilus/kernel/cache/TtlCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public getConversionRate(Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;)Lcom/ebay/common/model/currency/CurrencyConversionRate;
    .locals 5

    if-eqz p1, :cond_1

    .line 169
    iget-object v0, p1, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;->historicalDate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;

    iget-object v1, p1, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;->fromCurr:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;->toCurr:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 177
    invoke-direct {p0}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->getCache()Lcom/ebay/nautilus/kernel/cache/TtlCache;

    move-result-object v1

    .line 179
    new-instance v2, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;

    invoke-direct {v2}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;-><init>()V

    sget-wide v3, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->CACHE_ENTRY_LIFETIME:J

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/ebay/nautilus/kernel/cache/TtlCache;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;

    const/4 v2, 0x0

    .line 182
    invoke-direct {p0, v2, v0, v1, p1}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->attemptLoad(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;)V

    .line 186
    invoke-direct {p0, v1}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->getRate(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;)Lcom/ebay/common/model/currency/CurrencyConversionRate;

    move-result-object p1

    return-object p1

    .line 170
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "HistoricalDate should be null for this call. Use loadConversionRate to bypass cache and fetch a specific historical rate conversion"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "conversionParams must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getParams()Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$KeyParams;
    .locals 1

    .line 88
    sget-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->KEY:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$KeyParams;

    return-object v0
.end method

.method public bridge synthetic getParams()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->getParams()Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$KeyParams;

    move-result-object v0

    return-object v0
.end method

.method public loadConversionRate(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;)V
    .locals 4

    .line 200
    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->getSafeCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;

    .line 204
    invoke-virtual {p2}, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;->isHistorical()Z

    move-result v0

    .line 205
    new-instance v1, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;

    iget-object v2, p2, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;->fromCurr:Ljava/lang/String;

    iget-object v3, p2, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;->toCurr:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 207
    new-instance v2, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;

    invoke-direct {v2}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;-><init>()V

    if-nez v0, :cond_1

    .line 211
    invoke-direct {p0}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->getCache()Lcom/ebay/nautilus/kernel/cache/TtlCache;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/kernel/cache/TtlCache;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;->setData(Ljava/lang/Object;)V

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->getCache()Lcom/ebay/nautilus/kernel/cache/TtlCache;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/ebay/nautilus/kernel/cache/TtlCache;->putValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_1
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->attemptLoad(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;)V

    return-void
.end method

.method public loadData(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic loadData(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;

    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->loadData(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 150
    invoke-direct {p0}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->getCache()Lcom/ebay/nautilus/kernel/cache/TtlCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/nautilus/kernel/cache/TtlCache;->clear()V

    return-void
.end method

.method public willFetch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 275
    new-instance v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 276
    invoke-direct {p0, v0}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->getRate(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;)Lcom/ebay/common/model/currency/CurrencyConversionRate;

    move-result-object p1

    .line 277
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->isStale(Lcom/ebay/common/model/currency/CurrencyConversionRate;)Z

    move-result p1

    return p1
.end method
