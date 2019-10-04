.class Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;
.super Ljava/lang/Object;
.source "RemoteImageViewLoaderQueue.java"


# static fields
.field private static final LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

.field private static final POLL:Lcom/codahale/metrics/Timer;

.field private static final SORT_THRESHOLD:J


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ebay/android/widget/RemoteImageViewQueueNode;",
            ">;>;"
        }
    .end annotation
.end field

.field private final delegate:Lcom/ebay/android/widget/RemoteImageViewLoaderComparator;

.field private lastSort:J

.field private final queue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ebay/android/widget/RemoteImageViewQueueNode;",
            ">;>;"
        }
    .end annotation
.end field

.field private sortPending:Z

.field private final sortRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "RIVMultiPassQueue"

    const-string v2, "RemoteImageView multi-pass queue"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    .line 33
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "poll"

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/metrics/Metrics;->timer(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)Lcom/codahale/metrics/Timer;

    move-result-object v0

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->POLL:Lcom/codahale/metrics/Timer;

    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->SORT_THRESHOLD:J

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->queue:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue$1;

    invoke-direct {v0, p0}, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue$1;-><init>(Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;)V

    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->sortRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->lastSort:J

    .line 68
    new-instance v0, Lcom/ebay/android/widget/RemoteImageViewLoaderComparator;

    invoke-direct {v0}, Lcom/ebay/android/widget/RemoteImageViewLoaderComparator;-><init>()V

    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->delegate:Lcom/ebay/android/widget/RemoteImageViewLoaderComparator;

    .line 69
    new-instance v0, Lcom/ebay/android/widget/ReferenceResolvingComparator;

    iget-object v1, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->delegate:Lcom/ebay/android/widget/RemoteImageViewLoaderComparator;

    invoke-direct {v0, v1}, Lcom/ebay/android/widget/ReferenceResolvingComparator;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->performSort()V

    return-void
.end method

.method private checkForSortDispatch()V
    .locals 6

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 151
    iget-wide v2, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->lastSort:J

    sub-long/2addr v0, v2

    .line 152
    iget-object v2, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->queue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    sget-wide v4, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->SORT_THRESHOLD:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->sortPending:Z

    if-nez v0, :cond_0

    .line 154
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "enqueuing sort..."

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 155
    iput-boolean v3, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->sortPending:Z

    .line 156
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->sortRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized performSort()V
    .locals 3

    monitor-enter p0

    .line 166
    :try_start_0
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->verifyNotMain()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 170
    :try_start_1
    iget-object v1, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->queue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 171
    iget-object v1, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->queue:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->comparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 172
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->lastSort:J

    .line 173
    iput-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->sortPending:Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :catch_0
    :try_start_2
    iput-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->sortPending:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->sortPending:Z

    .line 183
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 184
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 165
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized add(Lcom/ebay/android/widget/RemoteImageViewQueueNode;)V
    .locals 2

    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->queue:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->checkForSortDispatch()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 98
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized poll()Lcom/ebay/android/widget/RemoteImageViewQueueNode;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 112
    :try_start_0
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->POLL:Lcom/codahale/metrics/Timer;

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer;->time()Lcom/codahale/metrics/Timer$Context;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 116
    :try_start_1
    iget-object v1, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->queue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 144
    :try_start_2
    invoke-virtual {v0}, Lcom/codahale/metrics/Timer$Context;->stop()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    monitor-exit p0

    return-object v2

    .line 119
    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->checkForSortDispatch()V

    :goto_0
    move-object v1, v2

    .line 121
    :goto_1
    iget-object v3, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->queue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    if-nez v1, :cond_2

    .line 123
    iget-object v1, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->queue:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/android/widget/RemoteImageViewQueueNode;

    goto :goto_1

    .line 127
    :cond_2
    sget-object v3, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v3, v3, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v3, :cond_5

    if-nez v1, :cond_3

    goto :goto_2

    .line 129
    :cond_3
    iget-object v2, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->delegate:Lcom/ebay/android/widget/RemoteImageViewLoaderComparator;

    invoke-virtual {v2, v1}, Lcom/ebay/android/widget/RemoteImageViewLoaderComparator;->getDebugString(Lcom/ebay/android/widget/RemoteImageViewQueueNode;)Ljava/lang/String;

    move-result-object v2

    .line 130
    :goto_2
    sget-object v3, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "R: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 131
    :goto_3
    iget-object v2, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->queue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_5

    .line 133
    iget-object v2, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->queue:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 134
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/android/widget/RemoteImageViewQueueNode;

    if-nez v2, :cond_4

    const-string v3, ""

    goto :goto_4

    .line 135
    :cond_4
    iget-object v3, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->delegate:Lcom/ebay/android/widget/RemoteImageViewLoaderComparator;

    invoke-virtual {v3, v2}, Lcom/ebay/android/widget/RemoteImageViewLoaderComparator;->getDebugString(Lcom/ebay/android/widget/RemoteImageViewQueueNode;)Ljava/lang/String;

    move-result-object v3

    .line 136
    :goto_4
    sget-object v5, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 144
    :cond_5
    :try_start_4
    invoke-virtual {v0}, Lcom/codahale/metrics/Timer$Context;->stop()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 140
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    .line 144
    :try_start_5
    invoke-virtual {v0}, Lcom/codahale/metrics/Timer$Context;->stop()J

    .line 145
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    .line 110
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
