.class public final Lcom/farsitel/bazaar/work/ReportCommentWorker$reportComment$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ReportCommentWorker.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/work/ReportCommentWorker;->a(IZLcom/farsitel/bazaar/data/entity/EntityType;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lh/f/a/c<",
        "Li/a/H;",
        "Lh/c/b<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.work.ReportCommentWorker$reportComment$1"
    f = "ReportCommentWorker.kt"
    l = {
        0x2c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $entityType:Lcom/farsitel/bazaar/data/entity/EntityType;

.field public final synthetic $reply:Z

.field public final synthetic $reviewId:I

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lcom/farsitel/bazaar/work/ReportCommentWorker;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/work/ReportCommentWorker;IZLcom/farsitel/bazaar/data/entity/EntityType;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/work/ReportCommentWorker$reportComment$1;->this$0:Lcom/farsitel/bazaar/work/ReportCommentWorker;

    iput p2, p0, Lcom/farsitel/bazaar/work/ReportCommentWorker$reportComment$1;->$reviewId:I

    iput-boolean p3, p0, Lcom/farsitel/bazaar/work/ReportCommentWorker$reportComment$1;->$reply:Z

    iput-object p4, p0, Lcom/farsitel/bazaar/work/ReportCommentWorker$reportComment$1;->$entityType:Lcom/farsitel/bazaar/data/entity/EntityType;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lh/c/b<",
            "*>;)",
            "Lh/c/b<",
            "Lh/h;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/work/ReportCommentWorker$reportComment$1;

    iget-object v2, p0, Lcom/farsitel/bazaar/work/ReportCommentWorker$reportComment$1;->this$0:Lcom/farsitel/bazaar/work/ReportCommentWorker;

    iget v3, p0, Lcom/farsitel/bazaar/work/ReportCommentWorker$reportComment$1;->$reviewId:I

    iget-boolean v4, p0, Lcom/farsitel/bazaar/work/ReportCommentWorker$reportComment$1;->$reply:Z

    iget-object v5, p0, Lcom/farsitel/bazaar/work/ReportCommentWorker$reportComment$1;->$entityType:Lcom/farsitel/bazaar/data/entity/EntityType;

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/work/ReportCommentWorker$reportComment$1;-><init>(Lcom/farsitel/bazaar/work/ReportCommentWorker;IZLcom/farsitel/bazaar/data/entity/EntityType;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/work/ReportCommentWorker$reportComment$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/work/ReportCommentWorker$reportComment$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/work/ReportCommentWorker$reportComment$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/work/ReportCommentWorker$reportComment$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/work/ReportCommentWorker$reportComment$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/farsitel/bazaar/work/ReportCommentWorker$reportComment$1;->p$:Li/a/H;

    .line 2
    iget-object p1, p0, Lcom/farsitel/bazaar/work/ReportCommentWorker$reportComment$1;->this$0:Lcom/farsitel/bazaar/work/ReportCommentWorker;

    invoke-static {p1}, Lcom/farsitel/bazaar/work/ReportCommentWorker;->a(Lcom/farsitel/bazaar/work/ReportCommentWorker;)Lc/c/a/e/d/r/a/d;

    move-result-object p1

    iget v1, p0, Lcom/farsitel/bazaar/work/ReportCommentWorker$reportComment$1;->$reviewId:I

    iget-boolean v3, p0, Lcom/farsitel/bazaar/work/ReportCommentWorker$reportComment$1;->$reply:Z

    iget-object v4, p0, Lcom/farsitel/bazaar/work/ReportCommentWorker$reportComment$1;->$entityType:Lcom/farsitel/bazaar/data/entity/EntityType;

    iput v2, p0, Lcom/farsitel/bazaar/work/ReportCommentWorker$reportComment$1;->label:I

    invoke-virtual {p1, v1, v3, v4, p0}, Lc/c/a/e/d/r/a/d;->a(IZLcom/farsitel/bazaar/data/entity/EntityType;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
