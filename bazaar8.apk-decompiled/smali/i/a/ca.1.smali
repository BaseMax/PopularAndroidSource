.class public abstract Li/a/ca;
.super Li/a/aa;
.source "EventLoop.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/a/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract D()Ljava/lang/Thread;
.end method

.method public final E()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Li/a/ca;->D()Ljava/lang/Thread;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 3
    invoke-static {}, Li/a/Oa;->a()Li/a/Na;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Li/a/Na;->a(Ljava/lang/Thread;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(JLi/a/ba$a;)V
    .locals 1

    const-string v0, "delayedTask"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Li/a/K;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Li/a/M;->g:Li/a/M;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_2
    :goto_1
    sget-object v0, Li/a/M;->g:Li/a/M;

    invoke-virtual {v0, p1, p2, p3}, Li/a/ba;->b(JLi/a/ba$a;)V

    return-void
.end method
