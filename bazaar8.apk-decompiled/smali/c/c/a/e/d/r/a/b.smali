.class public final Lc/c/a/e/d/r/a/b;
.super Ljava/lang/Object;
.source "CommentActionRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/d/r/a/f;

.field public final b:Lc/c/a/e/d/r/a/d;

.field public final c:Lc/c/a/e/d/r/a/a/j;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/r/a/f;Lc/c/a/e/d/r/a/d;Lc/c/a/e/d/r/a/a/j;)V
    .locals 1

    const-string v0, "voteCommentRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportCommentRepository"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commentActionLocalDataSource"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/r/a/b;->a:Lc/c/a/e/d/r/a/f;

    iput-object p2, p0, Lc/c/a/e/d/r/a/b;->b:Lc/c/a/e/d/r/a/d;

    iput-object p3, p0, Lc/c/a/e/d/r/a/b;->c:Lc/c/a/e/d/r/a/a/j;

    return-void
.end method


# virtual methods
.method public final a(Lh/c/b;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;

    iget v3, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;

    invoke-direct {v2, v0, v1}, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;-><init>(Lc/c/a/e/d/r/a/b;Lh/c/b;)V

    :goto_0
    iget-object v1, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v3

    .line 1
    iget v4, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->label:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    :goto_1
    iget-object v4, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$7:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v8, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$6:Ljava/lang/Object;

    check-cast v8, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;

    iget-object v8, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$5:Ljava/lang/Object;

    iget-object v8, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$4:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v9, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Iterable;

    iget-object v10, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v11, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v12, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lc/c/a/e/d/r/a/b;

    invoke-static {v1}, Lh/e;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object v4, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$7:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v8, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$6:Ljava/lang/Object;

    check-cast v8, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;

    iget-object v8, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$5:Ljava/lang/Object;

    iget-object v8, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$4:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v9, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Iterable;

    iget-object v10, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v11, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v12, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lc/c/a/e/d/r/a/b;

    invoke-static {v1}, Lh/e;->a(Ljava/lang/Object;)V

    move-object v7, v1

    const/4 v1, 0x1

    goto/16 :goto_4

    :cond_4
    invoke-static {v1}, Lh/e;->a(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Lc/c/a/e/d/r/a/b;->c:Lc/c/a/e/d/r/a/a/j;

    invoke-virtual {v1}, Lc/c/a/e/d/r/a/a/j;->b()Ljava/util/List;

    move-result-object v1

    .line 5
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v7, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v12, v0

    move-object v9, v1

    move-object v11, v9

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;

    .line 7
    invoke-virtual {v10}, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->getCommentAction()Lcom/farsitel/bazaar/data/entity/CommentAction;

    move-result-object v13

    sget-object v14, Lc/c/a/e/d/r/a/a;->a:[I

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v13, v14, v13

    if-eq v13, v7, :cond_8

    if-eq v13, v6, :cond_6

    if-ne v13, v5, :cond_5

    .line 8
    iget-object v13, v12, Lc/c/a/e/d/r/a/b;->b:Lc/c/a/e/d/r/a/d;

    invoke-virtual {v10}, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->getReviewId()I

    move-result v14

    invoke-virtual {v10}, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->isReply()Z

    move-result v15

    invoke-virtual {v10}, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->getEntityType()Lcom/farsitel/bazaar/data/entity/EntityType;

    move-result-object v7

    iput-object v12, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$2:Ljava/lang/Object;

    iput-object v9, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$3:Ljava/lang/Object;

    iput-object v8, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$4:Ljava/lang/Object;

    iput-object v1, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$5:Ljava/lang/Object;

    iput-object v10, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$6:Ljava/lang/Object;

    iput-object v4, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$7:Ljava/lang/Object;

    iput v5, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->label:I

    invoke-virtual {v13, v14, v15, v7, v2}, Lc/c/a/e/d/r/a/d;->a(IZLcom/farsitel/bazaar/data/entity/EntityType;Lh/c/b;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    return-object v3

    .line 9
    :cond_5
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 10
    :cond_6
    iget-object v7, v12, Lc/c/a/e/d/r/a/b;->a:Lc/c/a/e/d/r/a/f;

    invoke-virtual {v10}, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->getReviewId()I

    move-result v13

    invoke-virtual {v10}, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->isReply()Z

    move-result v14

    iput-object v12, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$2:Ljava/lang/Object;

    iput-object v9, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$3:Ljava/lang/Object;

    iput-object v8, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$4:Ljava/lang/Object;

    iput-object v1, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$5:Ljava/lang/Object;

    iput-object v10, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$6:Ljava/lang/Object;

    iput-object v4, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$7:Ljava/lang/Object;

    iput v6, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->label:I

    invoke-virtual {v7, v13, v14, v2}, Lc/c/a/e/d/r/a/f;->b(IZLh/c/b;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    return-object v3

    :cond_7
    move-object v10, v4

    .line 11
    :goto_3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v7, v1

    const/4 v1, 0x1

    goto :goto_5

    .line 12
    :cond_8
    iget-object v7, v12, Lc/c/a/e/d/r/a/b;->a:Lc/c/a/e/d/r/a/f;

    invoke-virtual {v10}, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->getReviewId()I

    move-result v13

    invoke-virtual {v10}, Lcom/farsitel/bazaar/data/entity/CommentActionEntity;->isReply()Z

    move-result v14

    iput-object v12, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$2:Ljava/lang/Object;

    iput-object v9, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$3:Ljava/lang/Object;

    iput-object v8, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$4:Ljava/lang/Object;

    iput-object v1, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$5:Ljava/lang/Object;

    iput-object v10, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$6:Ljava/lang/Object;

    iput-object v4, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->L$7:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, v2, Lcom/farsitel/bazaar/data/feature/review/action/CommentActionRepository$sendPendingCommentAction$1;->label:I

    invoke-virtual {v7, v13, v14, v2}, Lc/c/a/e/d/r/a/f;->a(IZLh/c/b;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_9

    return-object v3

    :cond_9
    move-object v10, v4

    .line 13
    :goto_4
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    :goto_5
    move-object/from16 v16, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v10

    move-object/from16 v10, v16

    if-eqz v7, :cond_a

    iget-boolean v7, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    :goto_6
    iput-boolean v7, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    move-object v2, v3

    move-object v3, v10

    const/4 v7, 0x1

    goto/16 :goto_2

    .line 14
    :cond_b
    iget-boolean v1, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {v1}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public final a()V
    .locals 1

    .line 15
    iget-object v0, p0, Lc/c/a/e/d/r/a/b;->c:Lc/c/a/e/d/r/a/a/j;

    invoke-virtual {v0}, Lc/c/a/e/d/r/a/a/j;->a()V

    return-void
.end method
