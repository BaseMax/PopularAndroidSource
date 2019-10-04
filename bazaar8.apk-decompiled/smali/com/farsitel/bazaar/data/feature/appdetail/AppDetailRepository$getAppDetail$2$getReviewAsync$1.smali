.class public final Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2$getReviewAsync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppDetailRepository.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->d(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.data.feature.appdetail.AppDetailRepository$getAppDetail$2$getReviewAsync$1"
    f = "AppDetailRepository.kt"
    l = {
        0x24
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $appDetailResponse:Lcom/farsitel/bazaar/data/entity/Either;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;Lcom/farsitel/bazaar/data/entity/Either;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2$getReviewAsync$1;->this$0:Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2$getReviewAsync$1;->$appDetailResponse:Lcom/farsitel/bazaar/data/entity/Either;

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

    new-instance v0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2$getReviewAsync$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2$getReviewAsync$1;->this$0:Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;

    iget-object v2, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2$getReviewAsync$1;->$appDetailResponse:Lcom/farsitel/bazaar/data/entity/Either;

    invoke-direct {v0, v1, v2, p2}, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2$getReviewAsync$1;-><init>(Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;Lcom/farsitel/bazaar/data/entity/Either;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2$getReviewAsync$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2$getReviewAsync$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2$getReviewAsync$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2$getReviewAsync$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2$getReviewAsync$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2$getReviewAsync$1;->p$:Li/a/H;

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2$getReviewAsync$1;->this$0:Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;

    iget-object p1, p1, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->this$0:Lc/c/a/e/d/c/a;

    invoke-static {p1}, Lc/c/a/e/d/c/a;->c(Lc/c/a/e/d/c/a;)Lc/c/a/e/d/r/c;

    move-result-object v3

    .line 5
    iget-object p1, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2$getReviewAsync$1;->this$0:Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;

    iget-object v4, p1, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->$packageName:Ljava/lang/String;

    iget v5, p1, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->$fromIndex:I

    iget v6, p1, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;->$toIndex:I

    iget-object p1, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2$getReviewAsync$1;->$appDetailResponse:Lcom/farsitel/bazaar/data/entity/Either;

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->getComment()Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;->getDefaultSortTypeChoice()Ljava/lang/String;

    move-result-object v7

    .line 6
    iget-object p1, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2$getReviewAsync$1;->$appDetailResponse:Lcom/farsitel/bazaar/data/entity/Either;

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->getPackageInfo()Lcom/farsitel/bazaar/common/model/appdetail/Package;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/Package;->getVersionCode()J

    move-result-wide v8

    invoke-static {v8, v9}, Lh/c/b/a/a;->a(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    move-object v8, p1

    iput v2, p0, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2$getReviewAsync$1;->label:I

    move-object v9, p0

    .line 7
    invoke-virtual/range {v3 .. v9}, Lc/c/a/e/d/r/c;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/Long;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    return-object p1
.end method
