.class public Lcom/koushikdutta/async/http/spdy/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/spdy/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/spdy/a$a;
    }
.end annotation


# instance fields
.field a:Lcom/koushikdutta/async/j;

.field b:Lcom/koushikdutta/async/k;

.field c:Lcom/koushikdutta/async/http/spdy/e;

.field d:Lcom/koushikdutta/async/http/spdy/f;

.field e:Lcom/koushikdutta/async/http/spdy/r;

.field f:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/koushikdutta/async/http/spdy/a$a;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/koushikdutta/async/http/Protocol;

.field h:Z

.field i:I

.field final j:Lcom/koushikdutta/async/http/spdy/m;

.field k:J

.field l:Lcom/koushikdutta/async/http/spdy/m;

.field m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/koushikdutta/async/http/spdy/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/j;Lcom/koushikdutta/async/http/Protocol;)V
    .locals 3

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/a;->f:Ljava/util/Hashtable;

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/a;->h:Z

    .line 266
    new-instance v1, Lcom/koushikdutta/async/http/spdy/m;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/spdy/m;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/http/spdy/a;->j:Lcom/koushikdutta/async/http/spdy/m;

    .line 423
    new-instance v1, Lcom/koushikdutta/async/http/spdy/m;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/spdy/m;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/http/spdy/a;->l:Lcom/koushikdutta/async/http/spdy/m;

    const/4 v1, 0x0

    .line 424
    iput-boolean v1, p0, Lcom/koushikdutta/async/http/spdy/a;->q:Z

    .line 271
    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/a;->g:Lcom/koushikdutta/async/http/Protocol;

    .line 272
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/a;->a:Lcom/koushikdutta/async/j;

    .line 273
    new-instance v2, Lcom/koushikdutta/async/k;

    invoke-direct {v2, p1}, Lcom/koushikdutta/async/k;-><init>(Lcom/koushikdutta/async/q;)V

    iput-object v2, p0, Lcom/koushikdutta/async/http/spdy/a;->b:Lcom/koushikdutta/async/k;

    .line 275
    sget-object v2, Lcom/koushikdutta/async/http/Protocol;->SPDY_3:Lcom/koushikdutta/async/http/Protocol;

    if-ne p2, v2, :cond_0

    .line 276
    new-instance v2, Lcom/koushikdutta/async/http/spdy/n;

    invoke-direct {v2}, Lcom/koushikdutta/async/http/spdy/n;-><init>()V

    iput-object v2, p0, Lcom/koushikdutta/async/http/spdy/a;->e:Lcom/koushikdutta/async/http/spdy/r;

    goto :goto_0

    .line 278
    :cond_0
    sget-object v2, Lcom/koushikdutta/async/http/Protocol;->HTTP_2:Lcom/koushikdutta/async/http/Protocol;

    if-ne p2, v2, :cond_1

    .line 279
    new-instance v2, Lcom/koushikdutta/async/http/spdy/j;

    invoke-direct {v2}, Lcom/koushikdutta/async/http/spdy/j;-><init>()V

    iput-object v2, p0, Lcom/koushikdutta/async/http/spdy/a;->e:Lcom/koushikdutta/async/http/spdy/r;

    .line 281
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/a;->e:Lcom/koushikdutta/async/http/spdy/r;

    invoke-interface {v2, p1, p0, v0}, Lcom/koushikdutta/async/http/spdy/r;->newReader(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/http/spdy/e$a;Z)Lcom/koushikdutta/async/http/spdy/e;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/a;->c:Lcom/koushikdutta/async/http/spdy/e;

    .line 282
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/a;->e:Lcom/koushikdutta/async/http/spdy/r;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/a;->b:Lcom/koushikdutta/async/k;

    invoke-interface {p1, v2, v0}, Lcom/koushikdutta/async/http/spdy/r;->newWriter(Lcom/koushikdutta/async/k;Z)Lcom/koushikdutta/async/http/spdy/f;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/a;->d:Lcom/koushikdutta/async/http/spdy/f;

    .line 285
    iput v0, p0, Lcom/koushikdutta/async/http/spdy/a;->p:I

    .line 286
    sget-object p1, Lcom/koushikdutta/async/http/Protocol;->HTTP_2:Lcom/koushikdutta/async/http/Protocol;

    if-ne p2, p1, :cond_2

    .line 287
    iget p1, p0, Lcom/koushikdutta/async/http/spdy/a;->p:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/koushikdutta/async/http/spdy/a;->p:I

    .line 289
    :cond_2
    iput v0, p0, Lcom/koushikdutta/async/http/spdy/a;->n:I

    .line 295
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/a;->j:Lcom/koushikdutta/async/http/spdy/m;

    const/4 p2, 0x7

    const/high16 v0, 0x1000000

    invoke-virtual {p1, p2, v1, v0}, Lcom/koushikdutta/async/http/spdy/m;->set(III)Lcom/koushikdutta/async/http/spdy/m;

    return-void
