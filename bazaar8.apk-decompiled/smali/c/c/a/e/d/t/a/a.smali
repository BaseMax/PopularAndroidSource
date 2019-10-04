.class public final Lc/c/a/e/d/t/a/a;
.super Ljava/lang/Object;
.source "SeasonEpisodeRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/t/a/e;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/t/a/e;)V
    .locals 1

    const-string v0, "seasonEpisodeService"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/t/a/a;->a:Lc/c/a/e/d/t/a/e;

    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/String;ILh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "I",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/common/model/Page;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/t/a/a;->a:Lc/c/a/e/d/t/a/e;

    .line 2
    new-instance v1, Lc/c/a/e/d/t/a/c;

    invoke-direct {v1, p1, p2, p3, p4}, Lc/c/a/e/d/t/a/c;-><init>(IILjava/lang/String;I)V

    .line 3
    invoke-interface {v0, v1}, Lc/c/a/e/d/t/a/e;->a(Lc/c/a/e/d/t/a/c;)Ll/b;

    move-result-object p2

    .line 4
    new-instance p3, Lcom/farsitel/bazaar/data/feature/seasonepisode/remote/SeasonEpisodeRemoteDataSource$getSeasonEpisodeList$2;

    invoke-direct {p3, p1}, Lcom/farsitel/bazaar/data/feature/seasonepisode/remote/SeasonEpisodeRemoteDataSource$getSeasonEpisodeList$2;-><init>(I)V

    invoke-static {p2, p3, p5}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
