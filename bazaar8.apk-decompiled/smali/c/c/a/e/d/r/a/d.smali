.class public final Lc/c/a/e/d/r/a/d;
.super Ljava/lang/Object;
.source "ReportCommentRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/d/r/a/b/a;

.field public final b:Lc/c/a/e/d/h/c/a/a/f;

.field public final c:Lc/c/a/e/d/r/a/a/j;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/r/a/b/a;Lc/c/a/e/d/h/c/a/a/f;Lc/c/a/e/d/r/a/a/j;)V
    .locals 1

    const-string v0, "reportCommentRemoteDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportVideoCommentRemoteDataSource"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commentActionLocalDataSource"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/r/a/d;->a:Lc/c/a/e/d/r/a/b/a;

    iput-object p2, p0, Lc/c/a/e/d/r/a/d;->b:Lc/c/a/e/d/h/c/a/a/f;

    iput-object p3, p0, Lc/c/a/e/d/r/a/d;->c:Lc/c/a/e/d/r/a/a/j;

    return-void
.end method


# virtual methods
.method public final a(IZLcom/farsitel/bazaar/data/entity/EntityType;Lh/c/b;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lcom/farsitel/bazaar/data/entity/EntityType;",
            "Lh/c/b<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/farsitel/bazaar/data/feature/review/action/ReportCommentRepository$reportReview$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/farsitel/bazaar/data/feature/review/action/ReportCommentRepository$reportReview$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/review/action/ReportCommentRepository$reportReview$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/review/action/ReportCommentRepository$reportReview$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/review/action/ReportCommentRepository$reportReview$1;

    invoke-direct {v0, p0, p4}, Lcom/farsitel/bazaar/data/feature/review/action/ReportCommentRepository$reportReview$1;-><init>(Lc/c/a/e/d/r/a/d;Lh/c/b;)V

    :goto_0
    iget-object p4, v0, Lcom/farsitel/bazaar/data/feature/review/action/ReportCommentRepository$reportReview$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/review/action/ReportCommentRepository$reportReview$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    :goto_1
    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/review/action/ReportCommentRepository$reportReview$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/farsitel/bazaar/data/entity/EntityType;

    iget-boolean p1, v0, Lcom/farsitel/bazaar/data/feature/review/action/ReportCommentRepository$reportReview$1;->Z$0:Z

    iget p1, v0, Lcom/farsitel/bazaar/data/feature/review/action/ReportCommentRepository$reportReview$1;->I$0:I

    iget-object p2, v0, Lcom/farsitel/bazaar/data/feature/review/action/ReportCommentRepository$reportReview$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lc/c/a/e/d/r/a/d;

    invoke-static {p4}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p4}, Lh/e;->a(Ljava/lang/Object;)V

    .line 4
    iget-object p4, p0, Lc/c/a/e/d/r/a/d;->c:Lc/c/a/e/d/r/a/a/j;

    sget-object v2, Lcom/farsitel/bazaar/data/entity/CommentAction;->REPORT:Lcom/farsitel/bazaar/data/entity/CommentAction;

    invoke-virtual {p4, p1, v2, p2, p3}, Lc/c/a/e/d/r/a/a/j;->a(ILcom/farsitel/bazaar/data/entity/CommentAction;ZLcom/farsitel/bazaar/data/entity/EntityType;)V

    .line 5
    sget-object p4, Lcom/farsitel/bazaar/data/entity/EntityType;->APP:Lcom/farsitel/bazaar/data/entity/EntityType;

    if-ne p3, p4, :cond_5

    iget-object p4, p0, Lc/c/a/e/d/r/a/d;->a:Lc/c/a/e/d/r/a/b/a;

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/review/action/ReportCommentRepository$reportReview$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/farsitel/bazaar/data/feature/review/action/ReportCommentRepository$reportReview$1;->I$0:I

    iput-boolean p2, v0, Lcom/farsitel/bazaar/data/feature/review/action/ReportCommentRepository$reportReview$1;->Z$0:Z

    iput-object p3, v0, Lcom/farsitel/bazaar/data/feature/review/action/ReportCommentRepository$reportReview$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/farsitel/bazaar/data/feature/review/action/ReportCommentRepository$reportReview$1;->label:I

    invoke-virtual {p4, p1, p2, v0}, Lc/c/a/e/d/r/a/b/a;->a(IZLh/c/b;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_4

    return-object v1

    :cond_4
    move-object p2, p0

    .line 6
    :goto_2
    check-cast p4, Lcom/farsitel/bazaar/data/entity/Either;

    goto :goto_3

    .line 7
    :cond_5
    iget-object p4, p0, Lc/c/a/e/d/r/a/d;->b:Lc/c/a/e/d/h/c/a/a/f;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/review/action/ReportCommentRepository$reportReview$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/farsitel/bazaar/data/feature/review/action/ReportCommentRepository$reportReview$1;->I$0:I

    iput-boolean p2, v0, Lcom/farsitel/bazaar/data/feature/review/action/ReportCommentRepository$reportReview$1;->Z$0:Z

    iput-object p3, v0, Lcom/farsitel/bazaar/data/feature/review/action/ReportCommentRepository$reportReview$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/review/action/ReportCommentRepository$reportReview$1;->label:I

    invoke-virtual {p4, v2, v0}, Lc/c/a/e/d/h/c/a/a/f;->a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_4

    return-object v1

    :goto_3
    const/4 p3, 0x0

    .line 8
    invoke-static {p3}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/farsitel/bazaar/data/entity/EitherKt;->getOrDefault(Lcom/farsitel/bazaar/data/entity/Either;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_6

    .line 9
    iget-object p2, p2, Lc/c/a/e/d/r/a/d;->c:Lc/c/a/e/d/r/a/a/j;

    sget-object p3, Lcom/farsitel/bazaar/data/entity/CommentAction;->REPORT:Lcom/farsitel/bazaar/data/entity/CommentAction;

    invoke-virtual {p2, p1, p3}, Lc/c/a/e/d/r/a/a/j;->a(ILcom/farsitel/bazaar/data/entity/CommentAction;)V

    const/4 p3, 0x1

    .line 10
    :cond_6
    invoke-static {p3}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
