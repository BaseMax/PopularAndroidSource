.class public final Lc/c/a/e/d/r/e;
.super Ljava/lang/Object;
.source "ReviewRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/d/r/c;

.field public final b:Lc/c/a/e/d/h/c/b/b;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/r/c;Lc/c/a/e/d/h/c/b/b;)V
    .locals 1

    const-string v0, "reviewRemoteDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoReviewsRemoteDataSource"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/r/e;->a:Lc/c/a/e/d/r/c;

    iput-object p2, p0, Lc/c/a/e/d/r/e;->b:Lc/c/a/e/d/h/c/b/b;

    return-void
.end method


# virtual methods
.method public final a(ILh/c/b;)Ljava/lang/Object;
    .locals 1
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
    iget-object v0, p0, Lc/c/a/e/d/r/e;->a:Lc/c/a/e/d/r/c;

    invoke-virtual {v0, p1, p2}, Lc/c/a/e/d/r/c;->a(ILh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;IILh/c/b;)Ljava/lang/Object;
    .locals 1
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

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/r/e;->b:Lc/c/a/e/d/h/c/b/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/c/a/e/d/h/c/b/b;->a(Ljava/lang/String;IILh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;IILjava/lang/String;JLh/c/b;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "J",
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
    iget-object v0, p0, Lc/c/a/e/d/r/e;->a:Lc/c/a/e/d/r/c;

    invoke-static {p5, p6}, Lh/c/b/a/a;->a(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lc/c/a/e/d/r/c;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/Long;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
