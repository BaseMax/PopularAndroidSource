.class public final Lcom/farsitel/bazaar/work/PendingBookmarkWorker;
.super Landroidx/work/Worker;
.source "PendingBookmarkWorker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/work/PendingBookmarkWorker$a;
    }
.end annotation


# instance fields
.field public final f:Landroid/content/Context;

.field public final g:Landroidx/work/WorkerParameters;

.field public final h:Lc/c/a/e/d/d/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Lc/c/a/e/d/d/b;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bookmarkRepository"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/work/PendingBookmarkWorker;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/farsitel/bazaar/work/PendingBookmarkWorker;->g:Landroidx/work/WorkerParameters;

    iput-object p3, p0, Lcom/farsitel/bazaar/work/PendingBookmarkWorker;->h:Lc/c/a/e/d/d/b;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/work/PendingBookmarkWorker;)Lc/c/a/e/d/d/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/work/PendingBookmarkWorker;->h:Lc/c/a/e/d/d/b;

    return-object p0
.end method


# virtual methods
.method public k()Landroidx/work/ListenableWorker$a;
    .locals 6

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2
    iget-object v2, p0, Lcom/farsitel/bazaar/work/PendingBookmarkWorker;->h:Lc/c/a/e/d/d/b;

    invoke-virtual {v2}, Lc/c/a/e/d/d/b;->b()Ljava/util/List;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;

    .line 4
    new-instance v4, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, p0, v0}, Lcom/farsitel/bazaar/work/PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;-><init>(Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;Lh/c/b;Lcom/farsitel/bazaar/work/PendingBookmarkWorker;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-static {v5, v4, v1, v5}, Li/a/e;->a(Lh/c/e;Lh/f/a/c;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Landroidx/work/ListenableWorker$a;->c()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    const-string v1, "Result.success()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 7
    :cond_2
    invoke-static {}, Landroidx/work/ListenableWorker$a;->b()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    const-string v1, "Result.retry()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method
