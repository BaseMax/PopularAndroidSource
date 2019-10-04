.class public final Lc/e/c/d/e;
.super Ljava/lang/Object;


# static fields
.field public static a:Lc/e/c/d/e;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/concurrent/ScheduledExecutorService;

.field public d:Lc/e/c/d/f;

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/e/c/d/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/e/c/d/f;-><init>(Lc/e/c/d/e;Lc/e/c/d/g;)V

    iput-object v0, p0, Lc/e/c/d/e;->d:Lc/e/c/d/f;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lc/e/c/d/e;->e:I

    .line 4
    iput-object p2, p0, Lc/e/c/d/e;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc/e/c/d/e;->b:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lc/e/c/d/e;)Landroid/content/Context;
    .locals 0

    .line 15
    iget-object p0, p0, Lc/e/c/d/e;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lc/e/c/d/e;
    .locals 6

    const-class v0, Lc/e/c/d/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lc/e/c/d/e;->a:Lc/e/c/d/e;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lc/e/c/d/e;

    .line 3
    invoke-static {}, Lc/e/a/b/g/e/a;->a()Lc/e/a/b/g/e/b;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lc/e/a/b/d/g/a/a;

    const-string v5, "MessengerIpcClient"

    invoke-direct {v4, v5}, Lc/e/a/b/d/g/a/a;-><init>(Ljava/lang/String;)V

    sget v5, Lc/e/a/b/g/e/f;->a:I

    .line 4
    invoke-interface {v2, v3, v4, v5}, Lc/e/a/b/g/e/b;->a(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lc/e/c/d/e;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    sput-object v1, Lc/e/c/d/e;->a:Lc/e/c/d/e;

    .line 5
    :cond_0
    sget-object p0, Lc/e/c/d/e;->a:Lc/e/c/d/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic b(Lc/e/c/d/e;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/e/c/d/e;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 2

    monitor-enter p0

    .line 14
    :try_start_0
    iget v0, p0, Lc/e/c/d/e;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc/e/c/d/e;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(ILandroid/os/Bundle;)Lc/e/a/b/j/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lc/e/a/b/j/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance p1, Lc/e/c/d/l;

    invoke-virtual {p0}, Lc/e/c/d/e;->a()I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1, p2}, Lc/e/c/d/l;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lc/e/c/d/e;->a(Lc/e/c/d/n;)Lc/e/a/b/j/g;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized a(Lc/e/c/d/n;)Lc/e/a/b/j/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/e/c/d/n<",
            "TT;>;)",
            "Lc/e/a/b/j/g<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MessengerIpcClient"

    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Queueing "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_0
    iget-object v0, p0, Lc/e/c/d/e;->d:Lc/e/c/d/f;

    invoke-virtual {v0, p1}, Lc/e/c/d/f;->a(Lc/e/c/d/n;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Lc/e/c/d/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/e/c/d/f;-><init>(Lc/e/c/d/e;Lc/e/c/d/g;)V

    iput-object v0, p0, Lc/e/c/d/e;->d:Lc/e/c/d/f;

    .line 11
    iget-object v0, p0, Lc/e/c/d/e;->d:Lc/e/c/d/f;

    invoke-virtual {v0, p1}, Lc/e/c/d/f;->a(Lc/e/c/d/n;)Z

    .line 12
    :cond_1
    iget-object p1, p1, Lc/e/c/d/n;->b:Lc/e/a/b/j/h;

    invoke-virtual {p1}, Lc/e/a/b/j/h;->a()Lc/e/a/b/j/g;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(ILandroid/os/Bundle;)Lc/e/a/b/j/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lc/e/a/b/j/g<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lc/e/c/d/p;

    invoke-virtual {p0}, Lc/e/c/d/e;->a()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, p2}, Lc/e/c/d/p;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lc/e/c/d/e;->a(Lc/e/c/d/n;)Lc/e/a/b/j/g;

    move-result-object p1

    return-object p1
.end method
