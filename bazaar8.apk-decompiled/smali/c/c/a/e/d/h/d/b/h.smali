.class public final Lc/c/a/e/d/h/d/b/h;
.super Ljava/lang/Object;
.source "SeriesDetailRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/h/d/b/k;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/h/d/b/k;)V
    .locals 1

    const-string v0, "cinemaService"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/h/d/b/h;->a:Lc/c/a/e/d/h/d/b/k;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
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
    new-instance v0, Lc/c/a/e/d/h/d/b/d;

    invoke-static {p3}, Lc/c/a/c/b/i;->g(Ljava/lang/String;)Lc/e/d/m;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3}, Lc/c/a/e/d/h/d/b/d;-><init>(Ljava/lang/String;ILc/e/d/m;)V

    .line 2
    iget-object p1, p0, Lc/c/a/e/d/h/d/b/h;->a:Lc/c/a/e/d/h/d/b/k;

    invoke-interface {p1, v0}, Lc/c/a/e/d/h/d/b/k;->a(Lc/c/a/e/d/h/d/b/d;)Ll/b;

    move-result-object p1

    sget-object p2, Lcom/farsitel/bazaar/data/feature/cinema/series/remote/SeriesDetailRemoteDataSource$getEpisodes$2;->a:Lcom/farsitel/bazaar/data/feature/cinema/series/remote/SeriesDetailRemoteDataSource$getEpisodes$2;

    invoke-static {p1, p2, p4}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;ILjava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
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
    new-instance v0, Lc/c/a/e/d/h/d/b/c;

    invoke-static {p3}, Lc/c/a/c/b/i;->g(Ljava/lang/String;)Lc/e/d/m;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Lc/c/a/e/d/h/d/b/c;-><init>(Ljava/lang/String;Lc/e/d/m;)V

    .line 2
    iget-object p1, p0, Lc/c/a/e/d/h/d/b/h;->a:Lc/c/a/e/d/h/d/b/k;

    invoke-interface {p1, v0}, Lc/c/a/e/d/h/d/b/k;->a(Lc/c/a/e/d/h/d/b/c;)Ll/b;

    move-result-object p1

    new-instance p3, Lcom/farsitel/bazaar/data/feature/cinema/series/remote/SeriesDetailRemoteDataSource$getSeriesInfo$2;

    invoke-direct {p3, p2}, Lcom/farsitel/bazaar/data/feature/cinema/series/remote/SeriesDetailRemoteDataSource$getSeriesInfo$2;-><init>(I)V

    invoke-static {p1, p3, p4}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
