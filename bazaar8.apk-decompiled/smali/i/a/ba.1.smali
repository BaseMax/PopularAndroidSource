.class public abstract Li/a/ba;
.super Li/a/ca;
.source "EventLoop.common.kt"

# interfaces
.implements Li/a/P;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/a/ba$a;,
        Li/a/ba$b;
    }
.end annotation


# static fields
.field public static final d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile _delayed:Ljava/lang/Object;

.field public volatile _queue:Ljava/lang/Object;

.field public volatile isCompleted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Li/a/ba;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_queue"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Li/a/ba;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Li/a/ba;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_delayed"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Li/a/ba;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Li/a/ca;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Li/a/ba;->_queue:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Li/a/ba;->_delayed:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a(Li/a/ba;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Li/a/ba;->isCompleted:Z

    return p0
.end method


# virtual methods
.method public A()J
    .locals 7

    .line 1
    invoke-virtual {p0}, Li/a/aa;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/a/ba;->x()J

    move-result-wide v0

    return-wide v0

    .line 2
    :cond_0
    iget-object v0, p0, Li/a/ba;->_delayed:Ljava/lang/Object;

    check-cast v0, Li/a/ba$b;

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {v0}, Li/a/c/A;->c()Z

    move-result v1

    if-nez v1, :cond_5

    .line 4
    invoke-static {}, Li/a/Oa;->a()Li/a/Na;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Li/a/Na;->b()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 5
    :goto_0
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Li/a/c/A;->a()Li/a/c/B;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 7
    check-cast v3, Li/a/ba$a;

    .line 8
    invoke-virtual {v3, v1, v2}, Li/a/ba$a;->a(J)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 9
    invoke-virtual {p0, v3}, Li/a/ba;->b(Ljava/lang/Runnable;)Z

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 10
    invoke-virtual {v0, v6}, Li/a/c/A;->a(I)Li/a/c/B;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    .line 11
    :cond_3
    monitor-exit v0

    goto :goto_2

    .line 12
    :cond_4
    monitor-exit v0

    .line 13
    :goto_2
    check-cast v4, Li/a/ba$a;

    if-eqz v4, :cond_5

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0

    throw v1

    .line 15
    :cond_5
    invoke-virtual {p0}, Li/a/ba;->G()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 16
    :cond_6
    invoke-virtual {p0}, Li/a/ba;->x()J

    move-result-wide v0

    return-wide v0
.end method

.method public final F()V
    .locals 4

    .line 1
    invoke-static {}, Li/a/K;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Li/a/ba;->isCompleted:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Li/a/ba;->_queue:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 3
    sget-object v0, Li/a/ba;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-static {}, Li/a/ea;->a()Li/a/c/v;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_2
    instance-of v1, v0, Li/a/c/m;

    if-eqz v1, :cond_3

    .line 5
    check-cast v0, Li/a/c/m;

    invoke-virtual {v0}, Li/a/c/m;->a()Z

    return-void

    .line 6
    :cond_3
    invoke-static {}, Li/a/ea;->a()Li/a/c/v;

    move-result-object v1

    if-ne v0, v1, :cond_4

    return-void

    .line 7
    :cond_4
    new-instance v1, Li/a/c/m;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Li/a/c/m;-><init>(IZ)V

    if-eqz v0, :cond_5

    .line 8
    move-object v2, v0

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Li/a/c/m;->a(Ljava/lang/Object;)I

    .line 9
    sget-object v2, Li/a/ba;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 10
    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final G()Ljava/lang/Runnable;
    .locals 4

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Li/a/ba;->_queue:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 2
    :cond_1
    instance-of v2, v0, Li/a/c/m;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    .line 3
    move-object v1, v0

    check-cast v1, Li/a/c/m;

    invoke-virtual {v1}, Li/a/c/m;->f()Ljava/lang/Object;

    move-result-object v2

    .line 4
    sget-object v3, Li/a/c/m;->c:Li/a/c/v;

    if-eq v2, v3, :cond_2

    check-cast v2, Ljava/lang/Runnable;

    return-object v2

    .line 5
    :cond_2
    sget-object v2, Li/a/ba;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1}, Li/a/c/m;->e()Li/a/c/m;

    move-result-object v1

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.Queue<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.internal.LockFreeTaskQueueCore<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_4
    invoke-static {}, Li/a/ea;->a()Li/a/c/v;

    move-result-object v2

    if-ne v0, v2, :cond_5

    return-object v1

    .line 8
    :cond_5
    sget-object v2, Li/a/ba;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/Runnable;

    return-object v0

    :cond_6
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public H()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Li/a/aa;->z()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Li/a/ba;->_delayed:Ljava/lang/Object;

    check-cast v0, Li/a/ba$b;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Li/a/c/A;->c()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Li/a/ba;->_queue:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 5
    :cond_2
    instance-of v3, v0, Li/a/c/m;

    if-eqz v3, :cond_3

    check-cast v0, Li/a/c/m;

    invoke-virtual {v0}, Li/a/c/m;->c()Z

    move-result v1

    goto :goto_1

    .line 6
    :cond_3
    invoke-static {}, Li/a/ea;->a()Li/a/c/v;

    move-result-object v3

    if-ne v0, v3, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method