.end method

.method private a(Ljava/util/List;ZZ)Lcom/koushikdutta/async/http/spdy/a$a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/g;",
            ">;ZZ)",
            "Lcom/koushikdutta/async/http/spdy/a$a;"
        }
    .end annotation

    xor-int/lit8 p2, p2, 0x1

    xor-int/lit8 p3, p3, 0x1

    .line 54
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/a;->m:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 58
    :cond_0
    iget v6, p0, Lcom/koushikdutta/async/http/spdy/a;->p:I

    add-int/lit8 v0, v6, 0x2

    .line 59
    iput v0, p0, Lcom/koushikdutta/async/http/spdy/a;->p:I

    .line 60
    new-instance v7, Lcom/koushikdutta/async/http/spdy/a$a;

    move-object v0, v7

    move-object v1, p0

    move v2, v6

    move v3, p2

    move v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/spdy/a$a;-><init>(Lcom/koushikdutta/async/http/spdy/a;IZZLjava/util/List;)V

    .line 61
    invoke-virtual {v7}, Lcom/koushikdutta/async/http/spdy/a$a;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/a;->f:Ljava/util/Hashtable;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/a;->d:Lcom/koushikdutta/async/http/spdy/f;

    const/4 v4, 0x0

    move v1, p2

    move v2, p3

    move v3, v6

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/koushikdutta/async/http/spdy/f;->synStream(ZZIILjava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception p1

    .line 78
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private a(J)V
    .locals 2

    .line 451
    iget-wide v0, p0, Lcom/koushikdutta/async/http/spdy/a;->k:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/koushikdutta/async/http/spdy/a;->k:J

    .line 452
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/a;->f:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/koushikdutta/async/http/spdy/a$a;

    .line 453
    invoke-static {p2}, Lcom/koushikdutta/async/af;->writable(Lcom/koushikdutta/async/q;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(I)Z
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/a;->g:Lcom/koushikdutta/async/http/Protocol;

    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->HTTP_2:Lcom/koushikdutta/async/http/Protocol;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private declared-synchronized b(I)Lcom/koushikdutta/async/http/spdy/l;
    .locals 1

    monitor-enter p0

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/a;->r:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/a;->r:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/http/spdy/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public ackSettings()V
    .locals 2

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/a;->d:Lcom/koushikdutta/async/http/spdy/f;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/spdy/f;->ackSettings()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 463
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public alternateService(ILjava/lang/String;Lcom/koushikdutta/async/http/spdy/c;Ljava/lang/String;IJ)V
    .locals 0

    return-void
.end method

.method public data(ZILcom/koushikdutta/async/l;)V
    .locals 7

    .line 319
    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/spdy/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 324
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/a;->f:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/a$a;

    if-nez v0, :cond_0

    .line 327
    :try_start_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/a;->d:Lcom/koushikdutta/async/http/spdy/f;

    sget-object v0, Lcom/koushikdutta/async/http/spdy/d;->INVALID_STREAM:Lcom/koushikdutta/async/http/spdy/d;

    invoke-interface {p1, p2, v0}, Lcom/koushikdutta/async/http/spdy/f;->rstStream(ILcom/koushikdutta/async/http/spdy/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    invoke-virtual {p3}, Lcom/koushikdutta/async/l;->recycle()V

    return-void

    :catch_0
    move-exception p1

    .line 330
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 335
    :cond_0
    invoke-virtual {p3}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v1

    .line 336
    iget-object v2, v0, Lcom/koushikdutta/async/http/spdy/a$a;->g:Lcom/koushikdutta/async/l;

    invoke-virtual {p3, v2}, Lcom/koushikdutta/async/l;->get(Lcom/koushikdutta/async/l;)V

    .line 1117
    iget p3, v0, Lcom/koushikdutta/async/http/spdy/a$a;->j:I

    add-int/2addr p3, v1

    iput p3, v0, Lcom/koushikdutta/async/http/spdy/a$a;->j:I

    .line 1118
    iget p3, v0, Lcom/koushikdutta/async/http/spdy/a$a;->j:I

    iget-object v2, v0, Lcom/koushikdutta/async/http/spdy/a$a;->m:Lcom/koushikdutta/async/http/spdy/a;

    iget-object v2, v2, Lcom/koushikdutta/async/http/spdy/a;->j:Lcom/koushikdutta/async/http/spdy/m;

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/spdy/m;->getInitialWindowSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v4, 0x0

    if-lt p3, v2, :cond_1

    .line 1120
    :try_start_1
    iget-object p3, v0, Lcom/koushikdutta/async/http/spdy/a$a;->m:Lcom/koushikdutta/async/http/spdy/a;

    iget-object p3, p3, Lcom/koushikdutta/async/http/spdy/a;->d:Lcom/koushikdutta/async/http/spdy/f;

    iget v2, v0, Lcom/koushikdutta/async/http/spdy/a$a;->c:I

    iget v5, v0, Lcom/koushikdutta/async/http/spdy/a$a;->j:I

    int-to-long v5, v5

    invoke-interface {p3, v2, v5, v6}, Lcom/koushikdutta/async/http/spdy/f;->windowUpdate(IJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1125
    iput v4, v0, Lcom/koushikdutta/async/http/spdy/a$a;->j:I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1123
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 1127
    :cond_1
    :goto_0
    iget-object p3, v0, Lcom/koushikdutta/async/http/spdy/a$a;->m:Lcom/koushikdutta/async/http/spdy/a;

    .line 2084
    iget v2, p3, Lcom/koushikdutta/async/http/spdy/a;->i:I

    add-int/2addr v2, v1

    iput v2, p3, Lcom/koushikdutta/async/http/spdy/a;->i:I

    .line 2085
    iget v1, p3, Lcom/koushikdutta/async/http/spdy/a;->i:I

    iget-object v2, p3, Lcom/koushikdutta/async/http/spdy/a;->j:Lcom/koushikdutta/async/http/spdy/m;

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/spdy/m;->getInitialWindowSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_2

    .line 2087
    :try_start_2
    iget-object v1, p3, Lcom/koushikdutta/async/http/spdy/a;->d:Lcom/koushikdutta/async/http/spdy/f;

    iget v2, p3, Lcom/koushikdutta/async/http/spdy/a;->i:I

    int-to-long v2, v2

    invoke-interface {v1, v4, v2, v3}, Lcom/koushikdutta/async/http/spdy/f;->windowUpdate(IJ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2092
    iput v4, p3, Lcom/koushikdutta/async/http/spdy/a;->i:I

    goto :goto_1

    :catch_2
    move-exception p1

    .line 2090
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 338
    :cond_2
    :goto_1
    iget-object p3, v0, Lcom/koushikdutta/async/http/spdy/a$a;->g:Lcom/koushikdutta/async/l;

    invoke-static {v0, p3}, Lcom/koushikdutta/async/af;->emitAllData(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    if-eqz p1, :cond_3

    .line 340
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/a;->f:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/a$a;->close()V

    const/4 p1, 0x0

    .line 342
    invoke-static {v0, p1}, Lcom/koushikdutta/async/af;->end(Lcom/koushikdutta/async/n;Ljava/lang/Exception;)V

    :cond_3
    return-void

    .line 320
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "push"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public error(Ljava/lang/Exception;)V
    .locals 2

    .line 538
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/a;->a:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->close()V

    .line 539
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 541
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/n;

    invoke-static {v1, p1}, Lcom/koushikdutta/async/af;->end(Lcom/koushikdutta/async/n;Ljava/lang/Exception;)V

    .line 542
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public goAway(ILcom/koushikdutta/async/http/spdy/d;Lcom/koushikdutta/async/http/spdy/c;)V
    .locals 2

    const/4 p2, 0x1

    .line 498
    iput-boolean p2, p0, Lcom/koushikdutta/async/http/spdy/a;->m:Z

    .line 501
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/a;->f:Ljava/util/Hashtable;

    invoke-virtual {p2}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 502
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 503
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 504
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 505
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/a$a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/a$a;->isLocallyInitiated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/koushikdutta/async/n;

    new-instance v0, Ljava/io/IOException;

    sget-object v1, Lcom/koushikdutta/async/http/spdy/d;->REFUSED_STREAM:Lcom/koushikdutta/async/http/spdy/d;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/spdy/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p3, v0}, Lcom/koushikdutta/async/af;->end(Lcom/koushikdutta/async/n;Ljava/lang/Exception;)V

    .line 507
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public headers(ZZIILjava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/g;",
            ">;",
            "Lcom/koushikdutta/async/http/spdy/HeadersMode;",
            ")V"
        }
    .end annotation

    .line 350
    invoke-direct {p0, p3}, Lcom/koushikdutta/async/http/spdy/a;->a(I)Z

    move-result p1

    if-nez p1, :cond_7

    .line 357
    iget-boolean p1, p0, Lcom/koushikdutta/async/http/spdy/a;->m:Z

    if-eqz p1, :cond_0

    return-void

    .line 359
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/a;->f:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/http/spdy/a$a;

    if-nez p1, :cond_4

    .line 363
    invoke-virtual {p6}, Lcom/koushikdutta/async/http/spdy/HeadersMode;->failIfStreamAbsent()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 365
    :try_start_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/a;->d:Lcom/koushikdutta/async/http/spdy/f;

    sget-object p2, Lcom/koushikdutta/async/http/spdy/d;->INVALID_STREAM:Lcom/koushikdutta/async/http/spdy/d;

    invoke-interface {p1, p3, p2}, Lcom/koushikdutta/async/http/spdy/f;->rstStream(ILcom/koushikdutta/async/http/spdy/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 369
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 374
    :cond_1
    iget p1, p0, Lcom/koushikdutta/async/http/spdy/a;->o:I

    if-gt p3, p1, :cond_2

    return-void

    .line 377
    :cond_2
    rem-int/lit8 p3, p3, 0x2

    iget p1, p0, Lcom/koushikdutta/async/http/spdy/a;->p:I

    rem-int/lit8 p1, p1, 0x2

    if-ne p3, p1, :cond_3

    return-void

    .line 379
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "unexpected receive stream"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 390
    :cond_4
    invoke-virtual {p6}, Lcom/koushikdutta/async/http/spdy/HeadersMode;->failIfStreamPresent()Z

    move-result p4

    if-eqz p4, :cond_5

    .line 392
    :try_start_1
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/a;->d:Lcom/koushikdutta/async/http/spdy/f;

    sget-object p2, Lcom/koushikdutta/async/http/spdy/d;->INVALID_STREAM:Lcom/koushikdutta/async/http/spdy/d;

    invoke-interface {p1, p3, p2}, Lcom/koushikdutta/async/http/spdy/f;->rstStream(ILcom/koushikdutta/async/http/spdy/d;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 397
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/a;->f:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_1
    move-exception p1

    .line 395
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 402
    :cond_5
    invoke-virtual {p1, p5, p6}, Lcom/koushikdutta/async/http/spdy/a$a;->receiveHeaders(Ljava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V

    if-eqz p2, :cond_6

    .line 404
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/a;->f:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 405
    invoke-static {p1, p2}, Lcom/koushikdutta/async/af;->end(Lcom/koushikdutta/async/n;Ljava/lang/Exception;)V

    :cond_6
    return-void

    .line 351
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "push"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public newStream(Ljava/util/List;ZZ)Lcom/koushikdutta/async/http/spdy/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/g;",
            ">;ZZ)",
            "Lcom/koushikdutta/async/http/spdy/a$a;"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/a;->a(Ljava/util/List;ZZ)Lcom/koushikdutta/async/http/spdy/a$a;

    move-result-object p1

    return-object p1
.end method

.method public ping(ZII)V
    .locals 1

    if-eqz p1, :cond_1

    .line 480
    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/spdy/a;->b(I)Lcom/koushikdutta/async/http/spdy/l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 482
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/l;->receive()V

    :cond_0
    return-void

    .line 2470
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/a;->d:Lcom/koushikdutta/async/http/spdy/f;

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2, p3}, Lcom/koushikdutta/async/http/spdy/f;->ping(ZII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 490
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public priority(IIIZ)V
    .locals 0

    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/g;",
            ">;)V"
        }
    .end annotation

    .line 529
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "pushPromise"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public rstStream(ILcom/koushikdutta/async/http/spdy/d;)V
    .locals 1

    .line 411
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/a;->f:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/http/spdy/a$a;

    if-eqz p1, :cond_0

    .line 418
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p2}, Lcom/koushikdutta/async/http/spdy/d;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/koushikdutta/async/af;->end(Lcom/koushikdutta/async/n;Ljava/lang/Exception;)V

    :cond_0
    return-void

    .line 412
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "push"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public sendConnectionPreface()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/a;->d:Lcom/koushikdutta/async/http/spdy/f;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/spdy/f;->connectionPreface()V

    .line 305
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/a;->d:Lcom/koushikdutta/async/http/spdy/f;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/a;->j:Lcom/koushikdutta/async/http/spdy/m;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/spdy/f;->settings(Lcom/koushikdutta/async/http/spdy/m;)V

    .line 306
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/a;->j:Lcom/koushikdutta/async/http/spdy/m;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/spdy/m;->getInitialWindowSize(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 308
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/a;->d:Lcom/koushikdutta/async/http/spdy/f;

    const/4 v3, 0x0

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-interface {v2, v3, v0, v1}, Lcom/koushikdutta/async/http/spdy/f;->windowUpdate(IJ)V

    :cond_0
    return-void
.end method

.method public settings(ZLcom/koushikdutta/async/http/spdy/m;)V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/a;->l:Lcom/koushikdutta/async/http/spdy/m;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/spdy/m;->getInitialWindowSize(I)I

    move-result v0

    if-eqz p1, :cond_0

    .line 430
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/a;->l:Lcom/koushikdutta/async/http/spdy/m;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/m;->clear()V

    .line 431
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/a;->l:Lcom/koushikdutta/async/http/spdy/m;

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/http/spdy/m;->merge(Lcom/koushikdutta/async/http/spdy/m;)V

    .line 433
    :try_start_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/a;->d:Lcom/koushikdutta/async/http/spdy/f;

    invoke-interface {p1}, Lcom/koushikdutta/async/http/spdy/f;->ackSettings()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/a;->l:Lcom/koushikdutta/async/http/spdy/m;

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/http/spdy/m;->getInitialWindowSize(I)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    if-eq p1, v0, :cond_1

    sub-int/2addr p1, v0

    int-to-long p1, p1

    .line 440
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/a;->q:Z

    if-nez v0, :cond_2

    .line 441
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/spdy/a;->a(J)V

    const/4 v0, 0x1

    .line 442
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/a;->q:Z

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x0

    .line 445
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/spdy/a$a;

    .line 446
    invoke-virtual {v1, p1, p2}, Lcom/koushikdutta/async/http/spdy/a$a;->addBytesToWriteWindow(J)V

    goto :goto_1

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 435
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public windowUpdate(IJ)V
    .locals 1

    if-nez p1, :cond_0

    .line 515
    invoke-direct {p0, p2, p3}, Lcom/koushikdutta/async/http/spdy/a;->a(J)V

    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/a;->f:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/http/spdy/a$a;

    if-eqz p1, :cond_1

    .line 520
    invoke-virtual {p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/a$a;->addBytesToWriteWindow(J)V

    :cond_1
    return-void
.end method
