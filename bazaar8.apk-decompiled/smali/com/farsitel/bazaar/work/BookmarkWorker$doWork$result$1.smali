.class public final Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BookmarkWorker.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/work/BookmarkWorker;->k()Landroidx/work/ListenableWorker$a;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.work.BookmarkWorker$doWork$result$1"
    f = "BookmarkWorker.kt"
    l = {
        0x23,
        0x2d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $appName:Ljava/lang/String;

.field public final synthetic $iconUrl:Ljava/lang/String;

.field public final synthetic $isBookmarked:Z

.field public final synthetic $packageName:Ljava/lang/String;

.field public final synthetic $price:I

.field public final synthetic $priceString:Ljava/lang/String;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lcom/farsitel/bazaar/work/BookmarkWorker;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/work/BookmarkWorker;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->this$0:Lcom/farsitel/bazaar/work/BookmarkWorker;

    iput-boolean p2, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->$isBookmarked:Z

    iput-object p3, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->$appName:Ljava/lang/String;

    iput-object p5, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->$iconUrl:Ljava/lang/String;

    iput p6, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->$price:I

    iput-object p7, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->$priceString:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;
    .locals 10
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

    new-instance v0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;

    iget-object v2, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->this$0:Lcom/farsitel/bazaar/work/BookmarkWorker;

    iget-boolean v3, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->$isBookmarked:Z

    iget-object v4, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->$packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->$appName:Ljava/lang/String;

    iget-object v6, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->$iconUrl:Ljava/lang/String;

    iget v7, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->$price:I

    iget-object v8, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->$priceString:Ljava/lang/String;

    move-object v1, v0

    move-object v9, p2

    invoke-direct/range {v1 .. v9}, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;-><init>(Lcom/farsitel/bazaar/work/BookmarkWorker;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->p$:Li/a/H;

    .line 4
    iget-boolean p1, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->$isBookmarked:Z

    if-eqz p1, :cond_4

    .line 5
    iget-object p1, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->this$0:Lcom/farsitel/bazaar/work/BookmarkWorker;

    invoke-static {p1}, Lcom/farsitel/bazaar/work/BookmarkWorker;->a(Lcom/farsitel/bazaar/work/BookmarkWorker;)Lc/c/a/e/d/d/b;

    move-result-object p1

    .line 6
    new-instance v1, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;

    .line 7
    iget-object v5, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->$packageName:Ljava/lang/String;

    .line 8
    iget-object v7, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->$appName:Ljava/lang/String;

    .line 9
    iget-object v6, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->$iconUrl:Ljava/lang/String;

    .line 10
    iget-boolean v8, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->$isBookmarked:Z

    .line 11
    iget v9, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->$price:I

    .line 12
    iget-object v10, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->$priceString:Ljava/lang/String;

    move-object v4, v1

    .line 13
    invoke-direct/range {v4 .. v10}, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    iput v3, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->label:I

    .line 14
    invoke-virtual {p1, v1, p0}, Lc/c/a/e/d/d/b;->a(Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 15
    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->this$0:Lcom/farsitel/bazaar/work/BookmarkWorker;

    invoke-static {p1}, Lcom/farsitel/bazaar/work/BookmarkWorker;->a(Lcom/farsitel/bazaar/work/BookmarkWorker;)Lc/c/a/e/d/d/b;

    move-result-object p1

    iget-object v1, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->$packageName:Ljava/lang/String;

    iput v2, p0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;->label:I

    invoke-virtual {p1, v1, p0}, Lc/c/a/e/d/d/b;->b(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 17
    :goto_2
    invoke-static {p1}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
