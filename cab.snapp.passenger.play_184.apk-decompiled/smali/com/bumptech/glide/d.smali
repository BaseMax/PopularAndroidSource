.class public final Lcom/bumptech/glide/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/bumptech/glide/manager/l$a;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/i<",
            "**>;>;"
        }
    .end annotation
.end field

.field private c:Lcom/bumptech/glide/load/b/k;

.field private d:Lcom/bumptech/glide/load/b/a/e;

.field private e:Lcom/bumptech/glide/load/b/a/b;

.field private f:Lcom/bumptech/glide/load/b/b/h;

.field private g:Lcom/bumptech/glide/load/b/c/a;

.field private h:Lcom/bumptech/glide/load/b/c/a;

.field private i:Lcom/bumptech/glide/load/b/b/a$a;

.field private j:Lcom/bumptech/glide/load/b/b/i;

.field private k:Lcom/bumptech/glide/manager/d;

.field private l:I

.field private m:Lcom/bumptech/glide/e/h;

.field private n:Lcom/bumptech/glide/load/b/c/a;

.field private o:Z

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/e/g<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->b:Ljava/util/Map;

    const/4 v0, 0x4

    .line 50
    iput v0, p0, Lcom/bumptech/glide/d;->l:I

    .line 51
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->m:Lcom/bumptech/glide/e/h;

    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;)Lcom/bumptech/glide/c;
    .locals 14

    .line 438
    iget-object v0, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/b/c/a;

    if-nez v0, :cond_0

    .line 439
    invoke-static {}, Lcom/bumptech/glide/load/b/c/a;->newSourceExecutor()Lcom/bumptech/glide/load/b/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/b/c/a;

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/b/c/a;

    if-nez v0, :cond_1

    .line 443
    invoke-static {}, Lcom/bumptech/glide/load/b/c/a;->newDiskCacheExecutor()Lcom/bumptech/glide/load/b/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/b/c/a;

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/d;->n:Lcom/bumptech/glide/load/b/c/a;

    if-nez v0, :cond_2

    .line 447
    invoke-static {}, Lcom/bumptech/glide/load/b/c/a;->newAnimationExecutor()Lcom/bumptech/glide/load/b/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->n:Lcom/bumptech/glide/load/b/c/a;

    .line 450
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/load/b/b/i;

    if-nez v0, :cond_3

    .line 451
    new-instance v0, Lcom/bumptech/glide/load/b/b/i$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/b/b/i$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/b/i$a;->build()Lcom/bumptech/glide/load/b/b/i;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/load/b/b/i;

    .line 454
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/d;->k:Lcom/bumptech/glide/manager/d;

    if-nez v0, :cond_4

    .line 455
    new-instance v0, Lcom/bumptech/glide/manager/f;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->k:Lcom/bumptech/glide/manager/d;

    .line 458
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/b/a/e;

    if-nez v0, :cond_6

    .line 459
    iget-object v0, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/load/b/b/i;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/b/i;->getBitmapPoolSize()I

    move-result v0

    if-lez v0, :cond_5

    .line 461
    new-instance v1, Lcom/bumptech/glide/load/b/a/k;

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/b/a/k;-><init>(J)V

    iput-object v1, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/b/a/e;

    goto :goto_0

    .line 463
    :cond_5
    new-instance v0, Lcom/bumptech/glide/load/b/a/f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/a/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/b/a/e;

    .line 467
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/b/a/b;

    if-nez v0, :cond_7

    .line 468
    new-instance v0, Lcom/bumptech/glide/load/b/a/j;

    iget-object v1, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/load/b/b/i;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/b/b/i;->getArrayPoolSizeInBytes()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/b/a/j;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/b/a/b;

    .line 471
    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/b/b/h;

    if-nez v0, :cond_8

    .line 472
    new-instance v0, Lcom/bumptech/glide/load/b/b/g;

    iget-object v1, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/load/b/b/i;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/b/b/i;->getMemoryCacheSize()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/b/b/g;-><init>(J)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/b/b/h;

    .line 475
    :cond_8
    iget-object v0, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/b/b/a$a;

    if-nez v0, :cond_9

    .line 476
    new-instance v0, Lcom/bumptech/glide/load/b/b/f;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/b/b/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/b/b/a$a;

    .line 479
    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/b/k;

    if-nez v0, :cond_a

    .line 480
    new-instance v0, Lcom/bumptech/glide/load/b/k;

    iget-object v2, p0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/b/b/h;

    iget-object v3, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/b/b/a$a;

    iget-object v4, p0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/b/c/a;

    iget-object v5, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/b/c/a;

    .line 486
    invoke-static {}, Lcom/bumptech/glide/load/b/c/a;->newUnlimitedSourceExecutor()Lcom/bumptech/glide/load/b/c/a;

    move-result-object v6

    .line 487
    invoke-static {}, Lcom/bumptech/glide/load/b/c/a;->newAnimationExecutor()Lcom/bumptech/glide/load/b/c/a;

    move-result-object v7

    iget-boolean v8, p0, Lcom/bumptech/glide/d;->o:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/load/b/k;-><init>(Lcom/bumptech/glide/load/b/b/h;Lcom/bumptech/glide/load/b/b/a$a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Z)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/b/k;

    .line 491
    :cond_a
    iget-object v0, p0, Lcom/bumptech/glide/d;->p:Ljava/util/List;

    if-nez v0, :cond_b

    .line 492
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->p:Ljava/util/List;

    goto :goto_1

    .line 494
    :cond_b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->p:Ljava/util/List;

    .line 497
    :goto_1
    new-instance v7, Lcom/bumptech/glide/manager/l;

    iget-object v0, p0, Lcom/bumptech/glide/d;->a:Lcom/bumptech/glide/manager/l$a;

    invoke-direct {v7, v0}, Lcom/bumptech/glide/manager/l;-><init>(Lcom/bumptech/glide/manager/l$a;)V

    .line 500
    new-instance v0, Lcom/bumptech/glide/c;

    iget-object v3, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/b/k;

    iget-object v4, p0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/b/b/h;

    iget-object v5, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/b/a/e;

    iget-object v6, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/b/a/b;

    iget-object v8, p0, Lcom/bumptech/glide/d;->k:Lcom/bumptech/glide/manager/d;

    iget v9, p0, Lcom/bumptech/glide/d;->l:I

    iget-object v1, p0, Lcom/bumptech/glide/d;->m:Lcom/bumptech/glide/e/h;

    .line 509
    invoke-virtual {v1}, Lcom/bumptech/glide/e/h;->lock()Lcom/bumptech/glide/e/a;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/bumptech/glide/e/h;

    iget-object v11, p0, Lcom/bumptech/glide/d;->b:Ljava/util/Map;

    iget-object v12, p0, Lcom/bumptech/glide/d;->p:Ljava/util/List;

    iget-boolean v13, p0, Lcom/bumptech/glide/d;->q:Z

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v13}, Lcom/bumptech/glide/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/k;Lcom/bumptech/glide/load/b/b/h;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/a/b;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/d;ILcom/bumptech/glide/e/h;Ljava/util/Map;Ljava/util/List;Z)V

    return-object v0
