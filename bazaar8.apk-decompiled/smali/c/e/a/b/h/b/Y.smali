.class public Lc/e/a/b/h/b/Y;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/a/b/h/b/wa;


# static fields
.field public static volatile a:Lc/e/a/b/h/b/Y;


# instance fields
.field public A:J

.field public volatile B:Ljava/lang/Boolean;

.field public C:Ljava/lang/Boolean;

.field public D:Ljava/lang/Boolean;

.field public E:I

.field public F:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final G:J

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Lc/e/a/b/h/b/nc;

.field public final h:Lc/e/a/b/h/b/pc;

.field public final i:Lc/e/a/b/h/b/F;

.field public final j:Lc/e/a/b/h/b/t;

.field public final k:Lc/e/a/b/h/b/U;

.field public final l:Lc/e/a/b/h/b/Jb;

.field public final m:Lc/e/a/b/h/b/cc;

.field public final n:Lc/e/a/b/h/b/r;

.field public final o:Lc/e/a/b/d/g/e;

.field public final p:Lc/e/a/b/h/b/db;

.field public final q:Lc/e/a/b/h/b/Fa;

.field public final r:Lc/e/a/b/h/b/a;

.field public final s:Lc/e/a/b/h/b/Za;

.field public t:Lc/e/a/b/h/b/p;

.field public u:Lc/e/a/b/h/b/gb;

.field public v:Lc/e/a/b/h/b/e;

.field public w:Lc/e/a/b/h/b/o;

.field public x:Lc/e/a/b/h/b/L;

.field public y:Z

