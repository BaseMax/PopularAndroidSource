.class public final Lc/c/a/e/d/r/b/b;
.super Ljava/lang/Object;
.source "PostCommentRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/d/r/b/b/b;

.field public final b:Lc/c/a/e/d/h/c/a/a/a;

.field public final c:Lc/c/a/e/d/r/b/a/j;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/r/b/b/b;Lc/c/a/e/d/h/c/a/a/a;Lc/c/a/e/d/r/b/a/j;)V
    .locals 1

    const-string v0, "postCommentRemoteDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postVideoCommentRemoteDataSource"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postCommentLocalDataSource"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/r/b/b;->a:Lc/c/a/e/d/r/b/b/b;

    iput-object p2, p0, Lc/c/a/e/d/r/b/b;->b:Lc/c/a/e/d/h/c/a/a/a;

    iput-object p3, p0, Lc/c/a/e/d/r/b/b;->c:Lc/c/a/e/d/r/b/a/j;

    return-void
.end method


# virtual methods
.method public final a(Lh/c/b;)Ljava/lang/Object;
    .locals 19
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

    instance-of v2, v1, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;

    iget v3, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;

    invoke-direct {v2, v0, v1}, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;-><init>(Lc/c/a/e/d/r/b/b;Lh/c/b;)V

    :goto_0
    iget-object v1, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v3

    .line 20
    iget v4, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v4, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$7:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v7, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$6:Ljava/lang/Object;

    check-cast v7, Lcom/farsitel/bazaar/data/entity/CommentEntity;

    iget-object v7, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$5:Ljava/lang/Object;

    iget-object v7, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$4:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v8, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$3:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Iterable;

    iget-object v9, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v10, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lc/c/a/e/d/r/b/b;

    invoke-static {v1}, Lh/e;->a(Ljava/lang/Object;)V

    move-object v14, v3

    move-object v15, v8

    move-object v3, v10

    goto/16 :goto_2

    .line 21
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_2
    iget-object v4, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$7:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v7, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$6:Ljava/lang/Object;

    check-cast v7, Lcom/farsitel/bazaar/data/entity/CommentEntity;

    iget-object v7, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$5:Ljava/lang/Object;

    iget-object v7, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$4:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v8, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$3:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Iterable;

    iget-object v9, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v10, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lc/c/a/e/d/r/b/b;

    invoke-static {v1}, Lh/e;->a(Ljava/lang/Object;)V

    move-object v5, v3

    move-object v15, v8

    move-object v3, v10

    goto/16 :goto_3

    :cond_3
    invoke-static {v1}, Lh/e;->a(Ljava/lang/Object;)V

    .line 23
    iget-object v1, v0, Lc/c/a/e/d/r/b/b;->c:Lc/c/a/e/d/r/b/a/j;

    invoke-virtual {v1}, Lc/c/a/e/d/r/b/a/j;->b()Ljava/util/List;

    move-result-object v1

    .line 24
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v6, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 25
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v15, v1

    move-object v14, v3

    move-object v1, v0

    move-object v3, v15

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/farsitel/bazaar/data/entity/CommentEntity;

    .line 26
    invoke-virtual {v9}, Lcom/farsitel/bazaar/data/entity/CommentEntity;->getEntityType()Lcom/farsitel/bazaar/data/entity/EntityType;

    move-result-object v10

    sget-object v11, Lc/c/a/e/d/r/b/a;->a:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v11, v10

    if-eq v10, v6, :cond_6

    if-eq v10, v5, :cond_4

    move-object v11, v1

    move-object v5, v2

    move-object v2, v4

    const/4 v1, 0x1

    goto/16 :goto_5

    .line 27
    :cond_4
    invoke-virtual {v9}, Lcom/farsitel/bazaar/data/entity/CommentEntity;->getEntityId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/farsitel/bazaar/data/entity/CommentEntity;->getText()Ljava/lang/String;

    move-result-object v11

    iput-object v1, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$0:Ljava/lang/Object;

    iput-object v3, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$2:Ljava/lang/Object;

    iput-object v15, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$3:Ljava/lang/Object;

    iput-object v7, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$4:Ljava/lang/Object;

    iput-object v8, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$5:Ljava/lang/Object;

    iput-object v9, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$6:Ljava/lang/Object;

    iput-object v4, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$7:Ljava/lang/Object;

    iput v5, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->label:I

    invoke-virtual {v1, v10, v11, v2}, Lc/c/a/e/d/r/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v14, :cond_5

    return-object v14

    :cond_5
    move-object v11, v1

    move-object v9, v4

    move-object v1, v8

    .line 28
    :goto_2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_4

    .line 29
    :cond_6
    invoke-virtual {v9}, Lcom/farsitel/bazaar/data/entity/CommentEntity;->getEntityId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/farsitel/bazaar/data/entity/CommentEntity;->getRate()I

    move-result v11

    invoke-virtual {v9}, Lcom/farsitel/bazaar/data/entity/CommentEntity;->getText()Ljava/lang/String;

    move-result-object v12

    .line 30
    invoke-virtual {v9}, Lcom/farsitel/bazaar/data/entity/CommentEntity;->getEntityVersion()J

    move-result-wide v16

    invoke-virtual {v9}, Lcom/farsitel/bazaar/data/entity/CommentEntity;->getEntityType()Lcom/farsitel/bazaar/data/entity/EntityType;

    move-result-object v18

    iput-object v1, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$0:Ljava/lang/Object;

    iput-object v3, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$2:Ljava/lang/Object;

    iput-object v15, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$3:Ljava/lang/Object;

    iput-object v7, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$4:Ljava/lang/Object;

    iput-object v8, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$5:Ljava/lang/Object;

    iput-object v9, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$6:Ljava/lang/Object;

    iput-object v4, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->L$7:Ljava/lang/Object;

    iput v6, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->label:I

    move-object v8, v1

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-wide/from16 v12, v16

    move-object v5, v14

    move-object/from16 v14, v18

    move-object/from16 v16, v15

    move-object v15, v2

    .line 31
    invoke-virtual/range {v8 .. v15}, Lc/c/a/e/d/r/b/b;->b(Ljava/lang/String;ILjava/lang/String;JLcom/farsitel/bazaar/data/entity/EntityType;Lh/c/b;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v5, :cond_7

    return-object v5

    :cond_7
    move-object v11, v1

    move-object v9, v4

    move-object v1, v8

    move-object/from16 v15, v16

    .line 32
    :goto_3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move-object v14, v5

    :goto_4
    move-object v5, v2

    move-object v2, v4

    move-object v4, v9

    :goto_5
    if-eqz v1, :cond_8

    .line 33
    iget-boolean v1, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    move-object v2, v5

    move-object v1, v11

    const/4 v5, 0x2

    goto/16 :goto_1

    .line 34
    :cond_9
    iget-boolean v1, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {v1}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;JLcom/farsitel/bazaar/data/entity/EntityType;Lh/c/b;)Ljava/lang/Object;
    .locals 16
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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v7, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-wide/from16 v11, p4

    move-object/from16 v13, p6

    move-object/from16 v0, p7

    instance-of v1, v0, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;

    iget v2, v1, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;

    invoke-direct {v1, v8, v0}, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;-><init>(Lc/c/a/e/d/r/b/b;Lh/c/b;)V

    :goto_0
    move-object v14, v1

    iget-object v0, v14, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v15

    .line 1
    iget v1, v14, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;->label:I

    const/4 v6, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-ne v1, v6, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    :goto_1
    iget-object v1, v14, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lcom/farsitel/bazaar/data/entity/EntityType;

    iget-wide v1, v14, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;->J$0:J

    iget-object v1, v14, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v1, v14, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;->I$0:I

    iget-object v1, v14, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v14, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lc/c/a/e/d/r/b/b;

    invoke-static {v0}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {v0}, Lh/e;->a(Ljava/lang/Object;)V

    .line 4
    iget-object v0, v8, Lc/c/a/e/d/r/b/b;->c:Lc/c/a/e/d/r/b/a/j;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 p7, v15

    const/4 v15, 0x1

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lc/c/a/e/d/r/b/a/j;->a(Ljava/lang/String;ILjava/lang/String;JLcom/farsitel/bazaar/data/entity/EntityType;)V

    .line 5
    sget-object v0, Lcom/farsitel/bazaar/data/entity/EntityType;->APP:Lcom/farsitel/bazaar/data/entity/EntityType;

    if-ne v13, v0, :cond_5

    .line 6
    iput-object v8, v14, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;->L$0:Ljava/lang/Object;

    iput-object v7, v14, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;->L$1:Ljava/lang/Object;

    iput v9, v14, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;->I$0:I

    iput-object v10, v14, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;->L$2:Ljava/lang/Object;

    iput-wide v11, v14, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;->J$0:J

    iput-object v13, v14, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;->L$3:Ljava/lang/Object;

    iput v15, v14, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;->label:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object v7, v14

    invoke-virtual/range {v0 .. v7}, Lc/c/a/e/d/r/b/b;->b(Ljava/lang/String;ILjava/lang/String;JLcom/farsitel/bazaar/data/entity/EntityType;Lh/c/b;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, p7

    if-ne v0, v1, :cond_4

    return-object v1

    .line 7
    :cond_4
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3

    :cond_5
    move-object/from16 v1, p7

    .line 8
    iput-object v8, v14, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;->L$0:Ljava/lang/Object;

    iput-object v7, v14, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;->L$1:Ljava/lang/Object;

    iput v9, v14, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;->I$0:I

    iput-object v10, v14, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;->L$2:Ljava/lang/Object;

    iput-wide v11, v14, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;->J$0:J

    iput-object v13, v14, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;->L$3:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v14, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postComment$1;->label:I

    invoke-virtual {v8, v7, v10, v14}, Lc/c/a/e/d/r/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4

    return-object v1

    .line 9
    :goto_3
    invoke-static {v0}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendVideoCommentToRemote$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendVideoCommentToRemote$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendVideoCommentToRemote$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendVideoCommentToRemote$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendVideoCommentToRemote$1;

    invoke-direct {v0, p0, p3}, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendVideoCommentToRemote$1;-><init>(Lc/c/a/e/d/r/b/b;Lh/c/b;)V

    :goto_0
    iget-object p3, v0, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendVideoCommentToRemote$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 10
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendVideoCommentToRemote$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendVideoCommentToRemote$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendVideoCommentToRemote$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendVideoCommentToRemote$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lc/c/a/e/d/r/b/b;

    invoke-static {p3}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    invoke-static {p3}, Lh/e;->a(Ljava/lang/Object;)V

    .line 13
    iget-object p3, p0, Lc/c/a/e/d/r/b/b;->b:Lc/c/a/e/d/h/c/a/a/a;

    .line 14
    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendVideoCommentToRemote$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendVideoCommentToRemote$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendVideoCommentToRemote$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendVideoCommentToRemote$1;->label:I

    .line 15
    invoke-virtual {p3, p1, p2, v0}, Lc/c/a/e/d/h/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object p2, p0

    .line 16
    :goto_1
    check-cast p3, Lcom/farsitel/bazaar/data/entity/Either;

    const/4 v0, 0x0

    .line 17
    invoke-static {v0}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/farsitel/bazaar/data/entity/EitherKt;->getOrDefault(Lcom/farsitel/bazaar/data/entity/Either;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 18
    iget-object p2, p2, Lc/c/a/e/d/r/b/b;->c:Lc/c/a/e/d/r/b/a/j;

    invoke-virtual {p2, p1}, Lc/c/a/e/d/r/b/a/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 19
    :cond_4
    invoke-static {v0}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 1

    .line 35
    iget-object v0, p0, Lc/c/a/e/d/r/b/b;->c:Lc/c/a/e/d/r/b/a/j;

    invoke-virtual {v0}, Lc/c/a/e/d/r/b/a/j;->a()V

    return-void
.end method

.method public final synthetic b(Ljava/lang/String;ILjava/lang/String;JLcom/farsitel/bazaar/data/entity/EntityType;Lh/c/b;)Ljava/lang/Object;
    .locals 12
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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p7

    instance-of v2, v1, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendCommentToRemote$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendCommentToRemote$1;

    iget v3, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendCommentToRemote$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendCommentToRemote$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendCommentToRemote$1;

    invoke-direct {v2, p0, v1}, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendCommentToRemote$1;-><init>(Lc/c/a/e/d/r/b/b;Lh/c/b;)V

    :goto_0
    move-object v10, v2

    iget-object v1, v10, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendCommentToRemote$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v2

    .line 1
    iget v3, v10, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendCommentToRemote$1;->label:I

    const/4 v11, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v11, :cond_1

    iget-object v2, v10, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendCommentToRemote$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lcom/farsitel/bazaar/data/entity/EntityType;

    iget-wide v2, v10, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendCommentToRemote$1;->J$0:J

    iget-object v2, v10, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendCommentToRemote$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v2, v10, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendCommentToRemote$1;->I$0:I

    iget-object v2, v10, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendCommentToRemote$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v10, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendCommentToRemote$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lc/c/a/e/d/r/b/b;

    invoke-static {v1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v1}, Lh/e;->a(Ljava/lang/Object;)V

    .line 4
    iget-object v3, v0, Lc/c/a/e/d/r/b/b;->a:Lc/c/a/e/d/r/b/b/b;

    .line 5
    iput-object v0, v10, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendCommentToRemote$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v10, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendCommentToRemote$1;->L$1:Ljava/lang/Object;

    move v5, p2

    iput v5, v10, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendCommentToRemote$1;->I$0:I

    move-object v6, p3

    iput-object v6, v10, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendCommentToRemote$1;->L$2:Ljava/lang/Object;

    move-wide/from16 v7, p4

    iput-wide v7, v10, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendCommentToRemote$1;->J$0:J

    move-object/from16 v9, p6

    iput-object v9, v10, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendCommentToRemote$1;->L$3:Ljava/lang/Object;

    iput v11, v10, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$sendCommentToRemote$1;->label:I

    move-object v4, p1

    .line 6
    invoke-virtual/range {v3 .. v10}, Lc/c/a/e/d/r/b/b/b;->a(Ljava/lang/String;ILjava/lang/String;JLcom/farsitel/bazaar/data/entity/EntityType;Lh/c/b;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_3

    return-object v2

    :cond_3
    move-object v2, v1

    move-object v1, v3

    move-object v3, v0

    .line 7
    :goto_1
    check-cast v1, Lcom/farsitel/bazaar/data/entity/Either;

    const/4 v4, 0x0

    .line 8
    invoke-static {v4}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/farsitel/bazaar/data/entity/EitherKt;->getOrDefault(Lcom/farsitel/bazaar/data/entity/Either;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    iget-object v1, v3, Lc/c/a/e/d/r/b/b;->c:Lc/c/a/e/d/r/b/a/j;

    invoke-virtual {v1, v2}, Lc/c/a/e/d/r/b/a/j;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    .line 10
    :goto_2
    invoke-static {v11}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method
