.class public final Lc/c/a/e/d/r/a/f;
.super Ljava/lang/Object;
.source "VoteCommentRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/d/r/a/b/d;

.field public final b:Lc/c/a/e/d/r/a/a/j;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/r/a/b/d;Lc/c/a/e/d/r/a/a/j;)V
    .locals 1

    const-string v0, "voteCommentRemoteDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commentActionLocalDataSource"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/r/a/f;->a:Lc/c/a/e/d/r/a/b/d;

    iput-object p2, p0, Lc/c/a/e/d/r/a/f;->b:Lc/c/a/e/d/r/a/a/j;

    return-void
.end method


# virtual methods
.method public final synthetic a(ILjava/lang/String;Lcom/farsitel/bazaar/data/entity/CommentAction;ZLh/c/b;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/farsitel/bazaar/data/entity/CommentAction;",
            "Z",
            "Lh/c/b<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    move v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p4

    move-object/from16 v1, p5

    instance-of v2, v1, Lcom/farsitel/bazaar/data/feature/review/action/VoteCommentRepository$voteComment$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/farsitel/bazaar/data/feature/review/action/VoteCommentRepository$voteComment$1;

    iget v3, v2, Lcom/farsitel/bazaar/data/feature/review/action/VoteCommentRepository$voteComment$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/farsitel/bazaar/data/feature/review/action/VoteCommentRepository$voteComment$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/farsitel/bazaar/data/feature/review/action/VoteCommentRepository$voteComment$1;

    invoke-direct {v2, p0, v1}, Lcom/farsitel/bazaar/data/feature/review/action/VoteCommentRepository$voteComment$1;-><init>(Lc/c/a/e/d/r/a/f;Lh/c/b;)V

    :goto_0
    move-object v11, v2

    iget-object v1, v11, Lcom/farsitel/bazaar/data/feature/review/action/VoteCommentRepository$voteComment$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v12

    .line 2
    iget v2, v11, Lcom/farsitel/bazaar/data/feature/review/action/VoteCommentRepository$voteComment$1;->label:I

    const/4 v13, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v13, :cond_1

    iget-boolean v2, v11, Lcom/farsitel/bazaar/data/feature/review/action/VoteCommentRepository$voteComment$1;->Z$0:Z

    iget-object v2, v11, Lcom/farsitel/bazaar/data/feature/review/action/VoteCommentRepository$voteComment$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/farsitel/bazaar/data/entity/CommentAction;

    iget-object v3, v11, Lcom/farsitel/bazaar/data/feature/review/action/VoteCommentRepository$voteComment$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v3, v11, Lcom/farsitel/bazaar/data/feature/review/action/VoteCommentRepository$voteComment$1;->I$0:I

    iget-object v4, v11, Lcom/farsitel/bazaar/data/feature/review/action/VoteCommentRepository$voteComment$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lc/c/a/e/d/r/a/f;

    invoke-static {v1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_2
    invoke-static {v1}, Lh/e;->a(Ljava/lang/Object;)V

    .line 5
    iget-object v1, v0, Lc/c/a/e/d/r/a/f;->b:Lc/c/a/e/d/r/a/a/j;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-static/range {v1 .. v7}, Lc/c/a/e/d/r/a/a/j;->a(Lc/c/a/e/d/r/a/a/j;ILcom/farsitel/bazaar/data/entity/CommentAction;ZLcom/farsitel/bazaar/data/entity/EntityType;ILjava/lang/Object;)V

    .line 6
    iget-object v1, v0, Lc/c/a/e/d/r/a/f;->a:Lc/c/a/e/d/r/a/b/d;

    iput-object v0, v11, Lcom/farsitel/bazaar/data/feature/review/action/VoteCommentRepository$voteComment$1;->L$0:Ljava/lang/Object;

    iput v8, v11, Lcom/farsitel/bazaar/data/feature/review/action/VoteCommentRepository$voteComment$1;->I$0:I

    iput-object v9, v11, Lcom/farsitel/bazaar/data/feature/review/action/VoteCommentRepository$voteComment$1;->L$1:Ljava/lang/Object;

    move-object/from16 v2, p3

    iput-object v2, v11, Lcom/farsitel/bazaar/data/feature/review/action/VoteCommentRepository$voteComment$1;->L$2:Ljava/lang/Object;

    iput-boolean v10, v11, Lcom/farsitel/bazaar/data/feature/review/action/VoteCommentRepository$voteComment$1;->Z$0:Z

    iput v13, v11, Lcom/farsitel/bazaar/data/feature/review/action/VoteCommentRepository$voteComment$1;->label:I

    invoke-virtual {v1, p1, v9, v10, v11}, Lc/c/a/e/d/r/a/b/d;->a(ILjava/lang/String;ZLh/c/b;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v12, :cond_3

    return-object v12

    :cond_3
    move-object v4, v0

    move v3, v8

    .line 7
    :goto_1
    check-cast v1, Lcom/farsitel/bazaar/data/entity/Either;

    const/4 v5, 0x0

    .line 8
    invoke-static {v5}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/farsitel/bazaar/data/entity/EitherKt;->getOrDefault(Lcom/farsitel/bazaar/data/entity/Either;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    iget-object v1, v4, Lc/c/a/e/d/r/a/f;->b:Lc/c/a/e/d/r/a/a/j;

    invoke-virtual {v1, v3, v2}, Lc/c/a/e/d/r/a/a/j;->a(ILcom/farsitel/bazaar/data/entity/CommentAction;)V

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    .line 10
    :goto_2
    invoke-static {v13}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public final a(IZLh/c/b;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lh/c/b<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v3, Lcom/farsitel/bazaar/data/entity/CommentAction;->DOWN_VOTE:Lcom/farsitel/bazaar/data/entity/CommentAction;

    const-string v2, "D"

    move-object v0, p0

    move v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lc/c/a/e/d/r/a/f;->a(ILjava/lang/String;Lcom/farsitel/bazaar/data/entity/CommentAction;ZLh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(IZLh/c/b;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lh/c/b<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v3, Lcom/farsitel/bazaar/data/entity/CommentAction;->UP_VOTE:Lcom/farsitel/bazaar/data/entity/CommentAction;

    const-string v2, "L"

    move-object v0, p0

    move v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lc/c/a/e/d/r/a/f;->a(ILjava/lang/String;Lcom/farsitel/bazaar/data/entity/CommentAction;ZLh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
