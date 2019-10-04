.class final Lcom/bumptech/glide/load/b/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/a/d$a;
.implements Lcom/bumptech/glide/load/b/f;
.implements Lcom/bumptech/glide/load/b/f$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/a/d$a<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/bumptech/glide/load/b/f;",
        "Lcom/bumptech/glide/load/b/f$a;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/g<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/b/f$a;

.field private c:I

.field private d:Lcom/bumptech/glide/load/b/c;

.field private e:Ljava/lang/Object;

.field private volatile f:Lcom/bumptech/glide/load/c/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/n$a<",
            "*>;"
        }
    .end annotation
.end field

.field private g:Lcom/bumptech/glide/load/b/d;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/g;Lcom/bumptech/glide/load/b/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/g<",
            "*>;",
            "Lcom/bumptech/glide/load/b/f$a;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/bumptech/glide/load/b/z;->a:Lcom/bumptech/glide/load/b/g;

    .line 38
    iput-object p2, p0, Lcom/bumptech/glide/load/b/z;->b:Lcom/bumptech/glide/load/b/f$a;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/bumptech/glide/load/b/z;->f:Lcom/bumptech/glide/load/c/n$a;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, v0, Lcom/bumptech/glide/load/c/n$a;->fetcher:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/d;->cancel()V

    :cond_0
    return-void
.end method

