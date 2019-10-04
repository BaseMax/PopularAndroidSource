.class final Lcom/mapbox/android/telemetry/x$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/android/telemetry/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 10

    const-class v0, Lcom/mapbox/android/telemetry/x$a;

    monitor-enter v0

    .line 465
    :try_start_0
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-wide/16 v4, 0x14

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 1471
    new-instance v8, Lcom/mapbox/android/telemetry/x$a$1;

    invoke-direct {v8, p0}, Lcom/mapbox/android/telemetry/x$a$1;-><init>(Ljava/lang/String;)V

    move-object v1, v9

    .line 467
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    monitor-exit v0

    return-object v9

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
