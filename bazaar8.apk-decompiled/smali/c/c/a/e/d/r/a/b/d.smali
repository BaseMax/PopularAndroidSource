.class public final Lc/c/a/e/d/r/a/b/d;
.super Ljava/lang/Object;
.source "VoteCommentRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/r/b/b/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/r/b/b/a;)V
    .locals 1

    const-string v0, "commentService"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/r/a/b/d;->a:Lc/c/a/e/d/r/b/b/a;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;ZLh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/r/a/b/d;->a:Lc/c/a/e/d/r/b/b/a;

    new-instance v1, Lcom/farsitel/bazaar/data/dto/requestdto/VoteReviewRequestDto;

    invoke-direct {v1, p1, p2, p3}, Lcom/farsitel/bazaar/data/dto/requestdto/VoteReviewRequestDto;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v0, v1}, Lc/c/a/e/d/r/b/b/a;->a(Lcom/farsitel/bazaar/data/dto/requestdto/VoteReviewRequestDto;)Ll/b;

    move-result-object p1

    sget-object p2, Lcom/farsitel/bazaar/data/feature/review/action/remote/VoteCommentRemoteDataSource$voteComment$2;->a:Lcom/farsitel/bazaar/data/feature/review/action/remote/VoteCommentRemoteDataSource$voteComment$2;

    invoke-static {p1, p2, p4}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