.method public final onDataFetcherFailed(Lcom/bumptech/glide/load/d;Ljava/lang/Exception;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/DataSource;)V
    .locals 1
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

    .line 141
    iget-object p4, p0, Lcom/bumptech/glide/load/b/z;->b:Lcom/bumptech/glide/load/b/f$a;

    iget-object v0, p0, Lcom/bumptech/glide/load/b/z;->f:Lcom/bumptech/glide/load/c/n$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/c/n$a;->fetcher:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/d;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    move-result-object v0

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/bumptech/glide/load/b/f$a;->onDataFetcherFailed(Lcom/bumptech/glide/load/d;Ljava/lang/Exception;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method public final onDataFetcherReady(Lcom/bumptech/glide/load/d;Ljava/lang/Object;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/d;)V
    .locals 6
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

    .line 135
    iget-object v0, p0, Lcom/bumptech/glide/load/b/z;->b:Lcom/bumptech/glide/load/b/f$a;

    iget-object p4, p0, Lcom/bumptech/glide/load/b/z;->f:Lcom/bumptech/glide/load/c/n$a;

    iget-object p4, p4, Lcom/bumptech/glide/load/c/n$a;->fetcher:Lcom/bumptech/glide/load/a/d;

    invoke-interface {p4}, Lcom/bumptech/glide/load/a/d;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/b/f$a;->onDataFetcherReady(Lcom/bumptech/glide/load/d;Ljava/lang/Object;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/d;)V

    return-void
.end method

.method public final onDataReady(Ljava/lang/Object;)V
    .locals 6

    .line 105
    iget-object v0, p0, Lcom/bumptech/glide/load/b/z;->a:Lcom/bumptech/glide/load/b/g;

    .line 4100
    iget-object v0, v0, Lcom/bumptech/glide/load/b/g;->l:Lcom/bumptech/glide/load/b/j;

    if-eqz p1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/bumptech/glide/load/b/z;->f:Lcom/bumptech/glide/load/c/n$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/c/n$a;->fetcher:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/a/d;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/b/j;->isDataCacheable(Lcom/bumptech/glide/load/DataSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iput-object p1, p0, Lcom/bumptech/glide/load/b/z;->e:Ljava/lang/Object;

    .line 110
    iget-object p1, p0, Lcom/bumptech/glide/load/b/z;->b:Lcom/bumptech/glide/load/b/f$a;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/f$a;->reschedule()V

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/z;->b:Lcom/bumptech/glide/load/b/f$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/z;->f:Lcom/bumptech/glide/load/c/n$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/c/n$a;->sourceKey:Lcom/bumptech/glide/load/d;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/z;->f:Lcom/bumptech/glide/load/c/n$a;

    iget-object v3, v2, Lcom/bumptech/glide/load/c/n$a;->fetcher:Lcom/bumptech/glide/load/a/d;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/z;->f:Lcom/bumptech/glide/load/c/n$a;

    iget-object v2, v2, Lcom/bumptech/glide/load/c/n$a;->fetcher:Lcom/bumptech/glide/load/a/d;

    .line 113
    invoke-interface {v2}, Lcom/bumptech/glide/load/a/d;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/load/b/z;->g:Lcom/bumptech/glide/load/b/d;

    move-object v2, p1

    .line 112
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/b/f$a;->onDataFetcherReady(Lcom/bumptech/glide/load/d;Ljava/lang/Object;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/d;)V

    return-void
.end method

.method public final onLoadFailed(Ljava/lang/Exception;)V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/load/b/z;->b:Lcom/bumptech/glide/load/b/f$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/z;->g:Lcom/bumptech/glide/load/b/d;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/z;->f:Lcom/bumptech/glide/load/c/n$a;

    iget-object v2, v2, Lcom/bumptech/glide/load/c/n$a;->fetcher:Lcom/bumptech/glide/load/a/d;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/z;->f:Lcom/bumptech/glide/load/c/n$a;

    iget-object v3, v3, Lcom/bumptech/glide/load/c/n$a;->fetcher:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v3}, Lcom/bumptech/glide/load/a/d;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/bumptech/glide/load/b/f$a;->onDataFetcherFailed(Lcom/bumptech/glide/load/d;Ljava/lang/Exception;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method public final reschedule()V
    .locals 1

    .line 126
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final startNext()Z
    .locals 9

    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/load/b/z;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 45
    iput-object v1, p0, Lcom/bumptech/glide/load/b/z;->e:Ljava/lang/Object;

    .line 1073
    invoke-static {}, Lcom/bumptech/glide/g/f;->getLogTime()J

    move-result-wide v2

    .line 1075
    :try_start_0
    iget-object v4, p0, Lcom/bumptech/glide/load/b/z;->a:Lcom/bumptech/glide/load/b/g;

    .line 1241
    iget-object v4, v4, Lcom/bumptech/glide/load/b/g;->a:Lcom/bumptech/glide/e;

    invoke-virtual {v4}, Lcom/bumptech/glide/e;->getRegistry()Lcom/bumptech/glide/f;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/bumptech/glide/f;->getSourceEncoder(Ljava/lang/Object;)Lcom/bumptech/glide/load/a;

    move-result-object v4

    .line 1076
    new-instance v5, Lcom/bumptech/glide/load/b/e;

    iget-object v6, p0, Lcom/bumptech/glide/load/b/z;->a:Lcom/bumptech/glide/load/b/g;

    .line 2108
    iget-object v6, v6, Lcom/bumptech/glide/load/b/g;->g:Lcom/bumptech/glide/load/g;

    .line 1077
    invoke-direct {v5, v4, v0, v6}, Lcom/bumptech/glide/load/b/e;-><init>(Lcom/bumptech/glide/load/a;Ljava/lang/Object;Lcom/bumptech/glide/load/g;)V

    .line 1078
    new-instance v6, Lcom/bumptech/glide/load/b/d;

    iget-object v7, p0, Lcom/bumptech/glide/load/b/z;->f:Lcom/bumptech/glide/load/c/n$a;

    iget-object v7, v7, Lcom/bumptech/glide/load/c/n$a;->sourceKey:Lcom/bumptech/glide/load/d;

    iget-object v8, p0, Lcom/bumptech/glide/load/b/z;->a:Lcom/bumptech/glide/load/b/g;

    .line 2112
    iget-object v8, v8, Lcom/bumptech/glide/load/b/g;->j:Lcom/bumptech/glide/load/d;

    .line 1078
    invoke-direct {v6, v7, v8}, Lcom/bumptech/glide/load/b/d;-><init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;)V

    iput-object v6, p0, Lcom/bumptech/glide/load/b/z;->g:Lcom/bumptech/glide/load/b/d;

    .line 1079
    iget-object v6, p0, Lcom/bumptech/glide/load/b/z;->a:Lcom/bumptech/glide/load/b/g;

    invoke-virtual {v6}, Lcom/bumptech/glide/load/b/g;->b()Lcom/bumptech/glide/load/b/b/a;

    move-result-object v6

    iget-object v7, p0, Lcom/bumptech/glide/load/b/z;->g:Lcom/bumptech/glide/load/b/d;

    invoke-interface {v6, v7, v5}, Lcom/bumptech/glide/load/b/b/a;->put(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/b/b/a$b;)V

    const-string v5, "SourceGenerator"

    const/4 v6, 0x2

    .line 1080
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1081
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Finished encoding source to cache, key: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/bumptech/glide/load/b/z;->g:Lcom/bumptech/glide/load/b/d;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", encoder: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", duration: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    invoke-static {v2, v3}, Lcom/bumptech/glide/g/f;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/z;->f:Lcom/bumptech/glide/load/c/n$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/c/n$a;->fetcher:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/d;->cleanup()V

    .line 1091
    new-instance v0, Lcom/bumptech/glide/load/b/c;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/z;->f:Lcom/bumptech/glide/load/c/n$a;

    iget-object v2, v2, Lcom/bumptech/glide/load/c/n$a;->sourceKey:Lcom/bumptech/glide/load/d;

    .line 1092
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/b/z;->a:Lcom/bumptech/glide/load/b/g;

    invoke-direct {v0, v2, v3, p0}, Lcom/bumptech/glide/load/b/c;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/b/g;Lcom/bumptech/glide/load/b/f$a;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/z;->d:Lcom/bumptech/glide/load/b/c;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1088
    iget-object v1, p0, Lcom/bumptech/glide/load/b/z;->f:Lcom/bumptech/glide/load/c/n$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/c/n$a;->fetcher:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/a/d;->cleanup()V

    throw v0

    .line 49
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/z;->d:Lcom/bumptech/glide/load/b/c;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/c;->startNext()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 52
    :cond_2
    iput-object v1, p0, Lcom/bumptech/glide/load/b/z;->d:Lcom/bumptech/glide/load/b/c;

    .line 54
    iput-object v1, p0, Lcom/bumptech/glide/load/b/z;->f:Lcom/bumptech/glide/load/c/n$a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_3
    :goto_1
    if-nez v1, :cond_6

    .line 3069
    iget v3, p0, Lcom/bumptech/glide/load/b/z;->c:I

    iget-object v4, p0, Lcom/bumptech/glide/load/b/z;->a:Lcom/bumptech/glide/load/b/g;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/b/g;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    .line 57
    iget-object v3, p0, Lcom/bumptech/glide/load/b/z;->a:Lcom/bumptech/glide/load/b/g;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/b/g;->c()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/bumptech/glide/load/b/z;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/bumptech/glide/load/b/z;->c:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/c/n$a;

    iput-object v3, p0, Lcom/bumptech/glide/load/b/z;->f:Lcom/bumptech/glide/load/c/n$a;

    .line 58
    iget-object v3, p0, Lcom/bumptech/glide/load/b/z;->f:Lcom/bumptech/glide/load/c/n$a;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/bumptech/glide/load/b/z;->a:Lcom/bumptech/glide/load/b/g;

    .line 3100
    iget-object v3, v3, Lcom/bumptech/glide/load/b/g;->l:Lcom/bumptech/glide/load/b/j;

    .line 59
    iget-object v4, p0, Lcom/bumptech/glide/load/b/z;->f:Lcom/bumptech/glide/load/c/n$a;

    iget-object v4, v4, Lcom/bumptech/glide/load/c/n$a;->fetcher:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v4}, Lcom/bumptech/glide/load/a/d;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/b/j;->isDataCacheable(Lcom/bumptech/glide/load/DataSource;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/bumptech/glide/load/b/z;->a:Lcom/bumptech/glide/load/b/g;

    iget-object v4, p0, Lcom/bumptech/glide/load/b/z;->f:Lcom/bumptech/glide/load/c/n$a;

    iget-object v4, v4, Lcom/bumptech/glide/load/c/n$a;->fetcher:Lcom/bumptech/glide/load/a/d;

    .line 60
    invoke-interface {v4}, Lcom/bumptech/glide/load/a/d;->getDataClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/b/g;->a(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 62
    :cond_5
    iget-object v1, p0, Lcom/bumptech/glide/load/b/z;->f:Lcom/bumptech/glide/load/c/n$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/c/n$a;->fetcher:Lcom/bumptech/glide/load/a/d;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/z;->a:Lcom/bumptech/glide/load/b/g;

    .line 3104
    iget-object v3, v3, Lcom/bumptech/glide/load/b/g;->k:Lcom/bumptech/glide/Priority;

    .line 62
    invoke-interface {v1, v3, p0}, Lcom/bumptech/glide/load/a/d;->loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/a/d$a;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    return v1
.end method
