.class public Lb/H/a/a/b/d;
.super Ljava/lang/Object;
.source "DelayMetCommandHandler.java"

# interfaces
.implements Lb/H/a/b/c;
.implements Lb/H/a/a;
.implements Lb/H/a/a/b/i$a;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Lb/H/a/a/b/f;

.field public final f:Lb/H/a/b/d;

.field public final g:Ljava/lang/Object;

.field public h:Z

.field public i:Landroid/os/PowerManager$WakeLock;

.field public j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DelayMetCommandHandler"

    .line 1
    invoke-static {v0}, Lb/H/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/H/a/a/b/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lb/H/a/a/b/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/H/a/a/b/d;->b:Landroid/content/Context;

    .line 3
    iput p2, p0, Lb/H/a/a/b/d;->c:I

    .line 4
    iput-object p4, p0, Lb/H/a/a/b/d;->e:Lb/H/a/a/b/f;

    .line 5
    iput-object p3, p0, Lb/H/a/a/b/d;->d:Ljava/lang/String;

    .line 6
    new-instance p1, Lb/H/a/b/d;

    iget-object p2, p0, Lb/H/a/a/b/d;->b:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lb/H/a/b/d;-><init>(Landroid/content/Context;Lb/H/a/b/c;)V

    iput-object p1, p0, Lb/H/a/a/b/d;->f:Lb/H/a/b/d;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lb/H/a/a/b/d;->j:Z

    .line 8
    iput-boolean p1, p0, Lb/H/a/a/b/d;->h:Z

    .line 9
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/H/a/a/b/d;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 13
    iget-object v0, p0, Lb/H/a/a/b/d;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lb/H/a/a/b/d;->f:Lb/H/a/b/d;

    invoke-virtual {v1}, Lb/H/a/b/d;->a()V

    .line 15
    iget-object v1, p0, Lb/H/a/a/b/d;->e:Lb/H/a/a/b/f;

    invoke-virtual {v1}, Lb/H/a/a/b/f;->e()Lb/H/a/a/b/i;

    move-result-object v1

    iget-object v2, p0, Lb/H/a/a/b/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lb/H/a/a/b/i;->a(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lb/H/a/a/b/d;->i:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/H/a/a/b/d;->i:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v1

    sget-object v2, Lb/H/a/a/b/d;->a:Ljava/lang/String;

    const-string v3, "Releasing wakelock %s for WorkSpec %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lb/H/a/a/b/d;->i:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget-object v7, p0, Lb/H/a/a/b/d;->d:Ljava/lang/String;

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 18
    iget-object v1, p0, Lb/H/a/a/b/d;->i:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 19
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

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 8
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v0

    sget-object v1, Lb/H/a/a/b/d;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Exceeded time limits on execution for %s"

    .line 9
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Throwable;

    .line 10
    invoke-virtual {v0, v1, p1, v2}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 11
    invoke-virtual {p0}, Lb/H/a/a/b/d;->c()V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 5

    .line 1
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v0

    sget-object v1, Lb/H/a/a/b/d;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string p1, "onExecuted %s, %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1, v2}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p0}, Lb/H/a/a/b/d;->a()V

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lb/H/a/a/b/d;->b:Landroid/content/Context;

    iget-object p2, p0, Lb/H/a/a/b/d;->d:Ljava/lang/String;

    invoke-static {p1, p2}, Lb/H/a/a/b/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lb/H/a/a/b/d;->e:Lb/H/a/a/b/f;

    new-instance v0, Lb/H/a/a/b/f$a;

    iget v1, p0, Lb/H/a/a/b/d;->c:I

    invoke-direct {v0, p2, p1, v1}, Lb/H/a/a/b/f$a;-><init>(Lb/H/a/a/b/f;Landroid/content/Intent;I)V

    invoke-virtual {p2, v0}, Lb/H/a/a/b/f;->a(Ljava/lang/Runnable;)V

    .line 5
    :cond_0
    iget-boolean p1, p0, Lb/H/a/a/b/d;->j:Z

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lb/H/a/a/b/d;->b:Landroid/content/Context;

    invoke-static {p1}, Lb/H/a/a/b/b;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lb/H/a/a/b/d;->e:Lb/H/a/a/b/f;

    new-instance v0, Lb/H/a/a/b/f$a;

    iget v1, p0, Lb/H/a/a/b/d;->c:I

    invoke-direct {v0, p2, p1, v1}, Lb/H/a/a/b/f$a;-><init>(Lb/H/a/a/b/f;Landroid/content/Intent;I)V

    invoke-virtual {p2, v0}, Lb/H/a/a/b/f;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lb/H/a/a/b/d;->c()V

    return-void
.end method

.method public b()V
    .locals 6

    .line 7
    iget-object v0, p0, Lb/H/a/a/b/d;->b:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lb/H/a/a/b/d;->d:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lb/H/a/a/b/d;->c:I

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "%s (%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v0, v2}, Lb/H/a/d/l;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lb/H/a/a/b/d;->i:Landroid/os/PowerManager$WakeLock;

    .line 10
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v0

    sget-object v2, Lb/H/a/a/b/d;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lb/H/a/a/b/d;->i:Landroid/os/PowerManager$WakeLock;

    aput-object v3, v1, v4

    iget-object v3, p0, Lb/H/a/a/b/d;->d:Ljava/lang/String;

    aput-object v3, v1, v5

    const-string v3, "Acquiring wakelock %s for WorkSpec %s"

    .line 11
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Throwable;

    .line 12
    invoke-virtual {v0, v2, v1, v3}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 13
    iget-object v0, p0, Lb/H/a/a/b/d;->i:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 14
    iget-object v0, p0, Lb/H/a/a/b/d;->e:Lb/H/a/a/b/f;

    invoke-virtual {v0}, Lb/H/a/a/b/f;->d()Lb/H/a/m;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lb/H/a/m;->g()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->v()Lb/H/a/c/p;

    move-result-object v0

    iget-object v1, p0, Lb/H/a/a/b/d;->d:Ljava/lang/String;

    .line 17
    invoke-interface {v0, v1}, Lb/H/a/c/p;->d(Ljava/lang/String;)Lb/H/a/c/o;

    move-result-object v0

    if-nez v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lb/H/a/a/b/d;->c()V

    return-void

    .line 19
    :cond_0
    invoke-virtual {v0}, Lb/H/a/c/o;->b()Z

    move-result v1

    iput-boolean v1, p0, Lb/H/a/a/b/d;->j:Z

    .line 20
    iget-boolean v1, p0, Lb/H/a/a/b/d;->j:Z

    if-nez v1, :cond_1

    .line 21
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v0

    sget-object v1, Lb/H/a/a/b/d;->a:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lb/H/a/a/b/d;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "No constraints for %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 22
    iget-object v0, p0, Lb/H/a/a/b/d;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/H/a/a/b/d;->b(Ljava/util/List;)V

    goto :goto_0

    .line 23
    :cond_1
    iget-object v1, p0, Lb/H/a/a/b/d;->f:Lb/H/a/b/d;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb/H/a/b/d;->c(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/H/a/a/b/d;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object p1

    sget-object v0, Lb/H/a/a/b/d;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lb/H/a/a/b/d;->d:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onAllConstraintsMet for %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Throwable;

    invoke-virtual {p1, v0, v1, v2}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3
    iget-object p1, p0, Lb/H/a/a/b/d;->e:Lb/H/a/a/b/f;

    invoke-virtual {p1}, Lb/H/a/a/b/f;->c()Lb/H/a/c;

    move-result-object p1

    iget-object v0, p0, Lb/H/a/a/b/d;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/H/a/c;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lb/H/a/a/b/d;->e:Lb/H/a/a/b/f;

    invoke-virtual {p1}, Lb/H/a/a/b/f;->e()Lb/H/a/a/b/i;

    move-result-object p1

    iget-object v0, p0, Lb/H/a/a/b/d;->d:Ljava/lang/String;

    const-wide/32 v1, 0x927c0

    .line 5
    invoke-virtual {p1, v0, v1, v2, p0}, Lb/H/a/a/b/i;->a(Ljava/lang/String;JLb/H/a/a/b/i$a;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lb/H/a/a/b/d;->a()V

    :goto_0
    return-void
.end method

.method public final c()V
    .locals 8

    .line 1
    iget-object v0, p0, Lb/H/a/a/b/d;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lb/H/a/a/b/d;->h:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 3
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v1

    sget-object v4, Lb/H/a/a/b/d;->a:Ljava/lang/String;

    const-string v5, "Stopping work for workspec %s"

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lb/H/a/a/b/d;->d:Ljava/lang/String;

    aput-object v7, v6, v3

    .line 4
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Throwable;

    .line 5
    invoke-virtual {v1, v4, v5, v6}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 6
    iget-object v1, p0, Lb/H/a/a/b/d;->b:Landroid/content/Context;

    iget-object v4, p0, Lb/H/a/a/b/d;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lb/H/a/a/b/b;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 7
    iget-object v4, p0, Lb/H/a/a/b/d;->e:Lb/H/a/a/b/f;

    new-instance v5, Lb/H/a/a/b/f$a;

    iget-object v6, p0, Lb/H/a/a/b/d;->e:Lb/H/a/a/b/f;

    iget v7, p0, Lb/H/a/a/b/d;->c:I

    invoke-direct {v5, v6, v1, v7}, Lb/H/a/a/b/f$a;-><init>(Lb/H/a/a/b/f;Landroid/content/Intent;I)V

    invoke-virtual {v4, v5}, Lb/H/a/a/b/f;->a(Ljava/lang/Runnable;)V

    .line 8
    iget-object v1, p0, Lb/H/a/a/b/d;->e:Lb/H/a/a/b/f;

    invoke-virtual {v1}, Lb/H/a/a/b/f;->c()Lb/H/a/c;

    move-result-object v1

    iget-object v4, p0, Lb/H/a/a/b/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lb/H/a/c;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v1

    sget-object v4, Lb/H/a/a/b/d;->a:Ljava/lang/String;

    const-string v5, "WorkSpec %s needs to be rescheduled"

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lb/H/a/a/b/d;->d:Ljava/lang/String;

    aput-object v7, v6, v3

    .line 10
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Throwable;

    .line 11
    invoke-virtual {v1, v4, v5, v3}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 12
    iget-object v1, p0, Lb/H/a/a/b/d;->b:Landroid/content/Context;

    iget-object v3, p0, Lb/H/a/a/b/d;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lb/H/a/a/b/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 13
    iget-object v3, p0, Lb/H/a/a/b/d;->e:Lb/H/a/a/b/f;

    new-instance v4, Lb/H/a/a/b/f$a;

    iget-object v5, p0, Lb/H/a/a/b/d;->e:Lb/H/a/a/b/f;

    iget v6, p0, Lb/H/a/a/b/d;->c:I

    invoke-direct {v4, v5, v1, v6}, Lb/H/a/a/b/f$a;-><init>(Lb/H/a/a/b/f;Landroid/content/Intent;I)V

    invoke-virtual {v3, v4}, Lb/H/a/a/b/f;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v1

    sget-object v4, Lb/H/a/a/b/d;->a:Ljava/lang/String;

    const-string v5, "Processor does not have WorkSpec %s. No need to reschedule "

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lb/H/a/a/b/d;->d:Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v1, v4, v5, v3}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 15
    :goto_0
    iput-boolean v2, p0, Lb/H/a/a/b/d;->h:Z

    goto :goto_1

    .line 16
    :cond_1
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v1

    sget-object v4, Lb/H/a/a/b/d;->a:Ljava/lang/String;

    const-string v5, "Already stopped work for %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lb/H/a/a/b/d;->d:Ljava/lang/String;

    aput-object v6, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v1, v4, v2, v3}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 17
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
