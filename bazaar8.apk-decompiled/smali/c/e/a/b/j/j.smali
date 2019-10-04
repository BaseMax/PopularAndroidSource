.class public final Lc/e/a/b/j/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/b/j/j$a;,
        Lc/e/a/b/j/j$b;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Object;)Lc/e/a/b/j/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lc/e/a/b/j/g<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/e/a/b/j/B;

    invoke-direct {v0}, Lc/e/a/b/j/B;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lc/e/a/b/j/B;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lc/e/a/b/j/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lc/e/a/b/j/g<",
            "TTResult;>;"
        }
    .end annotation

    const-string v0, "Executor must not be null"

    .line 3
    invoke-static {p0, v0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Callback must not be null"

    .line 4
    invoke-static {p1, v0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lc/e/a/b/j/B;

    invoke-direct {v0}, Lc/e/a/b/j/B;-><init>()V

    .line 6
    new-instance v1, Lc/e/a/b/j/C;

    invoke-direct {v1, v0, p1}, Lc/e/a/b/j/C;-><init>(Lc/e/a/b/j/B;Ljava/util/concurrent/Callable;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static a(Lc/e/a/b/j/g;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/e/a/b/j/g<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    .line 7
    invoke-static {}, Lc/e/a/b/d/d/r;->a()V

    const-string v0, "Task must not be null"

    .line 8
    invoke-static {p0, v0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lc/e/a/b/j/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-static {p0}, Lc/e/a/b/j/j;->b(Lc/e/a/b/j/g;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 11
    :cond_0
    new-instance v0, Lc/e/a/b/j/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/e/a/b/j/j$a;-><init>(Lc/e/a/b/j/C;)V

    .line 12
    invoke-static {p0, v0}, Lc/e/a/b/j/j;->a(Lc/e/a/b/j/g;Lc/e/a/b/j/j$b;)V

    .line 13
    invoke-virtual {v0}, Lc/e/a/b/j/j$a;->b()V

    .line 14
    invoke-static {p0}, Lc/e/a/b/j/j;->b(Lc/e/a/b/j/g;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lc/e/a/b/j/g;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/e/a/b/j/g<",
            "TTResult;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TTResult;"
        }
    .end annotation

    .line 15
    invoke-static {}, Lc/e/a/b/d/d/r;->a()V

    const-string v0, "Task must not be null"

    .line 16
    invoke-static {p0, v0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TimeUnit must not be null"

    .line 17
    invoke-static {p3, v0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Lc/e/a/b/j/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-static {p0}, Lc/e/a/b/j/j;->b(Lc/e/a/b/j/g;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 20
    :cond_0
    new-instance v0, Lc/e/a/b/j/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/e/a/b/j/j$a;-><init>(Lc/e/a/b/j/C;)V

    .line 21
    invoke-static {p0, v0}, Lc/e/a/b/j/j;->a(Lc/e/a/b/j/g;Lc/e/a/b/j/j$b;)V

    .line 22
    invoke-virtual {v0, p1, p2, p3}, Lc/e/a/b/j/j$a;->a(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 23
    invoke-static {p0}, Lc/e/a/b/j/j;->b(Lc/e/a/b/j/g;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 24
    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Timed out waiting for Task"

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lc/e/a/b/j/g;Lc/e/a/b/j/j$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/j/g<",
            "*>;",
            "Lc/e/a/b/j/j$b;",
            ")V"
        }
    .end annotation

    .line 25
    sget-object v0, Lc/e/a/b/j/i;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lc/e/a/b/j/g;->a(Ljava/util/concurrent/Executor;Lc/e/a/b/j/e;)Lc/e/a/b/j/g;

    .line 26
    sget-object v0, Lc/e/a/b/j/i;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lc/e/a/b/j/g;->a(Ljava/util/concurrent/Executor;Lc/e/a/b/j/d;)Lc/e/a/b/j/g;

    .line 27
    sget-object v0, Lc/e/a/b/j/i;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lc/e/a/b/j/g;->a(Ljava/util/concurrent/Executor;Lc/e/a/b/j/b;)Lc/e/a/b/j/g;

    return-void
.end method

.method public static b(Lc/e/a/b/j/g;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/e/a/b/j/g<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/j/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/j/g;->b()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lc/e/a/b/j/g;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lc/e/a/b/j/g;->a()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
