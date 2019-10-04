.class public final Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VideoDownloadManager.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/i/A;->j(Ljava/lang/String;)V
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
    c = "com.farsitel.bazaar.data.feature.download.VideoDownloadManager$listenOnDownloadVideo$1"
    f = "VideoDownloadManager.kt"
    l = {
        0x12d,
        0x4d,
        0x50
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $entityId:Ljava/lang/String;

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public L$6:Ljava/lang/Object;

.field public L$7:Ljava/lang/Object;

.field public L$8:Ljava/lang/Object;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lc/c/a/e/d/i/A;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/i/A;Ljava/lang/String;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->this$0:Lc/c/a/e/d/i/A;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->$entityId:Ljava/lang/String;

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

    new-instance v0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->this$0:Lc/c/a/e/d/i/A;

    iget-object v2, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->$entityId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;-><init>(Lc/c/a/e/d/i/A;Ljava/lang/String;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v2, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$8:Ljava/lang/Object;

    check-cast v2, Lc/c/a/e/g/g;

    iget-object v2, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$7:Ljava/lang/Object;

    check-cast v2, Lcom/farsitel/bazaar/common/model/DownloadStatus;

    iget-object v2, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$6:Ljava/lang/Object;

    iget-object v2, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$5:Ljava/lang/Object;

    check-cast v2, Li/a/b/k;

    iget-object v6, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$4:Ljava/lang/Object;

    check-cast v6, Li/a/b/t;

    iget-object v7, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$3:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Throwable;

    iget-object v8, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$2:Ljava/lang/Object;

    check-cast v8, Li/a/b/t;

    iget-object v9, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;

    iget-object v10, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$0:Ljava/lang/Object;

    check-cast v10, Li/a/b/t;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object v2, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$8:Ljava/lang/Object;

    check-cast v2, Lc/c/a/e/g/g;

    iget-object v2, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$7:Ljava/lang/Object;

    check-cast v2, Lcom/farsitel/bazaar/common/model/DownloadStatus;

    iget-object v2, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$6:Ljava/lang/Object;

    iget-object v2, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$5:Ljava/lang/Object;

    check-cast v2, Li/a/b/k;

    iget-object v6, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$4:Ljava/lang/Object;

    check-cast v6, Li/a/b/t;

    iget-object v7, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$3:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Throwable;

    iget-object v8, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$2:Ljava/lang/Object;

    check-cast v8, Li/a/b/t;

    iget-object v9, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;

    iget-object v10, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$0:Ljava/lang/Object;

    check-cast v10, Li/a/b/t;

    :goto_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Lh/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v6

    move-object v6, v1

    goto/16 :goto_4

    :cond_2
    iget-object v2, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$5:Ljava/lang/Object;

    check-cast v2, Li/a/b/k;

    iget-object v6, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$4:Ljava/lang/Object;

    check-cast v6, Li/a/b/t;

    iget-object v7, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$3:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Throwable;

    iget-object v8, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$2:Ljava/lang/Object;

    check-cast v8, Li/a/b/t;

    iget-object v9, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;

    iget-object v10, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$0:Ljava/lang/Object;

    check-cast v10, Li/a/b/t;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lh/e;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v12, p1

    move-object v11, v6

    move-object v6, v1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    :goto_1
    move-object v7, v0

    goto/16 :goto_5

    :cond_3
    invoke-static/range {p1 .. p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->p$:Li/a/H;

    .line 4
    iget-object v2, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->this$0:Lc/c/a/e/d/i/A;

    iget-object v6, v1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->$entityId:Ljava/lang/String;

    invoke-static {v2, v6}, Lc/c/a/e/d/i/A;->b(Lc/c/a/e/d/i/A;Ljava/lang/String;)Li/a/b/t;

    move-result-object v8

    if-eqz v8, :cond_8

    const/4 v7, 0x0

    .line 5
    :try_start_2
    invoke-interface {v8}, Li/a/b/t;->iterator()Li/a/b/k;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v11, v0

    move-object v0, v1

    move-object v6, v0

    move-object v9, v7

    move-object v7, v8

    move-object v10, v7

    :goto_2
    :try_start_3
    iput-object v8, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$0:Ljava/lang/Object;

    iput-object v0, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$1:Ljava/lang/Object;

    iput-object v7, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$2:Ljava/lang/Object;

    iput-object v9, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$3:Ljava/lang/Object;

    iput-object v10, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$4:Ljava/lang/Object;

    iput-object v2, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$5:Ljava/lang/Object;

    iput v5, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->label:I

    invoke-interface {v2, v0}, Li/a/b/k;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object v12
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v12, v11, :cond_4

    return-object v11

    :cond_4
    move-object/from16 v16, v9

    move-object v9, v0

    move-object v0, v11

    move-object v11, v10

    move-object v10, v8

    move-object v8, v7

    move-object/from16 v7, v16

    .line 6
    :goto_3
    :try_start_4
    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v2}, Li/a/b/k;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/farsitel/bazaar/common/model/DownloadStatus;

    .line 7
    iget-object v14, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->this$0:Lc/c/a/e/d/i/A;

    invoke-static {v14}, Lc/c/a/e/d/i/A;->b(Lc/c/a/e/d/i/A;)Ljava/util/LinkedHashMap;

    move-result-object v14

    iget-object v15, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->$entityId:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lc/c/a/e/g/g;

    if-eqz v14, :cond_6

    .line 8
    invoke-virtual {v14}, Lc/c/a/e/g/g;->d()Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    move-result-object v15

    sget-object v5, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;->VIDEO:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    if-ne v15, v5, :cond_5

    .line 9
    sget-object v5, Lcom/farsitel/bazaar/common/model/DownloadStatus;->COMPLETED:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    if-eq v13, v5, :cond_6

    .line 10
    invoke-virtual {v14}, Lc/c/a/e/g/g;->c()Li/a/b/p;

    move-result-object v5

    iput-object v10, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$0:Ljava/lang/Object;

    iput-object v9, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$1:Ljava/lang/Object;

    iput-object v8, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$2:Ljava/lang/Object;

    iput-object v7, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$3:Ljava/lang/Object;

    iput-object v11, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$4:Ljava/lang/Object;

    iput-object v2, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$5:Ljava/lang/Object;

    iput-object v12, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$6:Ljava/lang/Object;

    iput-object v13, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$7:Ljava/lang/Object;

    iput-object v14, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$8:Ljava/lang/Object;

    iput v4, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->label:I

    invoke-static {v5, v13, v6}, Lc/c/a/c/a/a;->a(Li/a/b/p;Ljava/lang/Object;Lh/c/b;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_6

    return-object v0

    .line 11
    :cond_5
    invoke-virtual {v14}, Lc/c/a/e/g/g;->c()Li/a/b/p;

    move-result-object v5

    sget-object v15, Lcom/farsitel/bazaar/common/model/DownloadStatus;->PENDING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    iput-object v10, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$0:Ljava/lang/Object;

    iput-object v9, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$1:Ljava/lang/Object;

    iput-object v8, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$2:Ljava/lang/Object;

    iput-object v7, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$3:Ljava/lang/Object;

    iput-object v11, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$4:Ljava/lang/Object;

    iput-object v2, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$5:Ljava/lang/Object;

    iput-object v12, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$6:Ljava/lang/Object;

    iput-object v13, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$7:Ljava/lang/Object;

    iput-object v14, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->L$8:Ljava/lang/Object;

    iput v3, v6, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;->label:I

    invoke-static {v5, v15, v6}, Lc/c/a/c/a/a;->a(Li/a/b/p;Ljava/lang/Object;Lh/c/b;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_6

    return-object v0

    :cond_6
    :goto_4
    move-object/from16 v16, v11

    move-object v11, v0

    move-object v0, v9

    move-object v9, v7

    move-object v7, v8

    move-object v8, v10

    move-object/from16 v10, v16

    const/4 v5, 0x1

    goto/16 :goto_2

    .line 12
    :cond_7
    sget-object v0, Lh/h;->a:Lh/h;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 13
    invoke-static {v8, v7}, Li/a/b/m;->a(Li/a/b/t;Ljava/lang/Throwable;)V

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v8, v7

    move-object v7, v9

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v8, v7

    goto/16 :goto_1

    .line 14
    :goto_5
    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 15
    :goto_6
    invoke-static {v8, v7}, Li/a/b/m;->a(Li/a/b/t;Ljava/lang/Throwable;)V

    throw v0

    .line 16
    :cond_8
    :goto_7
    sget-object v0, Lh/h;->a:Lh/h;

    return-object v0
.end method
