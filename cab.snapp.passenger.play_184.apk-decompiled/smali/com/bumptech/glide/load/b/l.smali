.class final Lcom/bumptech/glide/load/b/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/g/a/a$c;
.implements Lcom/bumptech/glide/load/b/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/l$c;,
        Lcom/bumptech/glide/load/b/l$d;,
        Lcom/bumptech/glide/load/b/l$e;,
        Lcom/bumptech/glide/load/b/l$b;,
        Lcom/bumptech/glide/load/b/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/g/a/a$c;",
        "Lcom/bumptech/glide/load/b/h$a<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final f:Lcom/bumptech/glide/load/b/l$c;


# instance fields
.field final a:Lcom/bumptech/glide/load/b/l$e;

.field b:Z

.field c:Lcom/bumptech/glide/load/DataSource;

.field d:Lcom/bumptech/glide/load/b/q;

.field e:Lcom/bumptech/glide/load/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/p<",
            "*>;"
        }
    .end annotation
.end field

.field private final g:Lcom/bumptech/glide/g/a/c;

.field private final h:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/b/l<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final i:Lcom/bumptech/glide/load/b/l$c;

.field private final j:Lcom/bumptech/glide/load/b/m;

.field private final k:Lcom/bumptech/glide/load/b/c/a;

.field private final l:Lcom/bumptech/glide/load/b/c/a;

.field private final m:Lcom/bumptech/glide/load/b/c/a;

.field private final n:Lcom/bumptech/glide/load/b/c/a;

.field private final o:Ljava/util/concurrent/atomic/AtomicInteger;

.field private p:Lcom/bumptech/glide/load/d;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lcom/bumptech/glide/load/b/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/v<",
            "*>;"
        }
    .end annotation
.end field

.field private u:Z

.field private v:Z

.field private w:Lcom/bumptech/glide/load/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/h<",
            "TR;>;"
        }
    .end annotation
.end field

.field private volatile x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/bumptech/glide/load/b/l$c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/l$c;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/b/l;->f:Lcom/bumptech/glide/load/b/l$c;

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/m;Landroidx/core/util/Pools$Pool;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/c/a;",
            "Lcom/bumptech/glide/load/b/c/a;",
            "Lcom/bumptech/glide/load/b/c/a;",
            "Lcom/bumptech/glide/load/b/c/a;",
            "Lcom/bumptech/glide/load/b/m;",
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/b/l<",
            "*>;>;)V"
        }
    .end annotation

    .line 78
    sget-object v7, Lcom/bumptech/glide/load/b/l;->f:Lcom/bumptech/glide/load/b/l$c;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/b/l;-><init>(Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/m;Landroidx/core/util/Pools$Pool;Lcom/bumptech/glide/load/b/l$c;)V

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/m;Landroidx/core/util/Pools$Pool;Lcom/bumptech/glide/load/b/l$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/c/a;",
            "Lcom/bumptech/glide/load/b/c/a;",
            "Lcom/bumptech/glide/load/b/c/a;",
            "Lcom/bumptech/glide/load/b/c/a;",
            "Lcom/bumptech/glide/load/b/m;",
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/b/l<",
            "*>;>;",
            "Lcom/bumptech/glide/load/b/l$c;",
            ")V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/b/l$e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/l$e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/l;->a:Lcom/bumptech/glide/load/b/l$e;

    .line 33
    invoke-static {}, Lcom/bumptech/glide/g/a/c;->newInstance()Lcom/bumptech/glide/g/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/l;->g:Lcom/bumptech/glide/g/a/c;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/l;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 97
    iput-object p1, p0, Lcom/bumptech/glide/load/b/l;->k:Lcom/bumptech/glide/load/b/c/a;

    .line 98
    iput-object p2, p0, Lcom/bumptech/glide/load/b/l;->l:Lcom/bumptech/glide/load/b/c/a;

    .line 99
    iput-object p3, p0, Lcom/bumptech/glide/load/b/l;->m:Lcom/bumptech/glide/load/b/c/a;

    .line 100
    iput-object p4, p0, Lcom/bumptech/glide/load/b/l;->n:Lcom/bumptech/glide/load/b/c/a;

    .line 101
    iput-object p5, p0, Lcom/bumptech/glide/load/b/l;->j:Lcom/bumptech/glide/load/b/m;

    .line 102
    iput-object p6, p0, Lcom/bumptech/glide/load/b/l;->h:Landroidx/core/util/Pools$Pool;

    .line 103
    iput-object p7, p0, Lcom/bumptech/glide/load/b/l;->i:Lcom/bumptech/glide/load/b/l$c;

    return-void
