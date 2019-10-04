.class public Lc/b/a/g/e;
.super Ljava/lang/Object;
.source "RequestFutureTarget.java"

# interfaces
.implements Lc/b/a/g/b;
.implements Lc/b/a/g/f;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/g/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/g/b<",
        "TR;>;",
        "Lc/b/a/g/f<",
        "TR;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final a:Lc/b/a/g/e$a;


# instance fields
.field public final b:Landroid/os/Handler;

.field public final c:I

.field public final d:I

.field public final e:Z

.field public final f:Lc/b/a/g/e$a;

.field public g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public h:Lc/b/a/g/c;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Lcom/bumptech/glide/load/engine/GlideException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/g/e$a;

    invoke-direct {v0}, Lc/b/a/g/e$a;-><init>()V

    sput-object v0, Lc/b/a/g/e;->a:Lc/b/a/g/e$a;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;II)V
    .locals 6

    .line 1
    sget-object v5, Lc/b/a/g/e;->a:Lc/b/a/g/e$a;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lc/b/a/g/e;-><init>(Landroid/os/Handler;IIZLc/b/a/g/e$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;IIZLc/b/a/g/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc/b/a/g/e;->b:Landroid/os/Handler;

    .line 4
    iput p2, p0, Lc/b/a/g/e;->c:I

    .line 5
    iput p3, p0, Lc/b/a/g/e;->d:I

    .line 6
    iput-boolean p4, p0, Lc/b/a/g/e;->e:Z

    .line 7
    iput-object p5, p0, Lc/b/a/g/e;->f:Lc/b/a/g/e$a;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TR;"
        }
    .end annotation

    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lc/b/a/g/e;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/b/a/g/e;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lc/b/a/i/k;->a()V

    .line 6
    :cond_0
    iget-boolean v0, p0, Lc/b/a/g/e;->i:Z

    if-nez v0, :cond_9

    .line 7
    iget-boolean v0, p0, Lc/b/a/g/e;->k:Z

    if-nez v0, :cond_8

    .line 8
    iget-boolean v0, p0, Lc/b/a/g/e;->j:Z

    if-eqz v0, :cond_1

    .line 9
    iget-object p1, p0, Lc/b/a/g/e;->g:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    const-wide/16 v0, 0x0

    if-nez p1, :cond_2

    .line 10
    :try_start_1
    iget-object p1, p0, Lc/b/a/g/e;->f:Lc/b/a/g/e$a;

    invoke-virtual {p1, p0, v0, v1}, Lc/b/a/g/e$a;->a(Ljava/lang/Object;J)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 13
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 14
    :goto_0
    invoke-virtual {p0}, Lc/b/a/g/e;->isDone()Z

    move-result p1

    if-nez p1, :cond_3

    cmp-long p1, v0, v2

    if-gez p1, :cond_3

    .line 15
    iget-object p1, p0, Lc/b/a/g/e;->f:Lc/b/a/g/e$a;

    sub-long v0, v2, v0

    invoke-virtual {p1, p0, v0, v1}, Lc/b/a/g/e$a;->a(Ljava/lang/Object;J)V

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    .line 17
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p1

    if-nez p1, :cond_7

    .line 18
    iget-boolean p1, p0, Lc/b/a/g/e;->k:Z

    if-nez p1, :cond_6

    .line 19
    iget-boolean p1, p0, Lc/b/a/g/e;->i:Z

    if-nez p1, :cond_5

    .line 20
    iget-boolean p1, p0, Lc/b/a/g/e;->j:Z

    if-eqz p1, :cond_4

    .line 21
    iget-object p1, p0, Lc/b/a/g/e;->g:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 22
    :cond_4
    :try_start_2
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    .line 23
    :cond_5
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p1

    .line 24
    :cond_6
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lc/b/a/g/e;->l:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 25
    :cond_7
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 26
    :cond_8
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lc/b/a/g/e;->l:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 27
    :cond_9
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public declared-synchronized a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    monitor-enter p0

    .line 2
    monitor-exit p0

    return-void
.end method

.method public a(Lc/b/a/g/a/g;)V
    .locals 0

    return-void
.end method

.method public a(Lc/b/a/g/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/g/e;->h:Lc/b/a/g/c;

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/Object;Lc/b/a/g/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lc/b/a/g/b/b<",
            "-TR;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lc/b/a/g/a/h;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lc/b/a/g/a/h<",
            "TR;>;Z)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 p2, 0x1

    .line 28
    :try_start_0
    iput-boolean p2, p0, Lc/b/a/g/e;->k:Z

    .line 29
    iput-object p1, p0, Lc/b/a/g/e;->l:Lcom/bumptech/glide/load/engine/GlideException;

    .line 30
    iget-object p1, p0, Lc/b/a/g/e;->f:Lc/b/a/g/e$a;

    invoke-virtual {p1, p0}, Lc/b/a/g/e$a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 31
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Object;Ljava/lang/Object;Lc/b/a/g/a/h;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Object;",
            "Lc/b/a/g/a/h<",
            "TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 p2, 0x1

    .line 32
    :try_start_0
    iput-boolean p2, p0, Lc/b/a/g/e;->j:Z

    .line 33
    iput-object p1, p0, Lc/b/a/g/e;->g:Ljava/lang/Object;

    .line 34
    iget-object p1, p0, Lc/b/a/g/e;->f:Lc/b/a/g/e$a;

    invoke-virtual {p1, p0}, Lc/b/a/g/e$a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 35
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public b(Lc/b/a/g/a/g;)V
    .locals 2

    .line 1
    iget v0, p0, Lc/b/a/g/e;->c:I

    iget v1, p0, Lc/b/a/g/e;->d:I

    invoke-interface {p1, v0, v1}, Lc/b/a/g/a/g;->a(II)V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g/e;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized cancel(Z)Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lc/b/a/g/e;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    monitor-exit p0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 3
    :try_start_1
    iput-boolean v0, p0, Lc/b/a/g/e;->i:Z

    .line 4
    iget-object v1, p0, Lc/b/a/g/e;->f:Lc/b/a/g/e$a;

    invoke-virtual {v1, p0}, Lc/b/a/g/e$a;->a(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lc/b/a/g/e;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lc/b/a/g/e;->a(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .line 3
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/b/a/g/e;->a(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRequest()Lc/b/a/g/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g/e;->h:Lc/b/a/g/c;

    return-object v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lc/b/a/g/e;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lc/b/a/g/e;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lc/b/a/g/e;->j:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lc/b/a/g/e;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g/e;->h:Lc/b/a/g/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lc/b/a/g/c;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lc/b/a/g/e;->h:Lc/b/a/g/c;

    :cond_0
    return-void
.end method
