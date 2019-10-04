.class public final Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadService.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;)V
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
    c = "com.farsitel.bazaar.app.download.DownloadService$listenOnVideoStatus$1"
    f = "DownloadService.kt"
    l = {
        0x212
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $stateChannel:Li/a/b/t;

.field public final synthetic $videoDownloadModel:Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public L$6:Ljava/lang/Object;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lcom/farsitel/bazaar/app/download/DownloadService;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;Li/a/b/t;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    iput-object p2, p0, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->$videoDownloadModel:Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    iput-object p3, p0, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->$stateChannel:Li/a/b/t;

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

    new-instance v0, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    iget-object v2, p0, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->$videoDownloadModel:Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    iget-object v3, p0, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->$stateChannel:Li/a/b/t;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;-><init>(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;Li/a/b/t;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v1, p0

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v2, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->L$6:Ljava/lang/Object;

    check-cast v2, Li/a/b/k;

    iget-object v5, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->L$5:Ljava/lang/Object;

    check-cast v5, Li/a/b/t;

    iget-object v6, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->L$4:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->L$3:Ljava/lang/Object;

    check-cast v7, Li/a/b/t;

    iget-object v8, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->L$2:Ljava/lang/Object;

    check-cast v8, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;

    iget-object v9, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->L$1:Ljava/lang/Object;

    check-cast v9, Li/a/b/t;

    iget-object v10, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lc/c/a/b/f/a/f;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lh/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v12, p1

    move-object v11, v0

    move-object v0, v8

    move-object v8, v5

    move-object v5, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v4, v0

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

    iget-object v2, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->p$:Li/a/H;

    .line 4
    new-instance v2, Lc/c/a/b/f/a/f;

    iget-object v5, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-virtual {v5}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "baseContext"

    invoke-static {v5, v6}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->$videoDownloadModel:Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    invoke-direct {v2, v5, v6}, Lc/c/a/b/f/a/f;-><init>(Landroid/content/Context;Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;)V

    .line 5
    iget-object v7, v1, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->$stateChannel:Li/a/b/t;

    if-eqz v7, :cond_4

    .line 6
    :try_start_1
    invoke-interface {v7}, Li/a/b/t;->iterator()Li/a/b/k;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v11, v0

    move-object v0, v1

    move-object v10, v2

    move-object v6, v4

    move-object v2, v5

    move-object v8, v7

    move-object v9, v8

    move-object v5, v0

    :goto_0
    :try_start_2
    iput-object v10, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->L$0:Ljava/lang/Object;

    iput-object v9, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->L$1:Ljava/lang/Object;

    iput-object v0, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->L$2:Ljava/lang/Object;

    iput-object v7, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->L$3:Ljava/lang/Object;

    iput-object v6, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->L$4:Ljava/lang/Object;

    iput-object v8, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->L$5:Ljava/lang/Object;

    iput-object v2, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->L$6:Ljava/lang/Object;

    iput v3, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->label:I

    invoke-interface {v2, v0}, Li/a/b/k;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v11, :cond_2

    return-object v11

    .line 7
    :cond_2
    :goto_1
    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v2}, Li/a/b/k;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/farsitel/bazaar/common/model/DownloadStatus;

    .line 8
    sget-object v13, Lc/c/a/b/b/a;->b:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 9
    sget-object v16, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    goto/16 :goto_2

    .line 10
    :pswitch_0
    iget-object v13, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    sget-object v14, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->Companion:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType$a;

    invoke-virtual {v14, v12}, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType$a;->a(Lcom/farsitel/bazaar/common/model/DownloadStatus;)Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    move-result-object v14

    iget-object v15, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->$videoDownloadModel:Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    invoke-virtual {v15}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getVideoId()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15, v4}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 11
    sget-object v13, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    .line 12
    sget-object v14, Lcom/farsitel/bazaar/app/notification/NotificationType;->VIDEO_DOWNLOAD_PROGRESS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    .line 13
    iget-object v15, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->$videoDownloadModel:Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    invoke-virtual {v15}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getVideoId()Ljava/lang/String;

    move-result-object v15

    .line 14
    invoke-virtual {v13, v14, v15}, Lc/c/a/b/f/h;->a(Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/lang/String;)V

    .line 15
    iget-object v13, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-virtual {v13, v3}, Landroid/app/Service;->stopForeground(Z)V

    .line 16
    iget-object v13, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-virtual {v13}, Landroid/app/Service;->stopSelf()V

    goto/16 :goto_3

    .line 17
    :pswitch_1
    iget-object v13, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    sget-object v14, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->Companion:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType$a;

    invoke-virtual {v14, v12}, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType$a;->a(Lcom/farsitel/bazaar/common/model/DownloadStatus;)Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    move-result-object v14

    iget-object v15, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->$videoDownloadModel:Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    invoke-virtual {v15}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getVideoId()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15, v4}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_3

    .line 18
    :pswitch_2
    iget-object v13, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    sget-object v14, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->SUCCESS_DOWNLOAD:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    iget-object v15, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->$videoDownloadModel:Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    invoke-virtual {v15}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getVideoId()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15, v4}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 19
    invoke-virtual {v10}, Lc/c/a/b/f/a/f;->d()V

    .line 20
    iget-object v13, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-virtual {v13, v3}, Landroid/app/Service;->stopForeground(Z)V

    .line 21
    iget-object v13, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-virtual {v13}, Landroid/app/Service;->stopSelf()V

    goto :goto_3

    .line 22
    :pswitch_3
    iget-object v13, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    .line 23
    sget-object v14, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->Companion:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType$a;

    invoke-virtual {v14, v12}, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType$a;->a(Lcom/farsitel/bazaar/common/model/DownloadStatus;)Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    move-result-object v14

    .line 24
    iget-object v15, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->$videoDownloadModel:Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    invoke-virtual {v15}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getVideoId()Ljava/lang/String;

    move-result-object v15

    .line 25
    invoke-static {v13, v14, v15, v4}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_3

    .line 26
    :pswitch_4
    iget-object v13, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    sget-object v14, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->DOWNLOADING:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    iget-object v15, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->$videoDownloadModel:Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    invoke-virtual {v15}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getVideoId()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15, v4}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 27
    iget-object v13, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    .line 28
    iget-object v14, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->$videoDownloadModel:Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    invoke-virtual {v14}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getVideoId()Ljava/lang/String;

    move-result-object v14

    .line 29
    iget-object v15, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-virtual {v15}, Lcom/farsitel/bazaar/app/download/DownloadService;->e()Lc/c/a/e/d/i/A;

    move-result-object v15

    .line 30
    invoke-static {v13, v14, v10, v15}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadService;Ljava/lang/String;Lc/c/a/b/f/a/b;Lcom/farsitel/bazaar/data/feature/download/DownloadManager;)V

    goto :goto_3

    .line 31
    :pswitch_5
    iget-object v13, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->$videoDownloadModel:Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    invoke-virtual {v13}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getVideoId()Ljava/lang/String;

    move-result-object v13

    const/4 v14, -0x1

    invoke-virtual {v10, v13, v14}, Lc/c/a/b/f/a/f;->a(Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v13

    .line 32
    iget-object v14, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-virtual {v10}, Lc/c/a/b/f/a/f;->a()I

    move-result v15

    invoke-virtual {v14, v15, v13}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_3

    .line 33
    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "new video download state received "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    invoke-static/range {v16 .. v21}, Lc/c/a/c/c/a;->b(Lc/c/a/c/c/a;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 34
    :goto_3
    iget-object v13, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    sget-object v14, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->Companion:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType$a;

    invoke-virtual {v14, v12}, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType$a;->a(Lcom/farsitel/bazaar/common/model/DownloadStatus;)Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    move-result-object v12

    iget-object v14, v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;->$videoDownloadModel:Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    invoke-static {v13, v12, v14}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;)V

    goto/16 :goto_0

    .line 35
    :cond_3
    sget-object v0, Lh/h;->a:Lh/h;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    invoke-static {v7, v6}, Li/a/b/m;->a(Li/a/b/t;Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v6, v4

    goto :goto_5

    .line 37
    :goto_4
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 38
    :goto_5
    invoke-static {v7, v6}, Li/a/b/m;->a(Li/a/b/t;Ljava/lang/Throwable;)V

    throw v0

    .line 39
    :cond_4
    :goto_6
    sget-object v0, Lh/h;->a:Lh/h;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
