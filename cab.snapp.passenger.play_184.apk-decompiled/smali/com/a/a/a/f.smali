.class final Lcom/a/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/b/d;


# instance fields
.field final a:Lio/fabric/sdk/android/i;

.field final b:Landroid/content/Context;

.field final c:Lcom/a/a/a/g;

.field final d:Lcom/a/a/a/aj;

.field final e:Lio/fabric/sdk/android/services/network/d;

.field final f:Ljava/util/concurrent/ScheduledExecutorService;

.field g:Lcom/a/a/a/af;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/i;Landroid/content/Context;Lcom/a/a/a/g;Lcom/a/a/a/aj;Lio/fabric/sdk/android/services/network/d;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/a/a/a/n;

    invoke-direct {v0}, Lcom/a/a/a/n;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/f;->g:Lcom/a/a/a/af;

    .line 32
    iput-object p1, p0, Lcom/a/a/a/f;->a:Lio/fabric/sdk/android/i;

    .line 33
    iput-object p2, p0, Lcom/a/a/a/f;->b:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/a/a/a/f;->c:Lcom/a/a/a/g;

    .line 35
    iput-object p4, p0, Lcom/a/a/a/f;->d:Lcom/a/a/a/aj;

    .line 36
    iput-object p5, p0, Lcom/a/a/a/f;->e:Lio/fabric/sdk/android/services/network/d;

    .line 37
    iput-object p6, p0, Lcom/a/a/a/f;->f:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private a(Lcom/a/a/a/ag$a;ZZ)V
    .locals 1

    .line 150
    new-instance v0, Lcom/a/a/a/f$6;

    invoke-direct {v0, p0, p1, p3}, Lcom/a/a/a/f$6;-><init>(Lcom/a/a/a/f;Lcom/a/a/a/ag$a;Z)V

    if-eqz p2, :cond_0

    .line 166
    invoke-direct {p0, v0}, Lcom/a/a/a/f;->a(Ljava/lang/Runnable;)V

    return-void

    .line 168
    :cond_0
    invoke-direct {p0, v0}, Lcom/a/a/a/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 3

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/f;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 176
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Failed to run events task"

    invoke-interface {v0, v1, v2, p1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Ljava/lang/Runnable;)V
    .locals 3

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/f;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 184
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Failed to submit events task"

    invoke-interface {v0, v1, v2, p1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 1

    .line 83
    new-instance v0, Lcom/a/a/a/f$2;

    invoke-direct {v0, p0}, Lcom/a/a/a/f$2;-><init>(Lcom/a/a/a/f;)V

    invoke-direct {p0, v0}, Lcom/a/a/a/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final enable()V
    .locals 1

    .line 115
    new-instance v0, Lcom/a/a/a/f$4;

    invoke-direct {v0, p0}, Lcom/a/a/a/f$4;-><init>(Lcom/a/a/a/f;)V

    invoke-direct {p0, v0}, Lcom/a/a/a/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final flushEvents()V
    .locals 1

    .line 136
    new-instance v0, Lcom/a/a/a/f$5;

    invoke-direct {v0, p0}, Lcom/a/a/a/f$5;-><init>(Lcom/a/a/a/f;)V

    invoke-direct {p0, v0}, Lcom/a/a/a/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onRollOver(Ljava/lang/String;)V
    .locals 0

    .line 99
    new-instance p1, Lcom/a/a/a/f$3;

    invoke-direct {p1, p0}, Lcom/a/a/a/f$3;-><init>(Lcom/a/a/a/f;)V

    invoke-direct {p0, p1}, Lcom/a/a/a/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final processEventAsync(Lcom/a/a/a/ag$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0, v0}, Lcom/a/a/a/f;->a(Lcom/a/a/a/ag$a;ZZ)V

    return-void
.end method

.method public final processEventAsyncAndFlush(Lcom/a/a/a/ag$a;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 51
    invoke-direct {p0, p1, v0, v1}, Lcom/a/a/a/f;->a(Lcom/a/a/a/ag$a;ZZ)V

    return-void
.end method

.method public final processEventSync(Lcom/a/a/a/ag$a;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, v0, v1}, Lcom/a/a/a/f;->a(Lcom/a/a/a/ag$a;ZZ)V

    return-void
.end method

.method public final setAnalyticsSettingsData(Lio/fabric/sdk/android/services/settings/b;Ljava/lang/String;)V
    .locals 1

    .line 66
    new-instance v0, Lcom/a/a/a/f$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/a/a/a/f$1;-><init>(Lcom/a/a/a/f;Lio/fabric/sdk/android/services/settings/b;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/a/a/a/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method