.end method

.method public final addGlobalRequestListener(Lcom/bumptech/glide/e/g;)Lcom/bumptech/glide/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/g<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bumptech/glide/d;"
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/bumptech/glide/d;->p:Ljava/util/List;

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->p:Ljava/util/List;

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/d;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final setAnimationExecutor(Lcom/bumptech/glide/load/b/c/a;)Lcom/bumptech/glide/d;
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/bumptech/glide/d;->n:Lcom/bumptech/glide/load/b/c/a;

    return-object p0
.end method

.method public final setArrayPool(Lcom/bumptech/glide/load/b/a/b;)Lcom/bumptech/glide/d;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/b/a/b;

    return-object p0
.end method

.method public final setBitmapPool(Lcom/bumptech/glide/load/b/a/e;)Lcom/bumptech/glide/d;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/b/a/e;

    return-object p0
.end method

.method public final setConnectivityMonitorFactory(Lcom/bumptech/glide/manager/d;)Lcom/bumptech/glide/d;
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/bumptech/glide/d;->k:Lcom/bumptech/glide/manager/d;

    return-object p0
.end method

.method public final setDefaultRequestOptions(Lcom/bumptech/glide/e/h;)Lcom/bumptech/glide/d;
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/bumptech/glide/d;->m:Lcom/bumptech/glide/e/h;

    return-object p0
.end method

.method public final setDefaultTransitionOptions(Ljava/lang/Class;Lcom/bumptech/glide/i;)Lcom/bumptech/glide/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/i<",
            "*TT;>;)",
            "Lcom/bumptech/glide/d;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/bumptech/glide/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setDiskCache(Lcom/bumptech/glide/load/b/b/a$a;)Lcom/bumptech/glide/d;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/b/b/a$a;

    return-object p0
.end method

.method public final setDiskCacheExecutor(Lcom/bumptech/glide/load/b/c/a;)Lcom/bumptech/glide/d;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/b/c/a;

    return-object p0
.end method

.method public final setIsActiveResourceRetentionAllowed(Z)Lcom/bumptech/glide/d;
    .locals 0

    .line 381
    iput-boolean p1, p0, Lcom/bumptech/glide/d;->o:Z

    return-object p0
.end method

.method public final setLogLevel(I)Lcom/bumptech/glide/d;
    .locals 1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    .line 329
    iput p1, p0, Lcom/bumptech/glide/d;->l:I

    return-object p0

    .line 326
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Log level must be one of Log.VERBOSE, Log.DEBUG, Log.INFO, Log.WARN, or Log.ERROR"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setLogRequestOrigins(Z)Lcom/bumptech/glide/d;
    .locals 0

    .line 422
    iput-boolean p1, p0, Lcom/bumptech/glide/d;->q:Z

    return-object p0
.end method

.method public final setMemoryCache(Lcom/bumptech/glide/load/b/b/h;)Lcom/bumptech/glide/d;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/b/b/h;

    return-object p0
.end method

.method public final setMemorySizeCalculator(Lcom/bumptech/glide/load/b/b/i$a;)Lcom/bumptech/glide/d;
    .locals 0

    .line 259
    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/b/i$a;->build()Lcom/bumptech/glide/load/b/b/i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/d;->setMemorySizeCalculator(Lcom/bumptech/glide/load/b/b/i;)Lcom/bumptech/glide/d;

    move-result-object p1

    return-object p1
.end method

.method public final setMemorySizeCalculator(Lcom/bumptech/glide/load/b/b/i;)Lcom/bumptech/glide/d;
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/load/b/b/i;

    return-object p0
.end method

.method public final setResizeExecutor(Lcom/bumptech/glide/load/b/c/a;)Lcom/bumptech/glide/d;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/d;->setSourceExecutor(Lcom/bumptech/glide/load/b/c/a;)Lcom/bumptech/glide/d;

    move-result-object p1

    return-object p1
.end method

.method public final setSourceExecutor(Lcom/bumptech/glide/load/b/c/a;)Lcom/bumptech/glide/d;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/b/c/a;

    return-object p0
.end method
