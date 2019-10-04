.class public final Lc/c/a/e/d/r/c;
.super Ljava/lang/Object;
.source "ReviewRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/r/g;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/r/g;)V
    .locals 1

    const-string v0, "reviewService"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/r/c;->a:Lc/c/a/e/d/r/g;

    return-void
.end method


# virtual methods
.method public final a(ILh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lc/c/a/e/g/a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/r/c;->a:Lc/c/a/e/d/r/g;

    new-instance v1, Lcom/farsitel/bazaar/data/dto/requestdto/GetSingleReviewRequestDto;

    invoke-direct {v1, p1}, Lcom/farsitel/bazaar/data/dto/requestdto/GetSingleReviewRequestDto;-><init>(I)V

    invoke-interface {v0, v1}, Lc/c/a/e/d/r/g;->a(Lcom/farsitel/bazaar/data/dto/requestdto/GetSingleReviewRequestDto;)Ll/b;

    move-result-object p1

    sget-object v0, Lcom/farsitel/bazaar/data/feature/review/ReviewRemoteDataSource$getReviewById$2;->a:Lcom/farsitel/bazaar/data/feature/review/ReviewRemoteDataSource$getReviewById$2;

    invoke-static {p1, v0, p2}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/Long;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "+",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/data/dto/requestdto/GetReviewRequestDto;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/farsitel/bazaar/data/dto/requestdto/GetReviewRequestDto;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 2
    iget-object p1, p0, Lc/c/a/e/d/r/c;->a:Lc/c/a/e/d/r/g;

    invoke-interface {p1, v0}, Lc/c/a/e/d/r/g;->a(Lcom/farsitel/bazaar/data/dto/requestdto/GetReviewRequestDto;)Ll/b;

    move-result-object p1

    new-instance p2, Lcom/farsitel/bazaar/data/feature/review/ReviewRemoteDataSource$getReviews$2;

    invoke-direct {p2, p5}, Lcom/farsitel/bazaar/data/feature/review/ReviewRemoteDataSource$getReviews$2;-><init>(Ljava/lang/Long;)V

    invoke-static {p1, p2, p6}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
