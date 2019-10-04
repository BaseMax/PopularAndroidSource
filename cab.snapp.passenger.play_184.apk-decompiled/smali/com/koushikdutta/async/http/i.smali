.class public Lcom/koushikdutta/async/http/i;
.super Lcom/koushikdutta/async/http/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/i$a;,
        Lcom/koushikdutta/async/http/i$b;
    }
.end annotation


# instance fields
.field e:Ljava/lang/String;

.field f:I

.field g:I

.field protected h:Lcom/koushikdutta/async/http/a;

.field i:Z

.field j:Ljava/lang/String;

.field k:I

.field l:Ljava/net/InetSocketAddress;

.field m:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/i$a;",
            ">;"
        }
    .end annotation
.end field

.field n:I


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/a;)V
    .locals 2

    const-string v0, "http"

    const/16 v1, 0x50

    .line 51
    invoke-direct {p0, p1, v0, v1}, Lcom/koushikdutta/async/http/i;-><init>(Lcom/koushikdutta/async/http/a;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/a;Ljava/lang/String;I)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/koushikdutta/async/http/y;-><init>()V

    const v0, 0x493e0

    .line 27
    iput v0, p0, Lcom/koushikdutta/async/http/i;->g:I

    .line 111
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/i;->m:Ljava/util/Hashtable;

    const v0, 0x7fffffff

    .line 113
    iput v0, p0, Lcom/koushikdutta/async/http/i;->n:I

    .line 30
    iput-object p1, p0, Lcom/koushikdutta/async/http/i;->h:Lcom/koushikdutta/async/http/a;

    .line 31
    iput-object p2, p0, Lcom/koushikdutta/async/http/i;->e:Ljava/lang/String;

    .line 32
    iput p3, p0, Lcom/koushikdutta/async/http/i;->f:I

    return-void
.end method

