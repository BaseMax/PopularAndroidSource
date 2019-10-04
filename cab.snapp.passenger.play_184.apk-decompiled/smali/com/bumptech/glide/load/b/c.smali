.class final Lcom/bumptech/glide/load/b/c;
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
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/g<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/load/b/f$a;

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

    .line 34
    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/g;->d()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/bumptech/glide/load/b/c;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/b/g;Lcom/bumptech/glide/load/b/f$a;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lcom/bumptech/glide/load/b/g;Lcom/bumptech/glide/load/b/f$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/d;",
            ">;",
            "Lcom/bumptech/glide/load/b/g<",
            "*>;",
            "Lcom/bumptech/glide/load/b/f$a;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/bumptech/glide/load/b/c;->d:I

    .line 40
    iput-object p1, p0, Lcom/bumptech/glide/load/b/c;->a:Ljava/util/List;

    .line 41
    iput-object p2, p0, Lcom/bumptech/glide/load/b/c;->b:Lcom/bumptech/glide/load/b/g;

    .line 42
    iput-object p3, p0, Lcom/bumptech/glide/load/b/c;->c:Lcom/bumptech/glide/load/b/f$a;

    return-void
.end method

.method private a()Z
    .locals 2

    .line 82
    iget v0, p0, Lcom/bumptech/glide/load/b/c;->g:I

    iget-object v1, p0, Lcom/bumptech/glide/load/b/c;->f:Ljava/util/List;

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

    .line 87
    iget-object v0, p0, Lcom/bumptech/glide/load/b/c;->h:Lcom/bumptech/glide/load/c/n$a;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, v0, Lcom/bumptech/glide/load/c/n$a;->fetcher:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/d;->cancel()V

    :cond_0
    return-void
.end method

.method public final onDataReady(Ljava/lang/Object;)V
    .locals 6

    .line 95
    iget-object v0, p0, Lcom/bumptech/glide/load/b/c;->c:Lcom/bumptech/glide/load/b/f$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/c;->e:Lcom/bumptech/glide/load/d;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/c;->h:Lcom/bumptech/glide/load/c/n$a;

    iget-object v3, v2, Lcom/bumptech/glide/load/c/n$a;->fetcher:Lcom/bumptech/glide/load/a/d;

    sget-object v4, Lcom/bumptech/glide/load/DataSource;->DATA_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    iget-object v5, p0, Lcom/bumptech/glide/load/b/c;->e:Lcom/bumptech/glide/load/d;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/b/f$a;->onDataFetcherReady(Lcom/bumptech/glide/load/d;Ljava/lang/Object;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/d;)V

    return-void
.end method

