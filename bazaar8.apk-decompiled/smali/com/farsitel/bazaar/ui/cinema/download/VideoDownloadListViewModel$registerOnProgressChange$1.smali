.class public final Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VideoDownloadListViewModel.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/j/c/l;->a(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;)V
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
    c = "com.farsitel.bazaar.ui.cinema.download.VideoDownloadListViewModel$registerOnProgressChange$1"
    f = "VideoDownloadListViewModel.kt"
    l = {
        0x8d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $videoId:Ljava/lang/String;

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lc/c/a/n/j/c/l;


# direct methods
.method public constructor <init>(Lc/c/a/n/j/c/l;Ljava/lang/String;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->this$0:Lc/c/a/n/j/c/l;

    iput-object p2, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->$videoId:Ljava/lang/String;

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

    new-instance v0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->this$0:Lc/c/a/n/j/c/l;

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->$videoId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;-><init>(Lc/c/a/n/j/c/l;Ljava/lang/String;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v2, v1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->label:I

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v2, v1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->L$5:Ljava/lang/Object;

    check-cast v2, Li/a/b/k;

    iget-object v5, v1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->L$4:Ljava/lang/Object;

    check-cast v5, Li/a/b/t;

    iget-object v6, v1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->L$2:Ljava/lang/Object;

    check-cast v7, Li/a/b/t;

    iget-object v8, v1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;

    iget-object v9, v1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->L$0:Ljava/lang/Object;

    check-cast v9, Li/a/b/t;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lh/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v11, p1

    move-object v10, v0

    move-object v0, v8

    move-object v8, v5

    move-object v5, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v3, v0

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->p$:Li/a/H;

    .line 4
    iget-object v2, v1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->this$0:Lc/c/a/n/j/c/l;

    invoke-static {v2}, Lc/c/a/n/j/c/l;->d(Lc/c/a/n/j/c/l;)Lc/c/a/b/d/o;

    move-result-object v2

    iget-object v5, v1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->$videoId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lc/c/a/b/d/o;->m(Ljava/lang/String;)Li/a/b/t;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 5
    :try_start_1
    invoke-interface {v7}, Li/a/b/t;->iterator()Li/a/b/k;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v10, v0

    move-object v0, v1

    move-object v5, v0

    move-object v8, v7

    move-object v9, v8

    const/4 v6, 0x0

    :goto_0
    :try_start_2
    iput-object v9, v5, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->L$0:Ljava/lang/Object;

    iput-object v0, v5, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->L$1:Ljava/lang/Object;

    iput-object v7, v5, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->L$2:Ljava/lang/Object;

    iput-object v6, v5, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->L$3:Ljava/lang/Object;

    iput-object v8, v5, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->L$4:Ljava/lang/Object;

    iput-object v2, v5, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->L$5:Ljava/lang/Object;

    iput v4, v5, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->label:I

    invoke-interface {v2, v0}, Li/a/b/k;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v10, :cond_2

    return-object v10

    .line 6
    :cond_2
    :goto_1
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v2}, Li/a/b/k;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    .line 7
    iget-object v12, v5, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->this$0:Lc/c/a/n/j/c/l;

    invoke-virtual {v12}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    if-eqz v12, :cond_5

    const/4 v13, 0x0

    .line 8
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v15, v13, 0x1

    if-ltz v13, :cond_4

    invoke-static {v13}, Lh/c/b/a/a;->a(I)Ljava/lang/Integer;

    move-result-object v13

    check-cast v14, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 9
    iget-object v4, v5, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->$videoId:Ljava/lang/String;

    invoke-virtual {v14}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10
    invoke-virtual {v14, v11}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->setProgressInfo(Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V

    .line 11
    iget-object v3, v5, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;->this$0:Lc/c/a/n/j/c/l;

    invoke-static {v3}, Lc/c/a/n/j/c/l;->a(Lc/c/a/n/j/c/l;)Lb/r/t;

    move-result-object v3

    invoke-static {v13}, Lh/c/b/a/a;->a(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lb/r/t;->b(Ljava/lang/Object;)V

    :cond_3
    move v13, v15

    const/4 v4, 0x1

    goto :goto_2

    .line 12
    :cond_4
    invoke-static {}, Lh/a/l;->b()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    throw v3

    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_0

    .line 13
    :cond_6
    :try_start_3
    sget-object v0, Lh/h;->a:Lh/h;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    invoke-static {v7, v6}, Li/a/b/m;->a(Li/a/b/t;Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    :goto_3
    move-object v6, v3

    goto :goto_5

    .line 15
    :goto_4
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 16
    :goto_5
    invoke-static {v7, v6}, Li/a/b/m;->a(Li/a/b/t;Ljava/lang/Throwable;)V

    throw v0

    .line 17
    :cond_7
    :goto_6
    sget-object v0, Lh/h;->a:Lh/h;

    return-object v0
.end method
