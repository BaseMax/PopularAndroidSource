.class public final Lcom/farsitel/bazaar/ui/base/page/PageViewModel$updateItemsState$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PageViewModel.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/c/c/t;->a(Lcom/farsitel/bazaar/common/model/page/PageItem;Lh/c/b;)Ljava/lang/Object;
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
    c = "com.farsitel.bazaar.ui.base.page.PageViewModel$updateItemsState$2"
    f = "PageViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $pageItem:Lcom/farsitel/bazaar/common/model/page/PageItem;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lc/c/a/n/c/c/t;


# direct methods
.method public constructor <init>(Lc/c/a/n/c/c/t;Lcom/farsitel/bazaar/common/model/page/PageItem;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/base/page/PageViewModel$updateItemsState$2;->this$0:Lc/c/a/n/c/c/t;

    iput-object p2, p0, Lcom/farsitel/bazaar/ui/base/page/PageViewModel$updateItemsState$2;->$pageItem:Lcom/farsitel/bazaar/common/model/page/PageItem;

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

    new-instance v0, Lcom/farsitel/bazaar/ui/base/page/PageViewModel$updateItemsState$2;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/base/page/PageViewModel$updateItemsState$2;->this$0:Lc/c/a/n/c/c/t;

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/base/page/PageViewModel$updateItemsState$2;->$pageItem:Lcom/farsitel/bazaar/common/model/page/PageItem;

    invoke-direct {v0, v1, v2, p2}, Lcom/farsitel/bazaar/ui/base/page/PageViewModel$updateItemsState$2;-><init>(Lc/c/a/n/c/c/t;Lcom/farsitel/bazaar/common/model/page/PageItem;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/ui/base/page/PageViewModel$updateItemsState$2;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/base/page/PageViewModel$updateItemsState$2;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/ui/base/page/PageViewModel$updateItemsState$2;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/ui/base/page/PageViewModel$updateItemsState$2;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/base/page/PageViewModel$updateItemsState$2;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/farsitel/bazaar/ui/base/page/PageViewModel$updateItemsState$2;->p$:Li/a/H;

    .line 2
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/base/page/PageViewModel$updateItemsState$2;->$pageItem:Lcom/farsitel/bazaar/common/model/page/PageItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/PageItem;->getItems()Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/common/model/page/PageTypeItem;

    .line 4
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/base/page/PageViewModel$updateItemsState$2;->this$0:Lc/c/a/n/c/c/t;

    invoke-static {v1, v0}, Lc/c/a/n/c/c/t;->a(Lc/c/a/n/c/c/t;Lcom/farsitel/bazaar/common/model/RecyclerData;)Lcom/farsitel/bazaar/common/model/DownloadableEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/farsitel/bazaar/common/model/DownloadableEntity;->getEntityType()Lcom/farsitel/bazaar/common/model/EntityType;

    move-result-object v1

    sget-object v2, Lc/c/a/n/c/c/r;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 6
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/base/page/PageViewModel$updateItemsState$2;->this$0:Lc/c/a/n/c/c/t;

    invoke-static {v1}, Lc/c/a/n/c/c/t;->h(Lc/c/a/n/c/c/t;)Lc/c/a/b/d/o;

    move-result-object v1

    invoke-interface {v0}, Lcom/farsitel/bazaar/common/model/common/Entity;->getEntityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/c/a/b/d/o;->l(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 7
    :cond_2
    instance-of v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    if-eqz v1, :cond_3

    .line 8
    move-object v1, v0

    check-cast v1, Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    sget-object v2, Lc/c/a/c/h/e;->a:Lc/c/a/c/h/e;

    iget-object v3, p0, Lcom/farsitel/bazaar/ui/base/page/PageViewModel$updateItemsState$2;->this$0:Lc/c/a/n/c/c/t;

    invoke-static {v3}, Lc/c/a/n/c/c/t;->c(Lc/c/a/n/c/c/t;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc/c/a/c/h/e;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->setInstalledVersionCode(Ljava/lang/Long;)V

    .line 9
    iget-object v2, p0, Lcom/farsitel/bazaar/ui/base/page/PageViewModel$updateItemsState$2;->this$0:Lc/c/a/n/c/c/t;

    invoke-static {v2}, Lc/c/a/n/c/c/t;->a(Lc/c/a/n/c/c/t;)Lc/c/a/b/d/b;

    move-result-object v2

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc/c/a/b/d/b;->p(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->setApplicationInstalled(Z)V

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/base/page/PageViewModel$updateItemsState$2;->this$0:Lc/c/a/n/c/c/t;

    invoke-static {v1}, Lc/c/a/n/c/c/t;->a(Lc/c/a/n/c/c/t;)Lc/c/a/b/d/b;

    move-result-object v1

    .line 11
    invoke-interface {v0}, Lcom/farsitel/bazaar/common/model/common/Entity;->getEntityId()Ljava/lang/String;

    move-result-object v2

    .line 12
    iget-object v3, p0, Lcom/farsitel/bazaar/ui/base/page/PageViewModel$updateItemsState$2;->this$0:Lc/c/a/n/c/c/t;

    invoke-static {v3, v0}, Lc/c/a/n/c/c/t;->a(Lc/c/a/n/c/c/t;Lcom/farsitel/bazaar/common/model/DownloadableEntity;)Ljava/lang/Long;

    move-result-object v3

    .line 13
    invoke-virtual {v1, v2, v3}, Lc/c/a/b/d/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v1

    .line 14
    :goto_1
    invoke-interface {v0, v1}, Lcom/farsitel/bazaar/common/model/DownloadableEntity;->setEntityState(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    goto :goto_0

    .line 15
    :cond_4
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
