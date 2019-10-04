.class public final Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PendingBookmarkWorker.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/work/PendingBookmarkWorker;->k()Landroidx/work/ListenableWorker$a;
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


# instance fields
.field public final synthetic $aggregateResult$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $this_with:Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lcom/farsitel/bazaar/work/PendingBookmarkWorker;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;Lh/c/b;Lcom/farsitel/bazaar/work/PendingBookmarkWorker;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;->$this_with:Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;

    iput-object p3, p0, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;->this$0:Lcom/farsitel/bazaar/work/PendingBookmarkWorker;

    iput-object p4, p0, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;->$aggregateResult$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;
    .locals 4
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

    new-instance v0, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;->$this_with:Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;

    iget-object v2, p0, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;->this$0:Lcom/farsitel/bazaar/work/PendingBookmarkWorker;

    iget-object v3, p0, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;->$aggregateResult$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;-><init>(Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;Lh/c/b;Lcom/farsitel/bazaar/work/PendingBookmarkWorker;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;->label:I

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

    iget-object p1, p0, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;->p$:Li/a/H;

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;->$this_with:Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->isBookmarked()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5
    iget-object p1, p0, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;->this$0:Lcom/farsitel/bazaar/work/PendingBookmarkWorker;

    invoke-static {p1}, Lcom/farsitel/bazaar/work/PendingBookmarkWorker;->a(Lcom/farsitel/bazaar/work/PendingBookmarkWorker;)Lc/c/a/e/d/d/b;

    move-result-object p1

    .line 6
    new-instance v1, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;

    .line 7
    iget-object v2, p0, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;->$this_with:Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 8
    iget-object v2, p0, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;->$this_with:Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->getAppName()Ljava/lang/String;

    move-result-object v7

    .line 9
    iget-object v2, p0, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;->$this_with:Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->getIconUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    .line 10
    iget-object v2, p0, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;->$this_with:Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->getPrice()I

    move-result v9

    .line 11
    iget-object v2, p0, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;->$this_with:Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->getPriceString()Ljava/lang/String;

    move-result-object v10

    move-object v4, v1

    .line 12
    invoke-direct/range {v4 .. v10}, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    iput v3, p0, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;->label:I

    .line 13
    invoke-virtual {p1, v1, p0}, Lc/c/a/e/d/d/b;->a(Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 14
    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;->this$0:Lcom/farsitel/bazaar/work/PendingBookmarkWorker;

    invoke-static {p1}, Lcom/farsitel/bazaar/work/PendingBookmarkWorker;->a(Lcom/farsitel/bazaar/work/PendingBookmarkWorker;)Lc/c/a/e/d/d/b;

    move-result-object p1

    iget-object v1, p0, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;->$this_with:Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput v2, p0, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;->label:I

    invoke-virtual {p1, v1, p0}, Lc/c/a/e/d/d/b;->b(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 16
    :goto_2
    invoke-static {p1}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
