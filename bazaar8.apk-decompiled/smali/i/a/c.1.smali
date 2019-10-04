.class public final Li/a/c;
.super Li/a/a;
.source "Builders.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/a/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/Thread;

.field public final e:Li/a/aa;


# direct methods
.method public constructor <init>(Lh/c/e;Ljava/lang/Thread;Li/a/aa;)V
    .locals 1

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockedThread"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Li/a/a;-><init>(Lh/c/e;Z)V

    iput-object p2, p0, Li/a/c;->d:Ljava/lang/Thread;

    iput-object p3, p0, Li/a/c;->e:Li/a/aa;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Li/a/c;->d:Ljava/lang/Thread;

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Li/a/c;->d:Ljava/lang/Thread;

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return-void
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final q()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/a/Oa;->a()Li/a/Na;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li/a/Na;->a()V

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Li/a/c;->e:Li/a/aa;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0, v2, v1, v3}, Li/a/aa;->b(Li/a/aa;ZILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_9

    .line 4
    iget-object v0, p0, Li/a/c;->e:Li/a/aa;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Li/a/aa;->A()J

    move-result-wide v4

    goto :goto_1

    :cond_2
    const-wide v4, 0x7fffffffffffffffL

    .line 5
    :goto_1
    invoke-virtual {p0}, Li/a/xa;->i()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_7

    .line 6
    :try_start_2
    iget-object v0, p0, Li/a/c;->e:Li/a/aa;

    if-eqz v0, :cond_3

    invoke-static {v0, v2, v1, v3}, Li/a/aa;->a(Li/a/aa;ZILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    :cond_3
    invoke-static {}, Li/a/Oa;->a()Li/a/Na;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Li/a/Na;->d()V

    .line 8
    :cond_4
    invoke-virtual {p0}, Li/a/xa;->h()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Li/a/za;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    instance-of v1, v0, Li/a/v;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, v0

    :goto_2
    check-cast v3, Li/a/v;

    if-nez v3, :cond_6

    return-object v0

    :cond_6
    iget-object v0, v3, Li/a/v;->b:Ljava/lang/Throwable;

    throw v0

    .line 10
    :cond_7
    :try_start_3
    invoke-static {}, Li/a/Oa;->a()Li/a/Na;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0, p0, v4, v5}, Li/a/Na;->a(Ljava/lang/Object;J)V

    goto :goto_0

    :cond_8
    invoke-static {p0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_0

    .line 11
    :cond_9
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {p0, v0}, Li/a/xa;->b(Ljava/lang/Throwable;)Z

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 12
    :try_start_4
    iget-object v4, p0, Li/a/c;->e:Li/a/aa;

    if-eqz v4, :cond_a

    invoke-static {v4, v2, v1, v3}, Li/a/aa;->a(Li/a/aa;ZILjava/lang/Object;)V

    :cond_a
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 13
    invoke-static {}, Li/a/Oa;->a()Li/a/Na;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-interface {v1}, Li/a/Na;->d()V

    :cond_b
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
