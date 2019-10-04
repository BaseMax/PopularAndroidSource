.class public final Lj/a/e/k;
.super Ljava/lang/Object;
.source "Http2Connection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/a/e/k$b;,
        Lj/a/e/k$d;,
        Lj/a/e/k$a;,
        Lj/a/e/k$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final b:Z

.field public final c:Lj/a/e/k$b;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lj/a/e/q;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:Z

.field public final i:Ljava/util/concurrent/ScheduledExecutorService;

.field public final j:Ljava/util/concurrent/ExecutorService;

.field public final k:Lj/a/e/u;

.field public l:Z

.field public m:J

.field public n:J

.field public o:Lj/a/e/v;

.field public final p:Lj/a/e/v;

.field public q:Z

.field public final r:Ljava/net/Socket;

.field public final s:Lj/a/e/r;

.field public final t:Lj/a/e/k$d;

.field public final u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v0, 0x1

    const-string v7, "OkHttp Http2Connection"

    .line 2
    invoke-static {v7, v0}, Lj/a/e;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lj/a/e/k;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lj/a/e/k$a;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lj/a/e/k;->d:Ljava/util/Map;

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, v0, Lj/a/e/k;->m:J

    .line 4
    new-instance v2, Lj/a/e/v;

    invoke-direct {v2}, Lj/a/e/v;-><init>()V

    iput-object v2, v0, Lj/a/e/k;->o:Lj/a/e/v;

    .line 5
    new-instance v2, Lj/a/e/v;

    invoke-direct {v2}, Lj/a/e/v;-><init>()V

    iput-object v2, v0, Lj/a/e/k;->p:Lj/a/e/v;

    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v0, Lj/a/e/k;->q:Z

    .line 7
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v3, v0, Lj/a/e/k;->u:Ljava/util/Set;

    .line 8
    iget-object v3, v1, Lj/a/e/k$a;->f:Lj/a/e/u;

    iput-object v3, v0, Lj/a/e/k;->k:Lj/a/e/u;

    .line 9
    iget-boolean v3, v1, Lj/a/e/k$a;->g:Z

    iput-boolean v3, v0, Lj/a/e/k;->b:Z

    .line 10
    iget-object v4, v1, Lj/a/e/k$a;->e:Lj/a/e/k$b;

    iput-object v4, v0, Lj/a/e/k;->c:Lj/a/e/k$b;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    .line 11
    :goto_0
    iput v3, v0, Lj/a/e/k;->g:I

    .line 12
    iget-boolean v3, v1, Lj/a/e/k$a;->g:Z

    if-eqz v3, :cond_1

    .line 13
    iget v3, v0, Lj/a/e/k;->g:I

    add-int/2addr v3, v4

    iput v3, v0, Lj/a/e/k;->g:I

    .line 14
    :cond_1
    iget-boolean v3, v1, Lj/a/e/k$a;->g:Z

    const/4 v4, 0x7

    if-eqz v3, :cond_2

    .line 15
    iget-object v3, v0, Lj/a/e/k;->o:Lj/a/e/v;

    const/high16 v6, 0x1000000

    invoke-virtual {v3, v4, v6}, Lj/a/e/v;->a(II)Lj/a/e/v;

    .line 16
    :cond_2
    iget-object v3, v1, Lj/a/e/k$a;->b:Ljava/lang/String;

    iput-object v3, v0, Lj/a/e/k;->e:Ljava/lang/String;

    .line 17
    new-instance v3, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v0, Lj/a/e/k;->e:Ljava/lang/String;

    aput-object v7, v6, v2

    const-string v7, "OkHttp %s Writer"

    .line 18
    invoke-static {v7, v6}, Lj/a/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lj/a/e;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v3, v0, Lj/a/e/k;->i:Ljava/util/concurrent/ScheduledExecutorService;

    .line 19
    iget v3, v1, Lj/a/e/k$a;->h:I

    if-eqz v3, :cond_3

    .line 20
    iget-object v6, v0, Lj/a/e/k;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lj/a/e/k$c;

    invoke-direct {v7, v0, v2, v2, v2}, Lj/a/e/k$c;-><init>(Lj/a/e/k;ZII)V

    iget v3, v1, Lj/a/e/k$a;->h:I

    int-to-long v8, v3

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 21
    :cond_3
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-wide/16 v16, 0x3c

    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v19, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v19 .. v19}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v0, Lj/a/e/k;->e:Ljava/lang/String;

    aput-object v7, v6, v2

    const-string v2, "OkHttp %s Push Observer"

    .line 22
    invoke-static {v2, v6}, Lj/a/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lj/a/e;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v20

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v3, v0, Lj/a/e/k;->j:Ljava/util/concurrent/ExecutorService;

    .line 23
    iget-object v2, v0, Lj/a/e/k;->p:Lj/a/e/v;

    const v3, 0xffff

    invoke-virtual {v2, v4, v3}, Lj/a/e/v;->a(II)Lj/a/e/v;

    .line 24
    iget-object v2, v0, Lj/a/e/k;->p:Lj/a/e/v;

    const/4 v3, 0x5

    const/16 v4, 0x4000

    invoke-virtual {v2, v3, v4}, Lj/a/e/v;->a(II)Lj/a/e/v;

    .line 25
    iget-object v2, v0, Lj/a/e/k;->p:Lj/a/e/v;

    invoke-virtual {v2}, Lj/a/e/v;->c()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lj/a/e/k;->n:J

    .line 26
    iget-object v2, v1, Lj/a/e/k$a;->a:Ljava/net/Socket;

    iput-object v2, v0, Lj/a/e/k;->r:Ljava/net/Socket;

    .line 27
    new-instance v2, Lj/a/e/r;

    iget-object v3, v1, Lj/a/e/k$a;->d:Lk/h;

    iget-boolean v4, v0, Lj/a/e/k;->b:Z

    invoke-direct {v2, v3, v4}, Lj/a/e/r;-><init>(Lk/h;Z)V

    iput-object v2, v0, Lj/a/e/k;->s:Lj/a/e/r;

    .line 28
    new-instance v2, Lj/a/e/k$d;

    new-instance v3, Lj/a/e/p;

    iget-object v1, v1, Lj/a/e/k$a;->c:Lk/i;

    iget-boolean v4, v0, Lj/a/e/k;->b:Z

    invoke-direct {v3, v1, v4}, Lj/a/e/p;-><init>(Lk/i;Z)V

    invoke-direct {v2, v0, v3}, Lj/a/e/k$d;-><init>(Lj/a/e/k;Lj/a/e/p;)V

    iput-object v2, v0, Lj/a/e/k;->t:Lj/a/e/k$d;

    return-void
