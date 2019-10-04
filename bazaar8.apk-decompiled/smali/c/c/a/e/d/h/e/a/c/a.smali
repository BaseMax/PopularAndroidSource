.class public final Lc/c/a/e/d/h/e/a/c/a;
.super Ljava/lang/Object;
.source "SubmitVideoDownloadRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/d/h/e/a/c/a/b;

.field public final b:Lc/c/a/e/d/h/e/a/a/k;

.field public final c:Lc/c/a/e/d/h/e/a/a/n;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/h/e/a/c/a/b;Lc/c/a/e/d/h/e/a/a/k;Lc/c/a/e/d/h/e/a/a/n;)V
    .locals 1

    const-string v0, "submitVideoDownloadRemoteDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoDownloadLocalDataSource"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoStorage"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/h/e/a/c/a;->a:Lc/c/a/e/d/h/e/a/c/a/b;

    iput-object p2, p0, Lc/c/a/e/d/h/e/a/c/a;->b:Lc/c/a/e/d/h/e/a/a/k;

    iput-object p3, p0, Lc/c/a/e/d/h/e/a/c/a;->c:Lc/c/a/e/d/h/e/a/a/n;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;

    invoke-direct {v0, p0, p2}, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;-><init>(Lc/c/a/e/d/h/e/a/c/a;Lh/c/b;)V

    :goto_0
    iget-object p2, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object v1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/e/d/h/e/a/c/a;

    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    move-object p2, p1

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object v1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/e/d/h/e/a/c/a;

    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v1

    goto :goto_2

    :cond_3
    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lc/c/a/e/d/h/e/a/c/a;

    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lc/c/a/e/d/h/e/a/c/a;->a:Lc/c/a/e/d/h/e/a/c/a/b;

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;->label:I

    invoke-virtual {p2, p1, v0}, Lc/c/a/e/d/h/e/a/c/a/b;->a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 5
    :goto_1
    check-cast p2, Lcom/farsitel/bazaar/data/entity/Either;

    .line 6
    instance-of v5, p2, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz v5, :cond_7

    move-object v6, p2

    check-cast v6, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {v6}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;

    invoke-virtual {v6}, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;->getKeepDownloadedFile()Z

    move-result v6

    if-nez v6, :cond_7

    .line 7
    iget-object v3, v2, Lc/c/a/e/d/h/e/a/c/a;->b:Lc/c/a/e/d/h/e/a/a/k;

    iput-object v2, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;->label:I

    invoke-virtual {v3, p1, v0}, Lc/c/a/e/d/h/e/a/a/k;->a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_6

    return-object v1

    :cond_6
    move-object v0, v2

    .line 8
    :goto_2
    iget-object v0, v0, Lc/c/a/e/d/h/e/a/c/a;->c:Lc/c/a/e/d/h/e/a/a/n;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/h/e/a/a/n;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    const-string v0, "videoFile.parentFile"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lh/e/h;->b(Ljava/io/File;)Z

    goto :goto_3

    :cond_7
    if-eqz v5, :cond_8

    .line 10
    move-object v4, p2

    check-cast v4, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {v4}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;

    invoke-virtual {v4}, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;->getKeepDownloadedFile()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 11
    iget-object v4, v2, Lc/c/a/e/d/h/e/a/c/a;->b:Lc/c/a/e/d/h/e/a/a/k;

    iput-object v2, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/SubmitVideoDownloadRepository$submitVideoDownload$1;->label:I

    invoke-virtual {v4, p1, v0}, Lc/c/a/e/d/h/e/a/a/k;->c(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    return-object p2
.end method
