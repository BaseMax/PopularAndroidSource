.class public Lb/H/a/q;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/H/a/q$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public b:Landroid/content/Context;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/H/a/d;",
            ">;"
        }
    .end annotation
.end field

.field public e:Landroidx/work/WorkerParameters$a;

.field public f:Lb/H/a/c/o;

.field public g:Landroidx/work/ListenableWorker;

.field public h:Landroidx/work/ListenableWorker$a;

.field public i:Lb/H/a;

.field public j:Lb/H/a/d/b/a;

.field public k:Landroidx/work/impl/WorkDatabase;

.field public l:Lb/H/a/c/p;

.field public m:Lb/H/a/c/b;

.field public n:Lb/H/a/c/B;

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/lang/String;

.field public q:Lb/H/a/d/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/H/a/d/a/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lc/e/b/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/b/a/a/a<",
            "Landroidx/work/ListenableWorker$a;",
            ">;"
        }
    .end annotation
.end field

.field public volatile s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkerWrapper"

    .line 1
    invoke-static {v0}, Lb/H/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/H/a/q;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lb/H/a/q$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroidx/work/ListenableWorker$a;->a()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    iput-object v0, p0, Lb/H/a/q;->h:Landroidx/work/ListenableWorker$a;

    .line 3
    invoke-static {}, Lb/H/a/d/a/c;->e()Lb/H/a/d/a/c;

    move-result-object v0

    iput-object v0, p0, Lb/H/a/q;->q:Lb/H/a/d/a/c;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lb/H/a/q;->r:Lc/e/b/a/a/a;

    .line 5
    iget-object v0, p1, Lb/H/a/q$a;->a:Landroid/content/Context;

    iput-object v0, p0, Lb/H/a/q;->b:Landroid/content/Context;

    .line 6
    iget-object v0, p1, Lb/H/a/q$a;->c:Lb/H/a/d/b/a;

    iput-object v0, p0, Lb/H/a/q;->j:Lb/H/a/d/b/a;

    .line 7
    iget-object v0, p1, Lb/H/a/q$a;->f:Ljava/lang/String;

    iput-object v0, p0, Lb/H/a/q;->c:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Lb/H/a/q$a;->g:Ljava/util/List;

    iput-object v0, p0, Lb/H/a/q;->d:Ljava/util/List;

    .line 9
    iget-object v0, p1, Lb/H/a/q$a;->h:Landroidx/work/WorkerParameters$a;

    iput-object v0, p0, Lb/H/a/q;->e:Landroidx/work/WorkerParameters$a;

    .line 10
    iget-object v0, p1, Lb/H/a/q$a;->b:Landroidx/work/ListenableWorker;

    iput-object v0, p0, Lb/H/a/q;->g:Landroidx/work/ListenableWorker;

    .line 11
    iget-object v0, p1, Lb/H/a/q$a;->d:Lb/H/a;

    iput-object v0, p0, Lb/H/a/q;->i:Lb/H/a;

    .line 12
    iget-object p1, p1, Lb/H/a/q$a;->e:Landroidx/work/impl/WorkDatabase;

    iput-object p1, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    .line 13
    iget-object p1, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->v()Lb/H/a/c/p;

    move-result-object p1

    iput-object p1, p0, Lb/H/a/q;->l:Lb/H/a/c/p;

    .line 14
    iget-object p1, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->p()Lb/H/a/c/b;

    move-result-object p1

    iput-object p1, p0, Lb/H/a/q;->m:Lb/H/a/c/b;

    .line 15
    iget-object p1, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->w()Lb/H/a/c/B;

    move-result-object p1

    iput-object p1, p0, Lb/H/a/q;->n:Lb/H/a/c/B;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Work [ id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/H/a/q;->c:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tags={ "

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    const-string v3, ", "

    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, " } ]"

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 32
    iget-object v0, p0, Lb/H/a/q;->j:Lb/H/a/d/b/a;

    invoke-interface {v0}, Lb/H/a/d/b/a;->a()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Needs to be executed on the Background executor thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Landroidx/work/ListenableWorker$a;)V
    .locals 4

    .line 7
    instance-of v0, p1, Landroidx/work/ListenableWorker$a$c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object p1

    sget-object v0, Lb/H/a/q;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lb/H/a/q;->p:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "Worker result SUCCESS for %s"

    .line 9
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 10
    invoke-virtual {p1, v0, v1, v2}, Lb/H/f;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 11
    iget-object p1, p0, Lb/H/a/q;->f:Lb/H/a/c/o;

    invoke-virtual {p1}, Lb/H/a/c/o;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0}, Lb/H/a/q;->e()V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lb/H/a/q;->i()V

    goto :goto_0

    .line 14
    :cond_1
    instance-of p1, p1, Landroidx/work/ListenableWorker$a$b;

    if-eqz p1, :cond_2

    .line 15
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object p1

    sget-object v0, Lb/H/a/q;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lb/H/a/q;->p:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "Worker result RETRY for %s"

    .line 16
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 17
    invoke-virtual {p1, v0, v1, v2}, Lb/H/f;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 18
    invoke-virtual {p0}, Lb/H/a/q;->d()V

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object p1

    sget-object v0, Lb/H/a/q;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lb/H/a/q;->p:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "Worker result FAILURE for %s"

    .line 20
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 21
    invoke-virtual {p1, v0, v1, v2}, Lb/H/f;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 22
    iget-object p1, p0, Lb/H/a/q;->f:Lb/H/a/c/o;

    invoke-virtual {p1}, Lb/H/a/c/o;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 23
    invoke-virtual {p0}, Lb/H/a/q;->e()V

    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {p0}, Lb/H/a/q;->h()V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 26
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 27
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 28
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 29
    iget-object v1, p0, Lb/H/a/q;->l:Lb/H/a/c/p;

    invoke-interface {v1, p1}, Lb/H/a/c/p;->c(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v1

    sget-object v2, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    if-eq v1, v2, :cond_0

    .line 30
    iget-object v1, p0, Lb/H/a/q;->l:Lb/H/a/c/p;

    sget-object v2, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lb/H/a/c/p;->a(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 31
    :cond_0
    iget-object v1, p0, Lb/H/a/q;->m:Lb/H/a/c/b;

    invoke-interface {v1, p1}, Lb/H/a/c/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lb/H/a/q;->s:Z

    .line 2
    invoke-virtual {p0}, Lb/H/a/q;->j()Z

    .line 3
    iget-object v0, p0, Lb/H/a/q;->r:Lc/e/b/a/a/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 5
    :cond_0
    iget-object p1, p0, Lb/H/a/q;->g:Landroidx/work/ListenableWorker;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroidx/work/ListenableWorker;->j()V

    :cond_1
    return-void
.end method

.method public b()Lc/e/b/a/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/e/b/a/a/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/H/a/q;->q:Lb/H/a/d/a/c;

    return-object v0
.end method

.method public final b(Z)V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    iget-object v0, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->v()Lb/H/a/c/p;

    move-result-object v0

    invoke-interface {v0}, Lb/H/a/c/p;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lb/H/a/q;->b:Landroid/content/Context;

    const-class v2, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v0, v2, v1}, Lb/H/a/d/f;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 6
    :cond_2
    iget-object v0, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    .line 8
    iget-object v0, p0, Lb/H/a/q;->q:Lb/H/a/d/a/c;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/H/a/d/a/c;->c(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 9
    iget-object v0, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    throw p1
.end method

.method public c()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lb/H/a/q;->a()V

    .line 2
    invoke-virtual {p0}, Lb/H/a/q;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 3
    :try_start_0
    iget-object v0, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 4
    iget-object v0, p0, Lb/H/a/q;->l:Lb/H/a/c/p;

    iget-object v2, p0, Lb/H/a/q;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Lb/H/a/c/p;->c(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lb/H/a/q;->b(Z)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    sget-object v2, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    if-ne v0, v2, :cond_1

    .line 7
    iget-object v0, p0, Lb/H/a/q;->h:Landroidx/work/ListenableWorker$a;

    invoke-virtual {p0, v0}, Lb/H/a/q;->a(Landroidx/work/ListenableWorker$a;)V

    .line 8
    iget-object v0, p0, Lb/H/a/q;->l:Lb/H/a/c/p;

    iget-object v1, p0, Lb/H/a/q;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lb/H/a/c/p;->c(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->f()Z

    move-result v0

    move v1, v0

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lb/H/a/q;->d()V

    .line 12
    :cond_2
    :goto_0
    iget-object v0, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v0, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    throw v0

    .line 14
    :cond_3
    :goto_1
    iget-object v0, p0, Lb/H/a/q;->d:Ljava/util/List;

    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/H/a/d;

    .line 16
    iget-object v2, p0, Lb/H/a/q;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Lb/H/a/d;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_4
    iget-object v0, p0, Lb/H/a/q;->i:Lb/H/a;

    iget-object v1, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    iget-object v2, p0, Lb/H/a/q;->d:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lb/H/a/e;->a(Lb/H/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public final d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lb/H/a/q;->l:Lb/H/a/c/p;

    sget-object v2, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lb/H/a/q;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lb/H/a/c/p;->a(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lb/H/a/q;->l:Lb/H/a/c/p;

    iget-object v2, p0, Lb/H/a/q;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lb/H/a/c/p;->b(Ljava/lang/String;J)V

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lb/H/a/q;->l:Lb/H/a/c/p;

    iget-object v2, p0, Lb/H/a/q;->c:Ljava/lang/String;

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Lb/H/a/c/p;->a(Ljava/lang/String;J)I

    .line 6
    :cond_0
    iget-object v1, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    .line 8
    invoke-virtual {p0, v0}, Lb/H/a/q;->b(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    iget-object v2, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->e()V

    .line 10
    invoke-virtual {p0, v0}, Lb/H/a/q;->b(Z)V

    throw v1
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lb/H/a/q;->l:Lb/H/a/c/p;

    iget-object v2, p0, Lb/H/a/q;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lb/H/a/c/p;->b(Ljava/lang/String;J)V

    .line 3
    iget-object v1, p0, Lb/H/a/q;->l:Lb/H/a/c/p;

    sget-object v2, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lb/H/a/q;->c:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-interface {v1, v2, v3}, Lb/H/a/c/p;->a(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lb/H/a/q;->l:Lb/H/a/c/p;

    iget-object v2, p0, Lb/H/a/q;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Lb/H/a/c/p;->e(Ljava/lang/String;)I

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 6
    iget-object v1, p0, Lb/H/a/q;->l:Lb/H/a/c/p;

    iget-object v2, p0, Lb/H/a/q;->c:Ljava/lang/String;

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Lb/H/a/c/p;->a(Ljava/lang/String;J)I

    .line 7
    :cond_0
    iget-object v1, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v1, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    .line 9
    invoke-virtual {p0, v0}, Lb/H/a/q;->b(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 10
    iget-object v2, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->e()V

    .line 11
    invoke-virtual {p0, v0}, Lb/H/a/q;->b(Z)V

    throw v1
.end method

.method public final f()V
    .locals 7

    .line 1
    iget-object v0, p0, Lb/H/a/q;->l:Lb/H/a/c/p;

    iget-object v1, p0, Lb/H/a/q;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lb/H/a/c/p;->c(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v0

    .line 2
    sget-object v1, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v0

    sget-object v1, Lb/H/a/q;->a:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lb/H/a/q;->c:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v5, "Status for %s is RUNNING;not doing any work and rescheduling for later execution"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v4, v3}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p0, v2}, Lb/H/a/q;->b(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v1

    sget-object v4, Lb/H/a/q;->a:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lb/H/a/q;->c:Ljava/lang/String;

    aput-object v6, v5, v3

    aput-object v0, v5, v2

    const-string v0, "Status for %s is %s; not doing any work"

    .line 6
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Throwable;

    .line 7
    invoke-virtual {v1, v4, v0, v2}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {p0, v3}, Lb/H/a/q;->b(Z)V

    :goto_0
    return-void
.end method

.method public final g()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lb/H/a/q;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lb/H/a/q;->l:Lb/H/a/c/p;

    iget-object v1, p0, Lb/H/a/q;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lb/H/a/c/p;->d(Ljava/lang/String;)Lb/H/a/c/o;

    move-result-object v0

    iput-object v0, p0, Lb/H/a/q;->f:Lb/H/a/c/o;

    .line 4
    iget-object v0, p0, Lb/H/a/q;->f:Lb/H/a/c/o;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v0

    sget-object v3, Lb/H/a/q;->a:Ljava/lang/String;

    const-string v4, "Didn\'t find WorkSpec for id %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lb/H/a/q;->c:Ljava/lang/String;

    aput-object v5, v1, v2

    .line 6
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Throwable;

    .line 7
    invoke-virtual {v0, v3, v1, v4}, Lb/H/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {p0, v2}, Lb/H/a/q;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    return-void

    .line 10
    :cond_1
    :try_start_1
    iget-object v0, p0, Lb/H/a/q;->f:Lb/H/a/c/o;

    iget-object v0, v0, Lb/H/a/c/o;->d:Landroidx/work/WorkInfo$State;

    sget-object v3, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-eq v0, v3, :cond_2

    .line 11
    invoke-virtual {p0}, Lb/H/a/q;->f()V

    .line 12
    iget-object v0, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->o()V

    .line 13
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v0

    sget-object v3, Lb/H/a/q;->a:Ljava/lang/String;

    const-string v4, "%s is not in ENQUEUED state. Nothing more to do."

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lb/H/a/q;->f:Lb/H/a/c/o;

    iget-object v5, v5, Lb/H/a/c/o;->e:Ljava/lang/String;

    aput-object v5, v1, v2

    .line 14
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 15
    invoke-virtual {v0, v3, v1, v2}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    iget-object v0, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    return-void

    .line 17
    :cond_2
    :try_start_2
    iget-object v0, p0, Lb/H/a/q;->f:Lb/H/a/c/o;

    invoke-virtual {v0}, Lb/H/a/c/o;->d()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lb/H/a/q;->f:Lb/H/a/c/o;

    invoke-virtual {v0}, Lb/H/a/c/o;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v0, v5, :cond_4

    iget-object v0, p0, Lb/H/a/q;->f:Lb/H/a/c/o;

    iget-wide v5, v0, Lb/H/a/c/o;->j:J

    iget-object v0, p0, Lb/H/a/q;->f:Lb/H/a/c/o;

    iget-wide v7, v0, Lb/H/a/c/o;->k:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_4

    iget-object v0, p0, Lb/H/a/q;->f:Lb/H/a/c/o;

    iget-wide v5, v0, Lb/H/a/c/o;->p:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    .line 20
    iget-object v0, p0, Lb/H/a/q;->f:Lb/H/a/c/o;

    invoke-virtual {v0}, Lb/H/a/c/o;->a()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_5

    .line 21
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v0

    sget-object v3, Lb/H/a/q;->a:Ljava/lang/String;

    const-string v4, "Delaying execution for %s because it is being executed before schedule."

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lb/H/a/q;->f:Lb/H/a/c/o;

    iget-object v6, v6, Lb/H/a/c/o;->e:Ljava/lang/String;

    aput-object v6, v5, v2

    .line 22
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 23
    invoke-virtual {v0, v3, v4, v2}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 24
    invoke-virtual {p0, v1}, Lb/H/a/q;->b(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    iget-object v0, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    return-void

    .line 26
    :cond_5
    :try_start_3
    iget-object v0, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->o()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    iget-object v0, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    .line 28
    iget-object v0, p0, Lb/H/a/q;->f:Lb/H/a/c/o;

    invoke-virtual {v0}, Lb/H/a/c/o;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29
    iget-object v0, p0, Lb/H/a/q;->f:Lb/H/a/c/o;

    iget-object v0, v0, Lb/H/a/c/o;->g:Lb/H/d;

    :goto_1
    move-object v5, v0

    goto :goto_2

    .line 30
    :cond_6
    iget-object v0, p0, Lb/H/a/q;->f:Lb/H/a/c/o;

    iget-object v0, v0, Lb/H/a/c/o;->f:Ljava/lang/String;

    invoke-static {v0}, Lb/H/e;->a(Ljava/lang/String;)Lb/H/e;

    move-result-object v0

    if-nez v0, :cond_7

    .line 31
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v0

    sget-object v3, Lb/H/a/q;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lb/H/a/q;->f:Lb/H/a/c/o;

    iget-object v4, v4, Lb/H/a/c/o;->f:Ljava/lang/String;

    aput-object v4, v1, v2

    const-string v4, "Could not create Input Merger %s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v1, v2}, Lb/H/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 32
    invoke-virtual {p0}, Lb/H/a/q;->h()V

    return-void

    .line 33
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iget-object v4, p0, Lb/H/a/q;->f:Lb/H/a/c/o;

    iget-object v4, v4, Lb/H/a/c/o;->g:Lb/H/d;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v4, p0, Lb/H/a/q;->l:Lb/H/a/c/p;

    iget-object v5, p0, Lb/H/a/q;->c:Ljava/lang/String;

    invoke-interface {v4, v5}, Lb/H/a/c/p;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    invoke-virtual {v0, v3}, Lb/H/e;->a(Ljava/util/List;)Lb/H/d;

    move-result-object v0

    goto :goto_1

    .line 37
    :goto_2
    new-instance v0, Landroidx/work/WorkerParameters;

    iget-object v3, p0, Lb/H/a/q;->c:Ljava/lang/String;

    .line 38
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    iget-object v6, p0, Lb/H/a/q;->o:Ljava/util/List;

    iget-object v7, p0, Lb/H/a/q;->e:Landroidx/work/WorkerParameters$a;

    iget-object v3, p0, Lb/H/a/q;->f:Lb/H/a/c/o;

    iget v8, v3, Lb/H/a/c/o;->m:I

    iget-object v3, p0, Lb/H/a/q;->i:Lb/H/a;

    .line 39
    invoke-virtual {v3}, Lb/H/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v9

    iget-object v10, p0, Lb/H/a/q;->j:Lb/H/a/d/b/a;

    iget-object v3, p0, Lb/H/a/q;->i:Lb/H/a;

    .line 40
    invoke-virtual {v3}, Lb/H/a;->g()Lb/H/q;

    move-result-object v11

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Landroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;Lb/H/d;Ljava/util/Collection;Landroidx/work/WorkerParameters$a;ILjava/util/concurrent/Executor;Lb/H/a/d/b/a;Lb/H/q;)V

    .line 41
    iget-object v3, p0, Lb/H/a/q;->g:Landroidx/work/ListenableWorker;

    if-nez v3, :cond_8

    .line 42
    iget-object v3, p0, Lb/H/a/q;->i:Lb/H/a;

    invoke-virtual {v3}, Lb/H/a;->g()Lb/H/q;

    move-result-object v3

    iget-object v4, p0, Lb/H/a/q;->b:Landroid/content/Context;

    iget-object v5, p0, Lb/H/a/q;->f:Lb/H/a/c/o;

    iget-object v5, v5, Lb/H/a/c/o;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v0}, Lb/H/q;->b(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v0

    iput-object v0, p0, Lb/H/a/q;->g:Landroidx/work/ListenableWorker;

    .line 43
    :cond_8
    iget-object v0, p0, Lb/H/a/q;->g:Landroidx/work/ListenableWorker;

    if-nez v0, :cond_9

    .line 44
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v0

    sget-object v3, Lb/H/a/q;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lb/H/a/q;->f:Lb/H/a/c/o;

    iget-object v4, v4, Lb/H/a/c/o;->e:Ljava/lang/String;

    aput-object v4, v1, v2

    const-string v4, "Could not create Worker %s"

    .line 45
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 46
    invoke-virtual {v0, v3, v1, v2}, Lb/H/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 47
    invoke-virtual {p0}, Lb/H/a/q;->h()V

    return-void

    .line 48
    :cond_9
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 49
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v0

    sget-object v3, Lb/H/a/q;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lb/H/a/q;->f:Lb/H/a/c/o;

    iget-object v4, v4, Lb/H/a/c/o;->e:Ljava/lang/String;

    aput-object v4, v1, v2

    const-string v4, "Received an already-used Worker %s; WorkerFactory should return new instances"

    .line 50
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 51
    invoke-virtual {v0, v3, v1, v2}, Lb/H/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 52
    invoke-virtual {p0}, Lb/H/a/q;->h()V

    return-void

    .line 53
    :cond_a
    iget-object v0, p0, Lb/H/a/q;->g:Landroidx/work/ListenableWorker;

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->h()V

    .line 54
    invoke-virtual {p0}, Lb/H/a/q;->k()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 55
    invoke-virtual {p0}, Lb/H/a/q;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 56
    :cond_b
    invoke-static {}, Lb/H/a/d/a/c;->e()Lb/H/a/d/a/c;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lb/H/a/q;->j:Lb/H/a/d/b/a;

    invoke-interface {v1}, Lb/H/a/d/b/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lb/H/a/o;

    invoke-direct {v2, p0, v0}, Lb/H/a/o;-><init>(Lb/H/a/q;Lb/H/a/d/a/c;)V

    .line 58
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 59
    iget-object v1, p0, Lb/H/a/q;->p:Ljava/lang/String;

    .line 60
    new-instance v2, Lb/H/a/p;

    invoke-direct {v2, p0, v0, v1}, Lb/H/a/p;-><init>(Lb/H/a/q;Lb/H/a/d/a/c;Ljava/lang/String;)V

    iget-object v1, p0, Lb/H/a/q;->j:Lb/H/a/d/b/a;

    .line 61
    invoke-interface {v1}, Lb/H/a/d/b/a;->c()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v2, v1}, Lb/H/a/d/a/b;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_3

    .line 63
    :cond_c
    invoke-virtual {p0}, Lb/H/a/q;->f()V

    :goto_3
    return-void

    :catchall_0
    move-exception v0

    .line 64
    iget-object v1, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lb/H/a/q;->c:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lb/H/a/q;->a(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lb/H/a/q;->h:Landroidx/work/ListenableWorker$a;

    check-cast v1, Landroidx/work/ListenableWorker$a$a;

    .line 4
    invoke-virtual {v1}, Landroidx/work/ListenableWorker$a$a;->d()Lb/H/d;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lb/H/a/q;->l:Lb/H/a/c/p;

    iget-object v3, p0, Lb/H/a/q;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lb/H/a/c/p;->a(Ljava/lang/String;Lb/H/d;)V

    .line 6
    iget-object v1, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    .line 8
    invoke-virtual {p0, v0}, Lb/H/a/q;->b(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    iget-object v2, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->e()V

    .line 10
    invoke-virtual {p0, v0}, Lb/H/a/q;->b(Z)V

    throw v1
.end method

.method public final i()V
    .locals 10

    .line 1
    iget-object v0, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lb/H/a/q;->l:Lb/H/a/c/p;

    sget-object v2, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    iget-object v5, p0, Lb/H/a/q;->c:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-interface {v1, v2, v4}, Lb/H/a/c/p;->a(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lb/H/a/q;->h:Landroidx/work/ListenableWorker$a;

    check-cast v1, Landroidx/work/ListenableWorker$a$c;

    .line 4
    invoke-virtual {v1}, Landroidx/work/ListenableWorker$a$c;->d()Lb/H/d;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lb/H/a/q;->l:Lb/H/a/c/p;

    iget-object v4, p0, Lb/H/a/q;->c:Ljava/lang/String;

    invoke-interface {v2, v4, v1}, Lb/H/a/c/p;->a(Ljava/lang/String;Lb/H/d;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 7
    iget-object v4, p0, Lb/H/a/q;->m:Lb/H/a/c/b;

    iget-object v5, p0, Lb/H/a/q;->c:Ljava/lang/String;

    invoke-interface {v4, v5}, Lb/H/a/c/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 9
    iget-object v6, p0, Lb/H/a/q;->l:Lb/H/a/c/p;

    invoke-interface {v6, v5}, Lb/H/a/c/p;->c(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v6

    sget-object v7, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lb/H/a/q;->m:Lb/H/a/c/b;

    .line 10
    invoke-interface {v6, v5}, Lb/H/a/c/b;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 11
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v6

    sget-object v7, Lb/H/a/q;->a:Ljava/lang/String;

    const-string v8, "Setting status to enqueued for %s"

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v5, v9, v0

    .line 12
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v0, [Ljava/lang/Throwable;

    .line 13
    invoke-virtual {v6, v7, v8, v9}, Lb/H/f;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 14
    iget-object v6, p0, Lb/H/a/q;->l:Lb/H/a/c/p;

    sget-object v7, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    new-array v8, v3, [Ljava/lang/String;

    aput-object v5, v8, v0

    invoke-interface {v6, v7, v8}, Lb/H/a/c/p;->a(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 15
    iget-object v6, p0, Lb/H/a/q;->l:Lb/H/a/c/p;

    invoke-interface {v6, v5, v1, v2}, Lb/H/a/c/p;->b(Ljava/lang/String;J)V

    goto :goto_0

    .line 16
    :cond_1
    iget-object v1, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget-object v1, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    .line 18
    invoke-virtual {p0, v0}, Lb/H/a/q;->b(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 19
    iget-object v2, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->e()V

    .line 20
    invoke-virtual {p0, v0}, Lb/H/a/q;->b(Z)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final j()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lb/H/a/q;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v0

    sget-object v2, Lb/H/a/q;->a:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lb/H/a/q;->p:Ljava/lang/String;

    aput-object v5, v4, v1

    const-string v5, "Work interrupted for %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v4, v5}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Lb/H/a/q;->l:Lb/H/a/c/p;

    iget-object v2, p0, Lb/H/a/q;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Lb/H/a/c/p;->c(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lb/H/a/q;->b(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->f()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lb/H/a/q;->b(Z)V

    :goto_0
    return v3

    :cond_1
    return v1
.end method

.method public final k()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lb/H/a/q;->l:Lb/H/a/c/p;

    iget-object v1, p0, Lb/H/a/q;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lb/H/a/c/p;->c(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v0

    .line 3
    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lb/H/a/q;->l:Lb/H/a/c/p;

    sget-object v1, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    new-array v4, v2, [Ljava/lang/String;

    iget-object v5, p0, Lb/H/a/q;->c:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-interface {v0, v1, v4}, Lb/H/a/c/p;->a(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lb/H/a/q;->l:Lb/H/a/c/p;

    iget-object v1, p0, Lb/H/a/q;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lb/H/a/c/p;->h(Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6
    :goto_0
    iget-object v0, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    return v2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/H/a/q;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    throw v0
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/H/a/q;->n:Lb/H/a/c/B;

    iget-object v1, p0, Lb/H/a/q;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lb/H/a/c/B;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/H/a/q;->o:Ljava/util/List;

    .line 2
    iget-object v0, p0, Lb/H/a/q;->o:Ljava/util/List;

    invoke-virtual {p0, v0}, Lb/H/a/q;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/H/a/q;->p:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lb/H/a/q;->g()V

    return-void
.end method
