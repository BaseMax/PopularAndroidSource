.class public final Lc/c/a/e/d/h/e/a/c;
.super Ljava/lang/Object;
.source "VideoDownloadedRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/d/h/e/a/a/k;

.field public final b:Lc/c/a/e/d/h/e/a/a/n;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/h/e/a/a/k;Lc/c/a/e/d/h/e/a/a/n;)V
    .locals 1

    const-string v0, "videoDownloadLocalDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoStorage"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/h/e/a/c;->a:Lc/c/a/e/d/h/e/a/a/k;

    iput-object p2, p0, Lc/c/a/e/d/h/e/a/c;->b:Lc/c/a/e/d/h/e/a/a/n;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lc/c/a/e/d/h/e/a/c;->a:Lc/c/a/e/d/h/e/a/a/k;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/h/e/a/a/k;->a(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lc/c/a/e/d/h/e/a/c;->a:Lc/c/a/e/d/h/e/a/a/k;

    invoke-virtual {v0, p1, p2}, Lc/c/a/e/d/h/e/a/a/k;->a(Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lh/c/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "+",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;",
            ">;>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$getAll$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$getAll$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$getAll$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$getAll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$getAll$1;

    invoke-direct {v0, p0, p1}, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$getAll$1;-><init>(Lc/c/a/e/d/h/e/a/c;Lh/c/b;)V

    :goto_0
    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$getAll$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$getAll$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$getAll$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/e/d/h/e/a/c;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lc/c/a/e/d/h/e/a/c;->a:Lc/c/a/e/d/h/e/a/a/k;

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$getAll$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$getAll$1;->label:I

    invoke-virtual {p1, v0}, Lc/c/a/e/d/h/e/a/a/k;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 3
    :cond_3
    :goto_1
    new-instance v0, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-direct {v0, p1}, Lcom/farsitel/bazaar/data/entity/Either$Success;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeVideoFromDevice$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeVideoFromDevice$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeVideoFromDevice$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeVideoFromDevice$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeVideoFromDevice$1;

    invoke-direct {v0, p0, p2}, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeVideoFromDevice$1;-><init>(Lc/c/a/e/d/h/e/a/c;Lh/c/b;)V

    :goto_0
    iget-object p2, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeVideoFromDevice$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 4
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeVideoFromDevice$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeVideoFromDevice$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeVideoFromDevice$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/e/d/h/e/a/c;

    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    .line 7
    iget-object p2, p0, Lc/c/a/e/d/h/e/a/c;->a:Lc/c/a/e/d/h/e/a/a/k;

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeVideoFromDevice$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeVideoFromDevice$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeVideoFromDevice$1;->label:I

    invoke-virtual {p2, p1, v0}, Lc/c/a/e/d/h/e/a/a/k;->a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 8
    :goto_1
    iget-object p2, v0, Lc/c/a/e/d/h/e/a/c;->b:Lc/c/a/e/d/h/e/a/a/n;

    invoke-virtual {p2, p1}, Lc/c/a/e/d/h/e/a/a/n;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lh/e/h;->b(Ljava/io/File;)Z

    .line 9
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final b(Lh/c/b;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeAllExpireDownloadedVideo$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeAllExpireDownloadedVideo$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeAllExpireDownloadedVideo$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeAllExpireDownloadedVideo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeAllExpireDownloadedVideo$1;

    invoke-direct {v0, p0, p1}, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeAllExpireDownloadedVideo$1;-><init>(Lc/c/a/e/d/h/e/a/c;Lh/c/b;)V

    :goto_0
    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeAllExpireDownloadedVideo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeAllExpireDownloadedVideo$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeAllExpireDownloadedVideo$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeAllExpireDownloadedVideo$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeAllExpireDownloadedVideo$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeAllExpireDownloadedVideo$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lc/c/a/e/d/h/e/a/c;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeAllExpireDownloadedVideo$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lc/c/a/e/d/h/e/a/c;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lc/c/a/e/d/h/e/a/c;->a:Lc/c/a/e/d/h/e/a/a/k;

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeAllExpireDownloadedVideo$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeAllExpireDownloadedVideo$1;->label:I

    invoke-virtual {p1, v0}, Lc/c/a/e/d/h/e/a/a/k;->b(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 5
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v2

    move-object v2, v4

    move-object v4, p1

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7
    iput-object v5, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeAllExpireDownloadedVideo$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeAllExpireDownloadedVideo$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeAllExpireDownloadedVideo$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeAllExpireDownloadedVideo$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadedRepository$removeAllExpireDownloadedVideo$1;->label:I

    invoke-virtual {v5, p1, v0}, Lc/c/a/e/d/h/e/a/c;->a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 8
    :cond_6
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method