.end method

.method public static synthetic a(Lj/a/e/k;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lj/a/e/k;->t()V

    return-void
.end method

.method public static synthetic a(Lj/a/e/k;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lj/a/e/k;->l:Z

    return p1
.end method

.method public static synthetic b(Lj/a/e/k;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lj/a/e/k;->i:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public static synthetic s()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lj/a/e/k;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/util/List;Z)Lj/a/e/q;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lj/a/e/a;",
            ">;Z)",
            "Lj/a/e/q;"
        }
    .end annotation

    xor-int/lit8 v6, p3, 0x1

    const/4 v4, 0x0

    .line 4
    iget-object v7, p0, Lj/a/e/k;->s:Lj/a/e/r;

    monitor-enter v7

    .line 5
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget v0, p0, Lj/a/e/k;->g:I

    const v1, 0x3fffffff    # 1.9999999f

    if-le v0, v1, :cond_0

    .line 7
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0}, Lj/a/e/k;->a(Lokhttp3/internal/http2/ErrorCode;)V

    .line 8
    :cond_0
    iget-boolean v0, p0, Lj/a/e/k;->h:Z

    if-nez v0, :cond_7

    .line 9
    iget v8, p0, Lj/a/e/k;->g:I

    .line 10
    iget v0, p0, Lj/a/e/k;->g:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lj/a/e/k;->g:I

    .line 11
    new-instance v9, Lj/a/e/q;

    const/4 v5, 0x0

    move-object v0, v9

    move v1, v8

    move-object v2, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lj/a/e/q;-><init>(ILj/a/e/k;ZZLj/C;)V

    if-eqz p3, :cond_2

    .line 12
    iget-wide v0, p0, Lj/a/e/k;->n:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_2

    iget-wide v0, v9, Lj/a/e/q;->b:J

    cmp-long p3, v0, v2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p3, 0x1

    .line 13
    :goto_1
    invoke-virtual {v9}, Lj/a/e/q;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lj/a/e/k;->d:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_4

    .line 16
    :try_start_2
    iget-object v0, p0, Lj/a/e/k;->s:Lj/a/e/r;

    invoke-virtual {v0, v6, v8, p1, p2}, Lj/a/e/r;->a(ZIILjava/util/List;)V

    goto :goto_2

    .line 17
    :cond_4
    iget-boolean v0, p0, Lj/a/e/k;->b:Z

    if-nez v0, :cond_6

    .line 18
    iget-object v0, p0, Lj/a/e/k;->s:Lj/a/e/r;

    invoke-virtual {v0, p1, v8, p2}, Lj/a/e/r;->a(IILjava/util/List;)V

    .line 19
    :goto_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p3, :cond_5

    .line 20
    iget-object p1, p0, Lj/a/e/k;->s:Lj/a/e/r;

    invoke-virtual {p1}, Lj/a/e/r;->flush()V

    :cond_5
    return-object v9

    .line 21
    :cond_6
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 22
    :cond_7
    :try_start_4
    new-instance p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {p1}, Lokhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 23
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :catchall_1
    move-exception p1

    .line 24
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public a(Ljava/util/List;Z)Lj/a/e/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj/a/e/a;",
            ">;Z)",
            "Lj/a/e/q;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lj/a/e/k;->a(ILjava/util/List;Z)Lj/a/e/q;

    move-result-object p1

    return-object p1