.field public z:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Ea;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc/e/a/b/h/b/Y;->y:Z

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lc/e/a/b/h/b/Y;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p1, Lc/e/a/b/h/b/Ea;->a:Landroid/content/Context;

    .line 6
    new-instance v2, Lc/e/a/b/h/b/nc;

    invoke-direct {v2, v1}, Lc/e/a/b/h/b/nc;-><init>(Landroid/content/Context;)V

    .line 7
    iput-object v2, p0, Lc/e/a/b/h/b/Y;->g:Lc/e/a/b/h/b/nc;

    .line 8
    iget-object v1, p0, Lc/e/a/b/h/b/Y;->g:Lc/e/a/b/h/b/nc;

    invoke-static {v1}, Lc/e/a/b/h/b/k;->a(Lc/e/a/b/h/b/nc;)V

    .line 9
    iget-object v1, p1, Lc/e/a/b/h/b/Ea;->a:Landroid/content/Context;

    iput-object v1, p0, Lc/e/a/b/h/b/Y;->b:Landroid/content/Context;

    .line 10
    iget-object v1, p1, Lc/e/a/b/h/b/Ea;->b:Ljava/lang/String;

    iput-object v1, p0, Lc/e/a/b/h/b/Y;->c:Ljava/lang/String;

    .line 11
    iget-object v1, p1, Lc/e/a/b/h/b/Ea;->c:Ljava/lang/String;

    iput-object v1, p0, Lc/e/a/b/h/b/Y;->d:Ljava/lang/String;

    .line 12
    iget-object v1, p1, Lc/e/a/b/h/b/Ea;->d:Ljava/lang/String;

    iput-object v1, p0, Lc/e/a/b/h/b/Y;->e:Ljava/lang/String;

    .line 13
    iget-boolean v1, p1, Lc/e/a/b/h/b/Ea;->h:Z

    iput-boolean v1, p0, Lc/e/a/b/h/b/Y;->f:Z

    .line 14
    iget-object v1, p1, Lc/e/a/b/h/b/Ea;->e:Ljava/lang/Boolean;

    iput-object v1, p0, Lc/e/a/b/h/b/Y;->B:Ljava/lang/Boolean;

    .line 15
    iget-object v1, p1, Lc/e/a/b/h/b/Ea;->g:Lcom/google/android/gms/internal/measurement/zzy;

    if-eqz v1, :cond_1

    .line 16
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzy;->g:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const-string v3, "measurementEnabled"

    .line 17
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 18
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 19
    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, p0, Lc/e/a/b/h/b/Y;->C:Ljava/lang/Boolean;

    .line 20
    :cond_0
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzy;->g:Landroid/os/Bundle;

    const-string v2, "measurementDeactivated"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 22
    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, p0, Lc/e/a/b/h/b/Y;->D:Ljava/lang/Boolean;

    .line 23
    :cond_1
    iget-object v1, p0, Lc/e/a/b/h/b/Y;->b:Landroid/content/Context;

    invoke-static {v1}, Lc/e/a/b/g/f/sa;->a(Landroid/content/Context;)V

    .line 24
    invoke-static {}, Lc/e/a/b/d/g/h;->d()Lc/e/a/b/d/g/e;

    move-result-object v1

    .line 25
    iput-object v1, p0, Lc/e/a/b/h/b/Y;->o:Lc/e/a/b/d/g/e;

    .line 26
    iget-object v1, p0, Lc/e/a/b/h/b/Y;->o:Lc/e/a/b/d/g/e;

    invoke-interface {v1}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide v1

    iput-wide v1, p0, Lc/e/a/b/h/b/Y;->G:J

    .line 27
    new-instance v1, Lc/e/a/b/h/b/pc;

    invoke-direct {v1, p0}, Lc/e/a/b/h/b/pc;-><init>(Lc/e/a/b/h/b/Y;)V

    .line 28
    iput-object v1, p0, Lc/e/a/b/h/b/Y;->h:Lc/e/a/b/h/b/pc;

    .line 29
    new-instance v1, Lc/e/a/b/h/b/F;

    invoke-direct {v1, p0}, Lc/e/a/b/h/b/F;-><init>(Lc/e/a/b/h/b/Y;)V

    .line 30
    invoke-virtual {v1}, Lc/e/a/b/h/b/va;->p()V

    .line 31
    iput-object v1, p0, Lc/e/a/b/h/b/Y;->i:Lc/e/a/b/h/b/F;

    .line 32
    new-instance v1, Lc/e/a/b/h/b/t;

    invoke-direct {v1, p0}, Lc/e/a/b/h/b/t;-><init>(Lc/e/a/b/h/b/Y;)V

    .line 33
    invoke-virtual {v1}, Lc/e/a/b/h/b/va;->p()V

    .line 34
    iput-object v1, p0, Lc/e/a/b/h/b/Y;->j:Lc/e/a/b/h/b/t;

    .line 35
    new-instance v1, Lc/e/a/b/h/b/cc;

    invoke-direct {v1, p0}, Lc/e/a/b/h/b/cc;-><init>(Lc/e/a/b/h/b/Y;)V

    .line 36
    invoke-virtual {v1}, Lc/e/a/b/h/b/va;->p()V

    .line 37
    iput-object v1, p0, Lc/e/a/b/h/b/Y;->m:Lc/e/a/b/h/b/cc;

    .line 38
    new-instance v1, Lc/e/a/b/h/b/r;

    invoke-direct {v1, p0}, Lc/e/a/b/h/b/r;-><init>(Lc/e/a/b/h/b/Y;)V

    .line 39
    invoke-virtual {v1}, Lc/e/a/b/h/b/va;->p()V

    .line 40
    iput-object v1, p0, Lc/e/a/b/h/b/Y;->n:Lc/e/a/b/h/b/r;

    .line 41
    new-instance v1, Lc/e/a/b/h/b/a;

    invoke-direct {v1, p0}, Lc/e/a/b/h/b/a;-><init>(Lc/e/a/b/h/b/Y;)V

    .line 42
    iput-object v1, p0, Lc/e/a/b/h/b/Y;->r:Lc/e/a/b/h/b/a;

    .line 43
    new-instance v1, Lc/e/a/b/h/b/db;

    invoke-direct {v1, p0}, Lc/e/a/b/h/b/db;-><init>(Lc/e/a/b/h/b/Y;)V

    .line 44
    invoke-virtual {v1}, Lc/e/a/b/h/b/zb;->x()V

    .line 45
    iput-object v1, p0, Lc/e/a/b/h/b/Y;->p:Lc/e/a/b/h/b/db;

    .line 46
    new-instance v1, Lc/e/a/b/h/b/Fa;

    invoke-direct {v1, p0}, Lc/e/a/b/h/b/Fa;-><init>(Lc/e/a/b/h/b/Y;)V

    .line 47
    invoke-virtual {v1}, Lc/e/a/b/h/b/zb;->x()V

    .line 48
    iput-object v1, p0, Lc/e/a/b/h/b/Y;->q:Lc/e/a/b/h/b/Fa;

    .line 49
    new-instance v1, Lc/e/a/b/h/b/Jb;

    invoke-direct {v1, p0}, Lc/e/a/b/h/b/Jb;-><init>(Lc/e/a/b/h/b/Y;)V

    .line 50
    invoke-virtual {v1}, Lc/e/a/b/h/b/zb;->x()V

    .line 51
    iput-object v1, p0, Lc/e/a/b/h/b/Y;->l:Lc/e/a/b/h/b/Jb;

    .line 52
    new-instance v1, Lc/e/a/b/h/b/Za;

    invoke-direct {v1, p0}, Lc/e/a/b/h/b/Za;-><init>(Lc/e/a/b/h/b/Y;)V

    .line 53
    invoke-virtual {v1}, Lc/e/a/b/h/b/va;->p()V

    .line 54
    iput-object v1, p0, Lc/e/a/b/h/b/Y;->s:Lc/e/a/b/h/b/Za;

    .line 55
    new-instance v1, Lc/e/a/b/h/b/U;

    invoke-direct {v1, p0}, Lc/e/a/b/h/b/U;-><init>(Lc/e/a/b/h/b/Y;)V

    .line 56
    invoke-virtual {v1}, Lc/e/a/b/h/b/va;->p()V

    .line 57
    iput-object v1, p0, Lc/e/a/b/h/b/Y;->k:Lc/e/a/b/h/b/U;

    .line 58
    iget-object v1, p1, Lc/e/a/b/h/b/Ea;->g:Lcom/google/android/gms/internal/measurement/zzy;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-wide v3, v1, Lcom/google/android/gms/internal/measurement/zzy;->b:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    xor-int/2addr v0, v2

    .line 59
    iget-object v1, p0, Lc/e/a/b/h/b/Y;->g:Lc/e/a/b/h/b/nc;

    .line 60
    iget-object v1, p0, Lc/e/a/b/h/b/Y;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_4

    .line 61
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->B()Lc/e/a/b/h/b/Fa;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_5

    .line 63
    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    .line 64
    iget-object v3, v1, Lc/e/a/b/h/b/Fa;->c:Lc/e/a/b/h/b/Xa;

    if-nez v3, :cond_3

    .line 65
    new-instance v3, Lc/e/a/b/h/b/Xa;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lc/e/a/b/h/b/Xa;-><init>(Lc/e/a/b/h/b/Fa;Lc/e/a/b/h/b/Ga;)V

    iput-object v3, v1, Lc/e/a/b/h/b/Fa;->c:Lc/e/a/b/h/b/Xa;

    :cond_3
    if-eqz v0, :cond_5

    .line 66
    iget-object v0, v1, Lc/e/a/b/h/b/Fa;->c:Lc/e/a/b/h/b/Xa;

    .line 67
    invoke-virtual {v2, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 68
    iget-object v0, v1, Lc/e/a/b/h/b/Fa;->c:Lc/e/a/b/h/b/Xa;

    .line 69
    invoke-virtual {v2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 70
    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_4
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 72
    :cond_5
    :goto_0
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->k:Lc/e/a/b/h/b/U;

    new-instance v1, Lc/e/a/b/h/b/Z;

    invoke-direct {v1, p0, p1}, Lc/e/a/b/h/b/Z;-><init>(Lc/e/a/b/h/b/Y;Lc/e/a/b/h/b/Ea;)V

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/U;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzy;)Lc/e/a/b/h/b/Y;
    .locals 11

    if-eqz p1, :cond_1

    .line 42
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzy;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzy;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 43
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzy;

    iget-wide v2, p1, Lcom/google/android/gms/internal/measurement/zzy;->a:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/zzy;->b:J

    iget-boolean v6, p1, Lcom/google/android/gms/internal/measurement/zzy;->c:Z

    iget-object v7, p1, Lcom/google/android/gms/internal/measurement/zzy;->d:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/google/android/gms/internal/measurement/zzy;->g:Landroid/os/Bundle;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/measurement/zzy;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object p1, v0

    .line 44
    :cond_1
    invoke-static {p0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lc/e/a/b/h/b/Y;->a:Lc/e/a/b/h/b/Y;

    if-nez v0, :cond_3

    .line 47
    const-class v0, Lc/e/a/b/h/b/Y;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lc/e/a/b/h/b/Y;->a:Lc/e/a/b/h/b/Y;

    if-nez v1, :cond_2

    .line 49
    new-instance v1, Lc/e/a/b/h/b/Ea;

    invoke-direct {v1, p0, p1}, Lc/e/a/b/h/b/Ea;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzy;)V

    .line 50
    new-instance p0, Lc/e/a/b/h/b/Y;

    invoke-direct {p0, v1}, Lc/e/a/b/h/b/Y;-><init>(Lc/e/a/b/h/b/Ea;)V

    .line 51
    sput-object p0, Lc/e/a/b/h/b/Y;->a:Lc/e/a/b/h/b/Y;

    .line 52
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    if-eqz p1, :cond_4

    .line 53
    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzy;->g:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    const-string v0, "dataCollectionDefaultEnabled"

    .line 54
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 55
    sget-object p0, Lc/e/a/b/h/b/Y;->a:Lc/e/a/b/h/b/Y;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzy;->g:Landroid/os/Bundle;

    const-string v0, "dataCollectionDefaultEnabled"

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 57
    invoke-virtual {p0, p1}, Lc/e/a/b/h/b/Y;->a(Z)V

    .line 58
    :cond_4
    :goto_0
    sget-object p0, Lc/e/a/b/h/b/Y;->a:Lc/e/a/b/h/b/Y;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lc/e/a/b/h/b/Y;
    .locals 10

    .line 41
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzy;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/measurement/zzy;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {p0, p1}, Lc/e/a/b/h/b/Y;->a(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzy;)Lc/e/a/b/h/b/Y;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lc/e/a/b/h/b/Y;Lc/e/a/b/h/b/Ea;)V
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lc/e/a/b/h/b/Y;->a(Lc/e/a/b/h/b/Ea;)V

    return-void
