.class public final Lcom/farsitel/bazaar/work/ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ReportApplicationWorker.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/work/ReportApplicationWorker;->k()Landroidx/work/ListenableWorker$a;
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
        "Landroidx/work/ListenableWorker$a;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $comment$inlined:Ljava/lang/String;

.field public final synthetic $packageName:Ljava/lang/String;

.field public final synthetic $selectedReason:Ljava/lang/String;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lcom/farsitel/bazaar/work/ReportApplicationWorker;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lh/c/b;Lcom/farsitel/bazaar/work/ReportApplicationWorker;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/work/ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1;->$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/work/ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1;->$selectedReason:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/work/ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1;->this$0:Lcom/farsitel/bazaar/work/ReportApplicationWorker;

    iput-object p5, p0, Lcom/farsitel/bazaar/work/ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1;->$comment$inlined:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

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

    new-instance v0, Lcom/farsitel/bazaar/work/ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1;

    iget-object v2, p0, Lcom/farsitel/bazaar/work/ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1;->$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/farsitel/bazaar/work/ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1;->$selectedReason:Ljava/lang/String;

    iget-object v5, p0, Lcom/farsitel/bazaar/work/ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1;->this$0:Lcom/farsitel/bazaar/work/ReportApplicationWorker;

    iget-object v6, p0, Lcom/farsitel/bazaar/work/ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1;->$comment$inlined:Ljava/lang/String;

    move-object v1, v0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/work/ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lh/c/b;Lcom/farsitel/bazaar/work/ReportApplicationWorker;Ljava/lang/String;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/work/ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/work/ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/work/ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/work/ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/work/ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/farsitel/bazaar/work/ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1;->p$:Li/a/H;

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/work/ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1;->this$0:Lcom/farsitel/bazaar/work/ReportApplicationWorker;

    invoke-static {p1}, Lcom/farsitel/bazaar/work/ReportApplicationWorker;->a(Lcom/farsitel/bazaar/work/ReportApplicationWorker;)Lc/c/a/e/d/p/a;

    move-result-object p1

    iget-object v1, p0, Lcom/farsitel/bazaar/work/ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1;->$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/farsitel/bazaar/work/ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1;->$selectedReason:Ljava/lang/String;

    iget-object v4, p0, Lcom/farsitel/bazaar/work/ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1;->$comment$inlined:Ljava/lang/String;

    iput v2, p0, Lcom/farsitel/bazaar/work/ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1;->label:I

    invoke-virtual {p1, v1, v3, v4, p0}, Lc/c/a/e/d/p/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/farsitel/bazaar/data/entity/EitherKt;->getOrDefault(Lcom/farsitel/bazaar/data/entity/Either;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/work/ListenableWorker$a;->c()Landroidx/work/ListenableWorker$a;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-static {}, Landroidx/work/ListenableWorker$a;->b()Landroidx/work/ListenableWorker$a;

    move-result-object p1

    :goto_1
    return-object p1
.end method
