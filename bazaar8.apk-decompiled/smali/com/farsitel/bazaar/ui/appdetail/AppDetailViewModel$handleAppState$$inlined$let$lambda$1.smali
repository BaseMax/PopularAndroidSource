.class public final Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$handleAppState$$inlined$let$lambda$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppDetailViewModel.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/b/w;->a(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V
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


# instance fields
.field public final synthetic $appInfoItem$inlined:Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

.field public final synthetic $it:Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

.field public label:I

.field public final synthetic this$0:Lc/c/a/n/b/w;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;Lh/c/b;Lc/c/a/n/b/w;Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$handleAppState$$inlined$let$lambda$1;->$it:Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    iput-object p3, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$handleAppState$$inlined$let$lambda$1;->this$0:Lc/c/a/n/b/w;

    iput-object p4, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$handleAppState$$inlined$let$lambda$1;->$appInfoItem$inlined:Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

    return-void
.end method


# virtual methods
.method public final a(Lh/c/b;)Lh/c/b;
    .locals 4
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

    new-instance v0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$handleAppState$$inlined$let$lambda$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$handleAppState$$inlined$let$lambda$1;->$it:Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$handleAppState$$inlined$let$lambda$1;->this$0:Lc/c/a/n/b/w;

    iget-object v3, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$handleAppState$$inlined$let$lambda$1;->$appInfoItem$inlined:Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$handleAppState$$inlined$let$lambda$1;-><init>(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;Lh/c/b;Lc/c/a/n/b/w;Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lh/c/b;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$handleAppState$$inlined$let$lambda$1;->a(Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$handleAppState$$inlined$let$lambda$1;

    sget-object v0, Lh/h;->a:Lh/h;

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$handleAppState$$inlined$let$lambda$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$handleAppState$$inlined$let$lambda$1;->label:I

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

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$handleAppState$$inlined$let$lambda$1;->this$0:Lc/c/a/n/b/w;

    invoke-static {p1}, Lc/c/a/n/b/w;->k(Lc/c/a/n/b/w;)Lc/c/a/e/d/b/ba;

    move-result-object p1

    .line 5
    new-instance v1, Lcom/farsitel/bazaar/data/entity/UpgradableApp;

    .line 6
    iget-object v3, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$handleAppState$$inlined$let$lambda$1;->this$0:Lc/c/a/n/b/w;

    invoke-virtual {v3}, Lc/c/a/n/b/w;->t()Ljava/lang/String;

    move-result-object v4

    .line 7
    iget-object v3, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$handleAppState$$inlined$let$lambda$1;->$it:Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getName()Ljava/lang/String;

    move-result-object v5

    .line 8
    iget-object v3, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$handleAppState$$inlined$let$lambda$1;->$it:Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isFree()Z

    move-result v6

    .line 9
    iget-object v3, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$handleAppState$$inlined$let$lambda$1;->$it:Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getVersionCode()J

    move-result-wide v7

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v3, v1

    .line 10
    invoke-direct/range {v3 .. v10}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;-><init>(Ljava/lang/String;Ljava/lang/String;ZJZZ)V

    iput v2, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$handleAppState$$inlined$let$lambda$1;->label:I

    .line 11
    invoke-virtual {p1, v1, p0}, Lc/c/a/e/d/b/ba;->a(Lcom/farsitel/bazaar/data/entity/UpgradableApp;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 12
    :cond_2
    :goto_0
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method
