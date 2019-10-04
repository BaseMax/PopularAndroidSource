.class public final Lc/c/a/e/d/h/e/a/a;
.super Ljava/lang/Object;
.source "VideoDownloadRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/d/h/e/a/b/e;

.field public final b:Lc/c/a/e/d/h/e/a/a/k;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/h/e/a/b/e;Lc/c/a/e/d/h/e/a/a/k;)V
    .locals 1

    const-string v0, "videoDownloadRemoteDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoDownloadLocalDataSource"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/h/e/a/a;->a:Lc/c/a/e/d/h/e/a/b/e;

    iput-object p2, p0, Lc/c/a/e/d/h/e/a/a;->b:Lc/c/a/e/d/h/e/a/a/k;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lc/c/a/e/d/h/e/a/a;->b:Lc/c/a/e/d/h/e/a/a/k;

    invoke-virtual {v0, p1, p2}, Lc/c/a/e/d/h/e/a/a/k;->b(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/common/model/VideoDownloadQuality;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadRepository$getVideoDownloadQualityList$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadRepository$getVideoDownloadQualityList$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadRepository$getVideoDownloadQualityList$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadRepository$getVideoDownloadQualityList$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadRepository$getVideoDownloadQualityList$1;

    invoke-direct {v0, p0, p3}, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadRepository$getVideoDownloadQualityList$1;-><init>(Lc/c/a/e/d/h/e/a/a;Lh/c/b;)V

    :goto_0
    iget-object p3, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadRepository$getVideoDownloadQualityList$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadRepository$getVideoDownloadQualityList$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadRepository$getVideoDownloadQualityList$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadRepository$getVideoDownloadQualityList$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadRepository$getVideoDownloadQualityList$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lc/c/a/e/d/h/e/a/a;

    invoke-static {p3}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Lh/e;->a(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Lc/c/a/e/d/h/e/a/a;->a:Lc/c/a/e/d/h/e/a/b/e;

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadRepository$getVideoDownloadQualityList$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadRepository$getVideoDownloadQualityList$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadRepository$getVideoDownloadQualityList$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/VideoDownloadRepository$getVideoDownloadQualityList$1;->label:I

    invoke-virtual {p3, p1, p2, v0}, Lc/c/a/e/d/h/e/a/b/e;->a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p3, Lcom/farsitel/bazaar/data/entity/Either;

    .line 6
    instance-of p1, p3, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    if-eqz p1, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    instance-of p1, p3, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz p1, :cond_5

    check-cast p3, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {p3}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;

    .line 8
    new-instance p2, Lcom/farsitel/bazaar/common/model/VideoDownloadQuality;

    invoke-direct {p2, p1}, Lcom/farsitel/bazaar/common/model/VideoDownloadQuality;-><init>(Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;)V

    new-instance p3, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-direct {p3, p2}, Lcom/farsitel/bazaar/data/entity/Either$Success;-><init>(Ljava/lang/Object;)V

    :goto_2
    return-object p3

    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
