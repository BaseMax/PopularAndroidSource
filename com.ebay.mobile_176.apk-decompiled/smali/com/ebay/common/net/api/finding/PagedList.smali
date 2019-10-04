.class public final Lcom/ebay/common/net/api/finding/PagedList;
.super Ljava/lang/Object;
.source "PagedList.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/ebay/common/net/AsyncList;
.implements Lcom/ebay/common/net/CacheConfiguration;
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/finding/PagedList$SubList;,
        Lcom/ebay/common/net/api/finding/PagedList$IteratorImpl;,
        Lcom/ebay/common/net/api/finding/PagedList$Page;,
        Lcom/ebay/common/net/api/finding/PagedList$Query;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Handler$Callback;",
        "Lcom/ebay/common/net/AsyncList<",
        "TE;>;",
        "Lcom/ebay/common/net/CacheConfiguration;",
        "Ljava/util/concurrent/ThreadFactory;"
    }
.end annotation


# static fields
.field static final log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field private cachedPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/net/api/finding/PagedList$Page<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private count:I

.field private currentPage:Lcom/ebay/common/net/api/finding/PagedList$Page;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/common/net/api/finding/PagedList$Page<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final failedPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/net/api/finding/PagedList$Page<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private loadPagePool:Ljava/util/concurrent/ExecutorService;

.field private final maxCountPerPage:I

.field private maxPagesCached:I

.field private netObserver:Lcom/ebay/common/net/AsyncList$NetworkListObserver;

.field private pagePrefetchLevel:I

.field private final query:Lcom/ebay/common/net/api/finding/PagedList$Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/common/net/api/finding/PagedList$Query<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final waitingOnPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/net/api/finding/PagedList$Page<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "PagedList"

    const-string v2, "Log paged list data"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/net/api/finding/PagedList;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/common/net/api/finding/PagedList$Query;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/finding/PagedList$Query<",
            "TE;>;)V"
        }
    .end annotation

    const/16 v0, 0x19

    const/4 v1, 0x5

    const/4 v2, 0x2

    .line 86
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/ebay/common/net/api/finding/PagedList;-><init>(Lcom/ebay/common/net/api/finding/PagedList$Query;III)V

    return-void
.end method

