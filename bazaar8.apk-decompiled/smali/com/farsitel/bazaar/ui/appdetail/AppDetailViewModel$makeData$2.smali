.class public final Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppDetailViewModel.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/b/w;->a(Lc/c/a/n/b/s;)V
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
    c = "com.farsitel.bazaar.ui.appdetail.AppDetailViewModel$makeData$2"
    f = "AppDetailViewModel.kt"
    l = {
        0x57
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lc/c/a/n/b/w;


# direct methods
.method public constructor <init>(Lc/c/a/n/b/w;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$2;->this$0:Lc/c/a/n/b/w;

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

    new-instance v0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$2;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$2;->this$0:Lc/c/a/n/b/w;

    invoke-direct {v0, v1, p2}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$2;-><init>(Lc/c/a/n/b/w;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$2;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$2;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$2;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$2;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lb/r/r;

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

    iget-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$2;->p$:Li/a/H;

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$2;->this$0:Lc/c/a/n/b/w;

    invoke-static {p1}, Lc/c/a/n/b/w;->b(Lc/c/a/n/b/w;)Lb/r/r;

    move-result-object p1

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$2;->this$0:Lc/c/a/n/b/w;

    invoke-static {v1}, Lc/c/a/n/b/w;->c(Lc/c/a/n/b/w;)Lc/c/a/e/d/d/b;

    move-result-object v1

    iget-object v3, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$2;->this$0:Lc/c/a/n/b/w;

    invoke-virtual {v3}, Lc/c/a/n/b/w;->t()Ljava/lang/String;

    move-result-object v3

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$2;->label:I

    invoke-virtual {v1, v3, p0}, Lc/c/a/e/d/d/b;->a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    .line 5
    :goto_0
    check-cast p1, Landroidx/lifecycle/LiveData;

    new-instance v1, Lc/c/a/n/b/y;

    invoke-direct {v1, p0}, Lc/c/a/n/b/y;-><init>(Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$2;)V

    invoke-virtual {v0, p1, v1}, Lb/r/r;->a(Landroidx/lifecycle/LiveData;Lb/r/u;)V

    .line 6
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method
