.class public final Lcom/bumptech/glide/load/b/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/c/a$a;,
        Lcom/bumptech/glide/load/b/c/a$b;
    }
.end annotation


# static fields
.field private static final a:J

.field private static volatile b:I


# instance fields
.field private final c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/bumptech/glide/load/b/c/a;->a:J

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Lcom/bumptech/glide/load/b/c/a;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static calculateBestThreadCount()I
    .locals 4

    .line 357
    sget v0, Lcom/bumptech/glide/load/b/c/a;->b:I

    if-nez v0, :cond_1

    const/4 v0, 0x4

    .line 1027
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    .line 1028
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_0

    .line 1029
    invoke-static {}, Lcom/bumptech/glide/load/b/c/b;->a()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 359
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/bumptech/glide/load/b/c/a;->b:I

    .line 361
    :cond_1
    sget v0, Lcom/bumptech/glide/load/b/c/a;->b:I

    return v0
.end method

.method public static newAnimationExecutor()Lcom/bumptech/glide/load/b/c/a;
    .locals 2

    .line 229
    invoke-static {}, Lcom/bumptech/glide/load/b/c/a;->calculateBestThreadCount()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 237
    :goto_0
    sget-object v1, Lcom/bumptech/glide/load/b/c/a$b;->DEFAULT:Lcom/bumptech/glide/load/b/c/a$b;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/b/c/a;->newAnimationExecutor(ILcom/bumptech/glide/load/b/c/a$b;)Lcom/bumptech/glide/load/b/c/a;

    move-result-object v0

    return-object v0
.end method

.method public static newAnimationExecutor(ILcom/bumptech/glide/load/b/c/a$b;)Lcom/bumptech/glide/load/b/c/a;
    .locals 10

    .line 248
    new-instance v0, Lcom/bumptech/glide/load/b/c/a;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-wide v4, Lcom/bumptech/glide/load/b/c/a;->a:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lcom/bumptech/glide/load/b/c/a$a;

    const-string v1, "animation"

    const/4 v2, 0x1

    invoke-direct {v8, v1, p1, v2}, Lcom/bumptech/glide/load/b/c/a$a;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/b/c/a$b;Z)V

    const/4 v2, 0x0

    move-object v1, v9

    move v3, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v9}, Lcom/bumptech/glide/load/b/c/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static newDiskCacheExecutor()Lcom/bumptech/glide/load/b/c/a;
    .locals 3

    .line 78
    sget-object v0, Lcom/bumptech/glide/load/b/c/a$b;->DEFAULT:Lcom/bumptech/glide/load/b/c/a$b;

    const/4 v1, 0x1

    const-string v2, "disk-cache"

    invoke-static {v1, v2, v0}, Lcom/bumptech/glide/load/b/c/a;->newDiskCacheExecutor(ILjava/lang/String;Lcom/bumptech/glide/load/b/c/a$b;)Lcom/bumptech/glide/load/b/c/a;

    move-result-object v0

    return-object v0
.end method

.method public static newDiskCacheExecutor(ILjava/lang/String;Lcom/bumptech/glide/load/b/c/a$b;)Lcom/bumptech/glide/load/b/c/a;
    .locals 10

    .line 122
    new-instance v0, Lcom/bumptech/glide/load/b/c/a;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lcom/bumptech/glide/load/b/c/a$a;

    const/4 v1, 0x1

    invoke-direct {v8, p1, p2, v1}, Lcom/bumptech/glide/load/b/c/a$a;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/b/c/a$b;Z)V

    const-wide/16 v4, 0x0

    move-object v1, v9

    move v2, p0

    move v3, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v9}, Lcom/bumptech/glide/load/b/c/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static newDiskCacheExecutor(Lcom/bumptech/glide/load/b/c/a$b;)Lcom/bumptech/glide/load/b/c/a;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "disk-cache"

    .line 100
    invoke-static {v0, v1, p0}, Lcom/bumptech/glide/load/b/c/a;->newDiskCacheExecutor(ILjava/lang/String;Lcom/bumptech/glide/load/b/c/a$b;)Lcom/bumptech/glide/load/b/c/a;

    move-result-object p0

    return-object p0
.end method

.method public static newSourceExecutor()Lcom/bumptech/glide/load/b/c/a;
    .locals 3

    .line 143
    invoke-static {}, Lcom/bumptech/glide/load/b/c/a;->calculateBestThreadCount()I

    move-result v0

    sget-object v1, Lcom/bumptech/glide/load/b/c/a$b;->DEFAULT:Lcom/bumptech/glide/load/b/c/a$b;

    const-string v2, "source"

    .line 142
    invoke-static {v0, v2, v1}, Lcom/bumptech/glide/load/b/c/a;->newSourceExecutor(ILjava/lang/String;Lcom/bumptech/glide/load/b/c/a$b;)Lcom/bumptech/glide/load/b/c/a;

    move-result-object v0

    return-object v0
.end method

.method public static newSourceExecutor(ILjava/lang/String;Lcom/bumptech/glide/load/b/c/a$b;)Lcom/bumptech/glide/load/b/c/a;
    .locals 10

    .line 187
    new-instance v0, Lcom/bumptech/glide/load/b/c/a;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lcom/bumptech/glide/load/b/c/a$a;

    const/4 v1, 0x0

    invoke-direct {v8, p1, p2, v1}, Lcom/bumptech/glide/load/b/c/a$a;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/b/c/a$b;Z)V

    const-wide/16 v4, 0x0

    move-object v1, v9

    move v2, p0

    move v3, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v9}, Lcom/bumptech/glide/load/b/c/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static newSourceExecutor(Lcom/bumptech/glide/load/b/c/a$b;)Lcom/bumptech/glide/load/b/c/a;
    .locals 2

    .line 166
    invoke-static {}, Lcom/bumptech/glide/load/b/c/a;->calculateBestThreadCount()I

    move-result v0

    const-string v1, "source"

    .line 165
    invoke-static {v0, v1, p0}, Lcom/bumptech/glide/load/b/c/a;->newSourceExecutor(ILjava/lang/String;Lcom/bumptech/glide/load/b/c/a$b;)Lcom/bumptech/glide/load/b/c/a;

    move-result-object p0

    return-object p0
.end method

.method public static newUnlimitedSourceExecutor()Lcom/bumptech/glide/load/b/c/a;
    .locals 10

    .line 212
    new-instance v0, Lcom/bumptech/glide/load/b/c/a;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-wide v4, Lcom/bumptech/glide/load/b/c/a;->a:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lcom/bumptech/glide/load/b/c/a$a;

    sget-object v1, Lcom/bumptech/glide/load/b/c/a$b;->DEFAULT:Lcom/bumptech/glide/load/b/c/a$b;

    const-string v2, "source-unlimited"

    const/4 v3, 0x0

    invoke-direct {v8, v2, v1, v3}, Lcom/bumptech/glide/load/b/c/a$a;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/b/c/a$b;Z)V

    const/4 v2, 0x0

    const v3, 0x7fffffff

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v9}, Lcom/bumptech/glide/load/b/c/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method


# virtual methods
.method public final awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isShutdown()Z
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public final isTerminated()Z
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public final shutdown()V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