.end method

.method public static a(Lc/e/a/b/h/b/ua;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lc/e/a/b/h/b/va;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 59
    invoke-virtual {p0}, Lc/e/a/b/h/b/va;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lc/e/a/b/h/b/zb;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 62
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A()Lc/e/a/b/h/b/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->r:Lc/e/a/b/h/b/a;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final B()Lc/e/a/b/h/b/Fa;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->q:Lc/e/a/b/h/b/Fa;

    invoke-static {v0}, Lc/e/a/b/h/b/Y;->a(Lc/e/a/b/h/b/zb;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->q:Lc/e/a/b/h/b/Fa;

    return-object v0
.end method

.method public final C()Lc/e/a/b/h/b/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->w:Lc/e/a/b/h/b/o;

    invoke-static {v0}, Lc/e/a/b/h/b/Y;->a(Lc/e/a/b/h/b/zb;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->w:Lc/e/a/b/h/b/o;

    return-object v0
.end method

.method public final D()Lc/e/a/b/h/b/gb;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->u:Lc/e/a/b/h/b/gb;

    invoke-static {v0}, Lc/e/a/b/h/b/Y;->a(Lc/e/a/b/h/b/zb;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->u:Lc/e/a/b/h/b/gb;

    return-object v0
.end method

.method public final E()Lc/e/a/b/h/b/db;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->p:Lc/e/a/b/h/b/db;

    invoke-static {v0}, Lc/e/a/b/h/b/Y;->a(Lc/e/a/b/h/b/zb;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->p:Lc/e/a/b/h/b/db;

    return-object v0
.end method

.method public final F()Lc/e/a/b/h/b/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->t:Lc/e/a/b/h/b/p;

    invoke-static {v0}, Lc/e/a/b/h/b/Y;->a(Lc/e/a/b/h/b/zb;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->t:Lc/e/a/b/h/b/p;

    return-object v0
.end method

.method public final G()Lc/e/a/b/h/b/Jb;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->l:Lc/e/a/b/h/b/Jb;

    invoke-static {v0}, Lc/e/a/b/h/b/Y;->a(Lc/e/a/b/h/b/zb;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->l:Lc/e/a/b/h/b/Jb;

    return-object v0
.end method

.method public final H()Lc/e/a/b/h/b/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->v:Lc/e/a/b/h/b/e;

    invoke-static {v0}, Lc/e/a/b/h/b/Y;->a(Lc/e/a/b/h/b/va;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->v:Lc/e/a/b/h/b/e;

    return-object v0
.end method

.method public final a()Lc/e/a/b/h/b/nc;
    .locals 1

    .line 40
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->g:Lc/e/a/b/h/b/nc;

    return-object v0
.end method

.method public final a(Lc/e/a/b/h/b/Ea;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->d()Lc/e/a/b/h/b/U;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/U;->l()V

    .line 2
    invoke-static {}, Lc/e/a/b/h/b/pc;->o()Ljava/lang/String;

    .line 3
    new-instance v0, Lc/e/a/b/h/b/e;

    invoke-direct {v0, p0}, Lc/e/a/b/h/b/e;-><init>(Lc/e/a/b/h/b/Y;)V

    .line 4
    invoke-virtual {v0}, Lc/e/a/b/h/b/va;->p()V

    .line 5
    iput-object v0, p0, Lc/e/a/b/h/b/Y;->v:Lc/e/a/b/h/b/e;

    .line 6
    new-instance v0, Lc/e/a/b/h/b/o;

    iget-wide v1, p1, Lc/e/a/b/h/b/Ea;->f:J

    invoke-direct {v0, p0, v1, v2}, Lc/e/a/b/h/b/o;-><init>(Lc/e/a/b/h/b/Y;J)V

    .line 7
    invoke-virtual {v0}, Lc/e/a/b/h/b/zb;->x()V

    .line 8
    iput-object v0, p0, Lc/e/a/b/h/b/Y;->w:Lc/e/a/b/h/b/o;

    .line 9
    new-instance p1, Lc/e/a/b/h/b/p;

    invoke-direct {p1, p0}, Lc/e/a/b/h/b/p;-><init>(Lc/e/a/b/h/b/Y;)V

    .line 10
    invoke-virtual {p1}, Lc/e/a/b/h/b/zb;->x()V

    .line 11
    iput-object p1, p0, Lc/e/a/b/h/b/Y;->t:Lc/e/a/b/h/b/p;

    .line 12
    new-instance p1, Lc/e/a/b/h/b/gb;

    invoke-direct {p1, p0}, Lc/e/a/b/h/b/gb;-><init>(Lc/e/a/b/h/b/Y;)V

    .line 13
    invoke-virtual {p1}, Lc/e/a/b/h/b/zb;->x()V

    .line 14
    iput-object p1, p0, Lc/e/a/b/h/b/Y;->u:Lc/e/a/b/h/b/gb;

    .line 15
    iget-object p1, p0, Lc/e/a/b/h/b/Y;->m:Lc/e/a/b/h/b/cc;

    invoke-virtual {p1}, Lc/e/a/b/h/b/va;->q()V

    .line 16
    iget-object p1, p0, Lc/e/a/b/h/b/Y;->i:Lc/e/a/b/h/b/F;

    invoke-virtual {p1}, Lc/e/a/b/h/b/va;->q()V

    .line 17
    new-instance p1, Lc/e/a/b/h/b/L;

    invoke-direct {p1, p0}, Lc/e/a/b/h/b/L;-><init>(Lc/e/a/b/h/b/Y;)V

    .line 18
    iput-object p1, p0, Lc/e/a/b/h/b/Y;->x:Lc/e/a/b/h/b/L;

    .line 19
    iget-object p1, p0, Lc/e/a/b/h/b/Y;->w:Lc/e/a/b/h/b/o;

    invoke-virtual {p1}, Lc/e/a/b/h/b/zb;->y()V

    .line 20
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->z()Lc/e/a/b/h/b/v;

    move-result-object p1

    .line 21
    iget-object v1, p0, Lc/e/a/b/h/b/Y;->h:Lc/e/a/b/h/b/pc;

    .line 22
    invoke-virtual {v1}, Lc/e/a/b/h/b/pc;->n()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "App measurement is starting up, version"

    invoke-virtual {p1, v2, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lc/e/a/b/h/b/Y;->g:Lc/e/a/b/h/b/nc;

    .line 24
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->z()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {p1, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lc/e/a/b/h/b/Y;->g:Lc/e/a/b/h/b/nc;

    .line 26
    invoke-virtual {v0}, Lc/e/a/b/h/b/o;->C()Ljava/lang/String;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/e/a/b/h/b/cc;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->z()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->z()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 33
    :goto_0
    invoke-virtual {v0, p1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 34
    :cond_2
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string v0, "Debug-level message logging enabled"

    invoke-virtual {p1, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 35
    iget p1, p0, Lc/e/a/b/h/b/Y;->E:I

    iget-object v0, p0, Lc/e/a/b/h/b/Y;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 36
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object p1

    iget v0, p0, Lc/e/a/b/h/b/Y;->E:I

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/h/b/Y;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all components initialized"

    invoke-virtual {p1, v2, v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lc/e/a/b/h/b/Y;->y:Z

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 66
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/b/h/b/Y;->B:Ljava/lang/Boolean;

    return-void
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final b(Lc/e/a/b/h/b/va;)V
    .locals 0

    .line 2
    iget p1, p0, Lc/e/a/b/h/b/Y;->E:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lc/e/a/b/h/b/Y;->E:I

    return-void
.end method

.method public final b(Lc/e/a/b/h/b/zb;)V
    .locals 0

    .line 3
    iget p1, p0, Lc/e/a/b/h/b/Y;->E:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lc/e/a/b/h/b/Y;->E:I

    return-void
.end method

.method public final c()Lc/e/a/b/d/g/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->o:Lc/e/a/b/d/g/e;

    return-object v0
.end method

.method public final d()Lc/e/a/b/h/b/U;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->k:Lc/e/a/b/h/b/U;

    invoke-static {v0}, Lc/e/a/b/h/b/Y;->a(Lc/e/a/b/h/b/va;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->k:Lc/e/a/b/h/b/U;

    return-object v0
.end method

.method public final e()Lc/e/a/b/h/b/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->j:Lc/e/a/b/h/b/t;

    invoke-static {v0}, Lc/e/a/b/h/b/Y;->a(Lc/e/a/b/h/b/va;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->j:Lc/e/a/b/h/b/t;

    return-object v0
.end method

.method public final f()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->d()Lc/e/a/b/h/b/U;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/U;->l()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->l()V

    .line 3
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->h:Lc/e/a/b/h/b/pc;

    .line 4
    sget-object v1, Lc/e/a/b/h/b/k;->za:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/pc;->a(Lc/e/a/b/h/b/k$a;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 5
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->h:Lc/e/a/b/h/b/pc;

    .line 6
    invoke-virtual {v0}, Lc/e/a/b/h/b/pc;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 7
    :cond_0
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->D:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 9
    :cond_1
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/F;->y()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 11
    :cond_2
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->h:Lc/e/a/b/h/b/pc;

    .line 12
    invoke-virtual {v0}, Lc/e/a/b/h/b/pc;->r()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 14
    :cond_3
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->C:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 16
    :cond_4
    invoke-static {}, Lc/e/a/b/d/a/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 17
    :cond_5
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->h:Lc/e/a/b/h/b/pc;

    .line 18
    sget-object v2, Lc/e/a/b/h/b/k;->va:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v0, v2}, Lc/e/a/b/h/b/pc;->a(Lc/e/a/b/h/b/k$a;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lc/e/a/b/h/b/Y;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 19
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->B:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_6
    return v1

    .line 20
    :cond_7
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->h:Lc/e/a/b/h/b/pc;

    .line 21
    invoke-virtual {v0}, Lc/e/a/b/h/b/pc;->q()Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    .line 22
    :cond_8
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->h:Lc/e/a/b/h/b/pc;

    .line 23
    invoke-virtual {v0}, Lc/e/a/b/h/b/pc;->r()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 24
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 25
    :cond_9
    invoke-static {}, Lc/e/a/b/d/a/a/d;->b()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 26
    iget-object v1, p0, Lc/e/a/b/h/b/Y;->B:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    .line 27
    sget-object v1, Lc/e/a/b/h/b/k;->va:Lc/e/a/b/h/b/k$a;

    const/4 v2, 0x0

    .line 28
    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 30
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->B:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 31
    :cond_a
    :goto_0
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc/e/a/b/h/b/F;->c(Z)Z

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->d()Lc/e/a/b/h/b/U;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/U;->l()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/b/h/b/F;->f:Lc/e/a/b/h/b/I;

    invoke-virtual {v0}, Lc/e/a/b/h/b/I;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/b/h/b/F;->f:Lc/e/a/b/h/b/I;

    .line 4
    iget-object v1, p0, Lc/e/a/b/h/b/Y;->o:Lc/e/a/b/d/g/e;

    .line 5
    invoke-interface {v1}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lc/e/a/b/h/b/I;->a(J)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/b/h/b/F;->k:Lc/e/a/b/h/b/I;

    invoke-virtual {v0}, Lc/e/a/b/h/b/I;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 8
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v0

    iget-wide v1, p0, Lc/e/a/b/h/b/Y;->G:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Persisting first open"

    invoke-virtual {v0, v2, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/b/h/b/F;->k:Lc/e/a/b/h/b/I;

    iget-wide v1, p0, Lc/e/a/b/h/b/Y;->G:J

    invoke-virtual {v0, v1, v2}, Lc/e/a/b/h/b/I;->a(J)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->x()Z

    move-result v0

    if-nez v0, :cond_6

    .line 11
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/cc;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "App is missing INTERNET permission"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 14
    :cond_2
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/cc;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 16
    :cond_3
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->g:Lc/e/a/b/h/b/nc;

    .line 17
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->b:Landroid/content/Context;

    .line 18
    invoke-static {v0}, Lc/e/a/b/d/h/c;->a(Landroid/content/Context;)Lc/e/a/b/d/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/d/h/b;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 19
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->h:Lc/e/a/b/h/b/pc;

    .line 20
    invoke-virtual {v0}, Lc/e/a/b/h/b/pc;->w()Z

    move-result v0

    if-nez v0, :cond_5

    .line 21
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->b:Landroid/content/Context;

    .line 22
    invoke-static {v0}, Lc/e/a/b/h/b/O;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 23
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 24
    :cond_4
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->b:Landroid/content/Context;

    const/4 v1, 0x0

    .line 25
    invoke-static {v0, v1}, Lc/e/a/b/h/b/cc;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 26
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 27
    :cond_5
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 28
    :cond_6
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->g:Lc/e/a/b/h/b/nc;

    .line 29
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->C()Lc/e/a/b/h/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/o;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 30
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->C()Lc/e/a/b/h/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/o;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 31
    :cond_7
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    .line 32
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->C()Lc/e/a/b/h/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/o;->B()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/F;->u()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->C()Lc/e/a/b/h/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/o;->D()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v3

    invoke-virtual {v3}, Lc/e/a/b/h/b/F;->v()Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-static {v0, v1, v2, v3}, Lc/e/a/b/h/b/cc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 37
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->z()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/F;->x()V

    .line 39
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->F()Lc/e/a/b/h/b/p;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/p;->C()V

    .line 40
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->u:Lc/e/a/b/h/b/gb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/gb;->B()V

    .line 41
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->u:Lc/e/a/b/h/b/gb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/gb;->I()V

    .line 42
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/b/h/b/F;->k:Lc/e/a/b/h/b/I;

    iget-wide v1, p0, Lc/e/a/b/h/b/Y;->G:J

    invoke-virtual {v0, v1, v2}, Lc/e/a/b/h/b/I;->a(J)V

    .line 43
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/b/h/b/F;->m:Lc/e/a/b/h/b/K;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/K;->a(Ljava/lang/String;)V

    .line 44
    :cond_8
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v0

    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->C()Lc/e/a/b/h/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/o;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/F;->c(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v0

    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->C()Lc/e/a/b/h/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/o;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/F;->d(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->h:Lc/e/a/b/h/b/pc;

    .line 47
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->C()Lc/e/a/b/h/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/o;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/pc;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 48
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->l:Lc/e/a/b/h/b/Jb;

    iget-wide v1, p0, Lc/e/a/b/h/b/Y;->G:J

    invoke-virtual {v0, v1, v2}, Lc/e/a/b/h/b/Jb;->b(J)V

    .line 49
    :cond_9
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->B()Lc/e/a/b/h/b/Fa;

    move-result-object v0

    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v1

    iget-object v1, v1, Lc/e/a/b/h/b/F;->m:Lc/e/a/b/h/b/K;

    invoke-virtual {v1}, Lc/e/a/b/h/b/K;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/Fa;->a(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->g:Lc/e/a/b/h/b/nc;

    .line 51
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->C()Lc/e/a/b/h/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/o;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 52
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->C()Lc/e/a/b/h/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/o;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 53
    :cond_a
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->f()Z

    move-result v0

    .line 54
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/F;->B()Z

    move-result v1

    if-nez v1, :cond_b

    .line 55
    iget-object v1, p0, Lc/e/a/b/h/b/Y;->h:Lc/e/a/b/h/b/pc;

    .line 56
    invoke-virtual {v1}, Lc/e/a/b/h/b/pc;->q()Z

    move-result v1

    if-nez v1, :cond_b

    .line 57
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/F;->d(Z)V

    .line 58
    :cond_b
    iget-object v1, p0, Lc/e/a/b/h/b/Y;->h:Lc/e/a/b/h/b/pc;

    .line 59
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->C()Lc/e/a/b/h/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/o;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/pc;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v0, :cond_d

    .line 60
    :cond_c
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->B()Lc/e/a/b/h/b/Fa;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/Fa;->L()V

    .line 61
    :cond_d
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->D()Lc/e/a/b/h/b/gb;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/gb;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 62
    :cond_e
    :goto_0
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/b/h/b/F;->u:Lc/e/a/b/h/b/H;

    .line 63
    iget-object v1, p0, Lc/e/a/b/h/b/Y;->h:Lc/e/a/b/h/b/pc;

    .line 64
    sget-object v2, Lc/e/a/b/h/b/k;->Ha:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/pc;->a(Lc/e/a/b/h/b/k$a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/H;->a(Z)V

    .line 65
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/b/h/b/F;->v:Lc/e/a/b/h/b/H;

    .line 66
    iget-object v1, p0, Lc/e/a/b/h/b/Y;->h:Lc/e/a/b/h/b/pc;

    .line 67
    sget-object v2, Lc/e/a/b/h/b/k;->Ia:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/pc;->a(Lc/e/a/b/h/b/k$a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/H;->a(Z)V

    return-void
.end method

.method public final h()Lc/e/a/b/h/b/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->n:Lc/e/a/b/h/b/r;

    invoke-static {v0}, Lc/e/a/b/h/b/Y;->a(Lc/e/a/b/h/b/ua;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->n:Lc/e/a/b/h/b/r;

    return-object v0
.end method

.method public final i()Lc/e/a/b/h/b/cc;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->m:Lc/e/a/b/h/b/cc;

    invoke-static {v0}, Lc/e/a/b/h/b/Y;->a(Lc/e/a/b/h/b/ua;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->m:Lc/e/a/b/h/b/cc;

    return-object v0
.end method

.method public final j()Lc/e/a/b/h/b/F;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->i:Lc/e/a/b/h/b/F;

    invoke-static {v0}, Lc/e/a/b/h/b/Y;->a(Lc/e/a/b/h/b/ua;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->i:Lc/e/a/b/h/b/F;

    return-object v0
.end method

.method public final k()Lc/e/a/b/h/b/pc;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->h:Lc/e/a/b/h/b/pc;

    return-object v0
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/e/a/b/h/b/Y;->y:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m()Lc/e/a/b/h/b/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->j:Lc/e/a/b/h/b/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/e/a/b/h/b/va;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/b/h/b/Y;->j:Lc/e/a/b/h/b/t;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n()Lc/e/a/b/h/b/L;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->x:Lc/e/a/b/h/b/L;

    return-object v0
.end method

.method public final o()Lc/e/a/b/h/b/U;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->k:Lc/e/a/b/h/b/U;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/b/h/b/Y;->f:Z

    return v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/b/h/b/Y;->B:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final v()J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/b/h/b/F;->k:Lc/e/a/b/h/b/I;

    invoke-virtual {v0}, Lc/e/a/b/h/b/I;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 3
    iget-wide v0, p0, Lc/e/a/b/h/b/Y;->G:J

    return-wide v0

    .line 4
    :cond_0
    iget-wide v1, p0, Lc/e/a/b/h/b/Y;->G:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final x()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->l()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->d()Lc/e/a/b/h/b/U;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/U;->l()V

    .line 3
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->z:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lc/e/a/b/h/b/Y;->A:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->o:Lc/e/a/b/d/g/e;

    .line 6
    invoke-interface {v0}, Lc/e/a/b/d/g/e;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lc/e/a/b/h/b/Y;->A:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    .line 7
    :cond_0
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->o:Lc/e/a/b/d/g/e;

    .line 8
    invoke-interface {v0}, Lc/e/a/b/d/g/e;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lc/e/a/b/h/b/Y;->A:J

    .line 9
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->g:Lc/e/a/b/h/b/nc;

    .line 10
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/cc;->f(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v0

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3}, Lc/e/a/b/h/b/cc;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->b:Landroid/content/Context;

    .line 13
    invoke-static {v0}, Lc/e/a/b/d/h/c;->a(Landroid/content/Context;)Lc/e/a/b/d/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/d/h/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->h:Lc/e/a/b/h/b/pc;

    .line 15
    invoke-virtual {v0}, Lc/e/a/b/h/b/pc;->w()Z

    move-result v0

    if-nez v0, :cond_1

    .line 16
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->b:Landroid/content/Context;

    .line 17
    invoke-static {v0}, Lc/e/a/b/h/b/O;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->b:Landroid/content/Context;

    .line 19
    invoke-static {v0, v2}, Lc/e/a/b/h/b/cc;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/h/b/Y;->z:Ljava/lang/Boolean;

    .line 21
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->z:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v0

    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->C()Lc/e/a/b/h/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lc/e/a/b/h/b/o;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->C()Lc/e/a/b/h/b/o;

    move-result-object v4

    invoke-virtual {v4}, Lc/e/a/b/h/b/o;->D()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lc/e/a/b/h/b/cc;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 23
    invoke-virtual {p0}, Lc/e/a/b/h/b/Y;->C()Lc/e/a/b/h/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/o;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 24
    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/h/b/Y;->z:Ljava/lang/Boolean;

    .line 25
    :cond_5
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->z:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->g:Lc/e/a/b/h/b/nc;

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Y;->g:Lc/e/a/b/h/b/nc;

    return-void
.end method
