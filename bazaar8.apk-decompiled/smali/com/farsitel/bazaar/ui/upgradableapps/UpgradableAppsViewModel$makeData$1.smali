.class public final Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UpgradableAppsViewModel.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/A/g;->a(Lcom/farsitel/bazaar/data/entity/None;)V
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
        "Lh/h;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.ui.upgradableapps.UpgradableAppsViewModel$makeData$1"
    f = "UpgradableAppsViewModel.kt"
    l = {
        0x26
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $pageName:Ljava/lang/String;

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lc/c/a/n/A/g;


# direct methods
.method public constructor <init>(Lc/c/a/n/A/g;Ljava/lang/String;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;->this$0:Lc/c/a/n/A/g;

    iput-object p2, p0, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;->$pageName:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;
    .locals 3
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

    new-instance v0, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;->this$0:Lc/c/a/n/A/g;

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;->$pageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;-><init>(Lc/c/a/n/A/g;Ljava/lang/String;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;->L$0:Ljava/lang/Object;

    check-cast v0, Li/a/H;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    move-object v3, v0

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

    iget-object p1, p0, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;->p$:Li/a/H;

    .line 4
    new-instance v1, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1$1;

    invoke-direct {v1, p0, v2}, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1$1;-><init>(Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;Lh/c/b;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;->label:I

    invoke-static {v1, p0}, Lc/c/a/c/a/a;->a(Lh/f/a/c;Lh/c/b;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v3, p1

    move-object p1, v1

    .line 5
    :goto_0
    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 6
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;->this$0:Lc/c/a/n/A/g;

    const-string v1, "source"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$1;

    invoke-direct {v1, p0, v3}, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$1;-><init>(Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;Li/a/H;)V

    invoke-virtual {v0, p1, v1}, Lc/c/a/n/c/c/t;->b(Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 7
    new-instance v6, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$2;

    invoke-direct {v6, v2, p0, v3}, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$2;-><init>(Lh/c/b;Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;Li/a/H;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    .line 8
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method
