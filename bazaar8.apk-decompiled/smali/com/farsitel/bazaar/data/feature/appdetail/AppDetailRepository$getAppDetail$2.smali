.class public final Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppDetailRepository.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;IILh/c/b;)Ljava/lang/Object;
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
        "Lcom/farsitel/bazaar/data/entity/Either<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.data.feature.appdetail.AppDetailRepository$getAppDetail$2"
    f = "AppDetailRepository.kt"
    l = {
        0x1e,
        0x2c,
        0x2d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $fromIndex:I

.field public final synthetic $packageName:Ljava/lang/String;

.field public final synthetic $referrer:Ljava/lang/String;

.field public final synthetic $toIndex:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lc/c/a/e/d/c/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/c/a;Ljava/lang/String;Ljava/lang/String;IILh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->this$0:Lc/c/a/e/d/c/a;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->$referrer:Ljava/lang/String;

    iput p4, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->$fromIndex:I

    iput p5, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->$toIndex:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;
    .locals 8
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

    new-instance v0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;

    iget-object v2, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->this$0:Lc/c/a/e/d/c/a;

    iget-object v3, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->$packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->$referrer:Ljava/lang/String;

    iget v5, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->$fromIndex:I

    iget v6, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->$toIndex:I

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;-><init>(Lc/c/a/e/d/c/a;Ljava/lang/String;Ljava/lang/String;IILh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->L$3:Ljava/lang/Object;

    check-cast v0, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->L$2:Ljava/lang/Object;

    check-cast v1, Li/a/N;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->L$1:Ljava/lang/Object;

    check-cast v1, Li/a/N;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/farsitel/bazaar/data/entity/Either;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->L$2:Ljava/lang/Object;

    check-cast v1, Li/a/N;

    iget-object v3, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->L$1:Ljava/lang/Object;

    check-cast v3, Li/a/N;

    iget-object v4, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/farsitel/bazaar/data/entity/Either;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->L$0:Ljava/lang/Object;

    check-cast v1, Li/a/H;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->p$:Li/a/H;

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->this$0:Lc/c/a/e/d/c/a;

    invoke-static {p1}, Lc/c/a/e/d/c/a;->a(Lc/c/a/e/d/c/a;)Lc/c/a/e/d/c/a/a;

    move-result-object p1

    iget-object v5, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->$packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->$referrer:Ljava/lang/String;

    iput-object v1, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->label:I

    invoke-virtual {p1, v5, v6, p0}, Lc/c/a/e/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 5
    :cond_4
    :goto_0
    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    .line 6
    instance-of v4, p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz v4, :cond_7

    .line 7
    sget-object v4, Lc/c/a/c/a/b;->c:Lc/c/a/c/a/b;

    invoke-virtual {v4}, Lc/c/a/c/a/b;->a()Lh/c/e;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2$getReviewAsync$1;

    const/4 v10, 0x0

    invoke-direct {v7, p0, p1, v10}, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2$getReviewAsync$1;-><init>(Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;Lcom/farsitel/bazaar/data/entity/Either;Lh/c/b;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v4, v1

    invoke-static/range {v4 .. v9}, Li/a/e;->a(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/N;

    move-result-object v11

    .line 8
    sget-object v4, Lc/c/a/c/a/b;->c:Lc/c/a/c/a/b;

    invoke-virtual {v4}, Lc/c/a/c/a/b;->a()Lh/c/e;

    move-result-object v5

    new-instance v7, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2$getMyRateAsync$1;

    invoke-direct {v7, p0, v10}, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2$getMyRateAsync$1;-><init>(Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;Lh/c/b;)V

    move-object v4, v1

    invoke-static/range {v4 .. v9}, Li/a/e;->a(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/N;

    move-result-object v1

    .line 9
    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->L$0:Ljava/lang/Object;

    iput-object v11, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->L$2:Ljava/lang/Object;

    iput v3, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->label:I

    invoke-interface {v11, p0}, Li/a/N;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_5

    return-object v0

    :cond_5
    move-object v4, p1

    move-object p1, v3

    move-object v3, v11

    .line 10
    :goto_1
    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    .line 11
    iput-object v4, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->L$2:Ljava/lang/Object;

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->L$3:Ljava/lang/Object;

    iput v2, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->label:I

    invoke-interface {v1, p0}, Li/a/N;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, p1

    move-object p1, v1

    move-object v1, v4

    .line 12
    :goto_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 13
    new-instance v2, Lcom/farsitel/bazaar/data/entity/Either$Success;

    .line 14
    check-cast v1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;

    .line 15
    invoke-static {v0}, Lcom/farsitel/bazaar/data/entity/EitherKt;->getOrNull(Lcom/farsitel/bazaar/data/entity/Either;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 16
    invoke-virtual {v1, v0, p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->toAppDetailRecyclerList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 17
    invoke-direct {v2, p1}, Lcom/farsitel/bazaar/data/entity/Either$Success;-><init>(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_3

    .line 18
    :cond_7
    instance-of v0, p1, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    if-eqz v0, :cond_8

    :goto_3
    return-object p1

    .line 19
    :cond_8
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
