.class public final Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosViewModel$makeData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BoughtVideosViewModel.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/f/a;->a(Lcom/farsitel/bazaar/data/entity/None;)V
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
    c = "com.farsitel.bazaar.ui.boughtvideos.BoughtVideosViewModel$makeData$1"
    f = "BoughtVideosViewModel.kt"
    l = {
        0x1b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lc/c/a/n/f/a;


# direct methods
.method public constructor <init>(Lc/c/a/n/f/a;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosViewModel$makeData$1;->this$0:Lc/c/a/n/f/a;

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

    new-instance v0, Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosViewModel$makeData$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosViewModel$makeData$1;->this$0:Lc/c/a/n/f/a;

    invoke-direct {v0, v1, p2}, Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosViewModel$makeData$1;-><init>(Lc/c/a/n/f/a;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosViewModel$makeData$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosViewModel$makeData$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosViewModel$makeData$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosViewModel$makeData$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosViewModel$makeData$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

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

    iget-object p1, p0, Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosViewModel$makeData$1;->p$:Li/a/H;

    .line 4
    new-instance p1, Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosViewModel$makeData$1$1;

    invoke-direct {p1, p0, v2}, Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosViewModel$makeData$1$1;-><init>(Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosViewModel$makeData$1;Lh/c/b;)V

    iput v3, p0, Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosViewModel$makeData$1;->label:I

    invoke-static {p1, p0}, Lc/c/a/c/a/a;->a(Lh/f/a/c;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosViewModel$makeData$1;->this$0:Lc/c/a/n/f/a;

    .line 6
    instance-of v1, p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Ljava/util/List;

    .line 7
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosViewModel$makeData$1;->this$0:Lc/c/a/n/f/a;

    .line 8
    new-instance v0, Lcom/farsitel/bazaar/common/model/Page;

    .line 9
    invoke-static {p1}, Lc/c/a/n/f/a;->b(Lc/c/a/n/f/a;)Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f100048

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 10
    new-instance v1, Lc/c/a/c/d/c$e;

    invoke-direct {v1}, Lc/c/a/c/d/c$e;-><init>()V

    invoke-static {v1, v2, v3, v2}, Lc/c/a/c/d/d;->a(Lc/c/a/c/d/d;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v4, v0

    .line 11
    invoke-direct/range {v4 .. v11}, Lcom/farsitel/bazaar/common/model/Page;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILh/f/b/f;)V

    .line 12
    invoke-virtual {p1, v0}, Lc/c/a/n/c/c/t;->a(Lcom/farsitel/bazaar/common/model/Page;)V

    goto :goto_1

    .line 13
    :cond_3
    instance-of v1, p1, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    if-eqz v1, :cond_4

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/Either$Failure;->getError()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    .line 14
    invoke-static {v0, p1}, Lc/c/a/n/f/a;->a(Lc/c/a/n/f/a;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    .line 15
    :goto_1
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1

    .line 16
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
