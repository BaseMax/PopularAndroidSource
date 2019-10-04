.class public final Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker$updateApplication$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StartScheduleUpdateWorker.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;->l()Landroid/content/ComponentName;
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
        "Landroid/content/ComponentName;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.work.periodicdelay.StartScheduleUpdateWorker$updateApplication$1"
    f = "StartScheduleUpdateWorker.kt"
    l = {
        0x30
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker$updateApplication$1;->this$0:Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;

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

    new-instance v0, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker$updateApplication$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker$updateApplication$1;->this$0:Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;

    invoke-direct {v0, v1, p2}, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker$updateApplication$1;-><init>(Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker$updateApplication$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker$updateApplication$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker$updateApplication$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker$updateApplication$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker$updateApplication$1;->label:I

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

    iget-object p1, p0, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker$updateApplication$1;->p$:Li/a/H;

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker$updateApplication$1;->this$0:Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;

    invoke-static {p1}, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;->b(Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;)Lc/c/a/e/d/b/E;

    move-result-object p1

    iput v2, p0, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker$updateApplication$1;->label:I

    invoke-virtual {p1, p0}, Lc/c/a/e/d/b/E;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    check-cast p1, Landroidx/lifecycle/LiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker$updateApplication$1;->this$0:Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;

    invoke-static {v1}, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;->a(Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    sget-object v1, Lcom/farsitel/bazaar/app/download/DownloadService;->b:Lcom/farsitel/bazaar/app/download/DownloadService$a;

    const-string v2, "upgradableApps"

    invoke-static {p1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/farsitel/bazaar/app/download/DownloadService$a;->a(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "BATCH_DOWNLOAD"

    .line 8
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object p1, p0, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker$updateApplication$1;->this$0:Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;

    invoke-static {p1}, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;->a(Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