.method public final onLoadFailed(Ljava/lang/Exception;)V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/bumptech/glide/load/b/c;->c:Lcom/bumptech/glide/load/b/f$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/c;->e:Lcom/bumptech/glide/load/d;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/c;->h:Lcom/bumptech/glide/load/c/n$a;

    iget-object v2, v2, Lcom/bumptech/glide/load/c/n$a;->fetcher:Lcom/bumptech/glide/load/a/d;

    sget-object v3, Lcom/bumptech/glide/load/DataSource;->DATA_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/bumptech/glide/load/b/f$a;->onDataFetcherFailed(Lcom/bumptech/glide/load/d;Ljava/lang/Exception;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method public final startNext()Z
    .locals 7

    .line 47
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/c;->f:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/bumptech/glide/load/b/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/bumptech/glide/load/b/c;->h:Lcom/bumptech/glide/load/c/n$a;

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 68
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/c;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    iget-object v0, p0, Lcom/bumptech/glide/load/b/c;->f:Ljava/util/List;

    iget v3, p0, Lcom/bumptech/glide/load/b/c;->g:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/bumptech/glide/load/b/c;->g:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/c/n;

    .line 70
    iget-object v3, p0, Lcom/bumptech/glide/load/b/c;->i:Ljava/io/File;

    iget-object v4, p0, Lcom/bumptech/glide/load/b/c;->b:Lcom/bumptech/glide/load/b/g;

    .line 1116
    iget v4, v4, Lcom/bumptech/glide/load/b/g;->c:I

    .line 71
    iget-object v5, p0, Lcom/bumptech/glide/load/b/c;->b:Lcom/bumptech/glide/load/b/g;

    .line 1120
    iget v5, v5, Lcom/bumptech/glide/load/b/g;->d:I

    .line 71
    iget-object v6, p0, Lcom/bumptech/glide/load/b/c;->b:Lcom/bumptech/glide/load/b/g;

    .line 2108
    iget-object v6, v6, Lcom/bumptech/glide/load/b/g;->g:Lcom/bumptech/glide/load/g;

    .line 71
    invoke-interface {v0, v3, v4, v5, v6}, Lcom/bumptech/glide/load/c/n;->buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/c/n$a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/c;->h:Lcom/bumptech/glide/load/c/n$a;

    .line 73
    iget-object v0, p0, Lcom/bumptech/glide/load/b/c;->h:Lcom/bumptech/glide/load/c/n$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/c;->b:Lcom/bumptech/glide/load/b/g;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/c;->h:Lcom/bumptech/glide/load/c/n$a;

    iget-object v3, v3, Lcom/bumptech/glide/load/c/n$a;->fetcher:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v3}, Lcom/bumptech/glide/load/a/d;->getDataClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/load/b/g;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/bumptech/glide/load/b/c;->h:Lcom/bumptech/glide/load/c/n$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/c/n$a;->fetcher:Lcom/bumptech/glide/load/a/d;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/c;->b:Lcom/bumptech/glide/load/b/g;

    .line 3104
    iget-object v1, v1, Lcom/bumptech/glide/load/b/g;->k:Lcom/bumptech/glide/Priority;

    .line 75
    invoke-interface {v0, v1, p0}, Lcom/bumptech/glide/load/a/d;->loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/a/d$a;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    return v1

    .line 48
    :cond_4
    :goto_2
    iget v0, p0, Lcom/bumptech/glide/load/b/c;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/b/c;->d:I

    .line 49
    iget v0, p0, Lcom/bumptech/glide/load/b/c;->d:I

    iget-object v2, p0, Lcom/bumptech/glide/load/b/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_5

    return v1

    .line 53
    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/load/b/c;->a:Ljava/util/List;

    iget v2, p0, Lcom/bumptech/glide/load/b/c;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/d;

    .line 57
    new-instance v2, Lcom/bumptech/glide/load/b/d;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/c;->b:Lcom/bumptech/glide/load/b/g;

    .line 1112
    iget-object v3, v3, Lcom/bumptech/glide/load/b/g;->j:Lcom/bumptech/glide/load/d;

    .line 57
    invoke-direct {v2, v0, v3}, Lcom/bumptech/glide/load/b/d;-><init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;)V

    .line 58
    iget-object v3, p0, Lcom/bumptech/glide/load/b/c;->b:Lcom/bumptech/glide/load/b/g;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/b/g;->b()Lcom/bumptech/glide/load/b/b/a;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/bumptech/glide/load/b/b/a;->get(Lcom/bumptech/glide/load/d;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/bumptech/glide/load/b/c;->i:Ljava/io/File;

    .line 59
    iget-object v2, p0, Lcom/bumptech/glide/load/b/c;->i:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 60
    iput-object v0, p0, Lcom/bumptech/glide/load/b/c;->e:Lcom/bumptech/glide/load/d;

    .line 61
    iget-object v0, p0, Lcom/bumptech/glide/load/b/c;->b:Lcom/bumptech/glide/load/b/g;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/b/g;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/c;->f:Ljava/util/List;

    .line 62
    iput v1, p0, Lcom/bumptech/glide/load/b/c;->g:I

    goto/16 :goto_0
.end method
