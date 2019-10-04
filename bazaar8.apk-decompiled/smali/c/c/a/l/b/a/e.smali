.class public final Lc/c/a/l/b/a/e;
.super Ljava/lang/Object;
.source "VideoStatsRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/l/b/a/g;

.field public final b:Lc/c/a/l/b/a/d;


# direct methods
.method public constructor <init>(Lc/c/a/l/b/a/g;Lc/c/a/l/b/a/d;)V
    .locals 1

    const-string v0, "videoStatsService"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "thirdPartyService"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/l/b/a/e;->a:Lc/c/a/l/b/a/g;

    iput-object p2, p0, Lc/c/a/l/b/a/e;->b:Lc/c/a/l/b/a/d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/common/model/VideoStatsResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 4
    new-instance v0, Lc/c/a/l/b/a/b;

    .line 5
    new-instance v1, Lc/c/a/l/b/a/c;

    invoke-direct {v1, p1, p2, p3}, Lc/c/a/l/b/a/c;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v1}, Lc/c/a/l/b/a/c;->a()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-direct {v0, p1, p4, p5, p2}, Lc/c/a/l/b/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lc/c/a/l/b/a/e;->a:Lc/c/a/l/b/a/g;

    invoke-interface {p1, v0}, Lc/c/a/l/b/a/g;->a(Lc/c/a/l/b/a/b;)Ll/b;

    move-result-object p1

    .line 9
    sget-object p2, Lcom/farsitel/bazaar/player/stats/remote/VideoStatsRemoteDataSource$setVideoStats$2;->a:Lcom/farsitel/bazaar/player/stats/remote/VideoStatsRemoteDataSource$setVideoStats$2;

    invoke-static {p1, p2, p7}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/l/b/a/a;

    invoke-direct {v0, p1, p2, p3}, Lc/c/a/l/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lc/c/a/l/b/a/e;->a:Lc/c/a/l/b/a/g;

    invoke-interface {p1, v0}, Lc/c/a/l/b/a/g;->a(Lc/c/a/l/b/a/a;)Ll/b;

    move-result-object p1

    .line 3
    sget-object p2, Lcom/farsitel/bazaar/player/stats/remote/VideoStatsRemoteDataSource$setUserStreamingError$2;->a:Lcom/farsitel/bazaar/player/stats/remote/VideoStatsRemoteDataSource$setUserStreamingError$2;

    invoke-static {p1, p2, p4}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lc/c/a/l/b/a/e;->b:Lc/c/a/l/b/a/d;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, p3, v1}, Lc/c/a/l/b/a/d;->a(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)Ll/b;

    move-result-object p1

    sget-object p2, Lcom/farsitel/bazaar/player/stats/remote/VideoStatsRemoteDataSource$authorizeVideoStat$2;->a:Lcom/farsitel/bazaar/player/stats/remote/VideoStatsRemoteDataSource$authorizeVideoStat$2;

    invoke-static {p1, p2, p4}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
