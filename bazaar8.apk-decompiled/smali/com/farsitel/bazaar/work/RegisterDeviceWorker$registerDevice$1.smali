.class public final Lcom/farsitel/bazaar/work/RegisterDeviceWorker$registerDevice$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RegisterDeviceWorker.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/work/RegisterDeviceWorker;->l()Landroidx/work/ListenableWorker$a;
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

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.work.RegisterDeviceWorker$registerDevice$1"
    f = "RegisterDeviceWorker.kt"
    l = {
        0x19
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lcom/farsitel/bazaar/work/RegisterDeviceWorker;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/work/RegisterDeviceWorker;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/work/RegisterDeviceWorker$registerDevice$1;->this$0:Lcom/farsitel/bazaar/work/RegisterDeviceWorker;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;
    .locals 2
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

    new-instance v0, Lcom/farsitel/bazaar/work/RegisterDeviceWorker$registerDevice$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/work/RegisterDeviceWorker$registerDevice$1;->this$0:Lcom/farsitel/bazaar/work/RegisterDeviceWorker;

    invoke-direct {v0, v1, p2}, Lcom/farsitel/bazaar/work/RegisterDeviceWorker$registerDevice$1;-><init>(Lcom/farsitel/bazaar/work/RegisterDeviceWorker;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/work/RegisterDeviceWorker$registerDevice$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/work/RegisterDeviceWorker$registerDevice$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/work/RegisterDeviceWorker$registerDevice$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/work/RegisterDeviceWorker$registerDevice$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/work/RegisterDeviceWorker$registerDevice$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/farsitel/bazaar/work/RegisterDeviceWorker$registerDevice$1;->p$:Li/a/H;

    .line 4
    :try_start_1
    iget-object p1, p0, Lcom/farsitel/bazaar/work/RegisterDeviceWorker$registerDevice$1;->this$0:Lcom/farsitel/bazaar/work/RegisterDeviceWorker;

    invoke-static {p1}, Lcom/farsitel/bazaar/work/RegisterDeviceWorker;->a(Lcom/farsitel/bazaar/work/RegisterDeviceWorker;)Lc/c/a/e/d/a/a;

    move-result-object p1

    iget-object v1, p0, Lcom/farsitel/bazaar/work/RegisterDeviceWorker$registerDevice$1;->this$0:Lcom/farsitel/bazaar/work/RegisterDeviceWorker;

    invoke-static {v1}, Lcom/farsitel/bazaar/work/RegisterDeviceWorker;->b(Lcom/farsitel/bazaar/work/RegisterDeviceWorker;)Lc/c/a/e/d/u/a;

    move-result-object v1

    invoke-virtual {v1}, Lc/c/a/e/d/u/a;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/farsitel/bazaar/work/RegisterDeviceWorker$registerDevice$1;->this$0:Lcom/farsitel/bazaar/work/RegisterDeviceWorker;

    invoke-static {v3}, Lcom/farsitel/bazaar/work/RegisterDeviceWorker;->b(Lcom/farsitel/bazaar/work/RegisterDeviceWorker;)Lc/c/a/e/d/u/a;

    move-result-object v3

    invoke-virtual {v3}, Lc/c/a/e/d/u/a;->l()Ljava/lang/String;

    move-result-object v3

    iput v2, p0, Lcom/farsitel/bazaar/work/RegisterDeviceWorker$registerDevice$1;->label:I

    invoke-virtual {p1, v1, v3, p0}, Lc/c/a/e/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    invoke-static {}, Landroidx/work/ListenableWorker$a;->c()Landroidx/work/ListenableWorker$a;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 6
    :goto_1
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Unable to register device."

    invoke-direct {v1, v2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {}, Landroidx/work/ListenableWorker$a;->a()Landroidx/work/ListenableWorker$a;

    move-result-object p1

    :goto_2
    return-object p1
.end method
