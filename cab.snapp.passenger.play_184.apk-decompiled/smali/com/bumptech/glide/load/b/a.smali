.class final Lcom/bumptech/glide/load/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/a$b;,
        Lcom/bumptech/glide/load/b/a$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/d;",
            "Lcom/bumptech/glide/load/b/a$b;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/bumptech/glide/load/b/p<",
            "*>;>;"
        }
    .end annotation
.end field

.field d:Lcom/bumptech/glide/load/b/p$a;

.field volatile e:Z

.field volatile f:Lcom/bumptech/glide/load/b/a$a;

.field private final g:Z


# direct methods
.method constructor <init>(Z)V
    .locals 1

    .line 34
    new-instance v0, Lcom/bumptech/glide/load/b/a$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/a$1;-><init>()V

    .line 36
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/b/a;-><init>(ZLjava/util/concurrent/Executor;)V

    return-void
.end method

.method private constructor <init>(ZLjava/util/concurrent/Executor;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/a;->b:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/a;->c:Ljava/lang/ref/ReferenceQueue;

    .line 56
    iput-boolean p1, p0, Lcom/bumptech/glide/load/b/a;->g:Z

    .line 57
    iput-object p2, p0, Lcom/bumptech/glide/load/b/a;->a:Ljava/util/concurrent/Executor;

    .line 59
    new-instance p1, Lcom/bumptech/glide/load/b/a$2;

    invoke-direct {p1, p0}, Lcom/bumptech/glide/load/b/a$2;-><init>(Lcom/bumptech/glide/load/b/a;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/bumptech/glide/load/b/a$b;)V
    .locals 5

    .line 113
    iget-object v0, p0, Lcom/bumptech/glide/load/b/a;->d:Lcom/bumptech/glide/load/b/p$a;

    monitor-enter v0

    .line 114
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 115
    :try_start_1
    iget-object v1, p0, Lcom/bumptech/glide/load/b/a;->b:Ljava/util/Map;

    iget-object v2, p1, Lcom/bumptech/glide/load/b/a$b;->a:Lcom/bumptech/glide/load/d;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-boolean v1, p1, Lcom/bumptech/glide/load/b/a$b;->b:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/bumptech/glide/load/b/a$b;->c:Lcom/bumptech/glide/load/b/v;

    if-nez v1, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    new-instance v1, Lcom/bumptech/glide/load/b/p;

    iget-object v2, p1, Lcom/bumptech/glide/load/b/a$b;->c:Lcom/bumptech/glide/load/b/v;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/bumptech/glide/load/b/p;-><init>(Lcom/bumptech/glide/load/b/v;ZZ)V

    .line 122
    iget-object v2, p1, Lcom/bumptech/glide/load/b/a$b;->a:Lcom/bumptech/glide/load/d;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/a;->d:Lcom/bumptech/glide/load/b/p$a;

    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/load/b/p;->a(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/b/p$a;)V

    .line 123
    iget-object v2, p0, Lcom/bumptech/glide/load/b/a;->d:Lcom/bumptech/glide/load/b/p$a;

    iget-object p1, p1, Lcom/bumptech/glide/load/b/a$b;->a:Lcom/bumptech/glide/load/d;

    invoke-interface {v2, p1, v1}, Lcom/bumptech/glide/load/b/p$a;->onResourceReleased(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/b/p;)V

    .line 124
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 118
    :cond_1
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 124
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    .line 125
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method final declared-synchronized a(Lcom/bumptech/glide/load/d;)V
    .locals 1

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/b/a$b;

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/a$b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/b/p;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d;",
            "Lcom/bumptech/glide/load/b/p<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 77
    :try_start_0
    new-instance v0, Lcom/bumptech/glide/load/b/a$b;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a;->c:Ljava/lang/ref/ReferenceQueue;

    iget-boolean v2, p0, Lcom/bumptech/glide/load/b/a;->g:Z

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/bumptech/glide/load/b/a$b;-><init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/b/p;Ljava/lang/ref/ReferenceQueue;Z)V

    .line 81
    iget-object p2, p0, Lcom/bumptech/glide/load/b/a;->b:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/b/a$b;

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/a$b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized b(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/load/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d;",
            ")",
            "Lcom/bumptech/glide/load/b/p<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/b/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 98
    monitor-exit p0

    return-object p1

    .line 101
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/a$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/p;

    if-nez v0, :cond_1

    .line 103
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/b/a;->a(Lcom/bumptech/glide/load/b/a$b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
