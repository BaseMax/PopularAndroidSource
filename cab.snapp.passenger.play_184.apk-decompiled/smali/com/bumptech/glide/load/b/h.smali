.class final Lcom/bumptech/glide/load/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/g/a/a$c;
.implements Lcom/bumptech/glide/load/b/f$a;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/h$g;,
        Lcom/bumptech/glide/load/b/h$f;,
        Lcom/bumptech/glide/load/b/h$d;,
        Lcom/bumptech/glide/load/b/h$a;,
        Lcom/bumptech/glide/load/b/h$c;,
        Lcom/bumptech/glide/load/b/h$e;,
        Lcom/bumptech/glide/load/b/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/g/a/a$c;",
        "Lcom/bumptech/glide/load/b/f$a;",
        "Ljava/lang/Comparable<",
        "Lcom/bumptech/glide/load/b/h<",
        "*>;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private A:Lcom/bumptech/glide/load/DataSource;

.field private B:Lcom/bumptech/glide/load/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/a/d<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile C:Lcom/bumptech/glide/load/b/f;

.field private volatile D:Z

.field private volatile E:Z

.field final a:Lcom/bumptech/glide/load/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/g<",
            "TR;>;"
        }
    .end annotation
.end field

.field final b:Lcom/bumptech/glide/load/b/h$d;

.field final c:Lcom/bumptech/glide/load/b/h$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/h$c<",
            "*>;"
        }
    .end annotation
.end field

.field final d:Lcom/bumptech/glide/load/b/h$e;

.field e:Lcom/bumptech/glide/e;

.field f:Lcom/bumptech/glide/load/d;

.field g:Lcom/bumptech/glide/Priority;

.field h:Lcom/bumptech/glide/load/b/n;

.field i:I

.field j:I

.field k:Lcom/bumptech/glide/load/b/j;

.field l:Lcom/bumptech/glide/load/g;

.field m:Lcom/bumptech/glide/load/b/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/h$a<",
            "TR;>;"
        }
    .end annotation
.end field

.field n:I

.field o:Lcom/bumptech/glide/load/b/h$f;

.field p:Z

.field q:Ljava/lang/Object;

.field r:Lcom/bumptech/glide/load/d;

.field private final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lcom/bumptech/glide/g/a/c;

.field private final u:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/b/h<",
            "*>;>;"
        }
    .end annotation
.end field

.field private v:Lcom/bumptech/glide/load/b/h$g;

.field private w:J

.field private x:Ljava/lang/Thread;

.field private y:Lcom/bumptech/glide/load/d;

