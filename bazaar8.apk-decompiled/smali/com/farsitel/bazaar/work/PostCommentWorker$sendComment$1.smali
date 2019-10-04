.class public final Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PostCommentWorker.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/work/PostCommentWorker;->a(Ljava/lang/String;ILjava/lang/String;JLcom/farsitel/bazaar/data/entity/EntityType;)Z
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
    c = "com.farsitel.bazaar.work.PostCommentWorker$sendComment$1"
    f = "PostCommentWorker.kt"
    l = {
        0x2f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $appVersion:J

.field public final synthetic $comment:Ljava/lang/String;

.field public final synthetic $entityId:Ljava/lang/String;

.field public final synthetic $entityType:Lcom/farsitel/bazaar/data/entity/EntityType;

.field public final synthetic $rateValue:I

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lcom/farsitel/bazaar/work/PostCommentWorker;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/work/PostCommentWorker;Ljava/lang/String;ILjava/lang/String;JLcom/farsitel/bazaar/data/entity/EntityType;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;->this$0:Lcom/farsitel/bazaar/work/PostCommentWorker;

    iput-object p2, p0, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;->$entityId:Ljava/lang/String;

    iput p3, p0, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;->$rateValue:I

    iput-object p4, p0, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;->$comment:Ljava/lang/String;

    iput-wide p5, p0, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;->$appVersion:J

    iput-object p7, p0, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;->$entityType:Lcom/farsitel/bazaar/data/entity/EntityType;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;
    .locals 10
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

    new-instance v0, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;

    iget-object v2, p0, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;->this$0:Lcom/farsitel/bazaar/work/PostCommentWorker;

    iget-object v3, p0, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;->$entityId:Ljava/lang/String;

    iget v4, p0, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;->$rateValue:I

    iget-object v5, p0, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;->$comment:Ljava/lang/String;

    iget-wide v6, p0, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;->$appVersion:J

    iget-object v8, p0, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;->$entityType:Lcom/farsitel/bazaar/data/entity/EntityType;

    move-object v1, v0

    move-object v9, p2

    invoke-direct/range {v1 .. v9}, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;-><init>(Lcom/farsitel/bazaar/work/PostCommentWorker;Ljava/lang/String;ILjava/lang/String;JLcom/farsitel/bazaar/data/entity/EntityType;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;->label:I

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

    iget-object p1, p0, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;->p$:Li/a/H;

    .line 2
    iget-object p1, p0, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;->this$0:Lcom/farsitel/bazaar/work/PostCommentWorker;

    invoke-static {p1}, Lcom/farsitel/bazaar/work/PostCommentWorker;->a(Lcom/farsitel/bazaar/work/PostCommentWorker;)Lc/c/a/e/d/r/b/b;

    move-result-object v3

    iget-object v4, p0, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;->$entityId:Ljava/lang/String;

    iget v5, p0, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;->$rateValue:I

    iget-object v6, p0, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;->$comment:Ljava/lang/String;

    iget-wide v7, p0, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;->$appVersion:J

    iget-object v9, p0, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;->$entityType:Lcom/farsitel/bazaar/data/entity/EntityType;

    iput v2, p0, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;->label:I

    move-object v10, p0

    invoke-virtual/range {v3 .. v10}, Lc/c/a/e/d/r/b/b;->a(Ljava/lang/String;ILjava/lang/String;JLcom/farsitel/bazaar/data/entity/EntityType;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
