.class public final Lc/c/a/e/d/i/t;
.super Ljava/lang/Object;
.source "PartDownloadHelper.kt"


# instance fields
.field public final a:I

.field public final b:[Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public e:I

.field public f:I

.field public g:Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

.field public h:Z

.field public i:Landroid/os/Handler;

.field public j:Z

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/e/d/i/w;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Li/a/b/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/b/x<",
            "Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Li/a/b/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/b/x<",
            "Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lh/f/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/f/a/a<",
            "Lh/h;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lh/f/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/f/a/b<",
            "Ljava/util/List<",
            "Lc/c/a/e/d/i/w;",
            ">;",
            "Lh/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Li/a/b/x;Li/a/b/x;Lh/f/a/a;Lh/f/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/c/a/e/d/i/w;",
            ">;",
            "Li/a/b/x<",
            "-",
            "Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;",
            ">;",
            "Li/a/b/x<",
            "-",
            "Lcom/farsitel/bazaar/data/feature/download/DownloaderDownloadStatus;",
            ">;",
            "Lh/f/a/a<",
            "Lh/h;",
            ">;",
            "Lh/f/a/b<",
            "-",
            "Ljava/util/List<",
            "Lc/c/a/e/d/i/w;",
            ">;",
            "Lh/h;",
            ">;)V"
        }
    .end annotation

    const-string v0, "downloadParts"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressChannel"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadStatus"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failDownload"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mergePartFile"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/i/t;->k:Ljava/util/List;

    iput-object p2, p0, Lc/c/a/e/d/i/t;->l:Li/a/b/x;

    iput-object p3, p0, Lc/c/a/e/d/i/t;->m:Li/a/b/x;

    iput-object p4, p0, Lc/c/a/e/d/i/t;->n:Lh/f/a/a;

    iput-object p5, p0, Lc/c/a/e/d/i/t;->o:Lh/f/a/b;

    .line 2
    iget-object p1, p0, Lc/c/a/e/d/i/t;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lc/c/a/e/d/i/t;->a:I

    .line 3
    iget p1, p0, Lc/c/a/e/d/i/t;->a:I

    .line 4
    new-array p1, p1, [Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    .line 5
    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    .line 6
    new-instance p4, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    invoke-direct {p4}, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;-><init>()V

    aput-object p4, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iput-object p1, p0, Lc/c/a/e/d/i/t;->b:[Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    .line 8
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/i/t;->c:Ljava/lang/Object;

    .line 9
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/i/t;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lc/c/a/e/d/i/t;->h:Z

    .line 11
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "progressLooper"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lc/c/a/e/d/i/t;->i:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/e/d/i/t;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc/c/a/e/d/i/t;->h:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lc/c/a/e/d/i/t;->h:Z

    .line 8
    iget-object v0, p0, Lc/c/a/e/d/i/t;->i:Landroid/os/Handler;

    new-instance v1, Lc/c/a/e/d/i/s;

    invoke-direct {v1, p0}, Lc/c/a/e/d/i/s;-><init>(Lc/c/a/e/d/i/t;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(ILcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V
    .locals 2

    const-string v0, "downloaderProgressInfo"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/i/t;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lc/c/a/e/d/i/t;->b:[Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    aput-object p2, v1, p1

    .line 5
    sget-object p1, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lc/c/a/e/d/i/t;->j:Z

    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget v0, p0, Lc/c/a/e/d/i/t;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/c/a/e/d/i/t;->f:I

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/i/t;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, p0, Lc/c/a/e/d/i/t;->f:I

    iget v2, p0, Lc/c/a/e/d/i/t;->a:I

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, p0, Lc/c/a/e/d/i/t;->n:Lh/f/a/a;

    invoke-interface {v1}, Lh/f/a/a;->invoke()Ljava/lang/Object;

    .line 5
    :cond_0
    sget-object v1, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/e/d/i/t;->j:Z

    return v0
.end method

.method public final d()Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;
    .locals 13

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/i/t;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lc/c/a/e/d/i/t;->b:[Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    array-length v3, v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v7, v4

    const/4 v1, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v6, v3, :cond_0

    aget-object v10, v2, v6

    .line 3
    invoke-virtual {v10}, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->getProgress()I

    move-result v11

    add-int/2addr v1, v11

    .line 4
    invoke-virtual {v10}, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->getDownloadSize()J

    move-result-wide v11

    add-long/2addr v4, v11

    .line 5
    invoke-virtual {v10}, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->getDownloadedSize()J

    move-result-wide v11

    add-long/2addr v7, v11

    .line 6
    invoke-virtual {v10}, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->getDownloadSpeed()F

    move-result v10

    add-float/2addr v9, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance v2, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    invoke-direct {v2}, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;-><init>()V

    .line 8
    iget-object v3, p0, Lc/c/a/e/d/i/t;->b:[Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    array-length v3, v3

    div-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->setProgress(I)V

    .line 9
    invoke-virtual {v2, v4, v5}, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->setDownloadSize(J)V

    .line 10
    invoke-virtual {v2, v7, v8}, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->setDownloadedSize(J)V

    .line 11
    iget-object v1, p0, Lc/c/a/e/d/i/t;->b:[Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    array-length v1, v1

    int-to-float v1, v1

    div-float/2addr v9, v1

    invoke-virtual {v2, v9}, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->setDownloadSpeed(F)V

    .line 12
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->getProgress()I

    move-result v1

    const/16 v3, 0x64

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    iget-boolean v1, p0, Lc/c/a/e/d/i/t;->h:Z

    if-nez v1, :cond_2

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->getProgress()I

    move-result v1

    iget-object v3, p0, Lc/c/a/e/d/i/t;->g:Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->getProgress()I

    move-result v3

    if-ne v1, v3, :cond_3

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {p0}, Lc/c/a/e/d/i/t;->a()V

    .line 16
    iput-object v2, p0, Lc/c/a/e/d/i/t;->g:Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    move-object v4, v2

    .line 17
    :goto_2
    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public final e()Li/a/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/a/b/x<",
            "Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/i/t;->l:Li/a/b/x;

    return-object v0
.end method

.method public final f()V
    .locals 3

    .line 1
    iget v0, p0, Lc/c/a/e/d/i/t;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/c/a/e/d/i/t;->e:I

    .line 2
    iget v0, p0, Lc/c/a/e/d/i/t;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/c/a/e/d/i/t;->f:I

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/i/t;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lc/c/a/e/d/i/t;->e:I

    iget v2, p0, Lc/c/a/e/d/i/t;->a:I

    if-ne v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lc/c/a/e/d/i/t;->o:Lh/f/a/b;

    iget-object v2, p0, Lc/c/a/e/d/i/t;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lc/c/a/e/d/i/t;->f:I

    iget v2, p0, Lc/c/a/e/d/i/t;->a:I

    if-ne v1, v2, :cond_1

    .line 7
    iget-object v1, p0, Lc/c/a/e/d/i/t;->n:Lh/f/a/a;

    invoke-interface {v1}, Lh/f/a/a;->invoke()Ljava/lang/Object;

    .line 8
    :cond_1
    :goto_0
    sget-object v1, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
