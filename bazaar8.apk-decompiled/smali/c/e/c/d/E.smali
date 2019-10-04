.class public abstract Lc/e/c/d/E;
.super Landroid/app/Service;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public b:Landroid/os/Binder;

.field public final c:Ljava/lang/Object;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    invoke-static {}, Lc/e/a/b/g/e/a;->a()Lc/e/a/b/g/e/b;

    move-result-object v0

    new-instance v1, Lc/e/a/b/d/g/a/a;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "Firebase-"

    if-eqz v3, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v1, v2}, Lc/e/a/b/d/g/a/a;-><init>(Ljava/lang/String;)V

    sget v2, Lc/e/a/b/g/e/f;->a:I

    .line 4
    invoke-interface {v0, v1, v2}, Lc/e/a/b/g/e/b;->a(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lc/e/c/d/E;->a:Ljava/util/concurrent/ExecutorService;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/e/c/d/E;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lc/e/c/d/E;->e:I

    return-void
.end method

.method public static synthetic a(Lc/e/c/d/E;Landroid/content/Intent;)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lc/e/c/d/E;->a(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lb/q/a/a;->a(Landroid/content/Intent;)Z

    .line 2
    :cond_0
    iget-object p1, p0, Lc/e/c/d/E;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 3
    :try_start_0
    iget v0, p0, Lc/e/c/d/E;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc/e/c/d/E;->e:I

    .line 4
    iget v0, p0, Lc/e/c/d/E;->e:I

    if-nez v0, :cond_1

    .line 5
    iget v0, p0, Lc/e/c/d/E;->d:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopSelfResult(I)Z

    .line 7
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract b(Landroid/content/Intent;)Landroid/content/Intent;
.end method

.method public c(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract d(Landroid/content/Intent;)V
.end method

.method public final declared-synchronized onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string p1, "EnhancedIntentService"

    const/4 v0, 0x3

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "EnhancedIntentService"

    const-string v0, "Service received bind request"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object p1, p0, Lc/e/c/d/E;->b:Landroid/os/Binder;

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Lc/e/c/d/I;

    invoke-direct {p1, p0}, Lc/e/c/d/I;-><init>(Lc/e/c/d/E;)V

    iput-object p1, p0, Lc/e/c/d/E;->b:Landroid/os/Binder;

    .line 5
    :cond_1
    iget-object p1, p0, Lc/e/c/d/E;->b:Landroid/os/Binder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 1
    iget-object p2, p0, Lc/e/c/d/E;->c:Ljava/lang/Object;

    monitor-enter p2

    .line 2
    :try_start_0
    iput p3, p0, Lc/e/c/d/E;->d:I

    .line 3
    iget p3, p0, Lc/e/c/d/E;->e:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lc/e/c/d/E;->e:I

    .line 4
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0, p1}, Lc/e/c/d/E;->b(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    const/4 p3, 0x2

    if-nez p2, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lc/e/c/d/E;->a(Landroid/content/Intent;)V

    return p3

    .line 7
    :cond_0
    invoke-virtual {p0, p2}, Lc/e/c/d/E;->c(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0, p1}, Lc/e/c/d/E;->a(Landroid/content/Intent;)V

    return p3

    .line 9
    :cond_1
    iget-object p3, p0, Lc/e/c/d/E;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lc/e/c/d/C;

    invoke-direct {v0, p0, p2, p1}, Lc/e/c/d/C;-><init>(Lc/e/c/d/E;Landroid/content/Intent;Landroid/content/Intent;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x3

    return p1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
