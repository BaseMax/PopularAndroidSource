.class public final Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onReportFragmentClicked$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppDetailViewModel.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/b/w;->w()V
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
    c = "com.farsitel.bazaar.ui.appdetail.AppDetailViewModel$onReportFragmentClicked$1"
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

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onReportFragmentClicked$1;->this$0:Lc/c/a/n/b/w;

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

    new-instance v0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onReportFragmentClicked$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onReportFragmentClicked$1;->this$0:Lc/c/a/n/b/w;

    invoke-direct {v0, v1, p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onReportFragmentClicked$1;-><init>(Lc/c/a/n/b/w;Lh/c/b;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lh/c/b;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onReportFragmentClicked$1;->a(Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onReportFragmentClicked$1;

    sget-object v0, Lh/h;->a:Lh/h;

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onReportFragmentClicked$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onReportFragmentClicked$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onReportFragmentClicked$1;->this$0:Lc/c/a/n/b/w;

    invoke-static {p1}, Lc/c/a/n/b/w;->a(Lc/c/a/n/b/w;)Lc/c/a/d/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/d/c/b;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onReportFragmentClicked$1;->this$0:Lc/c/a/n/b/w;

    invoke-static {p1}, Lc/c/a/n/b/w;->g(Lc/c/a/n/b/w;)Lb/r/r;

    move-result-object p1

    new-instance v0, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v1, Lcom/farsitel/bazaar/core/model/AppDetailState$Report;->a:Lcom/farsitel/bazaar/core/model/AppDetailState$Report;

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onReportFragmentClicked$1;->this$0:Lc/c/a/n/b/w;

    invoke-static {v2}, Lc/c/a/n/b/w;->g(Lc/c/a/n/b/w;)Lb/r/r;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/farsitel/bazaar/core/model/Resource;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iget-object v4, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onReportFragmentClicked$1;->this$0:Lc/c/a/n/b/w;

    invoke-static {v4}, Lc/c/a/n/b/w;->g(Lc/c/a/n/b/w;)Lb/r/r;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/farsitel/bazaar/core/model/Resource;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object v3

    :cond_1
    invoke-direct {v0, v1, v2, v3}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    invoke-virtual {p1, v0}, Lb/r/t;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onReportFragmentClicked$1;->this$0:Lc/c/a/n/b/w;

    invoke-static {p1}, Lc/c/a/n/b/w;->h(Lc/c/a/n/b/w;)Lb/r/t;

    move-result-object p1

    const/16 v0, 0x3eb

    invoke-static {v0}, Lh/c/b/a/a;->a(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/r/t;->a(Ljava/lang/Object;)V

    .line 5
    :goto_1
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
