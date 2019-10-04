.class public final Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadManager.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->a(Lc/c/a/e/g/c;)V
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
    c = "com.farsitel.bazaar.data.feature.download.DownloadManager$startDownloadProcess$1"
    f = "DownloadManager.kt"
    l = {
        0x1c1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $downloadInfoModel:Lc/c/a/e/g/c;

.field public final synthetic $downloadStatusChange:Li/a/b/j;

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
.method public constructor <init>(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;Li/a/b/j;Lc/c/a/e/g/c;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->this$0:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->$downloadStatusChange:Li/a/b/j;

    iput-object p3, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->$downloadInfoModel:Lc/c/a/e/g/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

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

    new-instance v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->this$0:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    iget-object v2, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->$downloadStatusChange:Li/a/b/j;

    iget-object v3, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->$downloadInfoModel:Lc/c/a/e/g/c;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;-><init>(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;Li/a/b/j;Lc/c/a/e/g/c;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->L$5:Ljava/lang/Object;

    check-cast v1, Li/a/b/k;

    iget-object v3, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->L$4:Ljava/lang/Object;

    check-cast v3, Li/a/b/t;

    iget-object v4, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    iget-object v5, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->L$2:Ljava/lang/Object;

    check-cast v5, Li/a/b/t;

    iget-object v6, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;

    iget-object v7, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->L$0:Ljava/lang/Object;

    check-cast v7, Li/a/b/t;

    :try_start_0
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v0

    move-object v0, p0

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

    iget-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->p$:Li/a/H;

    .line 4
    iget-object v5, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->$downloadStatusChange:Li/a/b/j;

    const/4 v4, 0x0

    .line 5
    :try_start_1
    invoke-interface {v5}, Li/a/b/t;->iterator()Li/a/b/k;

    move-result-object p1

    move-object v1, p1

    move-object v6, v0

    move-object v3, v5

    move-object v7, v3

    move-object p1, p0

    move-object v0, p1

    :goto_0
    iput-object v7, v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->L$3:Ljava/lang/Object;

    iput-object v3, v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->L$4:Ljava/lang/Object;

    iput-object v1, v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->L$5:Ljava/lang/Object;

    iput v2, v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->label:I

    invoke-interface {v1, p1}, Li/a/b/k;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v6, :cond_2

    return-object v6

    :cond_2
    move-object v11, v6

    move-object v6, p1

    move-object p1, v8

    move-object v8, v11

    .line 6
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v1}, Li/a/b/k;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;

    .line 7
    sget-object v9, Lc/c/a/e/d/i/g;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v9, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 8
    :pswitch_0
    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->$downloadInfoModel:Lc/c/a/e/g/c;

    .line 9
    sget-object v9, Lcom/farsitel/bazaar/common/model/DownloadStatus;->PAUSE_BY_SYSTEM:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    .line 10
    invoke-virtual {p1, v9}, Lc/c/a/e/g/c;->a(Lcom/farsitel/bazaar/common/model/DownloadStatus;)V

    goto :goto_2

    .line 11
    :pswitch_1
    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->this$0:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    iget-object v9, v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->$downloadInfoModel:Lc/c/a/e/g/c;

    invoke-virtual {v9}, Lc/c/a/e/g/c;->k()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->$downloadInfoModel:Lc/c/a/e/g/c;

    invoke-virtual {v10}, Lc/c/a/e/g/c;->q()Lcom/farsitel/bazaar/data/entity/EntityType;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->a(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)V

    goto :goto_2

    .line 12
    :pswitch_2
    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->$downloadInfoModel:Lc/c/a/e/g/c;

    sget-object v9, Lcom/farsitel/bazaar/common/model/DownloadStatus;->CHECKING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {p1, v9}, Lc/c/a/e/g/c;->b(Lcom/farsitel/bazaar/common/model/DownloadStatus;)V

    goto :goto_2

    .line 13
    :pswitch_3
    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->$downloadInfoModel:Lc/c/a/e/g/c;

    sget-object v9, Lcom/farsitel/bazaar/common/model/DownloadStatus;->DOWNLOADING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {p1, v9}, Lc/c/a/e/g/c;->b(Lcom/farsitel/bazaar/common/model/DownloadStatus;)V

    goto :goto_2

    .line 14
    :pswitch_4
    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->this$0:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    iget-object v9, v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->$downloadInfoModel:Lc/c/a/e/g/c;

    invoke-virtual {v9}, Lc/c/a/e/g/c;->k()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->a(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;Ljava/lang/String;)V

    goto :goto_2

    .line 15
    :pswitch_5
    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->this$0:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    iget-object v9, v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->$downloadInfoModel:Lc/c/a/e/g/c;

    invoke-virtual {v9}, Lc/c/a/e/g/c;->k()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :pswitch_6
    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->this$0:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    iget-object v9, v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$1;->$downloadInfoModel:Lc/c/a/e/g/c;

    invoke-virtual {v9}, Lc/c/a/e/g/c;->k()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->a(Ljava/lang/String;)V

    :goto_2
    move-object p1, v6

    move-object v6, v8

    goto/16 :goto_0

    .line 17
    :cond_3
    sget-object p1, Lh/h;->a:Lh/h;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    invoke-static {v5, v4}, Li/a/b/m;->a(Li/a/b/t;Ljava/lang/Throwable;)V

    .line 19
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v4, p1

    .line 20
    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    :goto_3
    invoke-static {v5, v4}, Li/a/b/m;->a(Li/a/b/t;Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
