.class public Lcom/yandex/metrica/impl/ob/ki;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ki$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/impl/bq$a$a;",
            "Lcom/yandex/metrica/impl/av$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/yandex/metrica/impl/ob/gk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/gk<",
            "Lcom/yandex/metrica/impl/ob/ki$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/yandex/metrica/impl/ob/lk;

.field private final f:Lcom/yandex/metrica/impl/bs;

.field private g:Lcom/yandex/metrica/impl/ob/ki$a;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 250
    new-instance v0, Lcom/yandex/metrica/impl/ob/ki$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ki$1;-><init>()V

    .line 251
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/ki;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/gk;Lcom/yandex/metrica/impl/bs;Lcom/yandex/metrica/impl/ob/lk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/metrica/impl/ob/gk<",
            "Lcom/yandex/metrica/impl/ob/ki$a;",
            ">;",
            "Lcom/yandex/metrica/impl/bs;",
            "Lcom/yandex/metrica/impl/ob/lk;",
            ")V"
        }
    .end annotation

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 270
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/ki;->h:Z

    .line 278
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ki;->b:Landroid/content/Context;

    .line 279
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ki;->c:Lcom/yandex/metrica/impl/ob/gk;

    .line 280
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/ki;->f:Lcom/yandex/metrica/impl/bs;

    .line 281
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/ki;->e:Lcom/yandex/metrica/impl/ob/lk;

    .line 283
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "YMM-RRT"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 285
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ki;->d:Landroid/os/Handler;

    return-void
.end method

.method private static a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/nu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/yandex/metrica/impl/ob/nu<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 357
    new-instance v0, Lcom/yandex/metrica/impl/ob/nu;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/nu;-><init>()V

    .line 358
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 359
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/yandex/metrica/impl/ob/nu;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Collection;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/yandex/metrica/impl/ob/ki$a$a;)V
    .locals 6

    .line 375
    iget-wide v0, p1, Lcom/yandex/metrica/impl/ob/ki$a$a;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 378
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ki;->d:Landroid/os/Handler;

    new-instance v3, Lcom/yandex/metrica/impl/ob/ki$4;

    invoke-direct {v3, p0, p1}, Lcom/yandex/metrica/impl/ob/ki$4;-><init>(Lcom/yandex/metrica/impl/ob/ki;Lcom/yandex/metrica/impl/ob/ki$a$a;)V

    sget-wide v4, Lcom/yandex/metrica/impl/a;->a:J

    .line 422
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 378
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private declared-synchronized a(Lcom/yandex/metrica/impl/ob/ki$a$b;)V
    .locals 2

    monitor-enter p0

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ki;->g:Lcom/yandex/metrica/impl/ob/ki$a;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ki$a$b;->a(Lcom/yandex/metrica/impl/ob/ki$a$b;)Lcom/yandex/metrica/impl/ob/ki$a$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ki$a;->b(Lcom/yandex/metrica/impl/ob/ki$a$a;)V

    .line 453
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ki;->b()V

    .line 454
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ki;->e:Lcom/yandex/metrica/impl/ob/lk;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/lk;->a(Lcom/yandex/metrica/impl/ob/ki$a$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/ki;)V
    .locals 2

    .line 1299
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/ki;->h:Z

    if-nez v0, :cond_1

    .line 1301
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ki;->c:Lcom/yandex/metrica/impl/ob/gk;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/gk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/ki$a;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ki;->g:Lcom/yandex/metrica/impl/ob/ki$a;

    .line 1315
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ki;->g:Lcom/yandex/metrica/impl/ob/ki$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ki$a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/ki$a$a;

    .line 1316
    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/ki;->a(Lcom/yandex/metrica/impl/ob/ki$a$a;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1309
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/ki;->h:Z

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/ki;Lcom/yandex/metrica/impl/ob/ki$a$b;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ki;->a(Lcom/yandex/metrica/impl/ob/ki$a$b;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/ki;Ljava/util/List;J)V
    .locals 10

    .line 1335
    invoke-static {p1}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1336
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/bq$a;

    .line 1337
    iget-object v1, v0, Lcom/yandex/metrica/impl/bq$a;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/yandex/metrica/impl/bq$a;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/yandex/metrica/impl/bq$a;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/yandex/metrica/impl/bq$a;->e:Ljava/lang/Long;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/yandex/metrica/impl/bq$a;->e:Ljava/lang/Long;

    .line 1338
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    iget-object v1, v0, Lcom/yandex/metrica/impl/bq$a;->f:Ljava/util/List;

    .line 1339
    invoke-static {v1}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1340
    new-instance v1, Lcom/yandex/metrica/impl/ob/ki$a$a;

    iget-object v3, v0, Lcom/yandex/metrica/impl/bq$a;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/yandex/metrica/impl/bq$a;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/yandex/metrica/impl/bq$a;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/yandex/metrica/impl/bq$a;->d:Ljava/util/List;

    .line 1344
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/ki;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/nu;

    move-result-object v6

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, v0, Lcom/yandex/metrica/impl/bq$a;->e:Ljava/lang/Long;

    .line 1345
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v7, p2

    invoke-virtual {v2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    iget-object v0, v0, Lcom/yandex/metrica/impl/bq$a;->f:Ljava/util/List;

    .line 1346
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ki;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/yandex/metrica/impl/ob/ki$a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/nu;JLjava/util/List;)V

    .line 1365
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ki;->g:Lcom/yandex/metrica/impl/ob/ki$a;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ki$a;->a(Lcom/yandex/metrica/impl/ob/ki$a$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1367
    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/ki;->a(Lcom/yandex/metrica/impl/ob/ki$a$a;)V

    .line 1368
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ki;->e:Lcom/yandex/metrica/impl/ob/lk;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/lk;->a(Lcom/yandex/metrica/impl/ob/ki$a$a;)V

    .line 1370
    :cond_1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ki;->b()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Ljava/net/HttpURLConnection;Lcom/yandex/metrica/impl/ob/ki$a$b;)V
    .locals 2

    const v0, 0x19000

    .line 1427
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/w;->a(Ljava/io/InputStream;I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/ki$a$b;->a([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1432
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/yandex/metrica/impl/w;->a(Ljava/io/InputStream;I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/metrica/impl/ob/ki$a$b;->b([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/ki;)Lcom/yandex/metrica/impl/bs;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/ki;->f:Lcom/yandex/metrica/impl/bs;

    return-object p0
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/bq$a$a;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/av$a;",
            ">;"
        }
    .end annotation

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    .line 472
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 474
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/bq$a$a;

    .line 475
    sget-object v2, Lcom/yandex/metrica/impl/ob/ki;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private b()V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ki;->c:Lcom/yandex/metrica/impl/ob/gk;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ki;->g:Lcom/yandex/metrica/impl/ob/ki$a;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/gk;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ob/ki;)Lcom/yandex/metrica/impl/ob/lk;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/ki;->e:Lcom/yandex/metrica/impl/ob/lk;

    return-object p0
.end method

.method static synthetic d(Lcom/yandex/metrica/impl/ob/ki;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/ki;->b:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ki;->d:Landroid/os/Handler;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ki$2;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/ki$2;-><init>(Lcom/yandex/metrica/impl/ob/ki;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/bq$a;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ki;->d:Landroid/os/Handler;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ki$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/ki$3;-><init>(Lcom/yandex/metrica/impl/ob/ki;Ljava/util/List;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
