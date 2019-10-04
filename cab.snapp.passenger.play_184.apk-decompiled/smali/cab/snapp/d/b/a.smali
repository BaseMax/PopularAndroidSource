.class public final Lcab/snapp/d/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/d;


# instance fields
.field public ACK:I

.field public TAG:Ljava/lang/String;

.field final a:Ljava/lang/String;

.field b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field d:Z

.field private e:Lcab/snapp/c;

.field private final f:Lcab/snapp/a;

.field private g:I

.field private h:Lcab/snapp/snappnetwork/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcab/snapp/snappnetwork/e<",
            "Lcab/snapp/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcab/snapp/snappnetwork/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcab/snapp/snappnetwork/e<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Runnable;

.field private k:Ljava/util/concurrent/ScheduledExecutorService;

.field private l:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Lcab/snapp/snappnetwork/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcab/snapp/snappnetwork/a/a<",
            "Lcab/snapp/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcab/snapp/c;Lcab/snapp/a;)V
    .locals 3

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "POLING"

    .line 36
    iput-object v0, p0, Lcab/snapp/d/b/a;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    .line 37
    iput v1, p0, Lcab/snapp/d/b/a;->ACK:I

    .line 43
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcab/snapp/d/b/a;->b:Ljava/util/HashMap;

    const/16 v1, 0xf

    .line 44
    iput v1, p0, Lcab/snapp/d/b/a;->g:I

    const/4 v2, 0x0

    .line 47
    iput-boolean v2, p0, Lcab/snapp/d/b/a;->c:Z

    .line 48
    iput-boolean v2, p0, Lcab/snapp/d/b/a;->d:Z

    .line 53
    new-instance v2, Lcab/snapp/d/b/a$1;

    invoke-direct {v2, p0}, Lcab/snapp/d/b/a$1;-><init>(Lcab/snapp/d/b/a;)V

    iput-object v2, p0, Lcab/snapp/d/b/a;->n:Lcab/snapp/snappnetwork/a/a;

    .line 121
    iput-object p3, p0, Lcab/snapp/d/b/a;->f:Lcab/snapp/a;

    .line 122
    iput-object p1, p0, Lcab/snapp/d/b/a;->a:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 125
    iput-object p2, p0, Lcab/snapp/d/b/a;->e:Lcab/snapp/c;

    .line 126
    invoke-interface {p2}, Lcab/snapp/c;->getEvents()Ljava/util/HashMap;

    move-result-object p3

    iput-object p3, p0, Lcab/snapp/d/b/a;->b:Ljava/util/HashMap;

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 129
    invoke-interface {p2}, Lcab/snapp/c;->getIntervalPeriod()I

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    invoke-interface {p2}, Lcab/snapp/c;->getIntervalPeriod()I

    move-result p1

    iput p1, p0, Lcab/snapp/d/b/a;->g:I

    goto :goto_0

    .line 134
    :cond_0
    iput v1, p0, Lcab/snapp/d/b/a;->g:I

    goto :goto_0

    :cond_1
    const-string p3, "POLUNG_SIDE_REQUEST"

    .line 136
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 138
    iput-object p3, p0, Lcab/snapp/d/b/a;->TAG:Ljava/lang/String;

    const/4 p1, -0x1

    .line 139
    iput p1, p0, Lcab/snapp/d/b/a;->ACK:I

    .line 140
    invoke-interface {p2}, Lcab/snapp/c;->getIntervalPeriod()I

    move-result p1

    if-eqz p1, :cond_2

    .line 142
    invoke-interface {p2}, Lcab/snapp/c;->getSideRequestIntervalPeriod()I

    move-result p1

    iput p1, p0, Lcab/snapp/d/b/a;->g:I

    goto :goto_0

    .line 145
    :cond_2
    iput v1, p0, Lcab/snapp/d/b/a;->g:I

    .line 150
    :cond_3
    :goto_0
    iget-object p1, p0, Lcab/snapp/d/b/a;->TAG:Ljava/lang/String;

    const-string p2, "Init succeed"

    invoke-static {p1, p2}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x1

    .line 179
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/d/b/a;->k:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method protected final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v0, p0, Lcab/snapp/d/b/a;->e:Lcab/snapp/c;

    invoke-interface {v0}, Lcab/snapp/c;->getPollingSideRequest()Lcab/snapp/snappnetwork/e;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/d/b/a;->i:Lcab/snapp/snappnetwork/e;

    .line 212
    iget-boolean v0, p0, Lcab/snapp/d/b/a;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcab/snapp/d/b/a;->e:Lcab/snapp/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/d/b/a;->i:Lcab/snapp/snappnetwork/e;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lcab/snapp/d/b/a;->c:Z

    .line 218
    iget-object v0, p0, Lcab/snapp/d/b/a;->i:Lcab/snapp/snappnetwork/e;

    new-instance v1, Lcab/snapp/d/b/a$3;

    invoke-direct {v1, p0}, Lcab/snapp/d/b/a$3;-><init>(Lcab/snapp/d/b/a;)V

    invoke-virtual {v0, v1}, Lcab/snapp/snappnetwork/e;->performRequest(Lcab/snapp/snappnetwork/a/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    .line 214
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 255
    :try_start_0
    iget-object v0, p0, Lcab/snapp/d/b/a;->e:Lcab/snapp/c;

    invoke-interface {v0}, Lcab/snapp/c;->getPollingRequest()Lcab/snapp/snappnetwork/e;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/d/b/a;->h:Lcab/snapp/snappnetwork/e;

    .line 258
    iget-boolean v0, p0, Lcab/snapp/d/b/a;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcab/snapp/d/b/a;->h:Lcab/snapp/snappnetwork/e;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 260
    iput-boolean v0, p0, Lcab/snapp/d/b/a;->d:Z

    .line 262
    iget-object v0, p0, Lcab/snapp/d/b/a;->h:Lcab/snapp/snappnetwork/e;

    iget-object v1, p0, Lcab/snapp/d/b/a;->n:Lcab/snapp/snappnetwork/a/a;

    invoke-virtual {v0, v1}, Lcab/snapp/snappnetwork/e;->performRequest(Lcab/snapp/snappnetwork/a/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    .line 258
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final destroy()V
    .locals 2

    .line 300
    invoke-virtual {p0}, Lcab/snapp/d/b/a;->stop()V

    const/4 v0, 0x0

    .line 301
    iput-object v0, p0, Lcab/snapp/d/b/a;->h:Lcab/snapp/snappnetwork/e;

    .line 302
    iput-object v0, p0, Lcab/snapp/d/b/a;->i:Lcab/snapp/snappnetwork/e;

    .line 303
    iput-object v0, p0, Lcab/snapp/d/b/a;->l:Ljava/util/concurrent/ScheduledFuture;

    .line 304
    iput-object v0, p0, Lcab/snapp/d/b/a;->k:Ljava/util/concurrent/ScheduledExecutorService;

    .line 305
    iget-object v0, p0, Lcab/snapp/d/b/a;->TAG:Ljava/lang/String;

    const-string v1, "Destroy succeed"

    invoke-static {v0, v1}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final isStarted()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcab/snapp/d/b/a;->l:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcab/snapp/d/b/a;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onEvent(Lcab/snapp/a/a;)V
    .locals 2

    .line 317
    iget-object v0, p0, Lcab/snapp/d/b/a;->TAG:Ljava/lang/String;

    const-string v1, "onEvent"

    invoke-static {v0, v1}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcab/snapp/d/b/a;->f:Lcab/snapp/a;

    invoke-interface {v0, p1}, Lcab/snapp/a;->onEvent(Lcab/snapp/a/a;)V

    return-void
.end method

.method public final publish(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final setup()V
    .locals 2

    .line 156
    invoke-direct {p0}, Lcab/snapp/d/b/a;->c()V

    .line 157
    new-instance v0, Lcab/snapp/d/b/a$2;

    invoke-direct {v0, p0}, Lcab/snapp/d/b/a$2;-><init>(Lcab/snapp/d/b/a;)V

    iput-object v0, p0, Lcab/snapp/d/b/a;->j:Ljava/lang/Runnable;

    .line 173
    iget-object v0, p0, Lcab/snapp/d/b/a;->TAG:Ljava/lang/String;

    const-string v1, "Setup succeed"

    invoke-static {v0, v1}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final start()V
    .locals 8

    .line 185
    invoke-virtual {p0}, Lcab/snapp/d/b/a;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcab/snapp/d/b/a;->k:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-direct {p0}, Lcab/snapp/d/b/a;->c()V

    :cond_1
    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcab/snapp/d/b/a;->m:Z

    .line 196
    iget-object v1, p0, Lcab/snapp/d/b/a;->k:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_2

    .line 197
    iget-object v2, p0, Lcab/snapp/d/b/a;->j:Ljava/lang/Runnable;

    const-wide/16 v3, 0x0

    iget v0, p0, Lcab/snapp/d/b/a;->g:I

    int-to-long v5, v0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/d/b/a;->l:Ljava/util/concurrent/ScheduledFuture;

    .line 198
    :cond_2
    iget-object v0, p0, Lcab/snapp/d/b/a;->TAG:Ljava/lang/String;

    const-string v1, "Start succeed"

    invoke-static {v0, v1}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final stop()V
    .locals 4

    const/4 v0, 0x0

    .line 270
    :try_start_0
    iput-boolean v0, p0, Lcab/snapp/d/b/a;->m:Z

    .line 272
    iget-object v0, p0, Lcab/snapp/d/b/a;->h:Lcab/snapp/snappnetwork/e;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcab/snapp/d/b/a;->h:Lcab/snapp/snappnetwork/e;

    invoke-virtual {v0}, Lcab/snapp/snappnetwork/e;->cancel()V

    .line 277
    :cond_0
    iget-object v0, p0, Lcab/snapp/d/b/a;->i:Lcab/snapp/snappnetwork/e;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcab/snapp/d/b/a;->i:Lcab/snapp/snappnetwork/e;

    invoke-virtual {v0}, Lcab/snapp/snappnetwork/e;->cancel()V

    .line 282
    :cond_1
    iget-object v0, p0, Lcab/snapp/d/b/a;->l:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    .line 283
    iget-object v0, p0, Lcab/snapp/d/b/a;->l:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 285
    :cond_2
    iget-object v0, p0, Lcab/snapp/d/b/a;->k:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_3

    .line 286
    iget-object v0, p0, Lcab/snapp/d/b/a;->k:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 287
    :cond_3
    iget-object v0, p0, Lcab/snapp/d/b/a;->TAG:Ljava/lang/String;

    const-string v1, "Stop succeed"

    invoke-static {v0, v1}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    iget-object v1, p0, Lcab/snapp/d/b/a;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stop Error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
