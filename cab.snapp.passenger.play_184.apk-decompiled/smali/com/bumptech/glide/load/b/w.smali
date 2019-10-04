.class final Lcom/bumptech/glide/load/b/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/a/d$a;
.implements Lcom/bumptech/glide/load/b/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/a/d$a<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/bumptech/glide/load/b/f;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/b/f$a;

.field private final b:Lcom/bumptech/glide/load/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/g<",
            "*>;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Lcom/bumptech/glide/load/d;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c/n<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field private g:I

.field private volatile h:Lcom/bumptech/glide/load/c/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/n$a<",
            "*>;"
        }
    .end annotation
.end field

.field private i:Ljava/io/File;

.field private j:Lcom/bumptech/glide/load/b/x;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/g;Lcom/bumptech/glide/load/b/f$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/g<",
            "*>;",
            "Lcom/bumptech/glide/load/b/f$a;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/bumptech/glide/load/b/w;->d:I

    .line 36
    iput-object p1, p0, Lcom/bumptech/glide/load/b/w;->b:Lcom/bumptech/glide/load/b/g;

    .line 37
    iput-object p2, p0, Lcom/bumptech/glide/load/b/w;->a:Lcom/bumptech/glide/load/b/f$a;

    return-void
.end method

.method private a()Z
    .locals 2

    .line 107
    iget v0, p0, Lcom/bumptech/glide/load/b/w;->g:I

    iget-object v1, p0, Lcom/bumptech/glide/load/b/w;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/bumptech/glide/load/b/w;->h:Lcom/bumptech/glide/load/c/n$a;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, v0, Lcom/bumptech/glide/load/c/n$a;->fetcher:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/d;->cancel()V

    :cond_0
    return-void
.end method

.method public final onDataReady(Ljava/lang/Object;)V
    .locals 6

    .line 120
    iget-object v0, p0, Lcom/bumptech/glide/load/b/w;->a:Lcom/bumptech/glide/load/b/f$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/w;->e:Lcom/bumptech/glide/load/d;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/w;->h:Lcom/bumptech/glide/load/c/n$a;

    iget-object v3, v2, Lcom/bumptech/glide/load/c/n$a;->fetcher:Lcom/bumptech/glide/load/a/d;

    sget-object v4, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    iget-object v5, p0, Lcom/bumptech/glide/load/b/w;->j:Lcom/bumptech/glide/load/b/x;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/b/f$a;->onDataFetcherReady(Lcom/bumptech/glide/load/d;Ljava/lang/Object;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/d;)V

    return-void
.end method