.field private z:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/h$d;Landroidx/core/util/Pools$Pool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/h$d;",
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/b/h<",
            "*>;>;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/bumptech/glide/load/b/g;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/g;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/h;->a:Lcom/bumptech/glide/load/b/g;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/h;->s:Ljava/util/List;

    .line 46
    invoke-static {}, Lcom/bumptech/glide/g/a/c;->newInstance()Lcom/bumptech/glide/g/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/h;->t:Lcom/bumptech/glide/g/a/c;

    .line 49
    new-instance v0, Lcom/bumptech/glide/load/b/h$c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/h$c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/h;->c:Lcom/bumptech/glide/load/b/h$c;

    .line 50
    new-instance v0, Lcom/bumptech/glide/load/b/h$e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/h$e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/h;->d:Lcom/bumptech/glide/load/b/h$e;

    .line 80
    iput-object p1, p0, Lcom/bumptech/glide/load/b/h;->b:Lcom/bumptech/glide/load/b/h$d;

    .line 81
    iput-object p2, p0, Lcom/bumptech/glide/load/b/h;->u:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/a/d;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/b/v;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/a/d<",
            "*>;TData;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")",
            "Lcom/bumptech/glide/load/b/v<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/b/q;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 472
    invoke-interface {p1}, Lcom/bumptech/glide/load/a/d;->cleanup()V

    return-object v0

    .line 465
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/g/f;->getLogTime()J

    move-result-wide v1

    .line 3479
    iget-object v3, p0, Lcom/bumptech/glide/load/b/h;->a:Lcom/bumptech/glide/load/b/g;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/b/g;->b(Ljava/lang/Class;)Lcom/bumptech/glide/load/b/t;

    move-result-object v3

    .line 3480
    invoke-direct {p0, p2, p3, v3}, Lcom/bumptech/glide/load/b/h;->a(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/b/t;)Lcom/bumptech/glide/load/b/v;

    move-result-object p2

    const-string p3, "DecodeJob"

    const/4 v3, 0x2

    .line 467
    invoke-static {p3, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "Decoded result "

    .line 468
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 3523
    invoke-direct {p0, p3, v1, v2, v0}, Lcom/bumptech/glide/load/b/h;->a(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :cond_1
    invoke-interface {p1}, Lcom/bumptech/glide/load/a/d;->cleanup()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lcom/bumptech/glide/load/a/d;->cleanup()V

    throw p2
.end method

.method private a(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/b/t;)Lcom/bumptech/glide/load/b/v;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "ResourceType:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lcom/bumptech/glide/load/b/t<",
            "TData;TResourceType;TR;>;)",
            "Lcom/bumptech/glide/load/b/v<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/b/q;
        }
    .end annotation

    .line 4485
    iget-object v0, p0, Lcom/bumptech/glide/load/b/h;->l:Lcom/bumptech/glide/load/g;

    .line 4486
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 4490
    :cond_0
    sget-object v1, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-eq p2, v1, :cond_2

    iget-object v1, p0, Lcom/bumptech/glide/load/b/h;->a:Lcom/bumptech/glide/load/b/g;

    .line 5149
    iget-boolean v1, v1, Lcom/bumptech/glide/load/b/g;->n:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 4492
    :goto_1
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/k;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/f;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/g;->get(Lcom/bumptech/glide/load/f;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    .line 4496
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    :goto_2
    move-object v5, v0

    goto :goto_3

    .line 4502
    :cond_4
    new-instance v0, Lcom/bumptech/glide/load/g;

    invoke-direct {v0}, Lcom/bumptech/glide/load/g;-><init>()V

    .line 4503
    iget-object v2, p0, Lcom/bumptech/glide/load/b/h;->l:Lcom/bumptech/glide/load/g;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/g;->putAll(Lcom/bumptech/glide/load/g;)V

    .line 4504
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/k;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/f;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/load/g;->set(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/load/g;

    goto :goto_2

    .line 512
    :goto_3
    iget-object v0, p0, Lcom/bumptech/glide/load/b/h;->e:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/e;->getRegistry()Lcom/bumptech/glide/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f;->getRewinder(Ljava/lang/Object;)Lcom/bumptech/glide/load/a/e;

    move-result-object p1

    .line 515
    :try_start_0
    iget v6, p0, Lcom/bumptech/glide/load/b/h;->i:I

    iget v7, p0, Lcom/bumptech/glide/load/b/h;->j:I

    new-instance v8, Lcom/bumptech/glide/load/b/h$b;

    invoke-direct {v8, p0, p2}, Lcom/bumptech/glide/load/b/h$b;-><init>(Lcom/bumptech/glide/load/b/h;Lcom/bumptech/glide/load/DataSource;)V

    move-object v3, p3

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/bumptech/glide/load/b/t;->load(Lcom/bumptech/glide/load/a/e;Lcom/bumptech/glide/load/g;IILcom/bumptech/glide/load/b/i$a;)Lcom/bumptech/glide/load/b/v;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    invoke-interface {p1}, Lcom/bumptech/glide/load/a/e;->cleanup()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lcom/bumptech/glide/load/a/e;->cleanup()V

    goto :goto_5

    :goto_4
    throw p2

    :goto_5
    goto :goto_4
.end method

.method private a(Lcom/bumptech/glide/load/b/v;Lcom/bumptech/glide/load/DataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/v<",
            "TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .line 335
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/h;->g()V

    .line 336
    iget-object v0, p0, Lcom/bumptech/glide/load/b/h;->m:Lcom/bumptech/glide/load/b/h$a;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/b/h$a;->onResourceReady(Lcom/bumptech/glide/load/b/v;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method private a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/bumptech/glide/g/f;->getElapsedMillis(J)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", load key: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/bumptech/glide/load/b/h;->h:Lcom/bumptech/glide/load/b/n;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    .line 528
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ", "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", thread: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private b()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/bumptech/glide/load/b/h;->d:Lcom/bumptech/glide/load/b/h$e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/h$e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/h;->a()V

    :cond_0
    return-void
.end method

.method private b(Lcom/bumptech/glide/load/b/v;Lcom/bumptech/glide/load/DataSource;)V
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

    .line 431
    instance-of v0, p1, Lcom/bumptech/glide/load/b/r;

    if-eqz v0, :cond_0

    .line 432
    move-object v0, p1

    check-cast v0, Lcom/bumptech/glide/load/b/r;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/r;->initialize()V

    :cond_0
    const/4 v0, 0x0

    .line 437
    iget-object v1, p0, Lcom/bumptech/glide/load/b/h;->c:Lcom/bumptech/glide/load/b/h$c;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/b/h$c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    invoke-static {p1}, Lcom/bumptech/glide/load/b/u;->a(Lcom/bumptech/glide/load/b/v;)Lcom/bumptech/glide/load/b/u;

    move-result-object p1

    move-object v0, p1

    .line 442
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/b/h;->a(Lcom/bumptech/glide/load/b/v;Lcom/bumptech/glide/load/DataSource;)V

    .line 444
    sget-object p1, Lcom/bumptech/glide/load/b/h$g;->ENCODE:Lcom/bumptech/glide/load/b/h$g;

    iput-object p1, p0, Lcom/bumptech/glide/load/b/h;->v:Lcom/bumptech/glide/load/b/h$g;

    .line 446
    :try_start_0
    iget-object p1, p0, Lcom/bumptech/glide/load/b/h;->c:Lcom/bumptech/glide/load/b/h$c;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/h$c;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 447
    iget-object p1, p0, Lcom/bumptech/glide/load/b/h;->c:Lcom/bumptech/glide/load/b/h$c;

    iget-object p2, p0, Lcom/bumptech/glide/load/b/h;->b:Lcom/bumptech/glide/load/b/h$d;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/h;->l:Lcom/bumptech/glide/load/g;

    invoke-virtual {p1, p2, v1}, Lcom/bumptech/glide/load/b/h$c;->a(Lcom/bumptech/glide/load/b/h$d;Lcom/bumptech/glide/load/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v0, :cond_3

    .line 451
    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/u;->a()V

    .line 456
    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/h;->b()V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_4

    .line 451
    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/u;->a()V

    :cond_4
    throw p1
.end method

.method private c()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/bumptech/glide/load/b/h;->d:Lcom/bumptech/glide/load/b/h$e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/h$e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/h;->a()V

    :cond_0
    return-void
.end method

.method private d()Lcom/bumptech/glide/load/b/f;
    .locals 3

    .line 290
    sget-object v0, Lcom/bumptech/glide/load/b/h$1;->b:[I

    iget-object v1, p0, Lcom/bumptech/glide/load/b/h;->v:Lcom/bumptech/glide/load/b/h$g;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/b/h$g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized stage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bumptech/glide/load/b/h;->v:Lcom/bumptech/glide/load/b/h$g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_1
    new-instance v0, Lcom/bumptech/glide/load/b/z;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/h;->a:Lcom/bumptech/glide/load/b/g;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/b/z;-><init>(Lcom/bumptech/glide/load/b/g;Lcom/bumptech/glide/load/b/f$a;)V

    return-object v0

    .line 294
    :cond_2
    new-instance v0, Lcom/bumptech/glide/load/b/c;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/h;->a:Lcom/bumptech/glide/load/b/g;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/b/c;-><init>(Lcom/bumptech/glide/load/b/g;Lcom/bumptech/glide/load/b/f$a;)V

    return-object v0

    .line 292
    :cond_3
    new-instance v0, Lcom/bumptech/glide/load/b/w;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/h;->a:Lcom/bumptech/glide/load/b/g;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/b/w;-><init>(Lcom/bumptech/glide/load/b/g;Lcom/bumptech/glide/load/b/f$a;)V

    return-object v0
.end method

.method private e()V
    .locals 3

    .line 305
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/h;->x:Ljava/lang/Thread;

    .line 306
    invoke-static {}, Lcom/bumptech/glide/g/f;->getLogTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/load/b/h;->w:J

    const/4 v0, 0x0

    .line 308
    :cond_0
    iget-boolean v1, p0, Lcom/bumptech/glide/load/b/h;->E:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/load/b/h;->C:Lcom/bumptech/glide/load/b/f;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/b/h;->C:Lcom/bumptech/glide/load/b/f;

    .line 309
    invoke-interface {v0}, Lcom/bumptech/glide/load/b/f;->startNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    iget-object v1, p0, Lcom/bumptech/glide/load/b/h;->v:Lcom/bumptech/glide/load/b/h$g;

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/b/h;->a(Lcom/bumptech/glide/load/b/h$g;)Lcom/bumptech/glide/load/b/h$g;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/b/h;->v:Lcom/bumptech/glide/load/b/h$g;

    .line 311
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/h;->d()Lcom/bumptech/glide/load/b/f;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/b/h;->C:Lcom/bumptech/glide/load/b/f;

    .line 313
    iget-object v1, p0, Lcom/bumptech/glide/load/b/h;->v:Lcom/bumptech/glide/load/b/h$g;

    sget-object v2, Lcom/bumptech/glide/load/b/h$g;->SOURCE:Lcom/bumptech/glide/load/b/h$g;

    if-ne v1, v2, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/h;->reschedule()V

    return-void

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/b/h;->v:Lcom/bumptech/glide/load/b/h$g;

    sget-object v2, Lcom/bumptech/glide/load/b/h$g;->FINISHED:Lcom/bumptech/glide/load/b/h$g;

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/bumptech/glide/load/b/h;->E:Z

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    .line 320
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/h;->f()V

    :cond_3
    return-void
.end method

.method private f()V
    .locals 3

    .line 328
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/h;->g()V

    .line 329
    new-instance v0, Lcom/bumptech/glide/load/b/q;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/h;->s:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "Failed to load resource"

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/b/q;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 330
    iget-object v1, p0, Lcom/bumptech/glide/load/b/h;->m:Lcom/bumptech/glide/load/b/h$a;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/b/h$a;->onLoadFailed(Lcom/bumptech/glide/load/b/q;)V

    .line 331
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/h;->c()V

    return-void
.end method

.method private g()V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/bumptech/glide/load/b/h;->t:Lcom/bumptech/glide/g/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/g/a/c;->throwIfRecycled()V

    .line 341
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/h;->D:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/bumptech/glide/load/b/h;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/h;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 343
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already notified"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 345
    :cond_1
    iput-boolean v1, p0, Lcom/bumptech/glide/load/b/h;->D:Z

    return-void
.end method

.method private h()V
    .locals 4

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    .line 410
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-wide v0, p0, Lcom/bumptech/glide/load/b/h;->w:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bumptech/glide/load/b/h;->z:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", cache key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/h;->r:Lcom/bumptech/glide/load/d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", fetcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/h;->B:Lcom/bumptech/glide/load/a/d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Retrieved data"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/bumptech/glide/load/b/h;->a(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 418
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/b/h;->B:Lcom/bumptech/glide/load/a/d;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/h;->z:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/h;->A:Lcom/bumptech/glide/load/DataSource;

    invoke-direct {p0, v1, v2, v3}, Lcom/bumptech/glide/load/b/h;->a(Lcom/bumptech/glide/load/a/d;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/b/v;

    move-result-object v0
    :try_end_0
    .catch Lcom/bumptech/glide/load/b/q; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 420
    iget-object v2, p0, Lcom/bumptech/glide/load/b/h;->y:Lcom/bumptech/glide/load/d;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/h;->A:Lcom/bumptech/glide/load/DataSource;

    .line 3048
    invoke-virtual {v1, v2, v3, v0}, Lcom/bumptech/glide/load/b/q;->a(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/DataSource;Ljava/lang/Class;)V

    .line 421
    iget-object v2, p0, Lcom/bumptech/glide/load/b/h;->s:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz v0, :cond_1

    .line 424
    iget-object v1, p0, Lcom/bumptech/glide/load/b/h;->A:Lcom/bumptech/glide/load/DataSource;

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/b/h;->b(Lcom/bumptech/glide/load/b/v;Lcom/bumptech/glide/load/DataSource;)V

    return-void

    .line 426
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/h;->e()V

    return-void
.end method


# virtual methods
.method final a(Lcom/bumptech/glide/load/b/h$g;)Lcom/bumptech/glide/load/b/h$g;
    .locals 2

    .line 349
    :goto_0
    sget-object v0, Lcom/bumptech/glide/load/b/h$1;->b:[I

    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/h$g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 351
    iget-object p1, p0, Lcom/bumptech/glide/load/b/h;->k:Lcom/bumptech/glide/load/b/j;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/j;->decodeCachedResource()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 352
    sget-object p1, Lcom/bumptech/glide/load/b/h$g;->RESOURCE_CACHE:Lcom/bumptech/glide/load/b/h$g;

    return-object p1

    :cond_0
    sget-object p1, Lcom/bumptech/glide/load/b/h$g;->RESOURCE_CACHE:Lcom/bumptech/glide/load/b/h$g;

    goto :goto_0

    .line 363
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unrecognized stage: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_2
    sget-object p1, Lcom/bumptech/glide/load/b/h$g;->FINISHED:Lcom/bumptech/glide/load/b/h$g;

    return-object p1

    .line 358
    :cond_3
    iget-boolean p1, p0, Lcom/bumptech/glide/load/b/h;->p:Z

    if-eqz p1, :cond_4

    sget-object p1, Lcom/bumptech/glide/load/b/h$g;->FINISHED:Lcom/bumptech/glide/load/b/h$g;

    return-object p1

    :cond_4
    sget-object p1, Lcom/bumptech/glide/load/b/h$g;->SOURCE:Lcom/bumptech/glide/load/b/h$g;

    return-object p1

    .line 354
    :cond_5
    iget-object p1, p0, Lcom/bumptech/glide/load/b/h;->k:Lcom/bumptech/glide/load/b/j;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/j;->decodeCachedData()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 355
    sget-object p1, Lcom/bumptech/glide/load/b/h$g;->DATA_CACHE:Lcom/bumptech/glide/load/b/h$g;

    return-object p1

    :cond_6
    sget-object p1, Lcom/bumptech/glide/load/b/h$g;->DATA_CACHE:Lcom/bumptech/glide/load/b/h$g;

    goto :goto_0
.end method

.method final a()V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/bumptech/glide/load/b/h;->d:Lcom/bumptech/glide/load/b/h$e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/h$e;->d()V

    .line 175
    iget-object v0, p0, Lcom/bumptech/glide/load/b/h;->c:Lcom/bumptech/glide/load/b/h$c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/h$c;->b()V

    .line 176
    iget-object v0, p0, Lcom/bumptech/glide/load/b/h;->a:Lcom/bumptech/glide/load/b/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/g;->a()V

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/h;->D:Z

    const/4 v1, 0x0

    .line 178
    iput-object v1, p0, Lcom/bumptech/glide/load/b/h;->e:Lcom/bumptech/glide/e;

    .line 179
    iput-object v1, p0, Lcom/bumptech/glide/load/b/h;->f:Lcom/bumptech/glide/load/d;

    .line 180
    iput-object v1, p0, Lcom/bumptech/glide/load/b/h;->l:Lcom/bumptech/glide/load/g;

    .line 181
    iput-object v1, p0, Lcom/bumptech/glide/load/b/h;->g:Lcom/bumptech/glide/Priority;

    .line 182
    iput-object v1, p0, Lcom/bumptech/glide/load/b/h;->h:Lcom/bumptech/glide/load/b/n;

    .line 183
    iput-object v1, p0, Lcom/bumptech/glide/load/b/h;->m:Lcom/bumptech/glide/load/b/h$a;

    .line 184
    iput-object v1, p0, Lcom/bumptech/glide/load/b/h;->v:Lcom/bumptech/glide/load/b/h$g;

    .line 185
    iput-object v1, p0, Lcom/bumptech/glide/load/b/h;->C:Lcom/bumptech/glide/load/b/f;

    .line 186
    iput-object v1, p0, Lcom/bumptech/glide/load/b/h;->x:Ljava/lang/Thread;

    .line 187
    iput-object v1, p0, Lcom/bumptech/glide/load/b/h;->r:Lcom/bumptech/glide/load/d;

    .line 188
    iput-object v1, p0, Lcom/bumptech/glide/load/b/h;->z:Ljava/lang/Object;

    .line 189
    iput-object v1, p0, Lcom/bumptech/glide/load/b/h;->A:Lcom/bumptech/glide/load/DataSource;

    .line 190
    iput-object v1, p0, Lcom/bumptech/glide/load/b/h;->B:Lcom/bumptech/glide/load/a/d;

    const-wide/16 v2, 0x0

    .line 191
    iput-wide v2, p0, Lcom/bumptech/glide/load/b/h;->w:J

    .line 192
    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/h;->E:Z

    .line 193
    iput-object v1, p0, Lcom/bumptech/glide/load/b/h;->q:Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/bumptech/glide/load/b/h;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 195
    iget-object v0, p0, Lcom/bumptech/glide/load/b/h;->u:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/h;->E:Z

    .line 213
    iget-object v0, p0, Lcom/bumptech/glide/load/b/h;->C:Lcom/bumptech/glide/load/b/f;

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0}, Lcom/bumptech/glide/load/b/f;->cancel()V

    :cond_0
    return-void
.end method

.method public final compareTo(Lcom/bumptech/glide/load/b/h;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/h<",
            "*>;)I"
        }
    .end annotation

    .line 1208
    iget-object v0, p0, Lcom/bumptech/glide/load/b/h;->g:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0}, Lcom/bumptech/glide/Priority;->ordinal()I

    move-result v0

    .line 2208
    iget-object v1, p1, Lcom/bumptech/glide/load/b/h;->g:Lcom/bumptech/glide/Priority;

    invoke-virtual {v1}, Lcom/bumptech/glide/Priority;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 202
    iget v0, p0, Lcom/bumptech/glide/load/b/h;->n:I

    iget p1, p1, Lcom/bumptech/glide/load/b/h;->n:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 38
    check-cast p1, Lcom/bumptech/glide/load/b/h;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/b/h;->compareTo(Lcom/bumptech/glide/load/b/h;)I

    move-result p1

    return p1
.end method

.method public final getVerifier()Lcom/bumptech/glide/g/a/c;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/bumptech/glide/load/b/h;->t:Lcom/bumptech/glide/g/a/c;

    return-object v0
.end method

.method public final onDataFetcherFailed(Lcom/bumptech/glide/load/d;Ljava/lang/Exception;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/DataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d;",
            "Ljava/lang/Exception;",
            "Lcom/bumptech/glide/load/a/d<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .line 397
    invoke-interface {p3}, Lcom/bumptech/glide/load/a/d;->cleanup()V

    .line 398
    new-instance v0, Lcom/bumptech/glide/load/b/q;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/load/b/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 399
    invoke-interface {p3}, Lcom/bumptech/glide/load/a/d;->getDataClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p1, p4, p2}, Lcom/bumptech/glide/load/b/q;->a(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/DataSource;Ljava/lang/Class;)V

    .line 400
    iget-object p1, p0, Lcom/bumptech/glide/load/b/h;->s:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/b/h;->x:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    .line 402
    sget-object p1, Lcom/bumptech/glide/load/b/h$f;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/b/h$f;

    iput-object p1, p0, Lcom/bumptech/glide/load/b/h;->o:Lcom/bumptech/glide/load/b/h$f;

    .line 403
    iget-object p1, p0, Lcom/bumptech/glide/load/b/h;->m:Lcom/bumptech/glide/load/b/h$a;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/b/h$a;->reschedule(Lcom/bumptech/glide/load/b/h;)V

    return-void

    .line 405
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/h;->e()V

    return-void
.end method

.method public final onDataFetcherReady(Lcom/bumptech/glide/load/d;Ljava/lang/Object;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/a/d<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lcom/bumptech/glide/load/d;",
            ")V"
        }
    .end annotation

    .line 376
    iput-object p1, p0, Lcom/bumptech/glide/load/b/h;->r:Lcom/bumptech/glide/load/d;

    .line 377
    iput-object p2, p0, Lcom/bumptech/glide/load/b/h;->z:Ljava/lang/Object;

    .line 378
    iput-object p3, p0, Lcom/bumptech/glide/load/b/h;->B:Lcom/bumptech/glide/load/a/d;

    .line 379
    iput-object p4, p0, Lcom/bumptech/glide/load/b/h;->A:Lcom/bumptech/glide/load/DataSource;

    .line 380
    iput-object p5, p0, Lcom/bumptech/glide/load/b/h;->y:Lcom/bumptech/glide/load/d;

    .line 381
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/b/h;->x:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    .line 382
    sget-object p1, Lcom/bumptech/glide/load/b/h$f;->DECODE_DATA:Lcom/bumptech/glide/load/b/h$f;

    iput-object p1, p0, Lcom/bumptech/glide/load/b/h;->o:Lcom/bumptech/glide/load/b/h$f;

    .line 383
    iget-object p1, p0, Lcom/bumptech/glide/load/b/h;->m:Lcom/bumptech/glide/load/b/h$a;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/b/h$a;->reschedule(Lcom/bumptech/glide/load/b/h;)V

    return-void

    :cond_0
    const-string p1, "DecodeJob.decodeFromRetrievedData"

    .line 385
    invoke-static {p1}, Lcom/bumptech/glide/g/a/b;->beginSection(Ljava/lang/String;)V

    .line 387
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/h;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    invoke-static {}, Lcom/bumptech/glide/g/a/b;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/bumptech/glide/g/a/b;->endSection()V

    throw p1
.end method

.method public final reschedule()V
    .locals 1

    .line 369
    sget-object v0, Lcom/bumptech/glide/load/b/h$f;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/b/h$f;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/h;->o:Lcom/bumptech/glide/load/b/h$f;

    .line 370
    iget-object v0, p0, Lcom/bumptech/glide/load/b/h;->m:Lcom/bumptech/glide/load/b/h$a;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/b/h$a;->reschedule(Lcom/bumptech/glide/load/b/h;)V

    return-void
.end method

.method public final run()V
    .locals 5

    .line 226
    iget-object v0, p0, Lcom/bumptech/glide/load/b/h;->q:Ljava/lang/Object;

    const-string v1, "DecodeJob#run(model=%s)"

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/a/b;->beginSectionFormat(Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/bumptech/glide/load/b/h;->B:Lcom/bumptech/glide/load/a/d;

    const/4 v1, 0x3

    .line 231
    :try_start_0
    iget-boolean v2, p0, Lcom/bumptech/glide/load/b/h;->E:Z

    if-eqz v2, :cond_1

    .line 232
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/h;->f()V
    :try_end_0
    .catch Lcom/bumptech/glide/load/b/b; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 265
    invoke-interface {v0}, Lcom/bumptech/glide/load/a/d;->cleanup()V

    .line 267
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/g/a/b;->endSection()V

    return-void

    .line 2272
    :cond_1
    :try_start_1
    sget-object v2, Lcom/bumptech/glide/load/b/h$1;->a:[I

    iget-object v3, p0, Lcom/bumptech/glide/load/b/h;->o:Lcom/bumptech/glide/load/b/h$f;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/b/h$f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    if-ne v2, v1, :cond_2

    .line 2282
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/h;->h()V

    goto :goto_0

    .line 2285
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unrecognized run reason: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bumptech/glide/load/b/h;->o:Lcom/bumptech/glide/load/b/h$f;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2279
    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/h;->e()V

    goto :goto_0

    .line 2274
    :cond_4
    sget-object v2, Lcom/bumptech/glide/load/b/h$g;->INITIALIZE:Lcom/bumptech/glide/load/b/h$g;

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/load/b/h;->a(Lcom/bumptech/glide/load/b/h$g;)Lcom/bumptech/glide/load/b/h$g;

    move-result-object v2

    iput-object v2, p0, Lcom/bumptech/glide/load/b/h;->v:Lcom/bumptech/glide/load/b/h$g;

    .line 2275
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/h;->d()Lcom/bumptech/glide/load/b/f;

    move-result-object v2

    iput-object v2, p0, Lcom/bumptech/glide/load/b/h;->C:Lcom/bumptech/glide/load/b/f;

    .line 2276
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/h;->e()V
    :try_end_1
    .catch Lcom/bumptech/glide/load/b/b; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_5

    .line 265
    invoke-interface {v0}, Lcom/bumptech/glide/load/a/d;->cleanup()V

    .line 267
    :cond_5
    invoke-static {}, Lcom/bumptech/glide/g/a/b;->endSection()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    const-string v3, "DecodeJob"

    .line 247
    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/bumptech/glide/load/b/h;->E:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", stage: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/h;->v:Lcom/bumptech/glide/load/b/h$g;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    :cond_6
    iget-object v1, p0, Lcom/bumptech/glide/load/b/h;->v:Lcom/bumptech/glide/load/b/h$g;

    sget-object v3, Lcom/bumptech/glide/load/b/h$g;->ENCODE:Lcom/bumptech/glide/load/b/h$g;

    if-eq v1, v3, :cond_7

    .line 254
    iget-object v1, p0, Lcom/bumptech/glide/load/b/h;->s:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/h;->f()V

    .line 257
    :cond_7
    iget-boolean v1, p0, Lcom/bumptech/glide/load/b/h;->E:Z

    if-nez v1, :cond_8

    .line 258
    throw v2

    .line 260
    :cond_8
    throw v2

    :catch_0
    move-exception v1

    .line 239
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_9

    .line 265
    invoke-interface {v0}, Lcom/bumptech/glide/load/a/d;->cleanup()V

    .line 267
    :cond_9
    invoke-static {}, Lcom/bumptech/glide/g/a/b;->endSection()V

    throw v1
.end method
