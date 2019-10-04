.class public final Lc/c/a/b/d/o;
.super Lc/c/a/b/d/i;
.source "VideoManager.kt"


# instance fields
.field public final g:Landroid/content/Context;

.field public final h:Lc/c/a/e/d/h/e/a/a/n;

.field public final i:Lc/c/a/e/d/i/A;

.field public final j:Lc/c/a/e/d/h/e/a/c;

.field public final k:Lc/c/a/e/d/h/e/a/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/c/a/e/d/h/e/a/a/n;Lc/c/a/e/d/i/A;Lc/c/a/e/d/h/e/a/c;Lc/c/a/e/d/h/e/a/c/a;Lc/c/a/b/d/d;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoStorage"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadManager"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoDownloadedRepository"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "submitVideoDownloadRepository"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadStateManager"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p3, p6}, Lc/c/a/b/d/i;-><init>(Landroid/content/Context;Lcom/farsitel/bazaar/data/feature/download/DownloadManager;Lc/c/a/b/d/d;)V

    iput-object p1, p0, Lc/c/a/b/d/o;->g:Landroid/content/Context;

    iput-object p2, p0, Lc/c/a/b/d/o;->h:Lc/c/a/e/d/h/e/a/a/n;

    iput-object p3, p0, Lc/c/a/b/d/o;->i:Lc/c/a/e/d/i/A;

    iput-object p4, p0, Lc/c/a/b/d/o;->j:Lc/c/a/e/d/h/e/a/c;

    iput-object p5, p0, Lc/c/a/b/d/o;->k:Lc/c/a/e/d/h/e/a/c/a;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/b/d/o;)Lc/c/a/e/d/h/e/a/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/b/d/o;->j:Lc/c/a/e/d/h/e/a/c;

    return-object p0
.end method

.method public static final synthetic b(Lc/c/a/b/d/o;)Lc/c/a/e/d/h/e/a/a/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/b/d/o;->h:Lc/c/a/e/d/h/e/a/a/n;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lc/c/a/b/d/o;->j:Lc/c/a/e/d/h/e/a/c;

    invoke-virtual {v0, p1, p2}, Lc/c/a/e/d/h/e/a/c;->a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;)V
    .locals 8

    const-string v0, "downloadModel"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lc/c/a/b/d/i;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc/c/a/b/d/i;->b(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    :try_start_1
    sget-object v1, Lh/h;->a:Lh/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit v0

    .line 7
    sget-object v0, Lc/c/a/c/a/b;->c:Lc/c/a/c/a/b;

    invoke-virtual {v0}, Lc/c/a/c/a/b;->a()Lh/c/e;

    move-result-object v0

    invoke-virtual {p0}, Lc/c/a/b/d/i;->d()Li/a/u;

    move-result-object v1

    invoke-interface {v0, v1}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/farsitel/bazaar/app/managers/VideoManager$startDownloadEntity$2;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Lcom/farsitel/bazaar/app/managers/VideoManager$startDownloadEntity$2;-><init>(Lc/c/a/b/d/o;Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;Lh/c/b;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    .line 8
    iget-object v0, p0, Lc/c/a/b/d/o;->g:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "VIDEO_DOWNLOAD"

    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    sget-object v2, Lcom/farsitel/bazaar/app/download/DownloadService;->b:Lcom/farsitel/bazaar/app/download/DownloadService$a;

    invoke-virtual {v2, p1}, Lcom/farsitel/bazaar/app/download/DownloadService$a;->a(Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 12
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getVideoId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->IN_QUEUE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {p0, p1, v0}, Lc/c/a/b/d/i;->a(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0

    throw p1
.end method

.method public final b(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/farsitel/bazaar/app/managers/VideoManager$submitVideoDownload$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/farsitel/bazaar/app/managers/VideoManager$submitVideoDownload$1;

    iget v1, v0, Lcom/farsitel/bazaar/app/managers/VideoManager$submitVideoDownload$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/app/managers/VideoManager$submitVideoDownload$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/app/managers/VideoManager$submitVideoDownload$1;

    invoke-direct {v0, p0, p2}, Lcom/farsitel/bazaar/app/managers/VideoManager$submitVideoDownload$1;-><init>(Lc/c/a/b/d/o;Lh/c/b;)V

    :goto_0
    iget-object p2, v0, Lcom/farsitel/bazaar/app/managers/VideoManager$submitVideoDownload$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 2
    iget v2, v0, Lcom/farsitel/bazaar/app/managers/VideoManager$submitVideoDownload$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/farsitel/bazaar/app/managers/VideoManager$submitVideoDownload$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/app/managers/VideoManager$submitVideoDownload$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lc/c/a/b/d/o;

    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p0, Lc/c/a/b/d/o;->k:Lc/c/a/e/d/h/e/a/c/a;

    iput-object p0, v0, Lcom/farsitel/bazaar/app/managers/VideoManager$submitVideoDownload$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/app/managers/VideoManager$submitVideoDownload$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/app/managers/VideoManager$submitVideoDownload$1;->label:I

    invoke-virtual {p2, p1, v0}, Lc/c/a/e/d/h/e/a/c/a;->a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 6
    :cond_3
    :goto_1
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final l(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/ui/EntityState;
    .locals 3

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/b/d/i;->e(Ljava/lang/String;)Li/a/b/t;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lc/c/a/b/d/o;->h:Lc/c/a/e/d/h/e/a/a/n;

    iget-object v2, p0, Lc/c/a/b/d/o;->i:Lc/c/a/e/d/i/A;

    invoke-virtual {v2, p1}, Lc/c/a/e/d/i/A;->e(Ljava/lang/String;)Li/a/b/t;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, p1, v2}, Lc/c/a/e/d/h/e/a/a/n;->a(Ljava/lang/String;Z)Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 3
    sget-object p1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->DOWNLOADING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    goto :goto_1

    .line 4
    :cond_1
    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;->EXISTS:Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->COMPLETED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    goto :goto_1

    .line 5
    :cond_2
    sget-object p1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->NONE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    :goto_1
    return-object p1
.end method

.method public final m(Ljava/lang/String;)Li/a/b/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/a/b/t<",
            "Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/b/d/o;->i:Lc/c/a/e/d/i/A;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/i/A;->d(Ljava/lang/String;)Li/a/b/t;

    move-result-object p1

    return-object p1
.end method