.method public final onLoadFailed(Ljava/lang/Exception;)V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/bumptech/glide/load/b/w;->a:Lcom/bumptech/glide/load/b/f$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/w;->j:Lcom/bumptech/glide/load/b/x;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/w;->h:Lcom/bumptech/glide/load/c/n$a;

    iget-object v2, v2, Lcom/bumptech/glide/load/c/n$a;->fetcher:Lcom/bumptech/glide/load/a/d;

    sget-object v3, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/bumptech/glide/load/b/f$a;->onDataFetcherFailed(Lcom/bumptech/glide/load/d;Ljava/lang/Exception;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method public final startNext()Z
    .locals 14

    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/load/b/w;->b:Lcom/bumptech/glide/load/b/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/g;->d()Ljava/util/List;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/b/w;->b:Lcom/bumptech/glide/load/b/g;

    .line 1136
    iget-object v3, v1, Lcom/bumptech/glide/load/b/g;->a:Lcom/bumptech/glide/e;

    invoke-virtual {v3}, Lcom/bumptech/glide/e;->getRegistry()Lcom/bumptech/glide/f;

    move-result-object v3

    iget-object v4, v1, Lcom/bumptech/glide/load/b/g;->b:Ljava/lang/Object;

    .line 1137
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, v1, Lcom/bumptech/glide/load/b/g;->e:Ljava/lang/Class;

    iget-object v1, v1, Lcom/bumptech/glide/load/b/g;->i:Ljava/lang/Class;

    invoke-virtual {v3, v4, v5, v1}, Lcom/bumptech/glide/f;->getRegisteredResourceClasses(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 49
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 50
    const-class v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/w;->b:Lcom/bumptech/glide/load/b/g;

    .line 2128
    iget-object v1, v1, Lcom/bumptech/glide/load/b/g;->i:Ljava/lang/Class;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to find any load path from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bumptech/glide/load/b/w;->b:Lcom/bumptech/glide/load/b/g;

    .line 2132
    iget-object v2, v2, Lcom/bumptech/glide/load/b/g;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/w;->b:Lcom/bumptech/glide/load/b/g;

    .line 3128
    iget-object v2, v2, Lcom/bumptech/glide/load/b/g;->i:Ljava/lang/Class;

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/bumptech/glide/load/b/w;->f:Ljava/util/List;

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/bumptech/glide/load/b/w;->a()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/bumptech/glide/load/b/w;->h:Lcom/bumptech/glide/load/c/n$a;

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    .line 93
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/w;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 94
    iget-object v0, p0, Lcom/bumptech/glide/load/b/w;->f:Ljava/util/List;

    iget v1, p0, Lcom/bumptech/glide/load/b/w;->g:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/bumptech/glide/load/b/w;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/c/n;

    .line 95
    iget-object v1, p0, Lcom/bumptech/glide/load/b/w;->i:Ljava/io/File;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/w;->b:Lcom/bumptech/glide/load/b/g;

    .line 6116
    iget v3, v3, Lcom/bumptech/glide/load/b/g;->c:I

    .line 96
    iget-object v5, p0, Lcom/bumptech/glide/load/b/w;->b:Lcom/bumptech/glide/load/b/g;

    .line 6120
    iget v5, v5, Lcom/bumptech/glide/load/b/g;->d:I

    .line 96
    iget-object v6, p0, Lcom/bumptech/glide/load/b/w;->b:Lcom/bumptech/glide/load/b/g;

    .line 7108
    iget-object v6, v6, Lcom/bumptech/glide/load/b/g;->g:Lcom/bumptech/glide/load/g;

    .line 95
    invoke-interface {v0, v1, v3, v5, v6}, Lcom/bumptech/glide/load/c/n;->buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/c/n$a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/w;->h:Lcom/bumptech/glide/load/c/n$a;

    .line 97
    iget-object v0, p0, Lcom/bumptech/glide/load/b/w;->h:Lcom/bumptech/glide/load/c/n$a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bumptech/glide/load/b/w;->b:Lcom/bumptech/glide/load/b/g;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/w;->h:Lcom/bumptech/glide/load/c/n$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/c/n$a;->fetcher:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/a/d;->getDataClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/b/g;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    iget-object v0, p0, Lcom/bumptech/glide/load/b/w;->h:Lcom/bumptech/glide/load/c/n$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/c/n$a;->fetcher:Lcom/bumptech/glide/load/a/d;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/w;->b:Lcom/bumptech/glide/load/b/g;

    .line 8104
    iget-object v1, v1, Lcom/bumptech/glide/load/b/g;->k:Lcom/bumptech/glide/Priority;

    .line 99
    invoke-interface {v0, v1, p0}, Lcom/bumptech/glide/load/a/d;->loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/a/d$a;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    return v2

    .line 58
    :cond_6
    :goto_2
    iget v3, p0, Lcom/bumptech/glide/load/b/w;->d:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/bumptech/glide/load/b/w;->d:I

    .line 59
    iget v3, p0, Lcom/bumptech/glide/load/b/w;->d:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_8

    .line 60
    iget v3, p0, Lcom/bumptech/glide/load/b/w;->c:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/bumptech/glide/load/b/w;->c:I

    .line 61
    iget v3, p0, Lcom/bumptech/glide/load/b/w;->c:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_7

    return v2

    .line 64
    :cond_7
    iput v2, p0, Lcom/bumptech/glide/load/b/w;->d:I

    .line 67
    :cond_8
    iget v3, p0, Lcom/bumptech/glide/load/b/w;->c:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/d;

    .line 68
    iget v4, p0, Lcom/bumptech/glide/load/b/w;->d:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/Class;

    .line 69
    iget-object v4, p0, Lcom/bumptech/glide/load/b/w;->b:Lcom/bumptech/glide/load/b/g;

    invoke-virtual {v4, v11}, Lcom/bumptech/glide/load/b/g;->c(Ljava/lang/Class;)Lcom/bumptech/glide/load/j;

    move-result-object v10

    .line 73
    new-instance v13, Lcom/bumptech/glide/load/b/x;

    iget-object v4, p0, Lcom/bumptech/glide/load/b/w;->b:Lcom/bumptech/glide/load/b/g;

    .line 4124
    iget-object v4, v4, Lcom/bumptech/glide/load/b/g;->a:Lcom/bumptech/glide/e;

    invoke-virtual {v4}, Lcom/bumptech/glide/e;->getArrayPool()Lcom/bumptech/glide/load/b/a/b;

    move-result-object v5

    .line 75
    iget-object v4, p0, Lcom/bumptech/glide/load/b/w;->b:Lcom/bumptech/glide/load/b/g;

    .line 5112
    iget-object v7, v4, Lcom/bumptech/glide/load/b/g;->j:Lcom/bumptech/glide/load/d;

    .line 77
    iget-object v4, p0, Lcom/bumptech/glide/load/b/w;->b:Lcom/bumptech/glide/load/b/g;

    .line 5116
    iget v8, v4, Lcom/bumptech/glide/load/b/g;->c:I

    .line 78
    iget-object v4, p0, Lcom/bumptech/glide/load/b/w;->b:Lcom/bumptech/glide/load/b/g;

    .line 5120
    iget v9, v4, Lcom/bumptech/glide/load/b/g;->d:I

    .line 79
    iget-object v4, p0, Lcom/bumptech/glide/load/b/w;->b:Lcom/bumptech/glide/load/b/g;

    .line 6108
    iget-object v12, v4, Lcom/bumptech/glide/load/b/g;->g:Lcom/bumptech/glide/load/g;

    move-object v4, v13

    move-object v6, v3

    .line 82
    invoke-direct/range {v4 .. v12}, Lcom/bumptech/glide/load/b/x;-><init>(Lcom/bumptech/glide/load/b/a/b;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;IILcom/bumptech/glide/load/j;Ljava/lang/Class;Lcom/bumptech/glide/load/g;)V

    iput-object v13, p0, Lcom/bumptech/glide/load/b/w;->j:Lcom/bumptech/glide/load/b/x;

    .line 83
    iget-object v4, p0, Lcom/bumptech/glide/load/b/w;->b:Lcom/bumptech/glide/load/b/g;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/b/g;->b()Lcom/bumptech/glide/load/b/b/a;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/load/b/w;->j:Lcom/bumptech/glide/load/b/x;

    invoke-interface {v4, v5}, Lcom/bumptech/glide/load/b/b/a;->get(Lcom/bumptech/glide/load/d;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/bumptech/glide/load/b/w;->i:Ljava/io/File;

    .line 84
    iget-object v4, p0, Lcom/bumptech/glide/load/b/w;->i:Ljava/io/File;

    if-eqz v4, :cond_2

    .line 85
    iput-object v3, p0, Lcom/bumptech/glide/load/b/w;->e:Lcom/bumptech/glide/load/d;

    .line 86
    iget-object v3, p0, Lcom/bumptech/glide/load/b/w;->b:Lcom/bumptech/glide/load/b/g;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/b/g;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/bumptech/glide/load/b/w;->f:Ljava/util/List;

    .line 87
    iput v2, p0, Lcom/bumptech/glide/load/b/w;->g:I

    goto/16 :goto_0
.end method
