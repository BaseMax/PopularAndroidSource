.class public final Lc/e/a/b/h/b/Ra;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic b:Lc/e/a/b/h/b/Fa;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Fa;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/Ra;->b:Lc/e/a/b/h/b/Fa;

    iput-object p2, p0, Lc/e/a/b/h/b/Ra;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Ra;->a:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/e/a/b/h/b/Ra;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lc/e/a/b/h/b/Ra;->b:Lc/e/a/b/h/b/Fa;

    invoke-virtual {v2}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object v2

    iget-object v3, p0, Lc/e/a/b/h/b/Ra;->b:Lc/e/a/b/h/b/Fa;

    invoke-virtual {v3}, Lc/e/a/b/h/b/_a;->q()Lc/e/a/b/h/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lc/e/a/b/h/b/o;->C()Ljava/lang/String;

    move-result-object v3

    .line 3
    sget-object v4, Lc/e/a/b/h/b/k;->Y:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v2, v3, v4}, Lc/e/a/b/h/b/pc;->b(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)I

    move-result v2

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v1, p0, Lc/e/a/b/h/b/Ra;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 7
    iget-object v2, p0, Lc/e/a/b/h/b/Ra;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v1

    :catchall_1
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
