.class final Lcom/a/a/a/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/k$a;


# instance fields
.field final a:Lcom/a/a/a/f;

.field final b:Lio/fabric/sdk/android/a;

.field final c:Lcom/a/a/a/k;

.field final d:Lcom/a/a/a/i;

.field private final e:J


# direct methods
.method private constructor <init>(Lcom/a/a/a/f;Lio/fabric/sdk/android/a;Lcom/a/a/a/k;Lcom/a/a/a/i;J)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/a/a/a/ae;->a:Lcom/a/a/a/f;

    .line 60
    iput-object p2, p0, Lcom/a/a/a/ae;->b:Lio/fabric/sdk/android/a;

    .line 61
    iput-object p3, p0, Lcom/a/a/a/ae;->c:Lcom/a/a/a/k;

    .line 62
    iput-object p4, p0, Lcom/a/a/a/ae;->d:Lcom/a/a/a/i;

    .line 63
    iput-wide p5, p0, Lcom/a/a/a/ae;->e:J

    return-void
.end method

.method public static build(Lio/fabric/sdk/android/i;Landroid/content/Context;Lio/fabric/sdk/android/services/common/IdManager;Ljava/lang/String;Ljava/lang/String;J)Lcom/a/a/a/ae;
    .locals 13

    move-object v7, p1

    .line 37
    new-instance v4, Lcom/a/a/a/aj;

    move-object v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v4, p1, p2, v1, v2}, Lcom/a/a/a/aj;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/common/IdManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v3, Lcom/a/a/a/g;

    new-instance v0, Lio/fabric/sdk/android/services/c/b;

    move-object v1, p0

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/c/b;-><init>(Lio/fabric/sdk/android/i;)V

    invoke-direct {v3, p1, v0}, Lcom/a/a/a/g;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/c/a;)V

    .line 41
    new-instance v5, Lio/fabric/sdk/android/services/network/b;

    .line 42
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    invoke-direct {v5, v0}, Lio/fabric/sdk/android/services/network/b;-><init>(Lio/fabric/sdk/android/l;)V

    .line 43
    new-instance v8, Lio/fabric/sdk/android/a;

    invoke-direct {v8, p1}, Lio/fabric/sdk/android/a;-><init>(Landroid/content/Context;)V

    const-string v0, "Answers Events Handler"

    .line 45
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/m;->buildSingleThreadScheduledExecutorService(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    .line 46
    new-instance v9, Lcom/a/a/a/k;

    invoke-direct {v9, v6}, Lcom/a/a/a/k;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 47
    new-instance v10, Lcom/a/a/a/f;

    move-object v0, v10

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/a/a/a/f;-><init>(Lio/fabric/sdk/android/i;Landroid/content/Context;Lcom/a/a/a/g;Lcom/a/a/a/aj;Lio/fabric/sdk/android/services/network/d;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 49
    invoke-static {p1}, Lcom/a/a/a/i;->build(Landroid/content/Context;)Lcom/a/a/a/i;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/a/a/a/ae;

    move-object v6, v1

    move-object v7, v10

    move-object v10, v0

    move-wide/from16 v11, p5

    invoke-direct/range {v6 .. v12}, Lcom/a/a/a/ae;-><init>(Lcom/a/a/a/f;Lio/fabric/sdk/android/a;Lcom/a/a/a/k;Lcom/a/a/a/i;J)V

    return-object v1
.end method


# virtual methods
.method public final disable()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/a/a/a/ae;->b:Lio/fabric/sdk/android/a;

    invoke-virtual {v0}, Lio/fabric/sdk/android/a;->resetCallbacks()V

    .line 85
    iget-object v0, p0, Lcom/a/a/a/ae;->a:Lcom/a/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/a/f;->disable()V

    return-void
.end method

.method public final enable()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/a/a/a/ae;->a:Lcom/a/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/a/f;->enable()V

    .line 71
    iget-object v0, p0, Lcom/a/a/a/ae;->b:Lio/fabric/sdk/android/a;

    new-instance v1, Lcom/a/a/a/h;

    iget-object v2, p0, Lcom/a/a/a/ae;->c:Lcom/a/a/a/k;

    invoke-direct {v1, p0, v2}, Lcom/a/a/a/h;-><init>(Lcom/a/a/a/ae;Lcom/a/a/a/k;)V

    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/a;->registerCallbacks(Lio/fabric/sdk/android/a$b;)Z

    .line 72
    iget-object v0, p0, Lcom/a/a/a/ae;->c:Lcom/a/a/a/k;

    invoke-virtual {v0, p0}, Lcom/a/a/a/k;->registerListener(Lcom/a/a/a/k$a;)V

    .line 1150
    iget-object v0, p0, Lcom/a/a/a/ae;->d:Lcom/a/a/a/i;

    invoke-virtual {v0}, Lcom/a/a/a/i;->hasAnalyticsLaunched()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 75
    iget-wide v0, p0, Lcom/a/a/a/ae;->e:J

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/ae;->onInstall(J)V

    .line 76
    iget-object v0, p0, Lcom/a/a/a/ae;->d:Lcom/a/a/a/i;

    invoke-virtual {v0}, Lcom/a/a/a/i;->setAnalyticsLaunched()V

    :cond_0
    return-void
.end method

.method public final onBackground()V
    .locals 3

    .line 132
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Flush events when app is backgrounded"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/a/a/a/ae;->a:Lcom/a/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/a/f;->flushEvents()V

    return-void
.end method

.method public final onCrash(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 105
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 112
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Logged crash"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/a/a/a/ae;->a:Lcom/a/a/a/f;

    invoke-static {p1, p2}, Lcom/a/a/a/ag;->crashEventBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/ag$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/a/a/a/f;->processEventSync(Lcom/a/a/a/ag$a;)V

    return-void

    .line 106
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "onCrash called from main thread!!!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onCustom(Lcom/a/a/a/m;)V
    .locals 3

    .line 89
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Logged custom event: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Answers"

    invoke-interface {v0, v2, v1}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/a/a/a/ae;->a:Lcom/a/a/a/f;

    invoke-static {p1}, Lcom/a/a/a/ag;->customEventBuilder(Lcom/a/a/a/m;)Lcom/a/a/a/ag$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/a/a/a/f;->processEventAsync(Lcom/a/a/a/ag$a;)V

    return-void
.end method

.method public final onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onInstall(J)V
    .locals 3

    .line 121
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Logged install"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/a/a/a/ae;->a:Lcom/a/a/a/f;

    invoke-static {p1, p2}, Lcom/a/a/a/ag;->installEventBuilder(J)Lcom/a/a/a/ag$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/a/a/a/f;->processEventAsyncAndFlush(Lcom/a/a/a/ag$a;)V

    return-void
.end method

.method public final onLifecycle(Landroid/app/Activity;Lcom/a/a/a/ag$b;)V
    .locals 3

    .line 126
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Logged lifecycle event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/a/a/a/ag$b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Answers"

    invoke-interface {v0, v2, v1}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/a/a/a/ae;->a:Lcom/a/a/a/f;

    invoke-static {p2, p1}, Lcom/a/a/a/ag;->lifecycleEventBuilder(Lcom/a/a/a/ag$b;Landroid/app/Activity;)Lcom/a/a/a/ag$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/a/a/a/f;->processEventAsync(Lcom/a/a/a/ag$a;)V

    return-void
.end method

.method public final onPredefined(Lcom/a/a/a/v;)V
    .locals 3

    .line 94
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Logged predefined event: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Answers"

    invoke-interface {v0, v2, v1}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/a/a/a/ae;->a:Lcom/a/a/a/f;

    invoke-static {p1}, Lcom/a/a/a/ag;->predefinedEventBuilder(Lcom/a/a/a/v;)Lcom/a/a/a/ag$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/a/a/a/f;->processEventAsync(Lcom/a/a/a/ag$a;)V

    return-void
.end method

.method public final setAnalyticsSettingsData(Lio/fabric/sdk/android/services/settings/b;Ljava/lang/String;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/a/a/a/ae;->c:Lcom/a/a/a/k;

    iget-boolean v1, p1, Lio/fabric/sdk/android/services/settings/b;->flushOnBackground:Z

    invoke-virtual {v0, v1}, Lcom/a/a/a/k;->setFlushOnBackground(Z)V

    .line 139
    iget-object v0, p0, Lcom/a/a/a/ae;->a:Lcom/a/a/a/f;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/a/f;->setAnalyticsSettingsData(Lio/fabric/sdk/android/services/settings/b;Ljava/lang/String;)V

    return-void
.end method
