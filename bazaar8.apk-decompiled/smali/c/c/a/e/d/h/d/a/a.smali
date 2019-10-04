.class public final Lc/c/a/e/d/h/d/a/a;
.super Ljava/lang/Object;
.source "EpisodeDetailRepository.kt"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lc/c/a/e/d/h/d/a/a/a;

.field public final d:Lc/c/a/e/d/h/c/b/b;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/h/d/a/a/a;Lc/c/a/e/d/h/c/b/b;)V
    .locals 1

    const-string v0, "episodeDetailRemoteDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoReviewsRemoteDataSource"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/h/d/a/a;->c:Lc/c/a/e/d/h/d/a/a/a;

    iput-object p2, p0, Lc/c/a/e/d/h/d/a/a;->d:Lc/c/a/e/d/h/c/b/b;

    const/4 p1, 0x4

    .line 2
    iput p1, p0, Lc/c/a/e/d/h/d/a/a;->a:I

    return-void
.end method

.method public static final synthetic a(Lc/c/a/e/d/h/d/a/a;)Lc/c/a/e/d/h/d/a/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/e/d/h/d/a/a;->c:Lc/c/a/e/d/h/d/a/a/a;

    return-object p0
.end method

.method public static final synthetic b(Lc/c/a/e/d/h/d/a/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/c/a/e/d/h/d/a/a;->a:I

    return p0
.end method

.method public static final synthetic c(Lc/c/a/e/d/h/d/a/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/c/a/e/d/h/d/a/a;->b:I

    return p0
.end method

.method public static final synthetic d(Lc/c/a/e/d/h/d/a/a;)Lc/c/a/e/d/h/c/b/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/e/d/h/d/a/a;->d:Lc/c/a/e/d/h/c/b/b;

    return-object p0
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
    iget-object v0, p0, Lc/c/a/e/d/h/d/a/a;->c:Lc/c/a/e/d/h/d/a/a/a;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lc/c/a/e/d/h/d/a/a/a;->a(Ljava/lang/String;IIILjava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 2
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

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/EpisodeDetailRepository$getEpisodeDetail$2;-><init>(Lc/c/a/e/d/h/d/a/a;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)V

    invoke-static {v0, p3}, Li/a/I;->a(Lh/f/a/c;Lh/c/b;)Ljava/lang/Object;

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

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/h/d/a/a;->c:Lc/c/a/e/d/h/d/a/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lc/c/a/e/d/h/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
