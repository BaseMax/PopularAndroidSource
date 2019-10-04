.class public final Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadService.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/app/download/DownloadService;->c(Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V
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
    c = "com.farsitel.bazaar.app.download.DownloadService$listenOnAppStatus$1"
    f = "DownloadService.kt"
    l = {
        0x212,
        0xc8,
        0xd7,
        0xe2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

.field public final synthetic $stateChannel:Li/a/b/t;

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public L$6:Ljava/lang/Object;

.field public L$7:Ljava/lang/Object;

.field public L$8:Ljava/lang/Object;

.field public L$9:Ljava/lang/Object;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lcom/farsitel/bazaar/app/download/DownloadService;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;Li/a/b/t;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    iput-object p2, p0, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    iput-object p3, p0, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->$stateChannel:Li/a/b/t;

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

    new-instance v0, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    iget-object v2, p0, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    iget-object v3, p0, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->$stateChannel:Li/a/b/t;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;-><init>(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;Li/a/b/t;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v1, p0

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v2, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$8:Ljava/lang/Object;

    check-cast v2, Lcom/farsitel/bazaar/common/model/DownloadStatus;

    iget-object v8, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$7:Ljava/lang/Object;

    iget-object v8, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$6:Ljava/lang/Object;

    check-cast v8, Li/a/b/k;

    iget-object v9, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$5:Ljava/lang/Object;

    check-cast v9, Li/a/b/t;

    iget-object v10, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$4:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Throwable;

    iget-object v11, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$3:Ljava/lang/Object;

    check-cast v11, Li/a/b/t;

    iget-object v12, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;

    iget-object v13, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$1:Ljava/lang/Object;

    check-cast v13, Li/a/b/t;

    iget-object v14, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lc/c/a/b/f/a/a;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lh/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v2

    move-object v7, v10

    const/4 v4, 0x4

    move-object v2, v1

    move-object/from16 v22, v14

    move-object v14, v0

    move-object v0, v12

    move-object v12, v13

    move-object/from16 v13, v22

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object v2, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$8:Ljava/lang/Object;

    check-cast v2, Lcom/farsitel/bazaar/common/model/DownloadStatus;

    iget-object v8, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$7:Ljava/lang/Object;

    iget-object v8, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$6:Ljava/lang/Object;

    check-cast v8, Li/a/b/k;

    iget-object v9, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$5:Ljava/lang/Object;

    check-cast v9, Li/a/b/t;

    iget-object v10, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$4:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Throwable;

    iget-object v11, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$3:Ljava/lang/Object;

    check-cast v11, Li/a/b/t;

    iget-object v12, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;

    iget-object v13, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$1:Ljava/lang/Object;

    check-cast v13, Li/a/b/t;

    iget-object v14, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lc/c/a/b/f/a/a;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lh/e;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v2

    move-object v2, v1

    move-object/from16 v22, v14

    move-object v14, v0

    move-object v0, v12

    move-object v12, v13

    move-object/from16 v13, v22

    move-object/from16 v23, v10

    move-object v10, v9

    move-object/from16 v9, v23

    goto/16 :goto_4

    :cond_2
    iget-object v2, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$9:Ljava/lang/Object;

    check-cast v2, Landroid/app/Notification;

    iget-object v2, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$8:Ljava/lang/Object;

    check-cast v2, Lcom/farsitel/bazaar/common/model/DownloadStatus;

    iget-object v8, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$7:Ljava/lang/Object;

    iget-object v8, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$6:Ljava/lang/Object;

    check-cast v8, Li/a/b/k;

    iget-object v9, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$5:Ljava/lang/Object;

    check-cast v9, Li/a/b/t;

    iget-object v10, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$4:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Throwable;

    iget-object v11, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$3:Ljava/lang/Object;

    check-cast v11, Li/a/b/t;

    iget-object v12, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;

    iget-object v13, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$1:Ljava/lang/Object;

    check-cast v13, Li/a/b/t;

    iget-object v14, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lc/c/a/b/f/a/a;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lh/e;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v2

    const/4 v3, 0x2

    move-object v2, v1

    move-object/from16 v22, v14

    move-object v14, v0

    move-object v0, v12

    move-object v12, v13

    move-object/from16 v13, v22

    move-object/from16 v23, v10

    move-object v10, v9

    move-object/from16 v9, v23

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-object v9, v10

    goto/16 :goto_9

    :cond_3
    iget-object v2, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$6:Ljava/lang/Object;

    check-cast v2, Li/a/b/k;

    iget-object v8, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$5:Ljava/lang/Object;

    check-cast v8, Li/a/b/t;

    iget-object v9, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$4:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Throwable;

    iget-object v10, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$3:Ljava/lang/Object;

    move-object v11, v10

    check-cast v11, Li/a/b/t;

    iget-object v10, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;

    iget-object v12, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$1:Ljava/lang/Object;

    check-cast v12, Li/a/b/t;

    iget-object v13, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lc/c/a/b/f/a/a;

    :try_start_3
    invoke-static/range {p1 .. p1}, Lh/e;->a(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v15, p1

    move-object v14, v0

    move-object v0, v10

    move-object v10, v8

    move-object v8, v2

    move-object v2, v1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object v7, v0

    goto/16 :goto_8

    :cond_4
    invoke-static/range {p1 .. p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->p$:Li/a/H;

    .line 4
    new-instance v2, Lc/c/a/b/f/a/a;

    iget-object v8, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-virtual {v8}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "baseContext"

    invoke-static {v8, v9}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    invoke-direct {v2, v8, v9}, Lc/c/a/b/f/a/a;-><init>(Landroid/content/Context;Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V

    .line 5
    iget-object v11, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->$stateChannel:Li/a/b/t;

    if-eqz v11, :cond_a

    .line 6
    :try_start_4
    invoke-interface {v11}, Li/a/b/t;->iterator()Li/a/b/k;

    move-result-object v8
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v14, v0

    move-object v0, v1

    move-object v9, v2

    move-object v12, v7

    move-object v10, v11

    move-object v13, v10

    move-object v2, v0

    :goto_0
    :try_start_5
    iput-object v9, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$1:Ljava/lang/Object;

    iput-object v0, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$2:Ljava/lang/Object;

    iput-object v10, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$3:Ljava/lang/Object;

    iput-object v12, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$4:Ljava/lang/Object;

    iput-object v13, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$5:Ljava/lang/Object;

    iput-object v8, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$6:Ljava/lang/Object;

    iput v6, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->label:I

    invoke-interface {v8, v0}, Li/a/b/k;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object v15
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-ne v15, v14, :cond_5

    return-object v14

    :cond_5
    move-object/from16 v22, v13

    move-object v13, v9

    move-object v9, v12

    move-object v12, v11

    move-object v11, v10

    move-object/from16 v10, v22

    .line 7
    :goto_1
    :try_start_6
    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v8}, Li/a/b/k;->next()Ljava/lang/Object;

    move-result-object v15

    move-object v5, v15

    check-cast v5, Lcom/farsitel/bazaar/common/model/DownloadStatus;

    .line 8
    sget-object v16, Lc/c/a/b/b/a;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    const/4 v3, 0x2

    .line 9
    sget-object v15, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    goto/16 :goto_6

    .line 10
    :pswitch_0
    iget-object v15, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    sget-object v4, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->Companion:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType$a;

    invoke-virtual {v4, v5}, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType$a;->a(Lcom/farsitel/bazaar/common/model/DownloadStatus;)Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    move-result-object v4

    iget-object v3, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v4, v3, v7}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 11
    sget-object v3, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    .line 12
    sget-object v4, Lcom/farsitel/bazaar/app/notification/NotificationType;->APP_DOWNLOAD_PROGRESS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    .line 13
    iget-object v15, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    invoke-virtual {v15}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 14
    invoke-virtual {v3, v4, v15}, Lc/c/a/b/f/h;->a(Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/lang/String;)V

    .line 15
    iget-object v3, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-virtual {v3, v6}, Landroid/app/Service;->stopForeground(Z)V

    .line 16
    iget-object v3, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-virtual {v3}, Landroid/app/Service;->stopSelf()V

    goto :goto_2

    .line 17
    :pswitch_1
    iget-object v3, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    sget-object v4, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->Companion:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType$a;

    invoke-virtual {v4, v5}, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType$a;->a(Lcom/farsitel/bazaar/common/model/DownloadStatus;)Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    move-result-object v4

    iget-object v15, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    invoke-virtual {v15}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v3, v4, v15, v7}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Ljava/lang/String;Ljava/lang/Boolean;)V

    :goto_2
    const/4 v4, 0x3

    goto/16 :goto_5

    .line 18
    :pswitch_2
    iget-object v3, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    .line 19
    sget-object v4, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->SUCCESS_DOWNLOAD:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    .line 20
    iget-object v6, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 21
    iget-object v7, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    invoke-virtual {v7}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->isFree()Z

    move-result v7

    invoke-static {v7}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 22
    invoke-static {v3, v4, v6, v7}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 23
    invoke-virtual {v13}, Lc/c/a/b/f/a/a;->d()V

    .line 24
    new-instance v3, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1$invokeSuspend$$inlined$consumeEach$lambda$3;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2, v13}, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1$invokeSuspend$$inlined$consumeEach$lambda$3;-><init>(Lh/c/b;Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;Lc/c/a/b/f/a/a;)V

    iput-object v13, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$0:Ljava/lang/Object;

    iput-object v12, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$1:Ljava/lang/Object;

    iput-object v0, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$2:Ljava/lang/Object;

    iput-object v11, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$3:Ljava/lang/Object;

    iput-object v9, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$4:Ljava/lang/Object;

    iput-object v10, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$5:Ljava/lang/Object;

    iput-object v8, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$6:Ljava/lang/Object;

    iput-object v15, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$7:Ljava/lang/Object;

    iput-object v5, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$8:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->label:I

    invoke-static {v3, v2}, Lc/c/a/c/a/a;->a(Lh/f/a/c;Lh/c/b;)Ljava/lang/Object;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-ne v3, v14, :cond_6

    return-object v14

    :cond_6
    move-object v7, v9

    move-object v9, v10

    .line 25
    :goto_3
    :try_start_7
    iget-object v3, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/app/Service;->stopForeground(Z)V

    .line 26
    iget-object v3, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-virtual {v3}, Landroid/app/Service;->stopSelf()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v10, v11

    move-object v11, v12

    const/4 v4, 0x3

    move-object v12, v7

    const/4 v7, 0x0

    move-object/from16 v22, v13

    move-object v13, v9

    move-object/from16 v9, v22

    goto/16 :goto_7

    :pswitch_3
    const/4 v4, 0x4

    .line 27
    :try_start_8
    iget-object v3, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    .line 28
    sget-object v7, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->DOWNLOADING:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    .line 29
    iget-object v4, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 30
    iget-object v6, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->isFree()Z

    move-result v6

    invoke-static {v6}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 31
    invoke-static {v3, v7, v4, v6}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 32
    iget-object v3, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    .line 33
    iget-object v4, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x0

    move-object/from16 v16, v3

    move-object/from16 v18, v13

    .line 34
    invoke-static/range {v16 .. v21}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadService;Ljava/lang/String;Lc/c/a/b/f/a/b;Lcom/farsitel/bazaar/data/feature/download/DownloadManager;ILjava/lang/Object;)V

    .line 35
    new-instance v3, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1$invokeSuspend$$inlined$consumeEach$lambda$2;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2, v13}, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1$invokeSuspend$$inlined$consumeEach$lambda$2;-><init>(Lh/c/b;Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;Lc/c/a/b/f/a/a;)V

    iput-object v13, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$0:Ljava/lang/Object;

    iput-object v12, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$1:Ljava/lang/Object;

    iput-object v0, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$2:Ljava/lang/Object;

    iput-object v11, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$3:Ljava/lang/Object;

    iput-object v9, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$4:Ljava/lang/Object;

    iput-object v10, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$5:Ljava/lang/Object;

    iput-object v8, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$6:Ljava/lang/Object;

    iput-object v15, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$7:Ljava/lang/Object;

    iput-object v5, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$8:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->label:I

    invoke-static {v3, v2}, Lc/c/a/c/a/a;->a(Lh/f/a/c;Lh/c/b;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v14, :cond_7

    return-object v14

    :cond_7
    :goto_4
    const/4 v7, 0x0

    goto :goto_5

    .line 36
    :pswitch_4
    iget-object v3, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, -0x1

    invoke-virtual {v13, v3, v6}, Lc/c/a/b/f/a/a;->a(Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v3

    .line 37
    iget-object v6, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-virtual {v13}, Lc/c/a/b/f/a/a;->a()I

    move-result v7

    invoke-virtual {v6, v7, v3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 38
    new-instance v6, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1$invokeSuspend$$inlined$consumeEach$lambda$1;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v2, v13}, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1$invokeSuspend$$inlined$consumeEach$lambda$1;-><init>(Lh/c/b;Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;Lc/c/a/b/f/a/a;)V

    iput-object v13, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$0:Ljava/lang/Object;

    iput-object v12, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$1:Ljava/lang/Object;

    iput-object v0, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$2:Ljava/lang/Object;

    iput-object v11, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$3:Ljava/lang/Object;

    iput-object v9, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$4:Ljava/lang/Object;

    iput-object v10, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$5:Ljava/lang/Object;

    iput-object v8, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$6:Ljava/lang/Object;

    iput-object v15, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$7:Ljava/lang/Object;

    iput-object v5, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$8:Ljava/lang/Object;

    iput-object v3, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->L$9:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->label:I

    invoke-static {v6, v2}, Lc/c/a/c/a/a;->a(Lh/f/a/c;Lh/c/b;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v14, :cond_8

    return-object v14

    :cond_8
    :goto_5
    move-object/from16 v22, v12

    move-object v12, v9

    move-object v9, v13

    move-object v13, v10

    move-object v10, v11

    move-object/from16 v11, v22

    goto :goto_7

    .line 39
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new app download state received "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x6

    const/16 v20, 0x0

    invoke-static/range {v15 .. v20}, Lc/c/a/c/c/a;->b(Lc/c/a/c/c/a;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    .line 40
    :goto_7
    :try_start_9
    iget-object v3, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    sget-object v6, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->Companion:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType$a;

    invoke-virtual {v6, v5}, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType$a;->a(Lcom/farsitel/bazaar/common/model/DownloadStatus;)Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    move-result-object v5

    iget-object v6, v2, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    invoke-static {v3, v5, v6}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const/4 v3, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 41
    :cond_9
    :try_start_a
    sget-object v0, Lh/h;->a:Lh/h;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 42
    invoke-static {v11, v9}, Li/a/b/m;->a(Li/a/b/t;Ljava/lang/Throwable;)V

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v11, v10

    move-object v9, v12

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v7, v0

    move-object v11, v10

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v9, v7

    goto :goto_9

    .line 43
    :goto_8
    :try_start_b
    throw v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 44
    :goto_9
    invoke-static {v11, v9}, Li/a/b/m;->a(Li/a/b/t;Ljava/lang/Throwable;)V

    throw v0

    .line 45
    :cond_a
    iget-object v0, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    iget-object v2, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    invoke-static {v0, v2}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V

    .line 46
    :goto_a
    sget-object v0, Lh/h;->a:Lh/h;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