.method public final I()V
    .locals 3

    .line 1
    invoke-static {}, Li/a/Oa;->a()Li/a/Na;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li/a/Na;->b()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    :goto_0
    iget-object v2, p0, Li/a/ba;->_delayed:Ljava/lang/Object;

    check-cast v2, Li/a/ba$b;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Li/a/c/A;->f()Li/a/c/B;

    move-result-object v2

    check-cast v2, Li/a/ba$a;

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p0, v0, v1, v2}, Li/a/ca;->a(JLi/a/ba$a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final J()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Li/a/ba;->_queue:Ljava/lang/Object;

    .line 2
    iput-object v0, p0, Li/a/ba;->_delayed:Ljava/lang/Object;

    return-void
.end method

.method public final a(Lh/c/e;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {p2, p1}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2}, Li/a/ba;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "task"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Li/a/ba;->b(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Li/a/ca;->E()V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Li/a/M;->g:Li/a/M;

    invoke-virtual {v0, p1}, Li/a/ba;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final a(Li/a/ba$a;)Z
    .locals 1

    .line 6
    iget-object v0, p0, Li/a/ba;->_delayed:Ljava/lang/Object;

    check-cast v0, Li/a/ba$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/a/c/A;->d()Li/a/c/B;

    move-result-object v0

    check-cast v0, Li/a/ba$a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final b(JLi/a/ba$a;)V
    .locals 2

    const-string v0, "delayedTask"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Li/a/ba;->c(JLi/a/ba$a;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unexpected result"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Li/a/ca;->a(JLi/a/ba$a;)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0, p3}, Li/a/ba;->a(Li/a/ba$a;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Li/a/ca;->E()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/Runnable;)Z
    .locals 5

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Li/a/ba;->_queue:Ljava/lang/Object;

    .line 6
    iget-boolean v1, p0, Li/a/ba;->isCompleted:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 7
    sget-object v0, Li/a/ba;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 8
    :cond_2
    instance-of v3, v0, Li/a/c/m;

    if-eqz v3, :cond_7

    if-eqz v0, :cond_6

    .line 9
    move-object v3, v0

    check-cast v3, Li/a/c/m;

    invoke-virtual {v3, p1}, Li/a/c/m;->a(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_5

    if-eq v4, v1, :cond_4

    const/4 v0, 0x2

    if-eq v4, v0, :cond_3

    goto :goto_0

    :cond_3
    return v2

    .line 10
    :cond_4
    sget-object v1, Li/a/ba;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3}, Li/a/c/m;->e()Li/a/c/m;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return v1

    .line 11
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.Queue<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.internal.LockFreeTaskQueueCore<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_7
    invoke-static {}, Li/a/ea;->a()Li/a/c/v;

    move-result-object v3

    if-ne v0, v3, :cond_8

    return v2

    .line 13
    :cond_8
    new-instance v2, Li/a/c/m;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Li/a/c/m;-><init>(IZ)V

    if-eqz v0, :cond_9

    .line 14
    move-object v3, v0

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Li/a/c/m;->a(Ljava/lang/Object;)I

    .line 15
    invoke-virtual {v2, p1}, Li/a/c/m;->a(Ljava/lang/Object;)I

    .line 16
    sget-object v3, Li/a/ba;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 17
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final c(JLi/a/ba$a;)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Li/a/ba;->isCompleted:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Li/a/ba;->_delayed:Ljava/lang/Object;

    check-cast v0, Li/a/ba$b;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Li/a/ba;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v1, Li/a/ba$b;

    invoke-direct {v1, p1, p2}, Li/a/ba$b;-><init>(J)V

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Li/a/ba;->_delayed:Ljava/lang/Object;

    if-eqz v0, :cond_2

    check-cast v0, Li/a/ba$b;

    .line 5
    :goto_0
    invoke-virtual {p3, p1, p2, v0, p0}, Li/a/ba$a;->a(JLi/a/ba$b;Li/a/ba;)I

    move-result p1

    return p1

    .line 6
    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V

    throw v2
.end method

.method public shutdown()V
    .locals 5

    .line 1
    sget-object v0, Li/a/Ma;->b:Li/a/Ma;

    invoke-virtual {v0}, Li/a/Ma;->c()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/a/ba;->isCompleted:Z

    .line 3
    invoke-virtual {p0}, Li/a/ba;->F()V

    .line 4
    :goto_0
    invoke-virtual {p0}, Li/a/ba;->A()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Li/a/ba;->I()V

    return-void
.end method

.method public x()J
    .locals 6

    .line 1
    invoke-super {p0}, Li/a/aa;->x()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 2
    :cond_0
    iget-object v0, p0, Li/a/ba;->_queue:Ljava/lang/Object;

    const-wide v4, 0x7fffffffffffffffL

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    instance-of v1, v0, Li/a/c/m;

    if-eqz v1, :cond_5

    check-cast v0, Li/a/c/m;

    invoke-virtual {v0}, Li/a/c/m;->c()Z

    move-result v0

    if-nez v0, :cond_2

    return-wide v2

    .line 4
    :cond_2
    :goto_0
    iget-object v0, p0, Li/a/ba;->_delayed:Ljava/lang/Object;

    check-cast v0, Li/a/ba$b;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Li/a/c/A;->d()Li/a/c/B;

    move-result-object v0

    check-cast v0, Li/a/ba$a;

    if-eqz v0, :cond_4

    .line 5
    iget-wide v0, v0, Li/a/ba$a;->c:J

    invoke-static {}, Li/a/Oa;->a()Li/a/Na;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Li/a/Na;->b()J

    move-result-wide v4

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    :goto_1
    sub-long/2addr v0, v4

    invoke-static {v0, v1, v2, v3}, Lh/h/g;->a(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_4
    return-wide v4

    .line 6
    :cond_5
    invoke-static {}, Li/a/ea;->a()Li/a/c/v;

    move-result-object v1

    if-ne v0, v1, :cond_6

    return-wide v4

    :cond_6
    return-wide v2
.end method