.end method

.method private declared-synchronized a(I)V
    .locals 2

    monitor-enter p0

    .line 258
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/l;->c()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Lcom/bumptech/glide/g/j;->checkArgument(ZLjava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/bumptech/glide/load/b/l;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bumptech/glide/load/b/l;->e:Lcom/bumptech/glide/load/b/p;

    if-eqz p1, :cond_0

    .line 260
    iget-object p1, p0, Lcom/bumptech/glide/load/b/l;->e:Lcom/bumptech/glide/load/b/p;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/p;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b()Lcom/bumptech/glide/load/b/c/a;
    .locals 1

    .line 188
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/l;->r:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/bumptech/glide/load/b/l;->m:Lcom/bumptech/glide/load/b/c/a;

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/l;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/b/l;->n:Lcom/bumptech/glide/load/b/c/a;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/b/l;->l:Lcom/bumptech/glide/load/b/c/a;

    return-object v0
.end method

.method private c()Z
    .locals 1

    .line 209
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/l;->v:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/l;->u:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/l;->x:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized d()V
    .locals 3

    monitor-enter p0

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/l;->p:Lcom/bumptech/glide/load/d;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/bumptech/glide/load/b/l;->a:Lcom/bumptech/glide/load/b/l$e;

    .line 2439
    iget-object v0, v0, Lcom/bumptech/glide/load/b/l$e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 285
    iput-object v0, p0, Lcom/bumptech/glide/load/b/l;->p:Lcom/bumptech/glide/load/d;

    .line 286
    iput-object v0, p0, Lcom/bumptech/glide/load/b/l;->e:Lcom/bumptech/glide/load/b/p;

    .line 287
    iput-object v0, p0, Lcom/bumptech/glide/load/b/l;->t:Lcom/bumptech/glide/load/b/v;

    const/4 v1, 0x0

    .line 288
    iput-boolean v1, p0, Lcom/bumptech/glide/load/b/l;->v:Z

    .line 289
    iput-boolean v1, p0, Lcom/bumptech/glide/load/b/l;->x:Z

    .line 290
    iput-boolean v1, p0, Lcom/bumptech/glide/load/b/l;->u:Z

    .line 291
    iget-object v1, p0, Lcom/bumptech/glide/load/b/l;->w:Lcom/bumptech/glide/load/b/h;

    .line 3149
    iget-object v2, v1, Lcom/bumptech/glide/load/b/h;->d:Lcom/bumptech/glide/load/b/h$e;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/b/h$e;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3150
    invoke-virtual {v1}, Lcom/bumptech/glide/load/b/h;->a()V

    .line 292
    :cond_0
    iput-object v0, p0, Lcom/bumptech/glide/load/b/l;->w:Lcom/bumptech/glide/load/b/h;

    .line 293
    iput-object v0, p0, Lcom/bumptech/glide/load/b/l;->d:Lcom/bumptech/glide/load/b/q;

    .line 294
    iput-object v0, p0, Lcom/bumptech/glide/load/b/l;->c:Lcom/bumptech/glide/load/DataSource;

    .line 295
    iget-object v0, p0, Lcom/bumptech/glide/load/b/l;->h:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit p0

    return-void

    .line 282
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final declared-synchronized a(Lcom/bumptech/glide/load/d;ZZZZ)Lcom/bumptech/glide/load/b/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d;",
            "ZZZZ)",
            "Lcom/bumptech/glide/load/b/l<",
            "TR;>;"
        }
    .end annotation

    monitor-enter p0

    .line 113
    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/load/b/l;->p:Lcom/bumptech/glide/load/d;

    .line 114
    iput-boolean p2, p0, Lcom/bumptech/glide/load/b/l;->q:Z

    .line 115
    iput-boolean p3, p0, Lcom/bumptech/glide/load/b/l;->r:Z

    .line 116
    iput-boolean p4, p0, Lcom/bumptech/glide/load/b/l;->s:Z

    .line 117
    iput-boolean p5, p0, Lcom/bumptech/glide/load/b/l;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/l;->g:Lcom/bumptech/glide/g/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/g/a/c;->throwIfRecycled()V

    .line 268
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/l;->c()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Lcom/bumptech/glide/g/j;->checkArgument(ZLjava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/bumptech/glide/load/b/l;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Can\'t decrement below 0"

    .line 270
    invoke-static {v1, v2}, Lcom/bumptech/glide/g/j;->checkArgument(ZLjava/lang/String;)V

    if-nez v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/bumptech/glide/load/b/l;->e:Lcom/bumptech/glide/load/b/p;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/bumptech/glide/load/b/l;->e:Lcom/bumptech/glide/load/b/p;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/p;->b()V

    .line 276
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/l;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/bumptech/glide/e/i;)V
    .locals 2

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/l;->e:Lcom/bumptech/glide/load/b/p;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/l;->c:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/e/i;->onResourceReady(Lcom/bumptech/glide/load/b/v;Lcom/bumptech/glide/load/DataSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 154
    :try_start_1
    new-instance v0, Lcom/bumptech/glide/load/b/b;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/b/b;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(Lcom/bumptech/glide/e/i;Ljava/util/concurrent/Executor;)V
    .locals 2

    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/l;->g:Lcom/bumptech/glide/g/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/g/a/c;->throwIfRecycled()V

    .line 131
    iget-object v0, p0, Lcom/bumptech/glide/load/b/l;->a:Lcom/bumptech/glide/load/b/l$e;

    .line 1419
    iget-object v0, v0, Lcom/bumptech/glide/load/b/l$e;->a:Ljava/util/List;

    new-instance v1, Lcom/bumptech/glide/load/b/l$d;

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/load/b/l$d;-><init>(Lcom/bumptech/glide/e/i;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/l;->u:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/b/l;->a(I)V

    .line 136
    new-instance v0, Lcom/bumptech/glide/load/b/l$b;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/b/l$b;-><init>(Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/e/i;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 137
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/l;->v:Z

    if-eqz v0, :cond_1

    .line 138
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/b/l;->a(I)V

    .line 139
    new-instance v0, Lcom/bumptech/glide/load/b/l$a;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/b/l$a;-><init>(Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/e/i;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 141
    :cond_1
    :try_start_2
    iget-boolean p1, p0, Lcom/bumptech/glide/load/b/l;->x:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string p1, "Cannot add callbacks to a cancelled EngineJob"

    invoke-static {v1, p1}, Lcom/bumptech/glide/g/j;->checkArgument(ZLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized b(Lcom/bumptech/glide/e/i;)V
    .locals 1

    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/l;->d:Lcom/bumptech/glide/load/b/q;

    invoke-interface {p1, v0}, Lcom/bumptech/glide/e/i;->onLoadFailed(Lcom/bumptech/glide/load/b/q;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 167
    :try_start_1
    new-instance v0, Lcom/bumptech/glide/load/b/b;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/b/b;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized c(Lcom/bumptech/glide/e/i;)V
    .locals 2

    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/l;->g:Lcom/bumptech/glide/g/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/g/a/c;->throwIfRecycled()V

    .line 173
    iget-object v0, p0, Lcom/bumptech/glide/load/b/l;->a:Lcom/bumptech/glide/load/b/l$e;

    .line 1423
    iget-object v0, v0, Lcom/bumptech/glide/load/b/l$e;->a:Ljava/util/List;

    invoke-static {p1}, Lcom/bumptech/glide/load/b/l$e;->b(Lcom/bumptech/glide/e/i;)Lcom/bumptech/glide/load/b/l$d;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 174
    iget-object p1, p0, Lcom/bumptech/glide/load/b/l;->a:Lcom/bumptech/glide/load/b/l$e;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/l$e;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2194
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/l;->c()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2198
    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/l;->x:Z

    .line 2199
    iget-object p1, p0, Lcom/bumptech/glide/load/b/l;->w:Lcom/bumptech/glide/load/b/h;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/h;->cancel()V

    .line 2200
    iget-object p1, p0, Lcom/bumptech/glide/load/b/l;->j:Lcom/bumptech/glide/load/b/m;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/l;->p:Lcom/bumptech/glide/load/d;

    invoke-interface {p1, p0, v1}, Lcom/bumptech/glide/load/b/m;->onEngineJobCancelled(Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/d;)V

    .line 176
    :cond_0
    iget-boolean p1, p0, Lcom/bumptech/glide/load/b/l;->u:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/bumptech/glide/load/b/l;->v:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 177
    iget-object p1, p0, Lcom/bumptech/glide/load/b/l;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_3

    .line 178
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/l;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getVerifier()Lcom/bumptech/glide/g/a/c;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/bumptech/glide/load/b/l;->g:Lcom/bumptech/glide/g/a/c;

    return-object v0
.end method

.method public final onLoadFailed(Lcom/bumptech/glide/load/b/q;)V
    .locals 3

    .line 309
    monitor-enter p0

    .line 310
    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/load/b/l;->d:Lcom/bumptech/glide/load/b/q;

    .line 311
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3330
    monitor-enter p0

    .line 3331
    :try_start_1
    iget-object p1, p0, Lcom/bumptech/glide/load/b/l;->g:Lcom/bumptech/glide/g/a/c;

    invoke-virtual {p1}, Lcom/bumptech/glide/g/a/c;->throwIfRecycled()V

    .line 3332
    iget-boolean p1, p0, Lcom/bumptech/glide/load/b/l;->x:Z

    if-eqz p1, :cond_0

    .line 3333
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/l;->d()V

    .line 3334
    monitor-exit p0

    return-void

    .line 3335
    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/load/b/l;->a:Lcom/bumptech/glide/load/b/l$e;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/l$e;->a()Z

    move-result p1

    if-nez p1, :cond_3

    .line 3337
    iget-boolean p1, p0, Lcom/bumptech/glide/load/b/l;->v:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 3340
    iput-boolean p1, p0, Lcom/bumptech/glide/load/b/l;->v:Z

    .line 3342
    iget-object v0, p0, Lcom/bumptech/glide/load/b/l;->p:Lcom/bumptech/glide/load/d;

    .line 3344
    iget-object v1, p0, Lcom/bumptech/glide/load/b/l;->a:Lcom/bumptech/glide/load/b/l$e;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/b/l$e;->c()Lcom/bumptech/glide/load/b/l$e;

    move-result-object v1

    .line 3347
    invoke-virtual {v1}, Lcom/bumptech/glide/load/b/l$e;->b()I

    move-result v2

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/b/l;->a(I)V

    .line 3348
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3350
    iget-object p1, p0, Lcom/bumptech/glide/load/b/l;->j:Lcom/bumptech/glide/load/b/m;

    const/4 v2, 0x0

    invoke-interface {p1, p0, v0, v2}, Lcom/bumptech/glide/load/b/m;->onEngineJobComplete(Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/b/p;)V

    .line 3352
    invoke-virtual {v1}, Lcom/bumptech/glide/load/b/l$e;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/l$d;

    .line 3353
    iget-object v1, v0, Lcom/bumptech/glide/load/b/l$d;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/bumptech/glide/load/b/l$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/b/l$d;->a:Lcom/bumptech/glide/e/i;

    invoke-direct {v2, p0, v0}, Lcom/bumptech/glide/load/b/l$a;-><init>(Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/e/i;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3355
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/l;->a()V

    return-void

    .line 3338
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already failed once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3336
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Received an exception without any callbacks to notify"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 3348
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 311
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final onResourceReady(Lcom/bumptech/glide/load/b/v;Lcom/bumptech/glide/load/DataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/v<",
            "TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .line 300
    monitor-enter p0

    .line 301
    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/load/b/l;->t:Lcom/bumptech/glide/load/b/v;

    .line 302
    iput-object p2, p0, Lcom/bumptech/glide/load/b/l;->c:Lcom/bumptech/glide/load/DataSource;

    .line 303
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3221
    monitor-enter p0

    .line 3222
    :try_start_1
    iget-object p1, p0, Lcom/bumptech/glide/load/b/l;->g:Lcom/bumptech/glide/g/a/c;

    invoke-virtual {p1}, Lcom/bumptech/glide/g/a/c;->throwIfRecycled()V

    .line 3223
    iget-boolean p1, p0, Lcom/bumptech/glide/load/b/l;->x:Z

    if-eqz p1, :cond_0

    .line 3226
    iget-object p1, p0, Lcom/bumptech/glide/load/b/l;->t:Lcom/bumptech/glide/load/b/v;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/v;->recycle()V

    .line 3227
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/l;->d()V

    .line 3228
    monitor-exit p0

    return-void

    .line 3229
    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/load/b/l;->a:Lcom/bumptech/glide/load/b/l$e;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/l$e;->a()Z

    move-result p1

    if-nez p1, :cond_3

    .line 3231
    iget-boolean p1, p0, Lcom/bumptech/glide/load/b/l;->u:Z

    if-nez p1, :cond_2

    .line 3234
    iget-object p1, p0, Lcom/bumptech/glide/load/b/l;->i:Lcom/bumptech/glide/load/b/l$c;

    iget-object p2, p0, Lcom/bumptech/glide/load/b/l;->t:Lcom/bumptech/glide/load/b/v;

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/l;->q:Z

    invoke-virtual {p1, p2, v0}, Lcom/bumptech/glide/load/b/l$c;->build(Lcom/bumptech/glide/load/b/v;Z)Lcom/bumptech/glide/load/b/p;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/b/l;->e:Lcom/bumptech/glide/load/b/p;

    const/4 p1, 0x1

    .line 3239
    iput-boolean p1, p0, Lcom/bumptech/glide/load/b/l;->u:Z

    .line 3240
    iget-object p2, p0, Lcom/bumptech/glide/load/b/l;->a:Lcom/bumptech/glide/load/b/l$e;

    invoke-virtual {p2}, Lcom/bumptech/glide/load/b/l$e;->c()Lcom/bumptech/glide/load/b/l$e;

    move-result-object p2

    .line 3241
    invoke-virtual {p2}, Lcom/bumptech/glide/load/b/l$e;->b()I

    move-result v0

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/b/l;->a(I)V

    .line 3243
    iget-object p1, p0, Lcom/bumptech/glide/load/b/l;->p:Lcom/bumptech/glide/load/d;

    .line 3244
    iget-object v0, p0, Lcom/bumptech/glide/load/b/l;->e:Lcom/bumptech/glide/load/b/p;

    .line 3245
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3247
    iget-object v1, p0, Lcom/bumptech/glide/load/b/l;->j:Lcom/bumptech/glide/load/b/m;

    invoke-interface {v1, p0, p1, v0}, Lcom/bumptech/glide/load/b/m;->onEngineJobComplete(Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/b/p;)V

    .line 3249
    invoke-virtual {p2}, Lcom/bumptech/glide/load/b/l$e;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/load/b/l$d;

    .line 3250
    iget-object v0, p2, Lcom/bumptech/glide/load/b/l$d;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/bumptech/glide/load/b/l$b;

    iget-object p2, p2, Lcom/bumptech/glide/load/b/l$d;->a:Lcom/bumptech/glide/e/i;

    invoke-direct {v1, p0, p2}, Lcom/bumptech/glide/load/b/l$b;-><init>(Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/e/i;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3252
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/l;->a()V

    return-void

    .line 3232
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already have resource"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3230
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Received a resource without any callbacks to notify"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 3245
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 303
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final reschedule(Lcom/bumptech/glide/load/b/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/h<",
            "*>;)V"
        }
    .end annotation

    .line 319
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/l;->b()Lcom/bumptech/glide/load/b/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/b/c/a;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized start(Lcom/bumptech/glide/load/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/h<",
            "TR;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 122
    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/load/b/l;->w:Lcom/bumptech/glide/load/b/h;

    .line 1138
    sget-object v0, Lcom/bumptech/glide/load/b/h$g;->INITIALIZE:Lcom/bumptech/glide/load/b/h$g;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/load/b/h;->a(Lcom/bumptech/glide/load/b/h$g;)Lcom/bumptech/glide/load/b/h$g;

    move-result-object v0

    .line 1139
    sget-object v1, Lcom/bumptech/glide/load/b/h$g;->RESOURCE_CACHE:Lcom/bumptech/glide/load/b/h$g;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/bumptech/glide/load/b/h$g;->DATA_CACHE:Lcom/bumptech/glide/load/b/h$g;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/bumptech/glide/load/b/l;->k:Lcom/bumptech/glide/load/b/c/a;

    goto :goto_2

    .line 125
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/l;->b()Lcom/bumptech/glide/load/b/c/a;

    move-result-object v0

    .line 126
    :goto_2
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/b/c/a;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
