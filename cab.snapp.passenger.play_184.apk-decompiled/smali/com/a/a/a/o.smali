.class final Lcom/a/a/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/af;


# instance fields
.field final a:Lcom/a/a/a/ah;

.field b:Lio/fabric/sdk/android/services/b/f;

.field c:Lio/fabric/sdk/android/services/common/g;

.field d:Lcom/a/a/a/p;

.field e:Z

.field f:Z

.field volatile g:I

.field private final h:Lio/fabric/sdk/android/i;

.field private final i:Lio/fabric/sdk/android/services/network/d;

.field private final j:Landroid/content/Context;

.field private final k:Lcom/a/a/a/ac;

.field private final l:Ljava/util/concurrent/ScheduledExecutorService;

.field private final m:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/i;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/a/a/a/ac;Lio/fabric/sdk/android/services/network/d;Lcom/a/a/a/ah;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/o;->m:Ljava/util/concurrent/atomic/AtomicReference;

    .line 45
    new-instance v0, Lio/fabric/sdk/android/services/common/g;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/common/g;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/o;->c:Lio/fabric/sdk/android/services/common/g;

    .line 46
    new-instance v0, Lcom/a/a/a/r;

    invoke-direct {v0}, Lcom/a/a/a/r;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/o;->d:Lcom/a/a/a/p;

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/a/a/a/o;->e:Z

    .line 48
    iput-boolean v0, p0, Lcom/a/a/a/o;->f:Z

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/a/a/a/o;->g:I

    .line 55
    iput-object p1, p0, Lcom/a/a/a/o;->h:Lio/fabric/sdk/android/i;

    .line 56
    iput-object p2, p0, Lcom/a/a/a/o;->j:Landroid/content/Context;

    .line 57
    iput-object p3, p0, Lcom/a/a/a/o;->l:Ljava/util/concurrent/ScheduledExecutorService;

    .line 58
    iput-object p4, p0, Lcom/a/a/a/o;->k:Lcom/a/a/a/ac;

    .line 59
    iput-object p5, p0, Lcom/a/a/a/o;->i:Lio/fabric/sdk/android/services/network/d;

    .line 60
    iput-object p6, p0, Lcom/a/a/a/o;->a:Lcom/a/a/a/ah;

    return-void
.end method

