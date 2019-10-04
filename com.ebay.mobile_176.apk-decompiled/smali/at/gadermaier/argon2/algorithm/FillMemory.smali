.class public Lat/gadermaier/argon2/algorithm/FillMemory;
.super Ljava/lang/Object;
.source "FillMemory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fillMemoryBlockMultiThreaded(Lat/gadermaier/argon2/model/Instance;)V
    .locals 8

    .line 36
    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getLanes()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 39
    :goto_0
    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getIterations()I

    move-result v4

    if-ge v3, v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    const/4 v5, 0x0

    .line 41
    :goto_2
    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getLanes()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 43
    new-instance v6, Lat/gadermaier/argon2/model/Position;

    invoke-direct {v6, v3, v5, v4, v2}, Lat/gadermaier/argon2/model/Position;-><init>(IIII)V

    .line 45
    new-instance v7, Lat/gadermaier/argon2/algorithm/FillMemory$1;

    invoke-direct {v7, p0, v6}, Lat/gadermaier/argon2/algorithm/FillMemory$1;-><init>(Lat/gadermaier/argon2/model/Instance;Lat/gadermaier/argon2/model/Position;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    .line 52
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 55
    :cond_0
    invoke-static {p0, v1}, Lat/gadermaier/argon2/algorithm/FillMemory;->joinThreads(Lat/gadermaier/argon2/model/Instance;Ljava/util/List;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    :cond_2
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method private static fillMemoryBlockSingleThreaded(Lat/gadermaier/argon2/model/Instance;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 26
    :goto_0
    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getIterations()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 28
    new-instance v3, Lat/gadermaier/argon2/model/Position;

    invoke-direct {v3, v1, v0, v2, v0}, Lat/gadermaier/argon2/model/Position;-><init>(IIII)V

    .line 29
    invoke-static {p0, v3}, Lat/gadermaier/argon2/algorithm/FillSegment;->fillSegment(Lat/gadermaier/argon2/model/Instance;Lat/gadermaier/argon2/model/Position;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static fillMemoryBlocks(Lat/gadermaier/argon2/model/Instance;)V
    .locals 2

    .line 18
    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->getLanes()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 19
    invoke-static {p0}, Lat/gadermaier/argon2/algorithm/FillMemory;->fillMemoryBlockSingleThreaded(Lat/gadermaier/argon2/model/Instance;)V

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p0}, Lat/gadermaier/argon2/algorithm/FillMemory;->fillMemoryBlockMultiThreaded(Lat/gadermaier/argon2/model/Instance;)V

    :goto_0
    return-void
.end method

.method private static joinThreads(Lat/gadermaier/argon2/model/Instance;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lat/gadermaier/argon2/model/Instance;",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "*>;>;)V"
        }
    .end annotation

    .line 64
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 65
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 71
    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->clear()V

    .line 72
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :catch_1
    move-exception p1

    .line 68
    invoke-virtual {p0}, Lat/gadermaier/argon2/model/Instance;->clear()V

    .line 69
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method
