.class public final Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;
.super Lcom/ebay/nautilus/kernel/cache/CacheLock;
.source "CurrencyConversionDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "CurrencyCacheLock"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/kernel/cache/CacheLock<",
        "Lcom/ebay/nautilus/domain/content/Content<",
        "Lcom/ebay/common/model/currency/CurrencyConversionRate;",
        ">;>;"
    }
.end annotation


# instance fields
.field private volatile _lastLoadTime:J

.field public volatile loadState:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

.field public volatile loadTask:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$LoadTask;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/cache/CacheLock;-><init>()V

    .line 100
    sget-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;->NEVER:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    iput-object v0, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;->loadState:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    return-void
.end method


# virtual methods
.method protected setLoadTime()V
    .locals 2

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;->_lastLoadTime:J

    return-void
.end method

.method protected throttleTime()J
    .locals 6

    .line 117
    invoke-static {}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->access$000()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;->_lastLoadTime:J

    .line 118
    invoke-static {}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->access$000()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 117
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 119
    sget-object v2, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v2, v2, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v2, :cond_0

    .line 120
    sget-object v2, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Throttle start of worker thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method