.end method

.method public a(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lj/a/e/a;",
            ">;)V"
        }
    .end annotation

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lj/a/e/k;->u:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object p2, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, p1, p2}, Lj/a/e/k;->c(ILokhttp3/internal/http2/ErrorCode;)V

    .line 80
    monitor-exit p0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lj/a/e/k;->u:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :try_start_1
    new-instance v0, Lj/a/e/g;

    const-string v4, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lj/a/e/k;->e:Ljava/lang/String;

    aput-object v2, v5, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    move-object v2, v0

    move-object v3, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lj/a/e/g;-><init>(Lj/a/e/k;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-virtual {p0, v0}, Lj/a/e/k;->a(Lj/a/b;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    .line 84
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(ILk/i;IZ)V
    .locals 8

    .line 85
    new-instance v5, Lk/g;

    invoke-direct {v5}, Lk/g;-><init>()V

    int-to-long v0, p3

    .line 86
    invoke-interface {p2, v0, v1}, Lk/i;->f(J)V

    .line 87
    invoke-interface {p2, v5, v0, v1}, Lk/z;->b(Lk/g;J)J

    .line 88
    invoke-virtual {v5}, Lk/g;->size()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    .line 89
    new-instance p2, Lj/a/e/i;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lj/a/e/k;->e:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v2, "OkHttp %s Push Data[%s]"

    move-object v0, p2

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lj/a/e/i;-><init>(Lj/a/e/k;Ljava/lang/String;[Ljava/lang/Object;ILk/g;IZ)V

    invoke-virtual {p0, p2}, Lj/a/e/k;->a(Lj/a/b;)V

    return-void

    .line 90
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lk/g;->size()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " != "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 7

    .line 91
    new-instance v6, Lj/a/e/j;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lj/a/e/k;->e:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v2, "OkHttp %s Push Reset[%s]"

    move-object v0, v6

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lj/a/e/j;-><init>(Lj/a/e/k;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/http2/ErrorCode;)V

    invoke-virtual {p0, v6}, Lj/a/e/k;->a(Lj/a/b;)V

    return-void
.end method

.method public a(IZLk/g;J)V
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_0

    .line 25
    iget-object p4, p0, Lj/a/e/k;->s:Lj/a/e/r;

    invoke-virtual {p4, p2, p1, p3, v0}, Lj/a/e/r;->a(ZILk/g;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v3, p4, v1

    if-lez v3, :cond_4

    .line 26
    monitor-enter p0

    .line 27
    :goto_1
    :try_start_0
    iget-wide v3, p0, Lj/a/e/k;->n:J

    cmp-long v5, v3, v1

    if-gtz v5, :cond_2

    .line 28
    iget-object v3, p0, Lj/a/e/k;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 30
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_2
    :try_start_1
    iget-wide v3, p0, Lj/a/e/k;->n:J

    invoke-static {p4, p5, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 32
    iget-object v3, p0, Lj/a/e/k;->s:Lj/a/e/r;

    invoke-virtual {v3}, Lj/a/e/r;->t()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 33
    iget-wide v4, p0, Lj/a/e/k;->n:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lj/a/e/k;->n:J

    .line 34
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr p4, v6

    .line 35
    iget-object v4, p0, Lj/a/e/k;->s:Lj/a/e/r;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v3}, Lj/a/e/r;->a(ZILk/g;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 36
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 37
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 38
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    return-void
.end method

.method public final declared-synchronized a(Lj/a/b;)V
    .locals 1

    monitor-enter p0

    .line 92
    :try_start_0
    invoke-virtual {p0}, Lj/a/e/k;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lj/a/e/k;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lokhttp3/internal/http2/ErrorCode;)V
    .locals 4

    .line 47
    iget-object v0, p0, Lj/a/e/k;->s:Lj/a/e/r;

    monitor-enter v0

    .line 48
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49
    :try_start_1
    iget-boolean v1, p0, Lj/a/e/k;->h:Z

    if-eqz v1, :cond_0

    .line 50
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 51
    :try_start_3
    iput-boolean v1, p0, Lj/a/e/k;->h:Z

    .line 52
    iget v1, p0, Lj/a/e/k;->f:I

    .line 53
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    :try_start_4
    iget-object v2, p0, Lj/a/e/k;->s:Lj/a/e/r;

    sget-object v3, Lj/a/e;->a:[B

    invoke-virtual {v2, v1, p1, v3}, Lj/a/e/r;->a(ILokhttp3/internal/http2/ErrorCode;[B)V

    .line 55
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 56
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    .line 57
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    .locals 4

    const/4 v0, 0x0

    .line 58
    :try_start_0
    invoke-virtual {p0, p1}, Lj/a/e/k;->a(Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 59
    :goto_0
    monitor-enter p0

    .line 60
    :try_start_1
    iget-object v1, p0, Lj/a/e/k;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    iget-object v0, p0, Lj/a/e/k;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lj/a/e/k;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lj/a/e/q;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj/a/e/q;

    .line 62
    iget-object v1, p0, Lj/a/e/k;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 63
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 64
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 65
    :try_start_2
    invoke-virtual {v3, p2}, Lj/a/e/q;->a(Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    if-eqz p1, :cond_1

    move-object p1, v3

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 66
    :cond_2
    :try_start_3
    iget-object p2, p0, Lj/a/e/k;->s:Lj/a/e/r;

    invoke-virtual {p2}, Lj/a/e/r;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    if-nez p1, :cond_3

    move-object p1, p2

    .line 67
    :cond_3
    :goto_3
    :try_start_4
    iget-object p2, p0, Lj/a/e/k;->r:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 68
    :goto_4
    iget-object p2, p0, Lj/a/e/k;->i:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 69
    iget-object p2, p0, Lj/a/e/k;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    if-nez p1, :cond_4

    return-void

    .line 70
    :cond_4
    throw p1

    :catchall_0
    move-exception p1

    .line 71
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public a(Z)V
    .locals 5

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lj/a/e/k;->s:Lj/a/e/r;

    invoke-virtual {p1}, Lj/a/e/r;->s()V

    .line 73
    iget-object p1, p0, Lj/a/e/k;->s:Lj/a/e/r;

    iget-object v0, p0, Lj/a/e/k;->o:Lj/a/e/v;

    invoke-virtual {p1, v0}, Lj/a/e/r;->b(Lj/a/e/v;)V

    .line 74
    iget-object p1, p0, Lj/a/e/k;->o:Lj/a/e/v;

    invoke-virtual {p1}, Lj/a/e/v;->c()I

    move-result p1

    const v0, 0xffff

    if-eq p1, v0, :cond_0

    .line 75
    iget-object v1, p0, Lj/a/e/k;->s:Lj/a/e/r;

    const/4 v2, 0x0

    sub-int/2addr p1, v0

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lj/a/e/r;->b(IJ)V

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lj/a/e/k;->t:Lj/a/e/k$d;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(ZII)V
    .locals 2

    if-nez p1, :cond_0

    .line 39
    monitor-enter p0

    .line 40
    :try_start_0
    iget-boolean v0, p0, Lj/a/e/k;->l:Z

    const/4 v1, 0x1

    .line 41
    iput-boolean v1, p0, Lj/a/e/k;->l:Z

    .line 42
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lj/a/e/k;->t()V

    return-void

    :catchall_0
    move-exception p1

    .line 44
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 45
    :cond_0
    :try_start_2
    iget-object v0, p0, Lj/a/e/k;->s:Lj/a/e/r;

    invoke-virtual {v0, p1, p2, p3}, Lj/a/e/r;->a(ZII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    invoke-virtual {p0}, Lj/a/e/k;->t()V

    :goto_0
    return-void
.end method

.method public declared-synchronized b(I)Lj/a/e/q;
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lj/a/e/k;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj/a/e/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(IJ)V
    .locals 9

    .line 4
    :try_start_0
    iget-object v0, p0, Lj/a/e/k;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v8, Lj/a/e/f;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lj/a/e/k;->e:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lj/a/e/f;-><init>(Lj/a/e/k;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    .line 6
    invoke-interface {v0, v8}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public b(ILjava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lj/a/e/a;",
            ">;Z)V"
        }
    .end annotation

    .line 7
    :try_start_0
    new-instance v7, Lj/a/e/h;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lj/a/e/k;->e:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    move-object v0, v7

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lj/a/e/h;-><init>(Lj/a/e/k;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-virtual {p0, v7}, Lj/a/e/k;->a(Lj/a/b;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public b(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lj/a/e/k;->s:Lj/a/e/r;

    invoke-virtual {v0, p1, p2}, Lj/a/e/r;->a(ILokhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method public c(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lj/a/e/k;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lj/a/e/e;

    const-string v3, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lj/a/e/k;->e:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lj/a/e/e;-><init>(Lj/a/e/k;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/http2/ErrorCode;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public c(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public close()V
    .locals 2

    .line 1
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0, v1}, Lj/a/e/k;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method public declared-synchronized d(I)Lj/a/e/q;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lj/a/e/k;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj/a/e/q;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a/e/k;->s:Lj/a/e/r;

    invoke-virtual {v0}, Lj/a/e/r;->flush()V

    return-void
.end method

.method public declared-synchronized h(J)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lj/a/e/k;->m:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lj/a/e/k;->m:J

    .line 2
    iget-wide p1, p0, Lj/a/e/k;->m:J

    iget-object v0, p0, Lj/a/e/k;->o:Lj/a/e/v;

    invoke-virtual {v0}, Lj/a/e/v;->c()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x0

    .line 3
    iget-wide v0, p0, Lj/a/e/k;->m:J

    invoke-virtual {p0, p1, v0, v1}, Lj/a/e/k;->b(IJ)V

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Lj/a/e/k;->m:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final t()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0, v1}, Lj/a/e/k;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public declared-synchronized u()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lj/a/e/k;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized v()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lj/a/e/k;->p:Lj/a/e/v;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lj/a/e/v;->b(I)I

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

.method public w()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lj/a/e/k;->a(Z)V

    return-void
.end method
