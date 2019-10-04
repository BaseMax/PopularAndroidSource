.class public final Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$changeBookmarkState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppDetailViewModel.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/b/w;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lh/f/a/b<",
        "Lh/c/b<",
        "-",
        "Lh/h;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.ui.appdetail.AppDetailViewModel$changeBookmarkState$1"
    f = "AppDetailViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public label:I

.field public final synthetic this$0:Lc/c/a/n/b/w;


# direct methods
.method public constructor <init>(Lc/c/a/n/b/w;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$changeBookmarkState$1;->this$0:Lc/c/a/n/b/w;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

    return-void
.end method


# virtual methods
.method public final a(Lh/c/b;)Lh/c/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "*>;)",
            "Lh/c/b<",
            "Lh/h;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$changeBookmarkState$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$changeBookmarkState$1;->this$0:Lc/c/a/n/b/w;

    invoke-direct {v0, v1, p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$changeBookmarkState$1;-><init>(Lc/c/a/n/b/w;Lh/c/b;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lh/c/b;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$changeBookmarkState$1;->a(Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$changeBookmarkState$1;

    sget-object v0, Lh/h;->a:Lh/h;

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$changeBookmarkState$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$changeBookmarkState$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$changeBookmarkState$1;->this$0:Lc/c/a/n/b/w;

    invoke-static {p1}, Lc/c/a/n/b/w;->a(Lc/c/a/n/b/w;)Lc/c/a/d/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/d/c/b;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$changeBookmarkState$1;->this$0:Lc/c/a/n/b/w;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lc/c/a/n/b/w;->a(Lc/c/a/n/b/w;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$changeBookmarkState$1;->this$0:Lc/c/a/n/b/w;

    invoke-static {v0}, Lc/c/a/n/b/w;->b(Lc/c/a/n/b/w;)Lb/r/r;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v1}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    .line 5
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$changeBookmarkState$1;->this$0:Lc/c/a/n/b/w;

    invoke-static {v0}, Lc/c/a/n/b/w;->l(Lc/c/a/n/b/w;)Lc/c/a/p/I;

    move-result-object v2

    .line 6
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$changeBookmarkState$1;->this$0:Lc/c/a/n/b/w;

    invoke-virtual {v0}, Lc/c/a/n/b/w;->t()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getName()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getIconURL()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getPrice()I

    move-result v7

    .line 10
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getPrices()Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;->getPriceString()Ljava/lang/String;

    move-result-object v8

    .line 11
    invoke-virtual/range {v2 .. v8}, Lc/c/a/p/I;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$changeBookmarkState$1;->this$0:Lc/c/a/n/b/w;

    invoke-static {p1}, Lc/c/a/n/b/w;->d(Lc/c/a/n/b/w;)Lb/r/t;

    move-result-object p1

    sget-object v0, Lcom/farsitel/bazaar/data/entity/None;->INSTANCE:Lcom/farsitel/bazaar/data/entity/None;

    invoke-virtual {p1, v0}, Lb/r/t;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$changeBookmarkState$1;->this$0:Lc/c/a/n/b/w;

    invoke-static {p1}, Lc/c/a/n/b/w;->h(Lc/c/a/n/b/w;)Lb/r/t;

    move-result-object p1

    const/16 v0, 0x3e9

    invoke-static {v0}, Lh/c/b/a/a;->a(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/r/t;->a(Ljava/lang/Object;)V

    .line 14
    :cond_1
    :goto_0
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
