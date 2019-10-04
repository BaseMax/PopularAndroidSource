.class public abstract Li/a/U;
.super Li/a/e/h;
.source "Dispatched.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/a/e/h;"
    }
.end annotation


# instance fields
.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/a/e/h;-><init>()V

    iput p1, p0, Li/a/U;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    instance-of v0, p1, Li/a/v;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Li/a/v;

    if-eqz p1, :cond_1

    iget-object v1, p1, Li/a/v;->b:Ljava/lang/Throwable;

    :cond_1
    return-object v1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "cause"

    invoke-static {p2, p1}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 2
    invoke-static {p1, p2}, Lh/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p2

    .line 3
    :goto_0
    new-instance p2, Lkotlinx/coroutines/CoroutinesInternalError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3

    invoke-direct {p2, v0, p1}, Lkotlinx/coroutines/CoroutinesInternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p0}, Li/a/U;->e()Lh/c/b;

    move-result-object p1

    invoke-interface {p1}, Lh/c/b;->b()Lh/c/e;

    move-result-object p1

    invoke-static {p1, p2}, Li/a/E;->a(Lh/c/e;Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_3
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public abstract e()Lh/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh/c/b<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract f()Ljava/lang/Object;
.end method

.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Li/a/e/h;->b:Li/a/e/i;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Li/a/U;->e()Lh/c/b;

    move-result-object v2

    if-eqz v2, :cond_3

    check-cast v2, Li/a/Q;

    .line 3
    iget-object v3, v2, Li/a/Q;->h:Lh/c/b;

    .line 4
    invoke-interface {v3}, Lh/c/b;->b()Lh/c/e;

    move-result-object v4

    .line 5
    invoke-virtual {p0}, Li/a/U;->f()Ljava/lang/Object;

    move-result-object v5

    .line 6
    iget-object v2, v2, Li/a/Q;->f:Ljava/lang/Object;

    .line 7
    invoke-static {v4, v2}, Li/a/c/z;->b(Lh/c/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-virtual {p0, v5}, Li/a/U;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    .line 9
    iget v7, p0, Li/a/U;->c:I

    invoke-static {v7}, Li/a/Ja;->a(I)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Li/a/ra;->c:Li/a/ra$b;

    invoke-interface {v4, v7}, Lh/c/e;->get(Lh/c/e$c;)Lh/c/e$b;

    move-result-object v7

    check-cast v7, Li/a/ra;

    goto :goto_0

    :cond_0
    move-object v7, v1

    :goto_0
    if-nez v6, :cond_1

    if-eqz v7, :cond_1

    .line 10
    invoke-interface {v7}, Li/a/ra;->s()Z

    move-result v8

    if-nez v8, :cond_1

    .line 11
    invoke-interface {v7}, Li/a/ra;->t()Ljava/util/concurrent/CancellationException;

    move-result-object v6

    .line 12
    invoke-virtual {p0, v5, v6}, Li/a/U;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 13
    sget-object v5, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {v6, v3}, Li/a/c/u;->a(Ljava/lang/Throwable;Lh/c/b;)Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v5}, Lh/e;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v5}, Lh/c/b;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_2

    .line 14
    sget-object v5, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {v6, v3}, Li/a/c/u;->a(Ljava/lang/Throwable;Lh/c/b;)Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v5}, Lh/e;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v5}, Lh/c/b;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p0, v5}, Li/a/U;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {v5}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v5}, Lh/c/b;->b(Ljava/lang/Object;)V

    .line 16
    :goto_1
    sget-object v3, Lh/h;->a:Lh/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    invoke-static {v4, v2}, Li/a/c/z;->a(Lh/c/e;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    :try_start_3
    sget-object v2, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-interface {v0}, Li/a/e/i;->v()V

    sget-object v0, Lh/h;->a:Lh/h;

    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v3

    .line 19
    :try_start_4
    invoke-static {v4, v2}, Li/a/c/z;->a(Lh/c/e;Ljava/lang/Object;)V

    throw v3

    .line 20
    :cond_3
    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<T>"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    .line 21
    :try_start_5
    sget-object v3, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-interface {v0}, Li/a/e/i;->v()V

    sget-object v0, Lh/h;->a:Lh/h;

    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v3, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {v0}, Lh/e;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Li/a/U;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v1

    .line 23
    :try_start_6
    sget-object v2, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-interface {v0}, Li/a/e/i;->v()V

    sget-object v0, Lh/h;->a:Lh/h;

    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    :goto_3
    sget-object v2, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {v0}, Lh/e;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :goto_4
    invoke-static {v0}, Lkotlin/Result;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Li/a/U;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void
.end method
