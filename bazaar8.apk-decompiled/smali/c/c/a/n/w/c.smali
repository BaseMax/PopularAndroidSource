.class public final Lc/c/a/n/w/c;
.super Lc/c/a/d/f/p;
.source "SearchBoxViewModel.kt"


# instance fields
.field public d:Ljava/util/Timer;

.field public e:Ljava/util/TimerTask;

.field public f:Ljava/lang/String;

.field public final g:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public h:Li/a/ra;

.field public final i:Lc/c/a/e/d/s/c;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/s/c;)V
    .locals 1

    const-string v0, "searchPredictionRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/p;-><init>()V

    iput-object p1, p0, Lc/c/a/n/w/c;->i:Lc/c/a/e/d/s/c;

    .line 2
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/n/w/c;->g:Lb/r/t;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, v0, p1}, Li/a/ua;->a(Li/a/ra;ILjava/lang/Object;)Li/a/u;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/w/c;->h:Li/a/ra;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/w/c;)Lh/c/e;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/w/c;->e()Lh/c/e;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/w/c;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/w/c;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/w/c;Li/a/ra;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lc/c/a/n/w/c;->h:Li/a/ra;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/w/c;Ljava/util/List;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lc/c/a/n/w/c;->a(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/w/c;Ljava/util/Timer;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lc/c/a/n/w/c;->d:Ljava/util/Timer;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/w/c;Ljava/util/TimerTask;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lc/c/a/n/w/c;->e:Ljava/util/TimerTask;

    return-void
.end method

.method public static final synthetic b(Lc/c/a/n/w/c;)Lb/r/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/w/c;->g:Lb/r/t;

    return-object p0
.end method

.method public static final synthetic c(Lc/c/a/n/w/c;)Lc/c/a/e/d/s/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/w/c;->i:Lc/c/a/e/d/s/c;

    return-object p0
.end method

.method public static final synthetic d(Lc/c/a/n/w/c;)Ljava/util/Timer;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/w/c;->d:Ljava/util/Timer;

    return-object p0
.end method

.method public static final synthetic e(Lc/c/a/n/w/c;)Ljava/util/TimerTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/w/c;->e:Ljava/util/TimerTask;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 4

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lc/c/a/n/w/c;->f:Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lc/c/a/n/w/c;->g:Lb/r/t;

    new-instance v2, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v3, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-direct {v2, v3, v0, p1}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    invoke-virtual {v1, v2}, Lb/r/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;)V
    .locals 7

    const-string v0, "searchHistoryItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v4, Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$removeHistoryItem$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$removeHistoryItem$1;-><init>(Lc/c/a/n/w/c;Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;Lh/c/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final a(Lh/f/a/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/f/a/a<",
            "Lh/h;",
            ">;)V"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$scheduleSearchTask$1;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$scheduleSearchTask$1;-><init>(Lc/c/a/n/w/c;)V

    .line 8
    new-instance v1, Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$scheduleSearchTask$2;

    invoke-direct {v1, p0, p1}, Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$scheduleSearchTask$2;-><init>(Lc/c/a/n/w/c;Lh/f/a/a;)V

    .line 9
    invoke-virtual {v1}, Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$scheduleSearchTask$2;->invoke()V

    .line 10
    invoke-virtual {v0}, Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$scheduleSearchTask$1;->invoke()V

    .line 11
    iget-object p1, p0, Lc/c/a/n/w/c;->d:Ljava/util/Timer;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lc/c/a/n/w/c;->e:Ljava/util/TimerTask;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "searchQuery"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lc/c/a/n/w/c;->f:Ljava/lang/String;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 13
    :cond_0
    iput-object p1, p0, Lc/c/a/n/w/c;->f:Ljava/lang/String;

    .line 14
    iget-object v0, p0, Lc/c/a/n/w/c;->h:Li/a/ra;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Li/a/ra$a;->a(Li/a/ra;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 15
    new-instance v0, Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$performSearch$1;

    invoke-direct {v0, p0, p1}, Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$performSearch$1;-><init>(Lc/c/a/n/w/c;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc/c/a/n/w/c;->a(Lh/f/a/a;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/data/entity/SearchPrediction;",
            ">;)V"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lc/c/a/n/w/c;->g:Lb/r/t;

    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    .line 17
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 19
    check-cast v3, Lcom/farsitel/bazaar/data/entity/SearchPrediction;

    .line 20
    invoke-static {v3}, Lc/c/a/n/g/a;->a(Lcom/farsitel/bazaar/data/entity/SearchPrediction;)Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-instance v3, Lcom/farsitel/bazaar/core/model/Resource;

    invoke-direct {v3, v1, v2, p1}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    invoke-virtual {v0, v3}, Lb/r/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public d()V
    .locals 3

    .line 2
    invoke-super {p0}, Lc/c/a/d/f/p;->d()V

    .line 3
    iget-object v0, p0, Lc/c/a/n/w/c;->h:Li/a/ra;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Li/a/ra$a;->a(Li/a/ra;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public final e()Lh/c/e;
    .locals 2

    .line 2
    sget-object v0, Lc/c/a/c/a/b;->c:Lc/c/a/c/a/b;

    invoke-virtual {v0}, Lc/c/a/c/a/b;->b()Lh/c/e;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/n/w/c;->h:Li/a/ra;

    invoke-interface {v0, v1}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/w/c;->g:Lb/r/t;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/core/model/Resource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final g()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/w/c;->g:Lb/r/t;

    return-object v0
.end method
