.class public final Lc/c/a/e/d/h/c/b/b;
.super Ljava/lang/Object;
.source "VideoReviewsRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/h/c/b/f;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/h/c/b/f;)V
    .locals 1

    const-string v0, "videoReviewsService"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/h/c/b/b;->a:Lc/c/a/e/d/h/c/b/f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;IILh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
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
    iget-object v0, p0, Lc/c/a/e/d/h/c/b/b;->a:Lc/c/a/e/d/h/c/b/f;

    .line 2
    new-instance v1, Lc/c/a/e/d/h/c/b/d;

    invoke-direct {v1, p1, p2, p3}, Lc/c/a/e/d/h/c/b/d;-><init>(Ljava/lang/String;II)V

    .line 3
    invoke-interface {v0, v1}, Lc/c/a/e/d/h/c/b/f;->a(Lc/c/a/e/d/h/c/b/d;)Ll/b;

    move-result-object p1

    .line 4
    sget-object p2, Lcom/farsitel/bazaar/data/feature/cinema/reviews/remote/VideoReviewsRemoteDataSource$getVideoReviews$2;->a:Lcom/farsitel/bazaar/data/feature/cinema/reviews/remote/VideoReviewsRemoteDataSource$getVideoReviews$2;

    invoke-static {p1, p2, p4}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
