.class public final Lc/c/a/e/d/r/b/b/b;
.super Ljava/lang/Object;
.source "PostCommentRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/q/a;

.field public final b:Lc/c/a/e/d/r/b/b/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/q/a;Lc/c/a/e/d/r/b/b/a;)V
    .locals 1

    const-string v0, "requestPropertiesRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "service"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/r/b/b/b;->a:Lc/c/a/e/d/q/a;

    iput-object p2, p0, Lc/c/a/e/d/r/b/b/b;->b:Lc/c/a/e/d/r/b/b/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;JLcom/farsitel/bazaar/data/entity/EntityType;Lh/c/b;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Lcom/farsitel/bazaar/data/entity/EntityType;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lc/c/a/e/d/r/b/b/b;->a:Lc/c/a/e/d/q/a;

    invoke-virtual {v1}, Lc/c/a/e/d/q/a;->a()Lcom/farsitel/bazaar/data/entity/RequestProperties;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/farsitel/bazaar/data/entity/EntityType;->INLINE:Lcom/farsitel/bazaar/data/entity/EntityType;

    move-object/from16 v3, p6

    if-ne v3, v2, :cond_0

    const/4 v2, 0x1

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 3
    :goto_0
    iget-object v2, v0, Lc/c/a/e/d/r/b/b/b;->b:Lc/c/a/e/d/r/b/b/a;

    .line 4
    new-instance v12, Lcom/farsitel/bazaar/data/dto/requestdto/SubmitReviewRequest;

    .line 5
    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/entity/RequestProperties;->getAndroidClientInfo()Lcom/farsitel/bazaar/data/entity/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/entity/DeviceInfo;->getSdkVersion()I

    move-result v1

    int-to-long v7, v1

    move-object v3, v12

    move-object v4, p1

    move v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v9, p4

    .line 6
    invoke-direct/range {v3 .. v11}, Lcom/farsitel/bazaar/data/dto/requestdto/SubmitReviewRequest;-><init>(Ljava/lang/String;ILjava/lang/String;JJZ)V

    .line 7
    invoke-interface {v2, v12}, Lc/c/a/e/d/r/b/b/a;->a(Lcom/farsitel/bazaar/data/dto/requestdto/SubmitReviewRequest;)Ll/b;

    move-result-object v1

    .line 8
    sget-object v2, Lcom/farsitel/bazaar/data/feature/review/post/remote/PostCommentRemoteDataSource$postComment$2;->a:Lcom/farsitel/bazaar/data/feature/review/post/remote/PostCommentRemoteDataSource$postComment$2;

    move-object/from16 v3, p7

    invoke-static {v1, v2, v3}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
