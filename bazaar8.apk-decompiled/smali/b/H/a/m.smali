.class public Lb/H/a/m;
.super Lb/H/m;
.source "WorkManagerImpl.java"


# static fields
.field public static a:Lb/H/a/m;

.field public static b:Lb/H/a/m;

.field public static final c:Ljava/lang/Object;


# instance fields
.field public d:Landroid/content/Context;

.field public e:Lb/H/a;

.field public f:Landroidx/work/impl/WorkDatabase;

.field public g:Lb/H/a/d/b/a;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/H/a/d;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lb/H/a/c;

.field public j:Lb/H/a/d/g;

.field public k:Z

.field public l:Landroid/content/BroadcastReceiver$PendingResult;

.field public final m:Lb/H/a/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lb/H/a/m;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lb/H/a;Lb/H/a/d/b/a;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lb/H/k;->workmanager_test_configuration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lb/H/a/m;-><init>(Landroid/content/Context;Lb/H/a;Lb/H/a/d/b/a;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lb/H/a;Lb/H/a/d/b/a;Z)V
    .locals 8

    .line 3
    invoke-direct {p0}, Lb/H/m;-><init>()V

    .line 4
    new-instance v0, Lb/H/a/n;

    invoke-direct {v0}, Lb/H/a/n;-><init>()V

    iput-object v0, p0, Lb/H/a/m;->m:Lb/H/a/n;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 6
    invoke-static {v0, p4}, Landroidx/work/impl/WorkDatabase;->a(Landroid/content/Context;Z)Landroidx/work/impl/WorkDatabase;

    move-result-object p4

    .line 7
    new-instance v1, Lb/H/f$a;

    invoke-virtual {p2}, Lb/H/a;->f()I

    move-result v2

    invoke-direct {v1, v2}, Lb/H/f$a;-><init>(I)V

    invoke-static {v1}, Lb/H/f;->a(Lb/H/f;)V

    .line 8
    invoke-virtual {p0, v0}, Lb/H/a/m;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 9
    new-instance v7, Lb/H/a/c;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lb/H/a/c;-><init>(Landroid/content/Context;Lb/H/a;Lb/H/a/d/b/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    move-object v1, p0

    .line 10
    invoke-virtual/range {v1 .. v7}, Lb/H/a/m;->a(Landroid/content/Context;Lb/H/a;Lb/H/a/d/b/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Lb/H/a/c;)V

    return-void
.end method

.method public static a()Lb/H/a/m;
    .locals 2

    .line 1
    sget-object v0, Lb/H/a/m;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lb/H/a/m;->a:Lb/H/a/m;

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lb/H/a/m;->a:Lb/H/a/m;

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    sget-object v1, Lb/H/a/m;->b:Lb/H/a/m;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static a(Landroid/content/Context;Lb/H/a;)V
    .locals 3

    .line 6
    sget-object v0, Lb/H/a/m;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lb/H/a/m;->a:Lb/H/a/m;

    if-eqz v1, :cond_1

    sget-object v1, Lb/H/a/m;->b:Lb/H/a/m;

    if-nez v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class levelJavadoc for more information."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    :goto_0
    sget-object v1, Lb/H/a/m;->a:Lb/H/a/m;

    if-nez v1, :cond_3

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 11
    sget-object v1, Lb/H/a/m;->b:Lb/H/a/m;

    if-nez v1, :cond_2

    .line 12
    new-instance v1, Lb/H/a/m;

    new-instance v2, Lb/H/a/d/b/d;

    invoke-direct {v2}, Lb/H/a/d/b/d;-><init>()V

    invoke-direct {v1, p0, p1, v2}, Lb/H/a/m;-><init>(Landroid/content/Context;Lb/H/a;Lb/H/a/d/b/a;)V

    sput-object v1, Lb/H/a/m;->b:Lb/H/a/m;

    .line 13
    :cond_2
    sget-object p0, Lb/H/a/m;->b:Lb/H/a/m;

    sput-object p0, Lb/H/a/m;->a:Lb/H/a/m;

    .line 14
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lb/H/i;
    .locals 1

    .line 21
    invoke-static {p1, p0}, Lb/H/a/d/c;->a(Ljava/lang/String;Lb/H/a/m;)Lb/H/a/d/c;

    move-result-object p1

    .line 22
    iget-object v0, p0, Lb/H/a/m;->g:Lb/H/a/d/b/a;

    invoke-interface {v0, p1}, Lb/H/a/d/b/a;->a(Ljava/lang/Runnable;)V

    .line 23
    invoke-virtual {p1}, Lb/H/a/d/c;->a()Lb/H/i;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Lb/H/j;)Lb/H/i;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lb/H/a/m;->b(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Lb/H/j;)Lb/H/a/f;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lb/H/a/f;->a()Lb/H/i;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)Lb/H/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/work/ExistingWorkPolicy;",
            "Ljava/util/List<",
            "Lb/H/g;",
            ">;)",
            "Lb/H/i;"
        }
    .end annotation

    .line 18
    new-instance v0, Lb/H/a/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lb/H/a/f;-><init>(Lb/H/a/m;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)V

    invoke-virtual {v0}, Lb/H/a/f;->a()Lb/H/i;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;)Lb/H/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lb/H/n;",
            ">;)",
            "Lb/H/i;"
        }
    .end annotation

    .line 15
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lb/H/a/f;

    invoke-direct {v0, p0, p1}, Lb/H/a/f;-><init>(Lb/H/a/m;Ljava/util/List;)V

    invoke-virtual {v0}, Lb/H/a/f;->a()Lb/H/i;

    move-result-object p1

    return-object p1

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enqueue needs at least one WorkRequest."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lb/H/a/d;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 42
    new-array v0, v0, [Lb/H/a/d;

    .line 43
    invoke-static {p1, p0}, Lb/H/a/e;->a(Landroid/content/Context;Lb/H/a/m;)Lb/H/a/d;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lb/H/a/a/a/a;

    invoke-direct {v1, p1, p0}, Lb/H/a/a/a/a;-><init>(Landroid/content/Context;Lb/H/a/m;)V

    const/4 p1, 0x1

    aput-object v1, v0, p1

    .line 44
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 1

    .line 26
    sget-object v0, Lb/H/a/m;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 27
    :try_start_0
    iput-object p1, p0, Lb/H/a/m;->l:Landroid/content/BroadcastReceiver$PendingResult;

    .line 28
    iget-boolean p1, p0, Lb/H/a/m;->k:Z

    if-eqz p1, :cond_0

    .line 29
    iget-object p1, p0, Lb/H/a/m;->l:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lb/H/a/m;->l:Landroid/content/BroadcastReceiver$PendingResult;

    .line 31
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/content/Context;Lb/H/a;Lb/H/a/d/b/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Lb/H/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lb/H/a;",
            "Lb/H/a/d/b/a;",
            "Landroidx/work/impl/WorkDatabase;",
            "Ljava/util/List<",
            "Lb/H/a/d;",
            ">;",
            "Lb/H/a/c;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 33
    iput-object p1, p0, Lb/H/a/m;->d:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lb/H/a/m;->e:Lb/H/a;

    .line 35
    iput-object p3, p0, Lb/H/a/m;->g:Lb/H/a/d/b/a;

    .line 36
    iput-object p4, p0, Lb/H/a/m;->f:Landroidx/work/impl/WorkDatabase;

    .line 37
    iput-object p5, p0, Lb/H/a/m;->h:Ljava/util/List;

    .line 38
    iput-object p6, p0, Lb/H/a/m;->i:Lb/H/a/c;

    .line 39
    new-instance p2, Lb/H/a/d/g;

    iget-object p3, p0, Lb/H/a/m;->d:Landroid/content/Context;

    invoke-direct {p2, p3}, Lb/H/a/d/g;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lb/H/a/m;->j:Lb/H/a/d/g;

    const/4 p2, 0x0

    .line 40
    iput-boolean p2, p0, Lb/H/a/m;->k:Z

    .line 41
    iget-object p2, p0, Lb/H/a/m;->g:Lb/H/a/d/b/a;

    new-instance p3, Landroidx/work/impl/utils/ForceStopRunnable;

    invoke-direct {p3, p1, p0}, Landroidx/work/impl/utils/ForceStopRunnable;-><init>(Landroid/content/Context;Lb/H/a/m;)V

    invoke-interface {p2, p3}, Lb/H/a/d/b/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lb/H/a/m;->g:Lb/H/a/d/b/a;

    new-instance v1, Lb/H/a/d/h;

    invoke-direct {v1, p0, p1, p2}, Lb/H/a/d/h;-><init>(Lb/H/a/m;Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V

    .line 25
    invoke-interface {v0, v1}, Lb/H/a/d/b/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/H/a/m;->d:Landroid/content/Context;

    return-object v0
.end method

.method public final b(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Lb/H/j;)Lb/H/a/f;
    .locals 1

    .line 2
    sget-object v0, Landroidx/work/ExistingPeriodicWorkPolicy;->KEEP:Landroidx/work/ExistingPeriodicWorkPolicy;

    if-ne p2, v0, :cond_0

    .line 3
    sget-object p2, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    goto :goto_0

    .line 4
    :cond_0
    sget-object p2, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    .line 5
    :goto_0
    new-instance v0, Lb/H/a/f;

    .line 6
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Lb/H/a/f;-><init>(Lb/H/a/m;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lc/e/b/a/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lc/e/b/a/a/a<",
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation

    .line 7
    invoke-static {p0, p1}, Lb/H/a/d/j;->a(Lb/H/a/m;Ljava/lang/String;)Lb/H/a/d/j;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lb/H/a/m;->g:Lb/H/a/d/b/a;

    invoke-interface {v0}, Lb/H/a/d/b/a;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    invoke-virtual {p1}, Lb/H/a/d/j;->a()Lc/e/b/a/a/a;

    move-result-object p1

    return-object p1
.end method

.method public c()Lb/H/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/H/a/m;->e:Lb/H/a;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lb/H/a/m;->a(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V

    return-void
.end method

.method public d()Lb/H/a/d/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/H/a/m;->j:Lb/H/a/d/g;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lb/H/a/m;->g:Lb/H/a/d/b/a;

    new-instance v1, Lb/H/a/d/k;

    invoke-direct {v1, p0, p1}, Lb/H/a/d/k;-><init>(Lb/H/a/m;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lb/H/a/d/b/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()Lb/H/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/H/a/m;->i:Lb/H/a/c;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/H/a/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/H/a/m;->h:Ljava/util/List;

    return-object v0
.end method

.method public g()Landroidx/work/impl/WorkDatabase;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/H/a/m;->f:Landroidx/work/impl/WorkDatabase;

    return-object v0
.end method

.method public h()Lb/H/a/d/b/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/H/a/m;->g:Lb/H/a/d/b/a;

    return-object v0
.end method

.method public i()V
    .locals 2

    .line 1
    sget-object v0, Lb/H/a/m;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lb/H/a/m;->k:Z

    .line 3
    iget-object v1, p0, Lb/H/a/m;->l:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lb/H/a/m;->l:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lb/H/a/m;->l:Landroid/content/BroadcastReceiver$PendingResult;

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lb/H/a/m;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/H/a/a/c/c;->a(Landroid/content/Context;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lb/H/a/m;->g()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->v()Lb/H/a/c/p;

    move-result-object v0

    invoke-interface {v0}, Lb/H/a/c/p;->d()I

    .line 4
    invoke-virtual {p0}, Lb/H/a/m;->c()Lb/H/a;

    move-result-object v0

    invoke-virtual {p0}, Lb/H/a/m;->g()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    invoke-virtual {p0}, Lb/H/a/m;->f()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lb/H/a/e;->a(Lb/H/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method
