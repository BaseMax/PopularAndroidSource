.class public final Lcom/bumptech/glide/load/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/b/b/h$a;
.implements Lcom/bumptech/glide/load/b/m;
.implements Lcom/bumptech/glide/load/b/p$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/k$b;,
        Lcom/bumptech/glide/load/b/k$a;,
        Lcom/bumptech/glide/load/b/k$c;,
        Lcom/bumptech/glide/load/b/k$d;
    }
.end annotation


# static fields
.field private static final a:Z


# instance fields
.field private final b:Lcom/bumptech/glide/load/b/s;

.field private final c:Lcom/bumptech/glide/load/b/o;

.field private final d:Lcom/bumptech/glide/load/b/b/h;

.field private final e:Lcom/bumptech/glide/load/b/k$b;

.field private final f:Lcom/bumptech/glide/load/b/y;

.field private final g:Lcom/bumptech/glide/load/b/k$c;

.field private final h:Lcom/bumptech/glide/load/b/k$a;

.field private final i:Lcom/bumptech/glide/load/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Engine"

    const/4 v1, 0x2

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/bumptech/glide/load/b/k;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/b/b/h;Lcom/bumptech/glide/load/b/b/a$a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Z)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    .line 53
    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/load/b/k;-><init>(Lcom/bumptech/glide/load/b/b/h;Lcom/bumptech/glide/load/b/b/a$a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;ZB)V

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/load/b/b/h;Lcom/bumptech/glide/load/b/b/a$a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;ZB)V
    .locals 6

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/bumptech/glide/load/b/k;->d:Lcom/bumptech/glide/load/b/b/h;

    .line 84
    new-instance p8, Lcom/bumptech/glide/load/b/k$c;

    invoke-direct {p8, p2}, Lcom/bumptech/glide/load/b/k$c;-><init>(Lcom/bumptech/glide/load/b/b/a$a;)V

    iput-object p8, p0, Lcom/bumptech/glide/load/b/k;->g:Lcom/bumptech/glide/load/b/k$c;

    .line 87
    new-instance p2, Lcom/bumptech/glide/load/b/a;

    invoke-direct {p2, p7}, Lcom/bumptech/glide/load/b/a;-><init>(Z)V

    .line 89
    iput-object p2, p0, Lcom/bumptech/glide/load/b/k;->i:Lcom/bumptech/glide/load/b/a;

    .line 1069
    monitor-enter p0

    .line 1070
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1071
    :try_start_1
    iput-object p0, p2, Lcom/bumptech/glide/load/b/a;->d:Lcom/bumptech/glide/load/b/p$a;

    .line 1072
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1073
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 93
    new-instance p2, Lcom/bumptech/glide/load/b/o;

    invoke-direct {p2}, Lcom/bumptech/glide/load/b/o;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/bumptech/glide/load/b/k;->c:Lcom/bumptech/glide/load/b/o;

    .line 98
    new-instance p2, Lcom/bumptech/glide/load/b/s;

    invoke-direct {p2}, Lcom/bumptech/glide/load/b/s;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/bumptech/glide/load/b/k;->b:Lcom/bumptech/glide/load/b/s;

    .line 103
    new-instance p2, Lcom/bumptech/glide/load/b/k$b;

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/b/k$b;-><init>(Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/m;)V

    .line 107
    iput-object p2, p0, Lcom/bumptech/glide/load/b/k;->e:Lcom/bumptech/glide/load/b/k$b;

    .line 110
    new-instance p2, Lcom/bumptech/glide/load/b/k$a;

    iget-object p3, p0, Lcom/bumptech/glide/load/b/k;->g:Lcom/bumptech/glide/load/b/k$c;

    invoke-direct {p2, p3}, Lcom/bumptech/glide/load/b/k$a;-><init>(Lcom/bumptech/glide/load/b/h$d;)V

    .line 112
    iput-object p2, p0, Lcom/bumptech/glide/load/b/k;->h:Lcom/bumptech/glide/load/b/k$a;

    .line 115
    new-instance p2, Lcom/bumptech/glide/load/b/y;

    invoke-direct {p2}, Lcom/bumptech/glide/load/b/y;-><init>()V

    .line 117
    iput-object p2, p0, Lcom/bumptech/glide/load/b/k;->f:Lcom/bumptech/glide/load/b/y;

    .line 119
    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/b/b/h;->setResourceRemovedListener(Lcom/bumptech/glide/load/b/b/h$a;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1072
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 1073
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method private static a(Ljava/lang/String;JLcom/bumptech/glide/load/d;)V
    .locals 1

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/bumptech/glide/g/f;->getElapsedMillis(J)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "ms, key: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final clearDiskCache()V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->g:Lcom/bumptech/glide/load/b/k$c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/k$c;->getDiskCache()Lcom/bumptech/glide/load/b/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/b/a;->clear()V

    return-void
.end method

.method public final declared-synchronized load(Lcom/bumptech/glide/e;Ljava/lang/Object;Lcom/bumptech/glide/load/d;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/b/j;Ljava/util/Map;ZZLcom/bumptech/glide/load/g;ZZZZLcom/bumptech/glide/e/i;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/load/b/k$d;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/e;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/d;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/b/j;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/j<",
            "*>;>;ZZ",
            "Lcom/bumptech/glide/load/g;",
            "ZZZZ",
            "Lcom/bumptech/glide/e/i;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/load/b/k$d;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p8

    move-object/from16 v10, p9

    move-object/from16 v9, p13

    move/from16 v8, p17

    move-object/from16 v7, p18

    move-object/from16 v6, p19

    monitor-enter p0

    .line 169
    :try_start_0
    sget-boolean v2, Lcom/bumptech/glide/load/b/k;->a:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/bumptech/glide/g/f;->getLogTime()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    move-wide v4, v2

    .line 2014
    new-instance v3, Lcom/bumptech/glide/load/b/n;

    move-object v2, v3

    move-object v15, v3

    move-object/from16 v3, p2

    move-wide v13, v4

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object v12, v6

    move/from16 v6, p5

    move-object v11, v7

    move-object/from16 v7, p10

    move v0, v8

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p13

    invoke-direct/range {v2 .. v10}, Lcom/bumptech/glide/load/b/n;-><init>(Ljava/lang/Object;Lcom/bumptech/glide/load/d;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/g;)V

    const/4 v2, 0x0

    if-nez p14, :cond_1

    move-object v3, v2

    goto :goto_1

    .line 2248
    :cond_1
    iget-object v3, v1, Lcom/bumptech/glide/load/b/k;->i:Lcom/bumptech/glide/load/b/a;

    invoke-virtual {v3, v15}, Lcom/bumptech/glide/load/b/a;->b(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/load/b/p;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2250
    invoke-virtual {v3}, Lcom/bumptech/glide/load/b/p;->a()V

    :cond_2
    :goto_1
    if-eqz v3, :cond_4

    .line 176
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v11, v3, v0}, Lcom/bumptech/glide/e/i;->onResourceReady(Lcom/bumptech/glide/load/b/v;Lcom/bumptech/glide/load/DataSource;)V

    .line 177
    sget-boolean v0, Lcom/bumptech/glide/load/b/k;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "Loaded resource from active resources"

    .line 178
    invoke-static {v0, v13, v14, v15}, Lcom/bumptech/glide/load/b/k;->a(Ljava/lang/String;JLcom/bumptech/glide/load/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_3
    monitor-exit p0

    return-object v2

    :cond_4
    if-nez p14, :cond_5

    move-object v3, v2

    goto :goto_3

    .line 2270
    :cond_5
    :try_start_1
    iget-object v3, v1, Lcom/bumptech/glide/load/b/k;->d:Lcom/bumptech/glide/load/b/b/h;

    invoke-interface {v3, v15}, Lcom/bumptech/glide/load/b/b/h;->remove(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/load/b/v;

    move-result-object v3

    if-nez v3, :cond_6

    move-object v3, v2

    goto :goto_2

    .line 2275
    :cond_6
    instance-of v4, v3, Lcom/bumptech/glide/load/b/p;

    if-eqz v4, :cond_7

    .line 2277
    check-cast v3, Lcom/bumptech/glide/load/b/p;

    goto :goto_2

    .line 2279
    :cond_7
    new-instance v4, Lcom/bumptech/glide/load/b/p;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5, v5}, Lcom/bumptech/glide/load/b/p;-><init>(Lcom/bumptech/glide/load/b/v;ZZ)V

    move-object v3, v4

    :goto_2
    if-eqz v3, :cond_8

    .line 2263
    invoke-virtual {v3}, Lcom/bumptech/glide/load/b/p;->a()V

    .line 2264
    iget-object v4, v1, Lcom/bumptech/glide/load/b/k;->i:Lcom/bumptech/glide/load/b/a;

    invoke-virtual {v4, v15, v3}, Lcom/bumptech/glide/load/b/a;->a(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/b/p;)V

    :cond_8
    :goto_3
    if-eqz v3, :cond_a

    .line 185
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v11, v3, v0}, Lcom/bumptech/glide/e/i;->onResourceReady(Lcom/bumptech/glide/load/b/v;Lcom/bumptech/glide/load/DataSource;)V

    .line 186
    sget-boolean v0, Lcom/bumptech/glide/load/b/k;->a:Z

    if-eqz v0, :cond_9

    const-string v0, "Loaded resource from cache"

    .line 187
    invoke-static {v0, v13, v14, v15}, Lcom/bumptech/glide/load/b/k;->a(Ljava/lang/String;JLcom/bumptech/glide/load/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :cond_9
    monitor-exit p0

    return-object v2

    .line 192
    :cond_a
    :try_start_2
    iget-object v2, v1, Lcom/bumptech/glide/load/b/k;->b:Lcom/bumptech/glide/load/b/s;

    .line 3019
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/load/b/s;->a(Z)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/b/l;

    if-eqz v2, :cond_c

    .line 194
    invoke-virtual {v2, v11, v12}, Lcom/bumptech/glide/load/b/l;->a(Lcom/bumptech/glide/e/i;Ljava/util/concurrent/Executor;)V

    .line 195
    sget-boolean v0, Lcom/bumptech/glide/load/b/k;->a:Z

    if-eqz v0, :cond_b

    const-string v0, "Added to existing load"

    .line 196
    invoke-static {v0, v13, v14, v15}, Lcom/bumptech/glide/load/b/k;->a(Ljava/lang/String;JLcom/bumptech/glide/load/d;)V

    .line 198
    :cond_b
    new-instance v0, Lcom/bumptech/glide/load/b/k$d;

    invoke-direct {v0, v1, v11, v2}, Lcom/bumptech/glide/load/b/k$d;-><init>(Lcom/bumptech/glide/load/b/k;Lcom/bumptech/glide/e/i;Lcom/bumptech/glide/load/b/l;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 201
    :cond_c
    :try_start_3
    iget-object v2, v1, Lcom/bumptech/glide/load/b/k;->e:Lcom/bumptech/glide/load/b/k$b;

    .line 3504
    iget-object v2, v2, Lcom/bumptech/glide/load/b/k$b;->f:Landroidx/core/util/Pools$Pool;

    invoke-interface {v2}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/b/l;

    invoke-static {v2}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/b/l;

    move-object v3, v15

    move/from16 v4, p14

    move/from16 v5, p15

    move/from16 v6, p16

    move/from16 v7, p17

    .line 3505
    invoke-virtual/range {v2 .. v7}, Lcom/bumptech/glide/load/b/l;->a(Lcom/bumptech/glide/load/d;ZZZZ)Lcom/bumptech/glide/load/b/l;

    move-result-object v2

    .line 209
    iget-object v3, v1, Lcom/bumptech/glide/load/b/k;->h:Lcom/bumptech/glide/load/b/k$a;

    .line 4431
    iget-object v4, v3, Lcom/bumptech/glide/load/b/k$a;->b:Landroidx/core/util/Pools$Pool;

    invoke-interface {v4}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/load/b/h;

    invoke-static {v4}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/load/b/h;

    .line 4432
    iget v5, v3, Lcom/bumptech/glide/load/b/k$a;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v3, Lcom/bumptech/glide/load/b/k$a;->c:I

    .line 5102
    iget-object v3, v4, Lcom/bumptech/glide/load/b/h;->a:Lcom/bumptech/glide/load/b/g;

    iget-object v6, v4, Lcom/bumptech/glide/load/b/h;->b:Lcom/bumptech/glide/load/b/h$d;

    move v7, v0

    move-object/from16 v0, p1

    .line 6061
    iput-object v0, v3, Lcom/bumptech/glide/load/b/g;->a:Lcom/bumptech/glide/e;

    move-object/from16 v8, p2

    move-object v9, v11

    .line 6062
    iput-object v8, v3, Lcom/bumptech/glide/load/b/g;->b:Ljava/lang/Object;

    move-object/from16 v10, p3

    move-object v11, v12

    .line 6063
    iput-object v10, v3, Lcom/bumptech/glide/load/b/g;->j:Lcom/bumptech/glide/load/d;

    move/from16 v12, p4

    .line 6064
    iput v12, v3, Lcom/bumptech/glide/load/b/g;->c:I

    move-object/from16 v16, v15

    move/from16 v15, p5

    .line 6065
    iput v15, v3, Lcom/bumptech/glide/load/b/g;->d:I

    move-wide/from16 p14, v13

    move-object/from16 v13, p9

    .line 6066
    iput-object v13, v3, Lcom/bumptech/glide/load/b/g;->l:Lcom/bumptech/glide/load/b/j;

    move-object/from16 v14, p6

    .line 6067
    iput-object v14, v3, Lcom/bumptech/glide/load/b/g;->e:Ljava/lang/Class;

    .line 6068
    iput-object v6, v3, Lcom/bumptech/glide/load/b/g;->f:Lcom/bumptech/glide/load/b/h$d;

    move-object/from16 v6, p7

    .line 6069
    iput-object v6, v3, Lcom/bumptech/glide/load/b/g;->i:Ljava/lang/Class;

    move-object/from16 v6, p8

    move-object/from16 v14, v16

    .line 6070
    iput-object v6, v3, Lcom/bumptech/glide/load/b/g;->k:Lcom/bumptech/glide/Priority;

    move-object/from16 v9, p13

    .line 6071
    iput-object v9, v3, Lcom/bumptech/glide/load/b/g;->g:Lcom/bumptech/glide/load/g;

    move-object/from16 v11, p10

    .line 6072
    iput-object v11, v3, Lcom/bumptech/glide/load/b/g;->h:Ljava/util/Map;

    move/from16 v11, p11

    .line 6073
    iput-boolean v11, v3, Lcom/bumptech/glide/load/b/g;->m:Z

    move/from16 v11, p12

    .line 6074
    iput-boolean v11, v3, Lcom/bumptech/glide/load/b/g;->n:Z

    .line 5117
    iput-object v0, v4, Lcom/bumptech/glide/load/b/h;->e:Lcom/bumptech/glide/e;

    .line 5118
    iput-object v10, v4, Lcom/bumptech/glide/load/b/h;->f:Lcom/bumptech/glide/load/d;

    .line 5119
    iput-object v6, v4, Lcom/bumptech/glide/load/b/h;->g:Lcom/bumptech/glide/Priority;

    .line 5120
    iput-object v14, v4, Lcom/bumptech/glide/load/b/h;->h:Lcom/bumptech/glide/load/b/n;

    .line 5121
    iput v12, v4, Lcom/bumptech/glide/load/b/h;->i:I

    .line 5122
    iput v15, v4, Lcom/bumptech/glide/load/b/h;->j:I

    .line 5123
    iput-object v13, v4, Lcom/bumptech/glide/load/b/h;->k:Lcom/bumptech/glide/load/b/j;

    .line 5124
    iput-boolean v7, v4, Lcom/bumptech/glide/load/b/h;->p:Z

    .line 5125
    iput-object v9, v4, Lcom/bumptech/glide/load/b/h;->l:Lcom/bumptech/glide/load/g;

    .line 5126
    iput-object v2, v4, Lcom/bumptech/glide/load/b/h;->m:Lcom/bumptech/glide/load/b/h$a;

    .line 5127
    iput v5, v4, Lcom/bumptech/glide/load/b/h;->n:I

    .line 5128
    sget-object v0, Lcom/bumptech/glide/load/b/h$f;->INITIALIZE:Lcom/bumptech/glide/load/b/h$f;

    iput-object v0, v4, Lcom/bumptech/glide/load/b/h;->o:Lcom/bumptech/glide/load/b/h$f;

    .line 5129
    iput-object v8, v4, Lcom/bumptech/glide/load/b/h;->q:Ljava/lang/Object;

    .line 228
    iget-object v0, v1, Lcom/bumptech/glide/load/b/k;->b:Lcom/bumptech/glide/load/b/s;

    .line 7184
    iget-boolean v3, v2, Lcom/bumptech/glide/load/b/l;->b:Z

    .line 7023
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/load/b/s;->a(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p18

    move-object/from16 v3, p19

    .line 230
    invoke-virtual {v2, v0, v3}, Lcom/bumptech/glide/load/b/l;->a(Lcom/bumptech/glide/e/i;Ljava/util/concurrent/Executor;)V

    .line 231
    invoke-virtual {v2, v4}, Lcom/bumptech/glide/load/b/l;->start(Lcom/bumptech/glide/load/b/h;)V

    .line 233
    sget-boolean v3, Lcom/bumptech/glide/load/b/k;->a:Z

    if-eqz v3, :cond_d

    const-string v3, "Started new load"

    move-wide/from16 v4, p14

    .line 234
    invoke-static {v3, v4, v5, v14}, Lcom/bumptech/glide/load/b/k;->a(Ljava/lang/String;JLcom/bumptech/glide/load/d;)V

    .line 236
    :cond_d
    new-instance v3, Lcom/bumptech/glide/load/b/k$d;

    invoke-direct {v3, v1, v0, v2}, Lcom/bumptech/glide/load/b/k$d;-><init>(Lcom/bumptech/glide/load/b/k;Lcom/bumptech/glide/e/i;Lcom/bumptech/glide/load/b/l;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onEngineJobCancelled(Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/l<",
            "*>;",
            "Lcom/bumptech/glide/load/d;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->b:Lcom/bumptech/glide/load/b/s;

    invoke-virtual {v0, p2, p1}, Lcom/bumptech/glide/load/b/s;->a(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/b/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onEngineJobComplete(Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/l<",
            "*>;",
            "Lcom/bumptech/glide/load/d;",
            "Lcom/bumptech/glide/load/b/p<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_0

    .line 298
    :try_start_0
    invoke-virtual {p3, p2, p0}, Lcom/bumptech/glide/load/b/p;->a(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/b/p$a;)V

    .line 8043
    iget-boolean v0, p3, Lcom/bumptech/glide/load/b/p;->a:Z

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->i:Lcom/bumptech/glide/load/b/a;

    invoke-virtual {v0, p2, p3}, Lcom/bumptech/glide/load/b/a;->a(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/b/p;)V

    .line 305
    :cond_0
    iget-object p3, p0, Lcom/bumptech/glide/load/b/k;->b:Lcom/bumptech/glide/load/b/s;

    invoke-virtual {p3, p2, p1}, Lcom/bumptech/glide/load/b/s;->a(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/b/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onResourceReleased(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d;",
            "Lcom/bumptech/glide/load/b/p<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->i:Lcom/bumptech/glide/load/b/a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/b/a;->a(Lcom/bumptech/glide/load/d;)V

    .line 9043
    iget-boolean v0, p2, Lcom/bumptech/glide/load/b/p;->a:Z

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->d:Lcom/bumptech/glide/load/b/b/h;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/b/b/h;->put(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/b/v;)Lcom/bumptech/glide/load/b/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 324
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/bumptech/glide/load/b/k;->f:Lcom/bumptech/glide/load/b/y;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/load/b/y;->a(Lcom/bumptech/glide/load/b/v;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onResourceRemoved(Lcom/bumptech/glide/load/b/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/v<",
            "*>;)V"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->f:Lcom/bumptech/glide/load/b/y;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/b/y;->a(Lcom/bumptech/glide/load/b/v;)V

    return-void
.end method

.method public final release(Lcom/bumptech/glide/load/b/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/v<",
            "*>;)V"
        }
    .end annotation

    .line 285
    instance-of v0, p1, Lcom/bumptech/glide/load/b/p;

    if-eqz v0, :cond_0

    .line 286
    check-cast p1, Lcom/bumptech/glide/load/b/p;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/p;->b()V

    return-void

    .line 288
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot release anything but an EngineResource"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final shutdown()V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->e:Lcom/bumptech/glide/load/b/k$b;

    .line 9491
    iget-object v1, v0, Lcom/bumptech/glide/load/b/k$b;->a:Lcom/bumptech/glide/load/b/c/a;

    invoke-static {v1}, Lcom/bumptech/glide/g/e;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    .line 9492
    iget-object v1, v0, Lcom/bumptech/glide/load/b/k$b;->b:Lcom/bumptech/glide/load/b/c/a;

    invoke-static {v1}, Lcom/bumptech/glide/g/e;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    .line 9493
    iget-object v1, v0, Lcom/bumptech/glide/load/b/k$b;->c:Lcom/bumptech/glide/load/b/c/a;

    invoke-static {v1}, Lcom/bumptech/glide/g/e;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    .line 9494
    iget-object v0, v0, Lcom/bumptech/glide/load/b/k$b;->d:Lcom/bumptech/glide/load/b/c/a;

    invoke-static {v0}, Lcom/bumptech/glide/g/e;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    .line 335
    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->g:Lcom/bumptech/glide/load/b/k$c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/k$c;->a()V

    .line 336
    iget-object v0, p0, Lcom/bumptech/glide/load/b/k;->i:Lcom/bumptech/glide/load/b/a;

    const/4 v1, 0x1

    .line 10159
    iput-boolean v1, v0, Lcom/bumptech/glide/load/b/a;->e:Z

    .line 10160
    iget-object v1, v0, Lcom/bumptech/glide/load/b/a;->a:Ljava/util/concurrent/Executor;

    instance-of v1, v1, Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 10161
    iget-object v0, v0, Lcom/bumptech/glide/load/b/a;->a:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 10162
    invoke-static {v0}, Lcom/bumptech/glide/g/e;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    :cond_0
    return-void
.end method
