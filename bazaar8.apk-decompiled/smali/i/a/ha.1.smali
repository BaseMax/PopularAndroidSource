.class public abstract Li/a/ha;
.super Li/a/ga;
.source "Executors.kt"

# interfaces
.implements Li/a/P;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/a/ga;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lh/c/e;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {p2, p1}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p0}, Li/a/ga;->x()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {}, Li/a/Oa;->a()Li/a/Na;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Li/a/Na;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 2
    invoke-static {}, Li/a/Oa;->a()Li/a/Na;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Li/a/Na;->c()V

    .line 3
    :cond_1
    sget-object p1, Li/a/M;->g:Li/a/M;

    invoke-virtual {p1, p2}, Li/a/ba;->a(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Li/a/ga;->x()Ljava/util/concurrent/Executor;

    move-result-object v0

    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Li/a/ha;

    if-eqz v0, :cond_0

    check-cast p1, Li/a/ha;

    invoke-virtual {p1}, Li/a/ga;->x()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p0}, Li/a/ga;->x()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/ga;->x()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/ga;->x()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/ga;->x()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Li/a/c/d;->a(Ljava/util/concurrent/Executor;)Z

    move-result v0

    iput-boolean v0, p0, Li/a/ha;->a:Z

    return-void
.end method
