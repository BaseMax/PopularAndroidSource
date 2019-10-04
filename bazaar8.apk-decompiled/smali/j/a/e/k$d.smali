.class public Lj/a/e/k$d;
.super Lj/a/b;
.source "Http2Connection.java"

# interfaces
.implements Lj/a/e/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/a/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field public final b:Lj/a/e/p;

.field public final synthetic c:Lj/a/e/k;


# direct methods
.method public constructor <init>(Lj/a/e/k;Lj/a/e/p;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    iget-object p1, p1, Lj/a/e/k;->e:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lj/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-object p2, p0, Lj/a/e/k$d;->b:Lj/a/e/p;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(IIIZ)V
    .locals 0

    return-void
.end method

.method public a(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lj/a/e/a;",
            ">;)V"
        }
    .end annotation

    .line 71
    iget-object p1, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    invoke-virtual {p1, p2, p3}, Lj/a/e/k;->a(ILjava/util/List;)V

    return-void
.end method

.method public a(IJ)V
    .locals 3

    if-nez p1, :cond_0

    .line 63
    iget-object v0, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object p1, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    iget-wide v1, p1, Lj/a/e/k;->n:J

    add-long/2addr v1, p2

    iput-wide v1, p1, Lj/a/e/k;->n:J

    .line 65
    iget-object p1, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 66
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 67
    :cond_0
    iget-object v0, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    invoke-virtual {v0, p1}, Lj/a/e/k;->b(I)Lj/a/e/q;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 68
    monitor-enter p1

    .line 69
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lj/a/e/q;->a(J)V

    .line 70
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    invoke-virtual {v0, p1}, Lj/a/e/k;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    invoke-virtual {v0, p1, p2}, Lj/a/e/k;->a(ILokhttp3/internal/http2/ErrorCode;)V

    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    invoke-virtual {v0, p1}, Lj/a/e/k;->d(I)Lj/a/e/q;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 29
    invoke-virtual {p1, p2}, Lj/a/e/q;->d(Lokhttp3/internal/http2/ErrorCode;)V

    :cond_1
    return-void
.end method

.method public a(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V
    .locals 3

    .line 53
    invoke-virtual {p3}, Lokio/ByteString;->k()I

    .line 54
    iget-object p2, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    monitor-enter p2

    .line 55
    :try_start_0
    iget-object p3, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    iget-object p3, p3, Lj/a/e/k;->d:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    iget-object v0, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    iget-object v0, v0, Lj/a/e/k;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lj/a/e/q;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lj/a/e/q;

    .line 56
    iget-object v0, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lj/a/e/k;->h:Z

    .line 57
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p3, v0

    .line 59
    invoke-virtual {v1}, Lj/a/e/q;->c()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {v1}, Lj/a/e/q;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2}, Lj/a/e/q;->d(Lokhttp3/internal/http2/ErrorCode;)V

    .line 61
    iget-object v2, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    invoke-virtual {v1}, Lj/a/e/q;->c()I

    move-result v1

    invoke-virtual {v2, v1}, Lj/a/e/k;->d(I)Lj/a/e/q;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 62
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final a(Lj/a/e/v;)V
    .locals 6

    .line 47
    :try_start_0
    iget-object v0, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    invoke-static {v0}, Lj/a/e/k;->b(Lj/a/e/k;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lj/a/e/o;

    const-string v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    iget-object v5, v5, Lj/a/e/k;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, p1}, Lj/a/e/o;-><init>(Lj/a/e/k$d;Ljava/lang/String;[Ljava/lang/Object;Lj/a/e/v;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a(ZII)V
    .locals 3

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    monitor-enter p1

    .line 49
    :try_start_0
    iget-object p2, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lj/a/e/k;->a(Lj/a/e/k;Z)Z

    .line 50
    iget-object p2, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 51
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 52
    :cond_0
    :try_start_1
    iget-object p1, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    invoke-static {p1}, Lj/a/e/k;->b(Lj/a/e/k;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lj/a/e/k$c;

    iget-object v1, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p2, p3}, Lj/a/e/k$c;-><init>(Lj/a/e/k;ZII)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public a(ZIILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lj/a/e/a;",
            ">;)V"
        }
    .end annotation

    .line 9
    iget-object p3, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    invoke-virtual {p3, p2}, Lj/a/e/k;->c(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 10
    iget-object p3, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    invoke-virtual {p3, p2, p4, p1}, Lj/a/e/k;->b(ILjava/util/List;Z)V

    return-void

    .line 11
    :cond_0
    iget-object p3, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    monitor-enter p3

    .line 12
    :try_start_0
    iget-object v0, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    invoke-virtual {v0, p2}, Lj/a/e/k;->b(I)Lj/a/e/q;

    move-result-object v0

    if-nez v0, :cond_4

    .line 13
    iget-object v0, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    iget-boolean v0, v0, Lj/a/e/k;->h:Z

    if-eqz v0, :cond_1

    monitor-exit p3

    return-void

    .line 14
    :cond_1
    iget-object v0, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    iget v0, v0, Lj/a/e/k;->f:I

    if-gt p2, v0, :cond_2

    monitor-exit p3

    return-void

    .line 15
    :cond_2
    rem-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    iget v1, v1, Lj/a/e/k;->g:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-ne v0, v1, :cond_3

    monitor-exit p3

    return-void

    .line 16
    :cond_3
    invoke-static {p4}, Lj/a/e;->b(Ljava/util/List;)Lj/C;

    move-result-object v8

    .line 17
    new-instance p4, Lj/a/e/q;

    iget-object v5, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    const/4 v6, 0x0

    move-object v3, p4

    move v4, p2

    move v7, p1

    invoke-direct/range {v3 .. v8}, Lj/a/e/q;-><init>(ILj/a/e/k;ZZLj/C;)V

    .line 18
    iget-object p1, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    iput p2, p1, Lj/a/e/k;->f:I

    .line 19
    iget-object p1, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    iget-object p1, p1, Lj/a/e/k;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {}, Lj/a/e/k;->s()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lj/a/e/m;

    const-string v1, "OkHttp %s stream %d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    iget-object v4, v4, Lj/a/e/k;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-direct {v0, p0, v1, v2, p4}, Lj/a/e/m;-><init>(Lj/a/e/k$d;Ljava/lang/String;[Ljava/lang/Object;Lj/a/e/q;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 21
    monitor-exit p3

    return-void

    .line 22
    :cond_4
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual {v0, p4}, Lj/a/e/q;->a(Ljava/util/List;)V

    if-eqz p1, :cond_5

    .line 24
    invoke-virtual {v0}, Lj/a/e/q;->i()V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 25
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(ZILk/i;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    invoke-virtual {v0, p2}, Lj/a/e/k;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    invoke-virtual {v0, p2, p3, p4, p1}, Lj/a/e/k;->a(ILk/i;IZ)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    invoke-virtual {v0, p2}, Lj/a/e/k;->b(I)Lj/a/e/q;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, p2, v0}, Lj/a/e/k;->c(ILokhttp3/internal/http2/ErrorCode;)V

    .line 5
    iget-object p1, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Lj/a/e/k;->h(J)V

    .line 6
    invoke-interface {p3, v0, v1}, Lk/i;->skip(J)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {v0, p3, p4}, Lj/a/e/q;->a(Lk/i;I)V

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {v0}, Lj/a/e/q;->i()V

    :cond_2
    return-void
.end method

.method public a(ZLj/a/e/v;)V
    .locals 10

    .line 30
    iget-object v0, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    iget-object v1, v1, Lj/a/e/k;->p:Lj/a/e/v;

    invoke-virtual {v1}, Lj/a/e/v;->c()I

    move-result v1

    if-eqz p1, :cond_0

    .line 32
    iget-object p1, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    iget-object p1, p1, Lj/a/e/k;->p:Lj/a/e/v;

    invoke-virtual {p1}, Lj/a/e/v;->a()V

    .line 33
    :cond_0
    iget-object p1, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    iget-object p1, p1, Lj/a/e/k;->p:Lj/a/e/v;

    invoke-virtual {p1, p2}, Lj/a/e/v;->a(Lj/a/e/v;)V

    .line 34
    invoke-virtual {p0, p2}, Lj/a/e/k$d;->a(Lj/a/e/v;)V

    .line 35
    iget-object p1, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    iget-object p1, p1, Lj/a/e/k;->p:Lj/a/e/v;

    invoke-virtual {p1}, Lj/a/e/v;->c()I

    move-result p1

    const/4 p2, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, p2, :cond_2

    if-eq p1, v1, :cond_2

    sub-int/2addr p1, v1

    int-to-long p1, p1

    .line 36
    iget-object v1, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    iget-boolean v1, v1, Lj/a/e/k;->q:Z

    if-nez v1, :cond_1

    .line 37
    iget-object v1, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    iput-boolean v4, v1, Lj/a/e/k;->q:Z

    .line 38
    :cond_1
    iget-object v1, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    iget-object v1, v1, Lj/a/e/k;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 39
    iget-object v1, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    iget-object v1, v1, Lj/a/e/k;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v5, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    iget-object v5, v5, Lj/a/e/k;->d:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v5, v5, [Lj/a/e/q;

    invoke-interface {v1, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Lj/a/e/q;

    goto :goto_0

    :cond_2
    move-wide p1, v2

    .line 40
    :cond_3
    :goto_0
    invoke-static {}, Lj/a/e/k;->s()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v6, Lj/a/e/n;

    const-string v7, "OkHttp %s settings"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    iget-object v8, v8, Lj/a/e/k;->e:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v4, v9

    invoke-direct {v6, p0, v7, v4}, Lj/a/e/n;-><init>(Lj/a/e/k$d;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_4

    cmp-long v0, p1, v2

    if-eqz v0, :cond_4

    .line 42
    array-length v0, v5

    :goto_1
    if-ge v9, v0, :cond_4

    aget-object v1, v5, v9

    .line 43
    monitor-enter v1

    .line 44
    :try_start_1
    invoke-virtual {v1, p1, p2}, Lj/a/e/q;->a(J)V

    .line 45
    monitor-exit v1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    return-void

    :catchall_1
    move-exception p1

    .line 46
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public b()V
    .locals 4

    .line 1
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 2
    :try_start_0
    iget-object v1, p0, Lj/a/e/k$d;->b:Lj/a/e/p;

    invoke-virtual {v1, p0}, Lj/a/e/p;->a(Lj/a/e/p$b;)V

    .line 3
    :goto_0
    iget-object v1, p0, Lj/a/e/k$d;->b:Lj/a/e/p;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lj/a/e/p;->a(ZLj/a/e/p$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    iget-object v2, p0, Lj/a/e/k$d;->c:Lj/a/e/k;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v1, v0

    goto :goto_2

    :catch_0
    move-object v1, v0

    .line 7
    :catch_1
    :try_start_3
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 8
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 9
    :try_start_4
    iget-object v2, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    :goto_1
    invoke-virtual {v2, v1, v0}, Lj/a/e/k;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 10
    :catch_2
    iget-object v0, p0, Lj/a/e/k$d;->b:Lj/a/e/p;

    invoke-static {v0}, Lj/a/e;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v2

    .line 11
    :goto_2
    :try_start_5
    iget-object v3, p0, Lj/a/e/k$d;->c:Lj/a/e/k;

    invoke-virtual {v3, v1, v0}, Lj/a/e/k;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 12
    :catch_3
    iget-object v0, p0, Lj/a/e/k$d;->b:Lj/a/e/p;

    invoke-static {v0}, Lj/a/e;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method
