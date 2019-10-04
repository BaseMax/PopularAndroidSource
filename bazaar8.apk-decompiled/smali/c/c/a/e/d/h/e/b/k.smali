.class public final Lc/c/a/e/d/h/e/b/k;
.super Ljava/lang/Object;
.source "VideoDetailRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/h/e/b/o;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/h/e/b/o;)V
    .locals 1

    const-string v0, "videoService"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/h/e/b/k;->a:Lc/c/a/e/d/h/e/b/o;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/h/e/b/c;

    invoke-static {p2}, Lc/c/a/c/b/i;->g(Ljava/lang/String;)Lc/e/d/m;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lc/c/a/e/d/h/e/b/c;-><init>(Ljava/lang/String;Lc/e/d/m;)V

    .line 2
    iget-object p1, p0, Lc/c/a/e/d/h/e/b/k;->a:Lc/c/a/e/d/h/e/b/o;

    invoke-interface {p1, v0}, Lc/c/a/e/d/h/e/b/o;->a(Lc/c/a/e/d/h/e/b/c;)Ll/b;

    move-result-object p1

    sget-object p2, Lcom/farsitel/bazaar/data/feature/cinema/video/remote/VideoDetailRemoteDataSource$getVideoInfo$2;->a:Lcom/farsitel/bazaar/data/feature/cinema/video/remote/VideoDetailRemoteDataSource$getVideoInfo$2;

    invoke-static {p1, p2, p3}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/h/e/b/d;

    invoke-static {p2}, Lc/c/a/c/b/i;->g(Ljava/lang/String;)Lc/e/d/m;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lc/c/a/e/d/h/e/b/d;-><init>(Ljava/lang/String;Lc/e/d/m;)V

    .line 2
    iget-object p2, p0, Lc/c/a/e/d/h/e/b/k;->a:Lc/c/a/e/d/h/e/b/o;

    invoke-interface {p2, v0}, Lc/c/a/e/d/h/e/b/o;->a(Lc/c/a/e/d/h/e/b/d;)Ll/b;

    move-result-object p2

    new-instance v0, Lcom/farsitel/bazaar/data/feature/cinema/video/remote/VideoDetailRemoteDataSource$getVideoPlayInfo$2;

    invoke-direct {v0, p1}, Lcom/farsitel/bazaar/data/feature/cinema/video/remote/VideoDetailRemoteDataSource$getVideoPlayInfo$2;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v0, p3}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