.method public constructor <init>(Lcom/ebay/common/net/api/finding/PagedList$Query;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/finding/PagedList$Query<",
            "TE;>;III)V"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->count:I

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->currentPage:Lcom/ebay/common/net/api/finding/PagedList$Page;

    .line 43
    iput-object v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->cachedPages:Ljava/util/ArrayList;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ebay/common/net/api/finding/PagedList;->failedPages:Ljava/util/ArrayList;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ebay/common/net/api/finding/PagedList;->waitingOnPages:Ljava/util/ArrayList;

    .line 46
    iput-object v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->netObserver:Lcom/ebay/common/net/AsyncList$NetworkListObserver;

    .line 47
    iput-object v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->handler:Landroid/os/Handler;

    .line 48
    iput-object v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->loadPagePool:Ljava/util/concurrent/ExecutorService;

    .line 101
    iput p2, p0, Lcom/ebay/common/net/api/finding/PagedList;->maxCountPerPage:I

    .line 102
    invoke-virtual {p0, p3, p4}, Lcom/ebay/common/net/api/finding/PagedList;->setCacheLevel(II)V

    .line 103
    iput-object p1, p0, Lcom/ebay/common/net/api/finding/PagedList;->query:Lcom/ebay/common/net/api/finding/PagedList$Query;

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/common/net/api/finding/PagedList;Lcom/ebay/common/net/api/finding/PagedList$Page;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/finding/PagedList;->loadPage(Lcom/ebay/common/net/api/finding/PagedList$Page;)V

    return-void
.end method

.method private final declared-synchronized asyncLoadPage(Lcom/ebay/common/net/api/finding/PagedList$Page;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/finding/PagedList$Page<",
            "TE;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 285
    :try_start_0
    sget-object v0, Lcom/ebay/common/net/api/finding/PagedList;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 286
    sget-object v0, Lcom/ebay/common/net/api/finding/PagedList;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog;->logMethod(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;[Ljava/lang/Object;)V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->loadPagePool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 288
    invoke-static {v0, p0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->loadPagePool:Ljava/util/concurrent/ExecutorService;

    .line 289
    :cond_1
    new-instance v0, Lcom/ebay/common/net/api/finding/PagedList$1;

    invoke-direct {v0, p0, p1}, Lcom/ebay/common/net/api/finding/PagedList$1;-><init>(Lcom/ebay/common/net/api/finding/PagedList;Lcom/ebay/common/net/api/finding/PagedList$Page;)V

    .line 297
    iget-object p1, p0, Lcom/ebay/common/net/api/finding/PagedList;->loadPagePool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 284
    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized clearPages()V
    .locals 2

    monitor-enter p0

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->loadPagePool:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->loadPagePool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 309
    iput-object v1, p0, Lcom/ebay/common/net/api/finding/PagedList;->loadPagePool:Ljava/util/concurrent/ExecutorService;

    .line 311
    :cond_0
    iput-object v1, p0, Lcom/ebay/common/net/api/finding/PagedList;->currentPage:Lcom/ebay/common/net/api/finding/PagedList$Page;

    .line 312
    iput-object v1, p0, Lcom/ebay/common/net/api/finding/PagedList;->cachedPages:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 304
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getAsync(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    monitor-enter p0

    .line 466
    :try_start_0
    iget v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->maxCountPerPage:I

    rem-int v0, p1, v0

    sub-int v0, p1, v0

    .line 467
    iget-object v1, p0, Lcom/ebay/common/net/api/finding/PagedList;->currentPage:Lcom/ebay/common/net/api/finding/PagedList$Page;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/common/net/api/finding/PagedList;->currentPage:Lcom/ebay/common/net/api/finding/PagedList$Page;

    iget v1, v1, Lcom/ebay/common/net/api/finding/PagedList$Page;->start:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/ebay/common/net/api/finding/PagedList;->currentPage:Lcom/ebay/common/net/api/finding/PagedList$Page;

    iget v1, v1, Lcom/ebay/common/net/api/finding/PagedList$Page;->loadState:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    .line 468
    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/ebay/common/net/api/finding/PagedList;->setPage(IZ)V

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->currentPage:Lcom/ebay/common/net/api/finding/PagedList$Page;

    .line 471
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 473
    :try_start_1
    iget v1, v0, Lcom/ebay/common/net/api/finding/PagedList$Page;->loadState:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 478
    :pswitch_0
    iget-object v1, v0, Lcom/ebay/common/net/api/finding/PagedList$Page;->rows:Ljava/util/ArrayList;

    iget v2, v0, Lcom/ebay/common/net/api/finding/PagedList$Page;->start:I

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit p0

    return-object p1

    .line 480
    :pswitch_1
    :try_start_2
    iget-object p1, p0, Lcom/ebay/common/net/api/finding/PagedList;->failedPages:Ljava/util/ArrayList;

    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 482
    :try_start_3
    iget-object v1, p0, Lcom/ebay/common/net/api/finding/PagedList;->failedPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 483
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 484
    :try_start_4
    iget-object p1, v0, Lcom/ebay/common/net/api/finding/PagedList$Page;->rows:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 485
    iput v2, v0, Lcom/ebay/common/net/api/finding/PagedList$Page;->loadState:I

    .line 486
    invoke-direct {p0, v0}, Lcom/ebay/common/net/api/finding/PagedList;->asyncLoadPage(Lcom/ebay/common/net/api/finding/PagedList$Page;)V

    .line 489
    :pswitch_2
    iget-object p1, p0, Lcom/ebay/common/net/api/finding/PagedList;->netObserver:Lcom/ebay/common/net/AsyncList$NetworkListObserver;

    if-eqz p1, :cond_2

    .line 490
    iget-object p1, p0, Lcom/ebay/common/net/api/finding/PagedList;->netObserver:Lcom/ebay/common/net/AsyncList$NetworkListObserver;

    invoke-interface {p1}, Lcom/ebay/common/net/AsyncList$NetworkListObserver;->onGetNotReady()V

    .line 491
    :cond_2
    iget-object p1, p0, Lcom/ebay/common/net/api/finding/PagedList;->waitingOnPages:Ljava/util/ArrayList;

    monitor-enter p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 493
    :try_start_5
    iget-object v1, p0, Lcom/ebay/common/net/api/finding/PagedList;->waitingOnPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 495
    iget-object v1, p0, Lcom/ebay/common/net/api/finding/PagedList;->waitingOnPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    iget-object v1, p0, Lcom/ebay/common/net/api/finding/PagedList;->handler:Landroid/os/Handler;

    if-nez v1, :cond_3

    .line 497
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/ebay/common/net/api/finding/PagedList;->handler:Landroid/os/Handler;

    .line 499
    :cond_3
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception v1

    .line 483
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1

    .line 502
    :goto_0
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const/4 p1, 0x0

    .line 504
    monitor-exit p0

    return-object p1

    :catchall_2
    move-exception p1

    .line 502
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception p1

    .line 465
    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private loadPage(Lcom/ebay/common/net/api/finding/PagedList$Page;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/finding/PagedList$Page<",
            "TE;>;)V"
        }
    .end annotation

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->query:Lcom/ebay/common/net/api/finding/PagedList$Query;

    iget-object v1, p1, Lcom/ebay/common/net/api/finding/PagedList$Page;->rows:Ljava/util/ArrayList;

    iget v2, p1, Lcom/ebay/common/net/api/finding/PagedList$Page;->start:I

    iget v3, p1, Lcom/ebay/common/net/api/finding/PagedList$Page;->count:I

    invoke-interface {v0, v1, v2, v3}, Lcom/ebay/common/net/api/finding/PagedList$Query;->fill(Ljava/util/ArrayList;II)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 242
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 244
    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    return-void

    .line 250
    :goto_0
    iget-object v1, p0, Lcom/ebay/common/net/api/finding/PagedList;->failedPages:Ljava/util/ArrayList;

    monitor-enter v1

    .line 252
    :try_start_2
    iget-object v2, p0, Lcom/ebay/common/net/api/finding/PagedList;->failedPages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 259
    :goto_1
    monitor-enter p1

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/4 v2, -0x1

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    .line 261
    :goto_2
    :try_start_3
    iput v2, p1, Lcom/ebay/common/net/api/finding/PagedList$Page;->loadState:I

    .line 262
    iget-object v2, p0, Lcom/ebay/common/net/api/finding/PagedList;->waitingOnPages:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 264
    :try_start_4
    iget-object v3, p0, Lcom/ebay/common/net/api/finding/PagedList;->waitingOnPages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    .line 268
    iget-object v3, p0, Lcom/ebay/common/net/api/finding/PagedList;->waitingOnPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 269
    iget-object v3, p0, Lcom/ebay/common/net/api/finding/PagedList;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->waitingOnPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 274
    :cond_2
    :goto_3
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 275
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    .line 274
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0

    :catchall_1
    move-exception v0

    .line 275
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :catchall_2
    move-exception p1

    .line 253
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1
.end method

.method private final logDump()V
    .locals 10

    const/4 v0, 0x3

    .line 52
    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ebay/common/net/api/finding/PagedList;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ebay/common/net/api/finding/PagedList;->currentPage:Lcom/ebay/common/net/api/finding/PagedList$Page;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "cached:"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x7b

    .line 59
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    iget-object v6, p0, Lcom/ebay/common/net/api/finding/PagedList;->cachedPages:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 63
    iget-object v6, p0, Lcom/ebay/common/net/api/finding/PagedList;->cachedPages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x1

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ebay/common/net/api/finding/PagedList$Page;

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    goto :goto_1

    :cond_0
    const/16 v9, 0x2c

    .line 68
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v9, 0x20

    .line 69
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v6, " }"

    .line 72
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v1, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 74
    sget-object v2, Lcom/ebay/common/net/api/finding/PagedList;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-array v0, v0, [Ljava/lang/Object;

    aget-object v6, v1, v3

    aput-object v6, v0, v3

    aget-object v3, v1, v4

    aput-object v3, v0, v4

    aget-object v1, v1, v5

    aput-object v1, v0, v5

    invoke-static {v2, v0}, Lcom/ebay/nautilus/kernel/util/FwLog;->logMethod(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;[Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized retry_loadPage(Lcom/ebay/common/net/api/finding/PagedList$Page;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/finding/PagedList$Page<",
            "TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;,
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;,
            Lcom/ebay/nautilus/kernel/net/HostErrorException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->query:Lcom/ebay/common/net/api/finding/PagedList$Query;

    iget-object v1, p1, Lcom/ebay/common/net/api/finding/PagedList$Page;->rows:Ljava/util/ArrayList;

    iget v2, p1, Lcom/ebay/common/net/api/finding/PagedList$Page;->start:I

    iget p1, p1, Lcom/ebay/common/net/api/finding/PagedList$Page;->count:I

    invoke-interface {v0, v1, v2, p1}, Lcom/ebay/common/net/api/finding/PagedList$Query;->fill(Ljava/util/ArrayList;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 379
    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized setPage(IZ)V
    .locals 12

    monitor-enter p0

    .line 119
    :try_start_0
    sget-object v0, Lcom/ebay/common/net/api/finding/PagedList;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/ebay/common/net/api/finding/PagedList;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/ebay/nautilus/kernel/util/FwLog;->logMethod(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_14

    .line 121
    iget v3, p0, Lcom/ebay/common/net/api/finding/PagedList;->count:I

    if-ne p1, v3, :cond_1

    goto/16 :goto_d

    .line 129
    :cond_1
    iget v3, p0, Lcom/ebay/common/net/api/finding/PagedList;->count:I

    sub-int/2addr v3, v2

    .line 130
    iget v4, p0, Lcom/ebay/common/net/api/finding/PagedList;->maxCountPerPage:I

    rem-int v4, v3, v4

    sub-int/2addr v3, v4

    .line 131
    iget v4, p0, Lcom/ebay/common/net/api/finding/PagedList;->maxCountPerPage:I

    iget v5, p0, Lcom/ebay/common/net/api/finding/PagedList;->pagePrefetchLevel:I

    mul-int v4, v4, v5

    if-le p1, v4, :cond_2

    sub-int v5, p1, v4

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    add-int/2addr v4, p1

    if-ge v4, v3, :cond_3

    goto :goto_1

    :cond_3
    move v4, v3

    .line 137
    :goto_1
    iget-object v6, p0, Lcom/ebay/common/net/api/finding/PagedList;->cachedPages:Ljava/util/ArrayList;

    if-nez v6, :cond_4

    const/4 v6, -0x1

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/ebay/common/net/api/finding/PagedList;->cachedPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ebay/common/net/api/finding/PagedList$Page;

    iget v6, v6, Lcom/ebay/common/net/api/finding/PagedList$Page;->start:I

    .line 138
    :goto_2
    iget-object v7, p0, Lcom/ebay/common/net/api/finding/PagedList;->cachedPages:Ljava/util/ArrayList;

    if-nez v7, :cond_5

    const/4 v7, -0x1

    goto :goto_3

    :cond_5
    iget-object v7, p0, Lcom/ebay/common/net/api/finding/PagedList;->cachedPages:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/ebay/common/net/api/finding/PagedList;->cachedPages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ebay/common/net/api/finding/PagedList$Page;

    iget v7, v7, Lcom/ebay/common/net/api/finding/PagedList$Page;->start:I

    :goto_3
    sub-int v8, v4, v5

    .line 139
    iget v9, p0, Lcom/ebay/common/net/api/finding/PagedList;->maxCountPerPage:I

    div-int/2addr v8, v9

    add-int/2addr v8, v2

    .line 140
    :goto_4
    iget v2, p0, Lcom/ebay/common/net/api/finding/PagedList;->maxPagesCached:I

    if-ge v8, v2, :cond_6

    if-lez v5, :cond_6

    iget v2, p0, Lcom/ebay/common/net/api/finding/PagedList;->maxCountPerPage:I

    sub-int v2, v5, v2

    if-lt v2, v6, :cond_6

    iget v2, p0, Lcom/ebay/common/net/api/finding/PagedList;->maxCountPerPage:I

    sub-int v2, v5, v2

    if-gt v2, v7, :cond_6

    .line 144
    iget v2, p0, Lcom/ebay/common/net/api/finding/PagedList;->maxCountPerPage:I

    sub-int/2addr v5, v2

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 147
    :cond_6
    :goto_5
    iget v2, p0, Lcom/ebay/common/net/api/finding/PagedList;->maxPagesCached:I

    if-ge v8, v2, :cond_7

    if-ge v4, v3, :cond_7

    iget v2, p0, Lcom/ebay/common/net/api/finding/PagedList;->maxCountPerPage:I

    add-int/2addr v2, v4

    if-lt v2, v6, :cond_7

    iget v2, p0, Lcom/ebay/common/net/api/finding/PagedList;->maxCountPerPage:I

    add-int/2addr v2, v4

    if-gt v2, v7, :cond_7

    .line 151
    iget v2, p0, Lcom/ebay/common/net/api/finding/PagedList;->maxCountPerPage:I

    add-int/2addr v4, v2

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 154
    :cond_7
    sget-object v2, Lcom/ebay/common/net/api/finding/PagedList;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v2, v2, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v2, :cond_8

    .line 155
    sget-object v2, Lcom/ebay/common/net/api/finding/PagedList;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "new low:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", new high:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", old low:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", old high:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ebay/nautilus/kernel/util/FwLog;->println(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)V

    :cond_8
    if-ne v5, v6, :cond_c

    if-eq v4, v7, :cond_9

    goto :goto_7

    :cond_9
    sub-int/2addr p1, v6

    .line 202
    iget p2, p0, Lcom/ebay/common/net/api/finding/PagedList;->maxCountPerPage:I

    div-int/2addr p1, p2

    .line 203
    iget-object p2, p0, Lcom/ebay/common/net/api/finding/PagedList;->cachedPages:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/net/api/finding/PagedList$Page;

    iput-object p1, p0, Lcom/ebay/common/net/api/finding/PagedList;->currentPage:Lcom/ebay/common/net/api/finding/PagedList$Page;

    .line 204
    iget-object p1, p0, Lcom/ebay/common/net/api/finding/PagedList;->failedPages:Ljava/util/ArrayList;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 206
    :try_start_1
    iget-object p2, p0, Lcom/ebay/common/net/api/finding/PagedList;->failedPages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_b

    .line 209
    iget-object p2, p0, Lcom/ebay/common/net/api/finding/PagedList;->failedPages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/finding/PagedList$Page;

    .line 211
    iget-object v2, v0, Lcom/ebay/common/net/api/finding/PagedList$Page;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 212
    iput v1, v0, Lcom/ebay/common/net/api/finding/PagedList$Page;->loadState:I

    .line 213
    invoke-direct {p0, v0}, Lcom/ebay/common/net/api/finding/PagedList;->asyncLoadPage(Lcom/ebay/common/net/api/finding/PagedList$Page;)V

    goto :goto_6

    .line 216
    :cond_a
    iget-object p2, p0, Lcom/ebay/common/net/api/finding/PagedList;->failedPages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 218
    :cond_b
    monitor-exit p1

    goto/16 :goto_c

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2

    .line 161
    :cond_c
    :goto_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v8, :cond_12

    .line 165
    iget v4, p0, Lcom/ebay/common/net/api/finding/PagedList;->maxCountPerPage:I

    mul-int v4, v4, v3

    add-int/2addr v4, v5

    if-lt v4, v6, :cond_e

    if-gt v4, v7, :cond_e

    .line 169
    iget-object v9, p0, Lcom/ebay/common/net/api/finding/PagedList;->cachedPages:Ljava/util/ArrayList;

    sub-int v10, v4, v6

    iget v11, p0, Lcom/ebay/common/net/api/finding/PagedList;->maxCountPerPage:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ebay/common/net/api/finding/PagedList$Page;

    .line 170
    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 172
    :try_start_3
    iget v10, v9, Lcom/ebay/common/net/api/finding/PagedList$Page;->loadState:I

    if-ne v10, v0, :cond_d

    .line 174
    iget-object v10, p0, Lcom/ebay/common/net/api/finding/PagedList;->failedPages:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 176
    :try_start_4
    iget-object v11, p0, Lcom/ebay/common/net/api/finding/PagedList;->failedPages:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 177
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 178
    :try_start_5
    iget-object v10, v9, Lcom/ebay/common/net/api/finding/PagedList$Page;->rows:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 179
    iput v1, v9, Lcom/ebay/common/net/api/finding/PagedList$Page;->loadState:I

    .line 180
    invoke-direct {p0, v9}, Lcom/ebay/common/net/api/finding/PagedList;->asyncLoadPage(Lcom/ebay/common/net/api/finding/PagedList$Page;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_9

    :catchall_1
    move-exception p1

    .line 177
    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1

    .line 182
    :cond_d
    :goto_9
    monitor-exit v9

    goto :goto_b

    :catchall_2
    move-exception p1

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p1

    .line 186
    :cond_e
    new-instance v9, Lcom/ebay/common/net/api/finding/PagedList$Page;

    iget v10, p0, Lcom/ebay/common/net/api/finding/PagedList;->count:I

    sub-int/2addr v10, v4

    iget v11, p0, Lcom/ebay/common/net/api/finding/PagedList;->maxCountPerPage:I

    if-le v10, v11, :cond_f

    iget v10, p0, Lcom/ebay/common/net/api/finding/PagedList;->maxCountPerPage:I

    goto :goto_a

    :cond_f
    iget v10, p0, Lcom/ebay/common/net/api/finding/PagedList;->count:I

    sub-int/2addr v10, v4

    :goto_a
    invoke-direct {v9, v4, v10}, Lcom/ebay/common/net/api/finding/PagedList$Page;-><init>(II)V

    if-eqz p2, :cond_10

    if-ne v4, p1, :cond_10

    .line 188
    invoke-direct {p0, v9}, Lcom/ebay/common/net/api/finding/PagedList;->loadPage(Lcom/ebay/common/net/api/finding/PagedList$Page;)V

    goto :goto_b

    .line 190
    :cond_10
    invoke-direct {p0, v9}, Lcom/ebay/common/net/api/finding/PagedList;->asyncLoadPage(Lcom/ebay/common/net/api/finding/PagedList$Page;)V

    .line 192
    :goto_b
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v4, p1, :cond_11

    .line 194
    iput-object v9, p0, Lcom/ebay/common/net/api/finding/PagedList;->currentPage:Lcom/ebay/common/net/api/finding/PagedList$Page;

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 196
    :cond_12
    iput-object v2, p0, Lcom/ebay/common/net/api/finding/PagedList;->cachedPages:Ljava/util/ArrayList;

    .line 221
    :goto_c
    sget-object p1, Lcom/ebay/common/net/api/finding/PagedList;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_13

    .line 222
    invoke-direct {p0}, Lcom/ebay/common/net/api/finding/PagedList;->logDump()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 223
    :cond_13
    monitor-exit p0

    return-void

    :cond_14
    :goto_d
    const/4 p1, 0x0

    .line 124
    :try_start_9
    iput-object p1, p0, Lcom/ebay/common/net/api/finding/PagedList;->currentPage:Lcom/ebay/common/net/api/finding/PagedList$Page;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 125
    monitor-exit p0

    return-void

    :catchall_3
    move-exception p1

    .line 118
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 412
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 406
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 424
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 418
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 0

    .line 430
    invoke-direct {p0}, Lcom/ebay/common/net/api/finding/PagedList;->clearPages()V

    return-void
.end method

.method public close()V
    .locals 0

    .line 386
    invoke-direct {p0}, Lcom/ebay/common/net/api/finding/PagedList;->clearPages()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 436
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 442
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 510
    iget v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->count:I

    if-ge p1, v0, :cond_0

    .line 513
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/finding/PagedList;->getAsync(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 511
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->netObserver:Lcom/ebay/common/net/AsyncList$NetworkListObserver;

    if-eqz v0, :cond_0

    .line 450
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 453
    :pswitch_0
    iget-object p1, p0, Lcom/ebay/common/net/api/finding/PagedList;->netObserver:Lcom/ebay/common/net/AsyncList$NetworkListObserver;

    invoke-interface {p1}, Lcom/ebay/common/net/AsyncList$NetworkListObserver;->onChanged()V

    goto :goto_0

    .line 456
    :pswitch_1
    iget-object v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->netObserver:Lcom/ebay/common/net/AsyncList$NetworkListObserver;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/IOException;

    invoke-interface {v0, p1}, Lcom/ebay/common/net/AsyncList$NetworkListObserver;->onNetworkError(Ljava/io/IOException;)V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 0

    .line 519
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 525
    iget v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->count:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrefetchEnabled()Z
    .locals 1

    .line 966
    iget v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->pagePrefetchLevel:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 531
    invoke-virtual {p0}, Lcom/ebay/common/net/api/finding/PagedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 0

    .line 537
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 543
    invoke-virtual {p0, v0}, Lcom/ebay/common/net/api/finding/PagedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 549
    new-instance v0, Lcom/ebay/common/net/api/finding/PagedList$IteratorImpl;

    invoke-direct {v0, p0, p1}, Lcom/ebay/common/net/api/finding/PagedList$IteratorImpl;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 951
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    const/16 v0, 0xa

    .line 955
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method

.method public registerObserver(Lcom/ebay/common/net/AsyncList$NetworkListObserver;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 393
    iput-object p1, p0, Lcom/ebay/common/net/api/finding/PagedList;->netObserver:Lcom/ebay/common/net/AsyncList$NetworkListObserver;

    :cond_0
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 555
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 561
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 567
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public restartFetch(III)V
    .locals 0

    .line 972
    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/net/api/finding/PagedList;->setCacheLevel(II)V

    const/4 p1, 0x0

    .line 973
    invoke-direct {p0, p3, p1}, Lcom/ebay/common/net/api/finding/PagedList;->setPage(IZ)V

    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 573
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final retry()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;,
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;,
            Lcom/ebay/nautilus/kernel/net/HostErrorException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->failedPages:Ljava/util/ArrayList;

    monitor-enter v0

    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/ebay/common/net/api/finding/PagedList;->failedPages:Ljava/util/ArrayList;

    .line 353
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 355
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/common/net/api/finding/PagedList$Page;

    .line 356
    iget-object v4, v3, Lcom/ebay/common/net/api/finding/PagedList$Page;->rows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 357
    invoke-direct {p0, v3}, Lcom/ebay/common/net/api/finding/PagedList;->retry_loadPage(Lcom/ebay/common/net/api/finding/PagedList$Page;)V

    const/4 v4, 0x1

    .line 360
    iput v4, v3, Lcom/ebay/common/net/api/finding/PagedList$Page;->loadState:I

    .line 361
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 363
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 579
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final declared-synchronized setCacheLevel(II)V
    .locals 1

    monitor-enter p0

    .line 108
    :try_start_0
    iget v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->pagePrefetchLevel:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ge p1, v0, :cond_0

    iget p1, p0, Lcom/ebay/common/net/api/finding/PagedList;->pagePrefetchLevel:I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    :cond_0
    iput p1, p0, Lcom/ebay/common/net/api/finding/PagedList;->maxPagesCached:I

    .line 109
    iput p2, p0, Lcom/ebay/common/net/api/finding/PagedList;->pagePrefetchLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 107
    monitor-exit p0

    throw p1
.end method

.method public size()I
    .locals 1

    .line 585
    iget v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->count:I

    return v0
.end method

.method public final declared-synchronized startQuery()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;,
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;,
            Lcom/ebay/nautilus/kernel/net/HostErrorException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 329
    :try_start_0
    sget-object v0, Lcom/ebay/common/net/api/finding/PagedList;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 330
    sget-object v0, Lcom/ebay/common/net/api/finding/PagedList;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/ebay/nautilus/kernel/util/FwLog;->logMethod(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;[Ljava/lang/Object;)V

    .line 331
    :cond_0
    invoke-direct {p0}, Lcom/ebay/common/net/api/finding/PagedList;->clearPages()V

    .line 332
    iget-object v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->query:Lcom/ebay/common/net/api/finding/PagedList$Query;

    invoke-interface {v0}, Lcom/ebay/common/net/api/finding/PagedList$Query;->query()I

    move-result v0

    iput v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->count:I

    .line 333
    iget v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->count:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 334
    invoke-direct {p0, v1, v0}, Lcom/ebay/common/net/api/finding/PagedList;->setPage(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 328
    monitor-exit p0

    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    if-ltz p1, :cond_1

    if-gt p1, p2, :cond_1

    .line 591
    iget v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->count:I

    if-gt p2, v0, :cond_1

    if-nez p1, :cond_0

    .line 593
    iget v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->count:I

    if-ne p2, v0, :cond_0

    return-object p0

    .line 595
    :cond_0
    new-instance v0, Lcom/ebay/common/net/api/finding/PagedList$SubList;

    invoke-direct {v0, p0, p1, p2}, Lcom/ebay/common/net/api/finding/PagedList$SubList;-><init>(Ljava/util/List;II)V

    return-object v0

    .line 592
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 601
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 607
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public unregisterObserver(Lcom/ebay/common/net/AsyncList$NetworkListObserver;)V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/ebay/common/net/api/finding/PagedList;->netObserver:Lcom/ebay/common/net/AsyncList$NetworkListObserver;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 400
    iput-object p1, p0, Lcom/ebay/common/net/api/finding/PagedList;->netObserver:Lcom/ebay/common/net/AsyncList$NetworkListObserver;

    :cond_0
    return-void
.end method