.method private a(JJ)V
    .locals 8

    .line 204
    iget-object v0, p0, Lcom/a/a/a/o;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 206
    new-instance v2, Lio/fabric/sdk/android/services/b/i;

    iget-object v0, p0, Lcom/a/a/a/o;->j:Landroid/content/Context;

    invoke-direct {v2, v0, p0}, Lio/fabric/sdk/android/services/b/i;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/b/e;)V

    .line 207
    iget-object v0, p0, Lcom/a/a/a/o;->j:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Scheduling time based file roll over every "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " seconds"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->logControlled(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/o;->m:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/a/a/a/o;->l:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v3, p1

    move-wide v5, p3

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 213
    iget-object p2, p0, Lcom/a/a/a/o;->j:Landroid/content/Context;

    const-string p3, "Failed to schedule time based file roll over"

    invoke-static {p2, p3, p1}, Lio/fabric/sdk/android/services/common/i;->logControlledError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final cancelTimeBasedFileRollOver()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/a/a/a/o;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/a/a/a/o;->j:Landroid/content/Context;

    const-string v1, "Cancelling time-based rollover because no events are currently being generated."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->logControlled(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/a/a/a/o;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 184
    iget-object v0, p0, Lcom/a/a/a/o;->m:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final deleteAllEvents()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/a/a/a/o;->k:Lcom/a/a/a/ac;

    invoke-virtual {v0}, Lcom/a/a/a/ac;->deleteAllEventsFiles()V

    return-void
.end method

.method public final processEvent(Lcom/a/a/a/ag$a;)V
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/a/a/a/o;->a:Lcom/a/a/a/ah;

    invoke-virtual {p1, v0}, Lcom/a/a/a/ag$a;->build(Lcom/a/a/a/ah;)Lcom/a/a/a/ag;

    move-result-object p1

    .line 93
    iget-boolean v0, p0, Lcom/a/a/a/o;->e:Z

    const-string v1, "Answers"

    if-nez v0, :cond_0

    sget-object v0, Lcom/a/a/a/ag$b;->CUSTOM:Lcom/a/a/a/ag$b;

    iget-object v2, p1, Lcom/a/a/a/ag;->type:Lcom/a/a/a/ag$b;

    invoke-virtual {v0, v2}, Lcom/a/a/a/ag$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Custom events tracking disabled - skipping event: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 99
    :cond_0
    iget-boolean v0, p0, Lcom/a/a/a/o;->f:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/a/a/a/ag$b;->PREDEFINED:Lcom/a/a/a/ag$b;

    iget-object v2, p1, Lcom/a/a/a/ag;->type:Lcom/a/a/a/ag$b;

    invoke-virtual {v0, v2}, Lcom/a/a/a/ag$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Predefined events tracking disabled - skipping event: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/a/a/a/o;->d:Lcom/a/a/a/p;

    invoke-interface {v0, p1}, Lcom/a/a/a/p;->skipEvent(Lcom/a/a/a/ag;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Skipping filtered event: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 111
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/o;->k:Lcom/a/a/a/ac;

    invoke-virtual {v0, p1}, Lcom/a/a/a/ac;->writeEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 113
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "Failed to write event: "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v1, p1, v0}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcom/a/a/a/o;->scheduleTimeBasedRollOverIfNeeded()V

    return-void
.end method

.method public final rollFileOver()Z
    .locals 3

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/o;->k:Lcom/a/a/a/ac;

    invoke-virtual {v0}, Lcom/a/a/a/ac;->rollFileOver()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 198
    iget-object v1, p0, Lcom/a/a/a/o;->j:Landroid/content/Context;

    const-string v2, "Failed to roll file over."

    invoke-static {v1, v2, v0}, Lio/fabric/sdk/android/services/common/i;->logControlledError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final scheduleTimeBasedRollOverIfNeeded()V
    .locals 4

    .line 121
    iget v0, p0, Lcom/a/a/a/o;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 124
    iget v0, p0, Lcom/a/a/a/o;->g:I

    int-to-long v0, v0

    iget v2, p0, Lcom/a/a/a/o;->g:I

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/a/a/a/o;->a(JJ)V

    :cond_1
    return-void
.end method

.method public final sendEvents()V
    .locals 8

    .line 140
    iget-object v0, p0, Lcom/a/a/a/o;->b:Lio/fabric/sdk/android/services/b/f;

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/a/a/a/o;->j:Landroid/content/Context;

    const-string v1, "skipping files send because we don\'t yet know the target endpoint"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->logControlled(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/o;->j:Landroid/content/Context;

    const-string v1, "Sending all files"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->logControlled(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/a/a/a/o;->k:Lcom/a/a/a/ac;

    invoke-virtual {v0}, Lcom/a/a/a/ac;->getBatchOfFilesToSend()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 151
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 152
    iget-object v3, p0, Lcom/a/a/a/o;->j:Landroid/content/Context;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "attempt to send batch of %d files"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 153
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    .line 152
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/fabric/sdk/android/services/common/i;->logControlled(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    iget-object v3, p0, Lcom/a/a/a/o;->b:Lio/fabric/sdk/android/services/b/f;

    invoke-interface {v3, v0}, Lio/fabric/sdk/android/services/b/f;->send(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v2, v4

    .line 158
    iget-object v4, p0, Lcom/a/a/a/o;->k:Lcom/a/a/a/ac;

    invoke-virtual {v4, v0}, Lcom/a/a/a/ac;->deleteSentFiles(Ljava/util/List;)V

    :cond_1
    if-eqz v3, :cond_2

    .line 165
    iget-object v0, p0, Lcom/a/a/a/o;->k:Lcom/a/a/a/ac;

    invoke-virtual {v0}, Lcom/a/a/a/ac;->getBatchOfFilesToSend()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 168
    iget-object v1, p0, Lcom/a/a/a/o;->j:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to send batch of analytics files to server: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-static {v1, v3, v0}, Lio/fabric/sdk/android/services/common/i;->logControlledError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    if-nez v2, :cond_3

    .line 173
    iget-object v0, p0, Lcom/a/a/a/o;->k:Lcom/a/a/a/ac;

    invoke-virtual {v0}, Lcom/a/a/a/ac;->deleteOldestInRollOverIfOverMax()V

    :cond_3
    return-void
.end method

.method public final setAnalyticsSettingsData(Lio/fabric/sdk/android/services/settings/b;Ljava/lang/String;)V
    .locals 7

    .line 66
    new-instance v6, Lcom/a/a/a/ad;

    iget-object v1, p0, Lcom/a/a/a/o;->h:Lio/fabric/sdk/android/i;

    iget-object v3, p1, Lio/fabric/sdk/android/services/settings/b;->analyticsURL:Ljava/lang/String;

    iget-object v4, p0, Lcom/a/a/a/o;->i:Lio/fabric/sdk/android/services/network/d;

    iget-object v0, p0, Lcom/a/a/a/o;->c:Lio/fabric/sdk/android/services/common/g;

    iget-object v2, p0, Lcom/a/a/a/o;->j:Landroid/content/Context;

    .line 68
    invoke-virtual {v0, v2}, Lio/fabric/sdk/android/services/common/g;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/a/a/a/ad;-><init>(Lio/fabric/sdk/android/i;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/d;Ljava/lang/String;)V

    .line 66
    invoke-static {v6}, Lcom/a/a/a/j;->build(Lcom/a/a/a/ad;)Lcom/a/a/a/j;

    move-result-object p2

    iput-object p2, p0, Lcom/a/a/a/o;->b:Lio/fabric/sdk/android/services/b/f;

    .line 69
    iget-object p2, p0, Lcom/a/a/a/o;->k:Lcom/a/a/a/ac;

    .line 1062
    iput-object p1, p2, Lcom/a/a/a/ac;->a:Lio/fabric/sdk/android/services/settings/b;

    .line 71
    iget-boolean p2, p1, Lio/fabric/sdk/android/services/settings/b;->trackCustomEvents:Z

    iput-boolean p2, p0, Lcom/a/a/a/o;->e:Z

    .line 72
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Custom event tracking "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/a/a/a/o;->e:Z

    const-string v2, "enabled"

    const-string v3, "disabled"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Answers"

    invoke-interface {p2, v1, v0}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-boolean p2, p1, Lio/fabric/sdk/android/services/settings/b;->trackPredefinedEvents:Z

    iput-boolean p2, p0, Lcom/a/a/a/o;->f:Z

    .line 76
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Predefined event tracking "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/a/a/a/o;->f:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget p2, p1, Lio/fabric/sdk/android/services/settings/b;->samplingRate:I

    const/4 v0, 0x1

    if-le p2, v0, :cond_2

    .line 80
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p2

    const-string v0, "Event sampling enabled"

    invoke-interface {p2, v1, v0}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance p2, Lcom/a/a/a/aa;

    iget v0, p1, Lio/fabric/sdk/android/services/settings/b;->samplingRate:I

    invoke-direct {p2, v0}, Lcom/a/a/a/aa;-><init>(I)V

    iput-object p2, p0, Lcom/a/a/a/o;->d:Lcom/a/a/a/p;

    .line 84
    :cond_2
    iget p1, p1, Lio/fabric/sdk/android/services/settings/b;->flushIntervalSeconds:I

    iput p1, p0, Lcom/a/a/a/o;->g:I

    const-wide/16 p1, 0x0

    .line 86
    iget v0, p0, Lcom/a/a/a/o;->g:I

    int-to-long v0, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/a/a/a/o;->a(JJ)V

    return-void
.end method
