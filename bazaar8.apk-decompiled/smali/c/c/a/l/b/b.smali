.class public final Lc/c/a/l/b/b;
.super Ljava/lang/Object;
.source "VideoStatsRepository.kt"


# instance fields
.field public final a:Lc/c/a/l/b/a/e;


# direct methods
.method public constructor <init>(Lc/c/a/l/b/a/e;)V
    .locals 1

    const-string v0, "videoStatsRemoteDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/l/b/b;->a:Lc/c/a/l/b/a/e;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILh/c/b;)Ljava/lang/Object;
    .locals 16
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
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    instance-of v2, v1, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;

    iget v3, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;

    invoke-direct {v2, v0, v1}, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;-><init>(Lc/c/a/l/b/b;Lh/c/b;)V

    :goto_0
    iget-object v1, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v11

    .line 2
    iget v3, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->label:I

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v13, :cond_2

    if-ne v3, v12, :cond_1

    iget-object v3, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->L$5:Ljava/lang/Object;

    check-cast v3, Lcom/farsitel/bazaar/common/model/VideoStatsResult;

    iget-object v3, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->L$4:Ljava/lang/Object;

    check-cast v3, Lcom/farsitel/bazaar/data/entity/Either;

    iget v3, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->I$0:I

    iget-object v3, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v3, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-wide v3, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->J$0:J

    iget-object v3, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lc/c/a/l/b/b;

    invoke-static {v1}, Lh/e;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 3
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_2
    iget v3, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->I$0:I

    iget-object v4, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-wide v6, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->J$0:J

    iget-object v8, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lc/c/a/l/b/b;

    invoke-static {v1}, Lh/e;->a(Ljava/lang/Object;)V

    move-wide v14, v6

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lh/e;->a(Ljava/lang/Object;)V

    .line 5
    iget-object v3, v0, Lc/c/a/l/b/b;->a:Lc/c/a/l/b/a/e;

    iput-object v0, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->L$0:Ljava/lang/Object;

    move-object/from16 v1, p1

    iput-object v1, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->L$1:Ljava/lang/Object;

    move-wide/from16 v14, p2

    iput-wide v14, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->J$0:J

    move-object/from16 v10, p4

    iput-object v10, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->L$2:Ljava/lang/Object;

    move-object/from16 v9, p5

    iput-object v9, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->L$3:Ljava/lang/Object;

    move/from16 v8, p6

    iput v8, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->I$0:I

    iput v13, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->label:I

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object v10, v2

    invoke-virtual/range {v3 .. v10}, Lc/c/a/l/b/a/e;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILh/c/b;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v11, :cond_4

    return-object v11

    :cond_4
    move-object/from16 v5, p4

    move-object/from16 v4, p5

    move-object v9, v0

    move-object v8, v1

    move-object v1, v3

    move/from16 v3, p6

    .line 6
    :goto_1
    check-cast v1, Lcom/farsitel/bazaar/data/entity/Either;

    .line 7
    invoke-static {v1}, Lcom/farsitel/bazaar/data/entity/EitherKt;->getOrNull(Lcom/farsitel/bazaar/data/entity/Either;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/farsitel/bazaar/common/model/VideoStatsResult;

    if-eqz v6, :cond_8

    .line 8
    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/VideoStatsResult;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_5

    goto :goto_2

    :cond_5
    const/4 v13, 0x0

    :goto_2
    if-eqz v13, :cond_7

    .line 9
    iget-object v7, v9, Lc/c/a/l/b/b;->a:Lc/c/a/l/b/a/e;

    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/VideoStatsResult;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/VideoStatsResult;->getData()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/VideoStatsResult;->getHeader()Ljava/util/Map;

    move-result-object v12

    iput-object v9, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->L$0:Ljava/lang/Object;

    iput-object v8, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->L$1:Ljava/lang/Object;

    iput-wide v14, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->J$0:J

    iput-object v5, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->L$2:Ljava/lang/Object;

    iput-object v4, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->L$3:Ljava/lang/Object;

    iput v3, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->I$0:I

    iput-object v1, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->L$4:Ljava/lang/Object;

    iput-object v6, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->L$5:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, v2, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->label:I

    invoke-virtual {v7, v10, v13, v12, v2}, Lc/c/a/l/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lh/c/b;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v11, :cond_6

    return-object v11

    .line 10
    :cond_6
    :goto_3
    check-cast v1, Lcom/farsitel/bazaar/data/entity/Either;

    goto :goto_4

    .line 11
    :cond_7
    new-instance v1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-direct {v1, v5}, Lcom/farsitel/bazaar/data/entity/Either$Success;-><init>(Ljava/lang/Object;)V

    :goto_4
    if-eqz v1, :cond_8

    goto :goto_5

    .line 12
    :cond_8
    new-instance v1, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    sget-object v2, Lcom/farsitel/bazaar/data/entity/ErrorModel$UnExpected;->INSTANCE:Lcom/farsitel/bazaar/data/entity/ErrorModel$UnExpected;

    invoke-direct {v1, v2}, Lcom/farsitel/bazaar/data/entity/Either$Failure;-><init>(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    :goto_5
    return-object v1
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
    iget-object v0, p0, Lc/c/a/l/b/b;->a:Lc/c/a/l/b/a/e;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/c/a/l/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
