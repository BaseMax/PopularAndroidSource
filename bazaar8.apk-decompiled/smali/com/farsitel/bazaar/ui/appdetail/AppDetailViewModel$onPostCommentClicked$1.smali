.class public final Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppDetailViewModel.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/b/w;->c(I)V
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
    c = "com.farsitel.bazaar.ui.appdetail.AppDetailViewModel$onPostCommentClicked$1"
    f = "AppDetailViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $rateValue:I

.field public label:I

.field public final synthetic this$0:Lc/c/a/n/b/w;


# direct methods
.method public constructor <init>(Lc/c/a/n/b/w;ILh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;->this$0:Lc/c/a/n/b/w;

    iput p2, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;->$rateValue:I

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

    return-void
.end method


# virtual methods
.method public final a(Lh/c/b;)Lh/c/b;
    .locals 3
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

    new-instance v0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;->this$0:Lc/c/a/n/b/w;

    iget v2, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;->$rateValue:I

    invoke-direct {v0, v1, v2, p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;-><init>(Lc/c/a/n/b/w;ILh/c/b;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lh/c/b;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;->a(Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;

    sget-object v0, Lh/h;->a:Lh/h;

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;->this$0:Lc/c/a/n/b/w;

    invoke-static {p1}, Lc/c/a/n/b/w;->a(Lc/c/a/n/b/w;)Lc/c/a/d/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/d/c/b;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;->this$0:Lc/c/a/n/b/w;

    invoke-virtual {p1}, Lc/c/a/n/b/w;->p()I

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;->this$0:Lc/c/a/n/b/w;

    iget v1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;->$rateValue:I

    invoke-static {v0, v1}, Lc/c/a/n/b/w;->a(Lc/c/a/n/b/w;I)V

    .line 5
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;->this$0:Lc/c/a/n/b/w;

    invoke-static {v0}, Lc/c/a/n/b/w;->g(Lc/c/a/n/b/w;)Lb/r/r;

    move-result-object v0

    new-instance v1, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/AppDetailState$PostComment;->a:Lcom/farsitel/bazaar/core/model/AppDetailState$PostComment;

    iget-object v3, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;->this$0:Lc/c/a/n/b/w;

    invoke-static {v3}, Lc/c/a/n/b/w;->g(Lc/c/a/n/b/w;)Lb/r/r;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/farsitel/bazaar/core/model/Resource;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    iget-object v5, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;->this$0:Lc/c/a/n/b/w;

    invoke-static {v5}, Lc/c/a/n/b/w;->g(Lc/c/a/n/b/w;)Lb/r/r;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/farsitel/bazaar/core/model/Resource;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object v4

    :cond_1
    invoke-direct {v1, v2, v3, v4}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    invoke-virtual {v0, v1}, Lb/r/t;->a(Ljava/lang/Object;)V

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lc/c/a/n/b/z;

    invoke-direct {v1, p0, p1}, Lc/c/a/n/b/z;-><init>(Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;I)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;->this$0:Lc/c/a/n/b/w;

    invoke-static {p1}, Lc/c/a/n/b/w;->h(Lc/c/a/n/b/w;)Lb/r/t;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-static {v0}, Lh/c/b/a/a;->a(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/r/t;->a(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;->this$0:Lc/c/a/n/b/w;

    invoke-virtual {p1}, Lc/c/a/n/b/w;->p()I

    move-result v0

    invoke-static {p1, v0}, Lc/c/a/n/b/w;->a(Lc/c/a/n/b/w;I)V

    .line 9
    :goto_1
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
