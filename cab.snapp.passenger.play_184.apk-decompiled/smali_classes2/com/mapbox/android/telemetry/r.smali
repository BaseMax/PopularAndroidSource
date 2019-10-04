.class final Lcom/mapbox/android/telemetry/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/mapbox/android/telemetry/u;

.field private final b:Lcom/mapbox/android/telemetry/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/android/telemetry/l<",
            "Lcom/mapbox/android/telemetry/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>(Lcom/mapbox/android/telemetry/l;Lcom/mapbox/android/telemetry/u;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/android/telemetry/l<",
            "Lcom/mapbox/android/telemetry/Event;",
            ">;",
            "Lcom/mapbox/android/telemetry/u;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/mapbox/android/telemetry/r;->b:Lcom/mapbox/android/telemetry/l;

    .line 23
    iput-object p2, p0, Lcom/mapbox/android/telemetry/r;->a:Lcom/mapbox/android/telemetry/u;

    .line 24
    iput-object p3, p0, Lcom/mapbox/android/telemetry/r;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static declared-synchronized a(Lcom/mapbox/android/telemetry/u;Ljava/util/concurrent/ExecutorService;)Lcom/mapbox/android/telemetry/r;
    .locals 3

    const-class v0, Lcom/mapbox/android/telemetry/r;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 32
    :try_start_0
    new-instance v1, Lcom/mapbox/android/telemetry/r;

    new-instance v2, Lcom/mapbox/android/telemetry/l;

    invoke-direct {v2}, Lcom/mapbox/android/telemetry/l;-><init>()V

    invoke-direct {v1, v2, p0, p1}, Lcom/mapbox/android/telemetry/r;-><init>(Lcom/mapbox/android/telemetry/l;Lcom/mapbox/android/telemetry/u;Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 30
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback or executor can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/android/telemetry/Event;",
            ">;"
        }
    .end annotation

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/android/telemetry/r;->b:Lcom/mapbox/android/telemetry/l;

    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/l;->a()Ljava/util/List;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 55
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final a(Lcom/mapbox/android/telemetry/Event;)Z
    .locals 3

    .line 44
    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/android/telemetry/r;->b:Lcom/mapbox/android/telemetry/l;

    .line 1047
    iget-object v0, v0, Lcom/mapbox/android/telemetry/l;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0xb4

    if-lt v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/mapbox/android/telemetry/r;->b:Lcom/mapbox/android/telemetry/l;

    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/l;->a()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1060
    :try_start_1
    iget-object v1, p0, Lcom/mapbox/android/telemetry/r;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/mapbox/android/telemetry/r$1;

    invoke-direct {v2, p0, v0}, Lcom/mapbox/android/telemetry/r$1;-><init>(Lcom/mapbox/android/telemetry/r;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :catch_0
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/mapbox/android/telemetry/r;->b:Lcom/mapbox/android/telemetry/l;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/telemetry/l;->a(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 49
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
