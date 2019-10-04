.class public final Lcom/farsitel/bazaar/work/UpgradableAppsWorker$getUpgradableApps$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UpgradableAppsWorker.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/work/UpgradableAppsWorker;->l()Landroidx/work/ListenableWorker$a;
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
    c = "com.farsitel.bazaar.work.UpgradableAppsWorker$getUpgradableApps$1"
    f = "UpgradableAppsWorker.kt"
    l = {
        0x1a,
        0x1b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lcom/farsitel/bazaar/work/UpgradableAppsWorker;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/work/UpgradableAppsWorker;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/work/UpgradableAppsWorker$getUpgradableApps$1;->this$0:Lcom/farsitel/bazaar/work/UpgradableAppsWorker;

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

    new-instance v0, Lcom/farsitel/bazaar/work/UpgradableAppsWorker$getUpgradableApps$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/work/UpgradableAppsWorker$getUpgradableApps$1;->this$0:Lcom/farsitel/bazaar/work/UpgradableAppsWorker;

    invoke-direct {v0, v1, p2}, Lcom/farsitel/bazaar/work/UpgradableAppsWorker$getUpgradableApps$1;-><init>(Lcom/farsitel/bazaar/work/UpgradableAppsWorker;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/work/UpgradableAppsWorker$getUpgradableApps$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/work/UpgradableAppsWorker$getUpgradableApps$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/work/UpgradableAppsWorker$getUpgradableApps$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/work/UpgradableAppsWorker$getUpgradableApps$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/work/UpgradableAppsWorker$getUpgradableApps$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :try_start_1
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/farsitel/bazaar/work/UpgradableAppsWorker$getUpgradableApps$1;->p$:Li/a/H;

    .line 4
    :try_start_2
    sget-object v4, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    const-string v5, "Start getting upgradable apps."

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lc/c/a/c/c/a;->a(Lc/c/a/c/c/a;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/farsitel/bazaar/work/UpgradableAppsWorker$getUpgradableApps$1;->this$0:Lcom/farsitel/bazaar/work/UpgradableAppsWorker;

    invoke-static {p1}, Lcom/farsitel/bazaar/work/UpgradableAppsWorker;->a(Lcom/farsitel/bazaar/work/UpgradableAppsWorker;)Lc/c/a/e/d/b/ba;

    move-result-object p1

    iput v3, p0, Lcom/farsitel/bazaar/work/UpgradableAppsWorker$getUpgradableApps$1;->label:I

    invoke-virtual {p1, p0}, Lc/c/a/e/d/b/ba;->f(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 6
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/farsitel/bazaar/work/UpgradableAppsWorker$getUpgradableApps$1;->this$0:Lcom/farsitel/bazaar/work/UpgradableAppsWorker;

    invoke-static {p1}, Lcom/farsitel/bazaar/work/UpgradableAppsWorker;->b(Lcom/farsitel/bazaar/work/UpgradableAppsWorker;)Lc/c/a/b/f/a/d;

    move-result-object p1

    iput v2, p0, Lcom/farsitel/bazaar/work/UpgradableAppsWorker$getUpgradableApps$1;->label:I

    invoke-virtual {p1, p0}, Lc/c/a/b/f/a/d;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 7
    :cond_4
    :goto_1
    invoke-static {}, Landroidx/work/ListenableWorker$a;->c()Landroidx/work/ListenableWorker$a;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 8
    :goto_2
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Unable to retrieve upgradable apps."

    invoke-direct {v1, v2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lc/c/a/c/c/a;->b(Ljava/lang/Throwable;)V

    .line 9
    invoke-static {}, Landroidx/work/ListenableWorker$a;->a()Landroidx/work/ListenableWorker$a;

    move-result-object p1

    :goto_3
    return-object p1
.end method