.method private static a(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;
    .locals 2

    const-string v0, ":"

    if-eqz p2, :cond_0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    if-eqz p2, :cond_1

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "//"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "?proxy="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/koushikdutta/async/http/d;)V
    .locals 4

    .line 336
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 337
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/i;->getSchemePort(Landroid/net/Uri;)I

    move-result v1

    .line 338
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/d;->getProxyHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/d;->getProxyPort()I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/koushikdutta/async/http/i;->a(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 339
    monitor-enter p0

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/i;->m:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/i$a;

    if-nez v0, :cond_0

    .line 342
    monitor-exit p0

    return-void

    .line 343
    :cond_0
    iget v1, v0, Lcom/koushikdutta/async/http/i$a;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/koushikdutta/async/http/i$a;->a:I

    .line 344
    :cond_1
    :goto_0
    iget v1, v0, Lcom/koushikdutta/async/http/i$a;->a:I

    iget v2, p0, Lcom/koushikdutta/async/http/i;->n:I

    if-ge v1, v2, :cond_2

    iget-object v1, v0, Lcom/koushikdutta/async/http/i$a;->b:Lcom/koushikdutta/async/a;

    invoke-virtual {v1}, Lcom/koushikdutta/async/a;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 345
    iget-object v1, v0, Lcom/koushikdutta/async/http/i$a;->b:Lcom/koushikdutta/async/a;

    invoke-virtual {v1}, Lcom/koushikdutta/async/a;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/b$a;

    .line 346
    iget-object v2, v1, Lcom/koushikdutta/async/http/b$a;->socketCancellable:Lcom/koushikdutta/async/b/a;

    check-cast v2, Lcom/koushikdutta/async/b/h;

    .line 347
    invoke-virtual {v2}, Lcom/koushikdutta/async/b/h;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 349
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/i;->getSocket(Lcom/koushikdutta/async/http/b$a;)Lcom/koushikdutta/async/b/a;

    move-result-object v1

    .line 350
    invoke-virtual {v2, v1}, Lcom/koushikdutta/async/b/h;->setParent(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/h;

    goto :goto_0

    .line 352
    :cond_2
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/i;->a(Ljava/lang/String;)V

    .line 353
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Lcom/koushikdutta/async/http/i$a;
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/koushikdutta/async/http/i;->m:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/i$a;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lcom/koushikdutta/async/http/i$a;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/i$a;-><init>()V

    .line 265
    iget-object v1, p0, Lcom/koushikdutta/async/http/i;->m:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method final a(Lcom/koushikdutta/async/j;)V
    .locals 1

    .line 314
    new-instance v0, Lcom/koushikdutta/async/http/i$3;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/i$3;-><init>(Lcom/koushikdutta/async/http/i;Lcom/koushikdutta/async/j;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/j;->setEndCallback(Lcom/koushikdutta/async/a/a;)V

    const/4 v0, 0x0

    .line 321
    invoke-interface {p1, v0}, Lcom/koushikdutta/async/j;->setWriteableCallback(Lcom/koushikdutta/async/a/g;)V

    .line 324
    new-instance v0, Lcom/koushikdutta/async/http/i$4;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/i$4;-><init>(Lcom/koushikdutta/async/http/i;Lcom/koushikdutta/async/j;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/j;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    return-void
.end method

.method final a(Lcom/koushikdutta/async/j;Lcom/koushikdutta/async/http/d;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 291
    :cond_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 292
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/i;->getSchemePort(Landroid/net/Uri;)I

    move-result v1

    .line 293
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/d;->getProxyHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/koushikdutta/async/http/d;->getProxyPort()I

    move-result p2

    invoke-static {v0, v1, v2, p2}, Lcom/koushikdutta/async/http/i;->a(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 295
    new-instance v0, Lcom/koushikdutta/async/http/i$b;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/i$b;-><init>(Lcom/koushikdutta/async/http/i;Lcom/koushikdutta/async/j;)V

    .line 296
    monitor-enter p0

    .line 297
    :try_start_0
    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/i;->b(Ljava/lang/String;)Lcom/koushikdutta/async/http/i$a;

    move-result-object v1

    .line 298
    iget-object v1, v1, Lcom/koushikdutta/async/http/i$a;->c:Lcom/koushikdutta/async/a;

    .line 299
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/a;->push(Ljava/lang/Object;)V

    .line 300
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    new-instance v2, Lcom/koushikdutta/async/http/i$2;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/koushikdutta/async/http/i$2;-><init>(Lcom/koushikdutta/async/http/i;Lcom/koushikdutta/async/a;Lcom/koushikdutta/async/http/i$b;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/koushikdutta/async/j;->setClosedCallback(Lcom/koushikdutta/async/a/a;)V

    return-void

    :catchall_0
    move-exception p1

    .line 300
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final a(Ljava/lang/String;)V
    .locals 7

    .line 271
    iget-object v0, p0, Lcom/koushikdutta/async/http/i;->m:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/i$a;

    if-nez v0, :cond_0

    return-void

    .line 274
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/koushikdutta/async/http/i$a;->c:Lcom/koushikdutta/async/a;

    invoke-virtual {v1}, Lcom/koushikdutta/async/a;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 275
    iget-object v1, v0, Lcom/koushikdutta/async/http/i$a;->c:Lcom/koushikdutta/async/a;

    invoke-virtual {v1}, Lcom/koushikdutta/async/a;->peekLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/i$b;

    .line 276
    iget-object v2, v1, Lcom/koushikdutta/async/http/i$b;->a:Lcom/koushikdutta/async/j;

    .line 277
    iget-wide v3, v1, Lcom/koushikdutta/async/http/i$b;->b:J

    iget v1, p0, Lcom/koushikdutta/async/http/i;->g:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gtz v1, :cond_1

    .line 279
    iget-object v1, v0, Lcom/koushikdutta/async/http/i$a;->c:Lcom/koushikdutta/async/a;

    invoke-virtual {v1}, Lcom/koushikdutta/async/a;->pop()Ljava/lang/Object;

    const/4 v1, 0x0

    .line 281
    invoke-interface {v2, v1}, Lcom/koushikdutta/async/j;->setClosedCallback(Lcom/koushikdutta/async/a/a;)V

    .line 282
    invoke-interface {v2}, Lcom/koushikdutta/async/j;->close()V

    goto :goto_0

    .line 284
    :cond_1
    iget v1, v0, Lcom/koushikdutta/async/http/i$a;->a:I

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/koushikdutta/async/http/i$a;->b:Lcom/koushikdutta/async/a;

    invoke-virtual {v1}, Lcom/koushikdutta/async/a;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/koushikdutta/async/http/i$a;->c:Lcom/koushikdutta/async/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/koushikdutta/async/http/i;->m:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public disableProxy()V
    .locals 1

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/koushikdutta/async/http/i;->k:I

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/koushikdutta/async/http/i;->j:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/koushikdutta/async/http/i;->l:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public enableProxy(Ljava/lang/String;I)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/koushikdutta/async/http/i;->j:Ljava/lang/String;

    .line 81
    iput p2, p0, Lcom/koushikdutta/async/http/i;->k:I

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/koushikdutta/async/http/i;->l:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public getConnectAllAddresses()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/i;->i:Z

    return v0
.end method

.method public getMaxConnectionCount()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/koushikdutta/async/http/i;->n:I

    return v0
.end method

.method public getSchemePort(Landroid/net/Uri;)I
    .locals 3

    .line 40
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/koushikdutta/async/http/i;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 43
    iget p1, p0, Lcom/koushikdutta/async/http/i;->f:I

    return p1

    .line 46
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getSocket(Lcom/koushikdutta/async/http/b$a;)Lcom/koushikdutta/async/b/a;
    .locals 11

    .line 125
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 126
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/i;->getSchemePort(Landroid/net/Uri;)I

    move-result v4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne v4, v1, :cond_0

    return-object v0

    .line 131
    :cond_0
    iget-object v1, p1, Lcom/koushikdutta/async/http/b$a;->state:Lcom/koushikdutta/async/e/i;

    const-string v2, "socket-owner"

    invoke-virtual {v1, v2, p0}, Lcom/koushikdutta/async/e/i;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    iget-object v1, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/d;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/d;->getProxyPort()I

    move-result v2

    invoke-static {v3, v4, v1, v2}, Lcom/koushikdutta/async/http/i;->a(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-direct {p0, v1}, Lcom/koushikdutta/async/http/i;->b(Ljava/lang/String;)Lcom/koushikdutta/async/http/i$a;

    move-result-object v1

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget v2, v1, Lcom/koushikdutta/async/http/i$a;->a:I

    iget v5, p0, Lcom/koushikdutta/async/http/i;->n:I

    if-lt v2, v5, :cond_1

    .line 138
    new-instance v0, Lcom/koushikdutta/async/b/h;

    invoke-direct {v0}, Lcom/koushikdutta/async/b/h;-><init>()V

    .line 139
    iget-object v1, v1, Lcom/koushikdutta/async/http/i$a;->b:Lcom/koushikdutta/async/a;

    invoke-virtual {v1, p1}, Lcom/koushikdutta/async/a;->add(Ljava/lang/Object;)Z

    .line 140
    monitor-exit p0

    return-object v0

    .line 143
    :cond_1
    iget v2, v1, Lcom/koushikdutta/async/http/i$a;->a:I

    const/4 v5, 0x1

    add-int/2addr v2, v5

    iput v2, v1, Lcom/koushikdutta/async/http/i$a;->a:I

    .line 145
    :cond_2
    :goto_0
    iget-object v2, v1, Lcom/koushikdutta/async/http/i$a;->c:Lcom/koushikdutta/async/a;

    invoke-virtual {v2}, Lcom/koushikdutta/async/a;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 146
    iget-object v2, v1, Lcom/koushikdutta/async/http/i$a;->c:Lcom/koushikdutta/async/a;

    invoke-virtual {v2}, Lcom/koushikdutta/async/a;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/http/i$b;

    .line 147
    iget-object v6, v2, Lcom/koushikdutta/async/http/i$b;->a:Lcom/koushikdutta/async/j;

    .line 148
    iget-wide v7, v2, Lcom/koushikdutta/async/http/i$b;->b:J

    iget v2, p0, Lcom/koushikdutta/async/http/i;->g:I

    int-to-long v9, v2

    add-long/2addr v7, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v2, v7, v9

    if-gez v2, :cond_3

    .line 149
    invoke-interface {v6, v0}, Lcom/koushikdutta/async/j;->setClosedCallback(Lcom/koushikdutta/async/a/a;)V

    .line 150
    invoke-interface {v6}, Lcom/koushikdutta/async/j;->close()V

    goto :goto_0

    .line 153
    :cond_3
    invoke-interface {v6}, Lcom/koushikdutta/async/j;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    iget-object v1, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    const-string v2, "Reusing keep-alive socket"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/d;->logd(Ljava/lang/String;)V

    .line 157
    iget-object p1, p1, Lcom/koushikdutta/async/http/b$a;->connectCallback:Lcom/koushikdutta/async/a/b;

    invoke-interface {p1, v0, v6}, Lcom/koushikdutta/async/a/b;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/j;)V

    .line 160
    new-instance p1, Lcom/koushikdutta/async/b/h;

    invoke-direct {p1}, Lcom/koushikdutta/async/b/h;-><init>()V

    .line 161
    invoke-virtual {p1}, Lcom/koushikdutta/async/b/h;->setComplete()Z

    .line 162
    monitor-exit p0

    return-object p1

    .line 164
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/i;->i:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/koushikdutta/async/http/i;->j:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/d;->getProxyHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 191
    :cond_5
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    const-string v1, "Resolving domain and connecting to all available addresses"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/d;->logv(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/koushikdutta/async/http/i;->h:Lcom/koushikdutta/async/http/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v0

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/h;->getAllByName(Ljava/lang/String;)Lcom/koushikdutta/async/b/e;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/i$1;

    invoke-direct {v1, p0, p1, v3, v4}, Lcom/koushikdutta/async/http/i$1;-><init>(Lcom/koushikdutta/async/http/i;Lcom/koushikdutta/async/http/b$a;Landroid/net/Uri;I)V

    .line 193
    invoke-interface {v0, v1}, Lcom/koushikdutta/async/b/e;->then(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/f;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/b/a;

    return-object p1

    .line 168
    :cond_6
    :goto_1
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    const-string v1, "Connecting socket"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/d;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 172
    iget-object v1, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/d;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/koushikdutta/async/http/i;->j:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 173
    iget-object v1, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    iget-object v2, p0, Lcom/koushikdutta/async/http/i;->j:Ljava/lang/String;

    iget v6, p0, Lcom/koushikdutta/async/http/i;->k:I

    invoke-virtual {v1, v2, v6}, Lcom/koushikdutta/async/http/d;->enableProxy(Ljava/lang/String;I)V

    .line 174
    :cond_7
    iget-object v1, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/d;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 175
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/d;->getProxyHost()Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/d;->getProxyPort()I

    move-result v1

    move v7, v1

    goto :goto_2

    .line 180
    :cond_8
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    move v7, v4

    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_9

    .line 184
    iget-object v1, p1, Lcom/koushikdutta/async/http/b$a;->request:Lcom/koushikdutta/async/http/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Using proxy: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/d;->logv(Ljava/lang/String;)V

    .line 186
    :cond_9
    iget-object v1, p0, Lcom/koushikdutta/async/http/i;->h:Lcom/koushikdutta/async/http/a;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/a;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v8

    iget-object v6, p1, Lcom/koushikdutta/async/http/b$a;->connectCallback:Lcom/koushikdutta/async/a/b;

    move-object v1, p0

    move-object v2, p1

    .line 187
    invoke-virtual/range {v1 .. v6}, Lcom/koushikdutta/async/http/i;->wrapCallback(Lcom/koushikdutta/async/http/b$a;Landroid/net/Uri;IZLcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/a/b;

    move-result-object p1

    .line 186
    invoke-virtual {v8, v0, v7, p1}, Lcom/koushikdutta/async/h;->connectSocket(Ljava/lang/String;ILcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/b/a;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 164
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public onResponseComplete(Lcom/koushikdutta/async/http/b$g;)V
    .locals 3

    .line 358
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$g;->state:Lcom/koushikdutta/async/e/i;

    const-string v1, "socket-owner"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/e/i;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 362
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$g;->socket:Lcom/koushikdutta/async/j;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/i;->a(Lcom/koushikdutta/async/j;)V

    .line 364
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$g;->exception:Ljava/lang/Exception;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/koushikdutta/async/http/b$g;->socket:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 370
    :cond_1
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$g;->response:Lcom/koushikdutta/async/http/b$h;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/b$h;->protocol()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/koushikdutta/async/http/b$g;->response:Lcom/koushikdutta/async/http/b$h;

    invoke-interface {v2}, Lcom/koushikdutta/async/http/b$h;->headers()Lcom/koushikdutta/async/http/n;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/koushikdutta/async/http/q;->isKeepAlive(Ljava/lang/String;Lcom/koushikdutta/async/http/n;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    iget-object v2, p1, Lcom/koushikdutta/async/http/b$g;->request:Lcom/koushikdutta/async/http/d;

    .line 371
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/koushikdutta/async/http/q;->isKeepAlive(Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/n;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 377
    :cond_2
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$g;->request:Lcom/koushikdutta/async/http/d;

    const-string v1, "Recycling keep-alive socket"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/d;->logd(Ljava/lang/String;)V

    .line 378
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$g;->socket:Lcom/koushikdutta/async/j;

    iget-object v1, p1, Lcom/koushikdutta/async/http/b$g;->request:Lcom/koushikdutta/async/http/d;

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/i;->a(Lcom/koushikdutta/async/j;Lcom/koushikdutta/async/http/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :goto_0
    iget-object p1, p1, Lcom/koushikdutta/async/http/b$g;->request:Lcom/koushikdutta/async/http/d;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/i;->a(Lcom/koushikdutta/async/http/d;)V

    return-void

    .line 372
    :cond_3
    :goto_1
    :try_start_1
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$g;->request:Lcom/koushikdutta/async/http/d;

    const-string v2, "closing out socket (not keep alive)"

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/d;->logv(Ljava/lang/String;)V

    .line 373
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$g;->socket:Lcom/koushikdutta/async/j;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/j;->setClosedCallback(Lcom/koushikdutta/async/a/a;)V

    .line 374
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$g;->socket:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->close()V

    goto :goto_0

    .line 365
    :cond_4
    :goto_2
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$g;->request:Lcom/koushikdutta/async/http/d;

    const-string v2, "closing out socket (exception)"

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/d;->logv(Ljava/lang/String;)V

    .line 366
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$g;->socket:Lcom/koushikdutta/async/j;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/j;->setClosedCallback(Lcom/koushikdutta/async/a/a;)V

    .line 367
    iget-object v0, p1, Lcom/koushikdutta/async/http/b$g;->socket:Lcom/koushikdutta/async/j;

    invoke-interface {v0}, Lcom/koushikdutta/async/j;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 381
    iget-object p1, p1, Lcom/koushikdutta/async/http/b$g;->request:Lcom/koushikdutta/async/http/d;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/i;->a(Lcom/koushikdutta/async/http/d;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public setConnectAllAddresses(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/i;->i:Z

    return-void
.end method

.method public setIdleTimeoutMs(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/koushikdutta/async/http/i;->g:I

    return-void
.end method

.method public setMaxConnectionCount(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/koushikdutta/async/http/i;->n:I

    return-void
.end method

.method protected wrapCallback(Lcom/koushikdutta/async/http/b$a;Landroid/net/Uri;IZLcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/a/b;
    .locals 0

    return-object p5
.end method
