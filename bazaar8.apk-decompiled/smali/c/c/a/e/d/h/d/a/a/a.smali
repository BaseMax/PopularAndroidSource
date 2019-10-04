.class public final Lc/c/a/e/d/h/d/a/a/a;
.super Ljava/lang/Object;
.source "EpisodeDetailRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/h/d/a/a/e;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/h/d/a/a/e;)V
    .locals 1

    const-string v0, "episodeService"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/h/d/a/a/a;->a:Lc/c/a/e/d/h/d/a/a/e;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;IIILjava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "+",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    new-instance v6, Lc/c/a/e/d/h/d/a/a/g;

    invoke-static {p5}, Lc/c/a/c/b/i;->g(Ljava/lang/String;)Lc/e/d/m;

    move-result-object v5

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lc/c/a/e/d/h/d/a/a/g;-><init>(Ljava/lang/String;IIILc/e/d/m;)V

    .line 4
    iget-object p1, p0, Lc/c/a/e/d/h/d/a/a/a;->a:Lc/c/a/e/d/h/d/a/a/e;

    invoke-interface {p1, v6}, Lc/c/a/e/d/h/d/a/a/e;->a(Lc/c/a/e/d/h/d/a/a/g;)Ll/b;

    move-result-object p1

    sget-object p2, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/remote/EpisodeDetailRemoteDataSource$getEpisodeSeasonPage$2;->a:Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/remote/EpisodeDetailRemoteDataSource$getEpisodeSeasonPage$2;

    invoke-static {p1, p2, p6}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

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
    new-instance v0, Lc/c/a/e/d/h/d/a/a/f;

    invoke-static {p2}, Lc/c/a/c/b/i;->g(Ljava/lang/String;)Lc/e/d/m;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lc/c/a/e/d/h/d/a/a/f;-><init>(Ljava/lang/String;Lc/e/d/m;)V

    .line 2
    iget-object p1, p0, Lc/c/a/e/d/h/d/a/a/a;->a:Lc/c/a/e/d/h/d/a/a/e;

    invoke-interface {p1, v0}, Lc/c/a/e/d/h/d/a/a/e;->a(Lc/c/a/e/d/h/d/a/a/f;)Ll/b;

    move-result-object p1

    sget-object p2, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/remote/EpisodeDetailRemoteDataSource$getEpisodeDetailInfo$2;->a:Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/remote/EpisodeDetailRemoteDataSource$getEpisodeDetailInfo$2;

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
    new-instance v0, Lc/c/a/e/d/h/d/a/a/h;

    invoke-static {p2}, Lc/c/a/c/b/i;->g(Ljava/lang/String;)Lc/e/d/m;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lc/c/a/e/d/h/d/a/a/h;-><init>(Ljava/lang/String;Lc/e/d/m;)V

    .line 2
    iget-object p2, p0, Lc/c/a/e/d/h/d/a/a/a;->a:Lc/c/a/e/d/h/d/a/a/e;

    invoke-interface {p2, v0}, Lc/c/a/e/d/h/d/a/a/e;->a(Lc/c/a/e/d/h/d/a/a/h;)Ll/b;

    move-result-object p2

    new-instance v0, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/remote/EpisodeDetailRemoteDataSource$getEpisodePlayInfo$2;

    invoke-direct {v0, p1}, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/remote/EpisodeDetailRemoteDataSource$getEpisodePlayInfo$2;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v0, p3}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
