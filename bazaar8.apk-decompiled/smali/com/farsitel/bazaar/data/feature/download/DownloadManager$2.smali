.class public final Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadManager.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/data/feature/download/DownloadManager;-><init>(Lc/c/a/e/g/b;Lc/c/a/e/d/i/q;Lcom/farsitel/bazaar/data/feature/download/Downloader;Lc/c/a/e/d/i/r;)V
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
    c = "com.farsitel.bazaar.data.feature.download.DownloadManager$2"
    f = "DownloadManager.kt"
    l = {
        0x1c1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $networkStateHelper:Lc/c/a/e/d/i/r;

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;Lc/c/a/e/d/i/r;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->this$0:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->$networkStateHelper:Lc/c/a/e/d/i/r;

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

    new-instance v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->this$0:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    iget-object v2, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->$networkStateHelper:Lc/c/a/e/d/i/r;

    invoke-direct {v0, v1, v2, p2}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;-><init>(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;Lc/c/a/e/d/i/r;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v2, v1, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->L$5:Ljava/lang/Object;

    check-cast v2, Li/a/b/k;

    iget-object v4, v1, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->L$4:Ljava/lang/Object;

    check-cast v4, Li/a/b/t;

    iget-object v5, v1, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Throwable;

    iget-object v6, v1, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->L$2:Ljava/lang/Object;

    check-cast v6, Li/a/b/t;

    iget-object v7, v1, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->L$1:Ljava/lang/Object;

    check-cast v7, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;

    iget-object v8, v1, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->L$0:Ljava/lang/Object;

    check-cast v8, Li/a/b/t;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lh/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v10, p1

    move-object v9, v0

    move-object v0, v7

    move-object v7, v4

    move-object v4, v1

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->p$:Li/a/H;

    .line 4
    iget-object v2, v1, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->$networkStateHelper:Lc/c/a/e/d/i/r;

    invoke-interface {v2}, Lc/c/a/e/d/i/r;->a()Li/a/b/t;

    move-result-object v6

    const/4 v5, 0x0

    .line 5
    :try_start_1
    invoke-interface {v6}, Li/a/b/t;->iterator()Li/a/b/k;

    move-result-object v2

    move-object v9, v0

    move-object v0, v1

    move-object v4, v0

    move-object v7, v6

    move-object v8, v7

    :goto_0
    iput-object v8, v4, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->L$0:Ljava/lang/Object;

    iput-object v0, v4, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->L$1:Ljava/lang/Object;

    iput-object v6, v4, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->L$2:Ljava/lang/Object;

    iput-object v5, v4, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->L$3:Ljava/lang/Object;

    iput-object v7, v4, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->L$4:Ljava/lang/Object;

    iput-object v2, v4, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->L$5:Ljava/lang/Object;

    iput v3, v4, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->label:I

    invoke-interface {v2, v0}, Li/a/b/k;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v9, :cond_2

    return-object v9

    .line 6
    :cond_2
    :goto_1
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v2}, Li/a/b/k;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_3

    .line 7
    new-instance v12, Lkotlin/Pair;

    new-array v13, v3, [Lcom/farsitel/bazaar/common/model/DownloadStatus;

    sget-object v14, Lcom/farsitel/bazaar/common/model/DownloadStatus;->PAUSE_BY_SYSTEM:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    aput-object v14, v13, v11

    invoke-static {v13}, Lh/a/l;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v11

    sget-object v13, Lcom/farsitel/bazaar/common/model/DownloadStatus;->PENDING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-direct {v12, v11, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 8
    :cond_3
    new-instance v12, Lkotlin/Pair;

    const/4 v13, 0x3

    .line 9
    new-array v13, v13, [Lcom/farsitel/bazaar/common/model/DownloadStatus;

    .line 10
    sget-object v14, Lcom/farsitel/bazaar/common/model/DownloadStatus;->PENDING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    aput-object v14, v13, v11

    .line 11
    sget-object v11, Lcom/farsitel/bazaar/common/model/DownloadStatus;->DOWNLOADING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    aput-object v11, v13, v3

    const/4 v11, 0x2

    .line 12
    sget-object v14, Lcom/farsitel/bazaar/common/model/DownloadStatus;->CONTINUING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    aput-object v14, v13, v11

    .line 13
    invoke-static {v13}, Lh/a/l;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v11

    .line 14
    sget-object v13, Lcom/farsitel/bazaar/common/model/DownloadStatus;->PAUSE_BY_SYSTEM:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    .line 15
    invoke-direct {v12, v11, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    :goto_2
    invoke-virtual {v12}, Lkotlin/Pair;->a()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v12}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/farsitel/bazaar/common/model/DownloadStatus;

    .line 17
    iget-object v13, v4, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->this$0:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    invoke-static {v13}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->c(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v13

    monitor-enter v13
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v10, :cond_5

    .line 18
    :try_start_2
    iget-object v14, v4, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->this$0:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    invoke-static {v14}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->e(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    const-string v15, "runningDownloadList.keys"

    invoke-static {v14, v15}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 20
    iget-object v3, v4, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->this$0:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    invoke-static {v3}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->d(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;)Lcom/farsitel/bazaar/data/feature/download/Downloader;

    move-result-object v3

    move-object/from16 p1, v0

    const-string v0, "it"

    invoke-static {v15, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->b(Ljava/lang/String;)V

    move-object/from16 v0, p1

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 p1, v0

    .line 21
    iget-object v0, v4, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->this$0:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    invoke-static {v0}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->e(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_4

    :cond_5
    move-object/from16 p1, v0

    .line 22
    :goto_4
    iget-object v0, v4, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->this$0:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    invoke-static {v0}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->b(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;)Lcom/farsitel/bazaar/data/model/ObservableList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/c/a/e/g/c;

    .line 23
    invoke-virtual {v3}, Lc/c/a/e/g/c;->o()Lcom/farsitel/bazaar/common/model/DownloadStatus;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 24
    invoke-virtual {v3, v12}, Lc/c/a/e/g/c;->b(Lcom/farsitel/bazaar/common/model/DownloadStatus;)V

    goto :goto_5

    :cond_7
    if-eqz v10, :cond_8

    .line 25
    iget-object v0, v4, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$2;->this$0:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    invoke-static {v0}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->a(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;)V

    .line 26
    :cond_8
    sget-object v0, Lh/h;->a:Lh/h;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :try_start_3
    monitor-exit v13

    move-object/from16 v0, p1

    const/4 v3, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v13

    throw v0

    .line 28
    :cond_9
    sget-object v0, Lh/h;->a:Lh/h;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 29
    invoke-static {v6, v5}, Li/a/b/m;->a(Li/a/b/t;Ljava/lang/Throwable;)V

    .line 30
    sget-object v0, Lh/h;->a:Lh/h;

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 31
    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 32
    :goto_6
    invoke-static {v6, v5}, Li/a/b/m;->a(Li/a/b/t;Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method
