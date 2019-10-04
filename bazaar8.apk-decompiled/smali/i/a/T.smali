.class public final Li/a/T;
.super Ljava/lang/Object;
.source "Dispatched.kt"


# static fields
.field public static final a:Li/a/c/v;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Li/a/c/v;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/T;->a:Li/a/c/v;

    return-void
.end method

.method public static final synthetic a()Li/a/c/v;
    .locals 1

    .line 1
    sget-object v0, Li/a/T;->a:Li/a/c/v;

    return-object v0
.end method

.method public static final a(Lh/c/b;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lh/c/b<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "$this$resumeCancellable"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    instance-of v0, p0, Li/a/Q;

    if-eqz v0, :cond_4

    check-cast p0, Li/a/Q;

    .line 11
    iget-object v0, p0, Li/a/Q;->g:Li/a/C;

    invoke-virtual {p0}, Li/a/Q;->b()Lh/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/a/C;->b(Lh/c/e;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 12
    iput-object p1, p0, Li/a/Q;->d:Ljava/lang/Object;

    .line 13
    iput v1, p0, Li/a/U;->c:I

    .line 14
    iget-object p1, p0, Li/a/Q;->g:Li/a/C;

    invoke-virtual {p0}, Li/a/Q;->b()Lh/c/e;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Li/a/C;->a(Lh/c/e;Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 15
    :cond_0
    sget-object v0, Li/a/Ma;->b:Li/a/Ma;

    invoke-virtual {v0}, Li/a/Ma;->b()Li/a/aa;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Li/a/aa;->y()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    iput-object p1, p0, Li/a/Q;->d:Ljava/lang/Object;

    .line 18
    iput v1, p0, Li/a/U;->c:I

    .line 19
    invoke-virtual {v0, p0}, Li/a/aa;->a(Li/a/U;)V

    goto :goto_4

    .line 20
    :cond_1
    invoke-virtual {v0, v1}, Li/a/aa;->c(Z)V

    .line 21
    :try_start_0
    invoke-virtual {p0}, Li/a/Q;->b()Lh/c/e;

    move-result-object v2

    sget-object v3, Li/a/ra;->c:Li/a/ra$b;

    invoke-interface {v2, v3}, Lh/c/e;->get(Lh/c/e$c;)Lh/c/e$b;

    move-result-object v2

    check-cast v2, Li/a/ra;

    if-eqz v2, :cond_2

    .line 22
    invoke-interface {v2}, Li/a/ra;->s()Z

    move-result v3

    if-nez v3, :cond_2

    .line 23
    invoke-interface {v2}, Li/a/ra;->t()Ljava/util/concurrent/CancellationException;

    move-result-object v2

    sget-object v3, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {v2}, Lh/e;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v2}, Lh/c/b;->b(Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    .line 24
    invoke-virtual {p0}, Li/a/Q;->b()Lh/c/e;

    move-result-object v2

    iget-object v3, p0, Li/a/Q;->f:Ljava/lang/Object;

    .line 25
    invoke-static {v2, v3}, Li/a/c/z;->b(Lh/c/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    iget-object v4, p0, Li/a/Q;->h:Lh/c/b;

    sget-object v5, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, p1}, Lh/c/b;->b(Ljava/lang/Object;)V

    .line 27
    sget-object p1, Lh/h;->a:Lh/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :try_start_2
    invoke-static {v2, v3}, Li/a/c/z;->a(Lh/c/e;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {v2, v3}, Li/a/c/z;->a(Lh/c/e;Ljava/lang/Object;)V

    throw p1

    .line 29
    :cond_3
    :goto_1
    invoke-virtual {v0}, Li/a/aa;->B()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_3

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p1

    const/4 v2, 0x0

    .line 30
    :try_start_3
    invoke-virtual {p0, p1, v2}, Li/a/U;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 31
    :goto_2
    invoke-virtual {v0, v1}, Li/a/aa;->a(Z)V

    goto :goto_4

    :goto_3
    invoke-virtual {v0, v1}, Li/a/aa;->a(Z)V

    throw p0

    .line 32
    :cond_4
    sget-object v0, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Lh/c/b;->b(Ljava/lang/Object;)V

    :goto_4
    return-void
.end method

.method public static final a(Lh/c/b;Ljava/lang/Throwable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lh/c/b<",
            "-TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "$this$resumeCancellableWithException"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    instance-of v0, p0, Li/a/Q;

    if-eqz v0, :cond_4

    check-cast p0, Li/a/Q;

    .line 34
    iget-object v0, p0, Li/a/Q;->h:Lh/c/b;

    invoke-interface {v0}, Lh/c/b;->b()Lh/c/e;

    move-result-object v0

    .line 35
    new-instance v1, Li/a/v;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, p1, v4, v2, v3}, Li/a/v;-><init>(Ljava/lang/Throwable;ZILh/f/b/f;)V

    .line 36
    iget-object v5, p0, Li/a/Q;->g:Li/a/C;

    invoke-virtual {v5, v0}, Li/a/C;->b(Lh/c/e;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 37
    new-instance v1, Li/a/v;

    invoke-direct {v1, p1, v4, v2, v3}, Li/a/v;-><init>(Ljava/lang/Throwable;ZILh/f/b/f;)V

    iput-object v1, p0, Li/a/Q;->d:Ljava/lang/Object;

    .line 38
    iput v6, p0, Li/a/U;->c:I

    .line 39
    iget-object p1, p0, Li/a/Q;->g:Li/a/C;

    invoke-virtual {p1, v0, p0}, Li/a/C;->a(Lh/c/e;Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 40
    :cond_0
    sget-object v0, Li/a/Ma;->b:Li/a/Ma;

    invoke-virtual {v0}, Li/a/Ma;->b()Li/a/aa;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Li/a/aa;->y()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    iput-object v1, p0, Li/a/Q;->d:Ljava/lang/Object;

    .line 43
    iput v6, p0, Li/a/U;->c:I

    .line 44
    invoke-virtual {v0, p0}, Li/a/aa;->a(Li/a/U;)V

    goto/16 :goto_3

    .line 45
    :cond_1
    invoke-virtual {v0, v6}, Li/a/aa;->c(Z)V

    .line 46
    :try_start_0
    invoke-virtual {p0}, Li/a/Q;->b()Lh/c/e;

    move-result-object v1

    sget-object v2, Li/a/ra;->c:Li/a/ra$b;

    invoke-interface {v1, v2}, Lh/c/e;->get(Lh/c/e$c;)Lh/c/e$b;

    move-result-object v1

    check-cast v1, Li/a/ra;

    if-eqz v1, :cond_2

    .line 47
    invoke-interface {v1}, Li/a/ra;->s()Z

    move-result v2

    if-nez v2, :cond_2

    .line 48
    invoke-interface {v1}, Li/a/ra;->t()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    sget-object v2, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {v1}, Lh/e;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v1}, Lh/c/b;->b(Ljava/lang/Object;)V

    const/4 v4, 0x1

    :cond_2
    if-nez v4, :cond_3

    .line 49
    invoke-virtual {p0}, Li/a/Q;->b()Lh/c/e;

    move-result-object v1

    iget-object v2, p0, Li/a/Q;->f:Ljava/lang/Object;

    .line 50
    invoke-static {v1, v2}, Li/a/c/z;->b(Lh/c/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    :try_start_1
    iget-object v4, p0, Li/a/Q;->h:Lh/c/b;

    .line 52
    sget-object v5, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {p1, v4}, Li/a/c/u;->a(Ljava/lang/Throwable;Lh/c/b;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, p1}, Lh/c/b;->b(Ljava/lang/Object;)V

    .line 53
    sget-object p1, Lh/h;->a:Lh/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :try_start_2
    invoke-static {v1, v2}, Li/a/c/z;->a(Lh/c/e;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Li/a/c/z;->a(Lh/c/e;Ljava/lang/Object;)V

    throw p1

    .line 55
    :cond_3
    :goto_0
    invoke-virtual {v0}, Li/a/aa;->B()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 56
    :try_start_3
    invoke-virtual {p0, p1, v3}, Li/a/U;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 57
    :goto_1
    invoke-virtual {v0, v6}, Li/a/aa;->a(Z)V

    goto :goto_3

    :goto_2
    invoke-virtual {v0, v6}, Li/a/aa;->a(Z)V

    throw p0

    .line 58
    :cond_4
    sget-object v0, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {p1, p0}, Li/a/c/u;->a(Ljava/lang/Throwable;Lh/c/b;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Lh/c/b;->b(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public static final a(Li/a/U;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/U<",
            "*>;)V"
        }
    .end annotation

    .line 2
    sget-object v0, Li/a/Ma;->b:Li/a/Ma;

    invoke-virtual {v0}, Li/a/Ma;->b()Li/a/aa;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Li/a/aa;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Li/a/aa;->a(Li/a/U;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Li/a/aa;->c(Z)V

    .line 6
    :try_start_0
    invoke-virtual {p0}, Li/a/U;->e()Lh/c/b;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {p0, v2, v3}, Li/a/T;->a(Li/a/U;Lh/c/b;I)V

    .line 7
    :cond_1
    invoke-virtual {v0}, Li/a/aa;->B()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    .line 8
    :try_start_1
    invoke-virtual {p0, v2, v3}, Li/a/U;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :goto_0
    invoke-virtual {v0, v1}, Li/a/aa;->a(Z)V

    :goto_1
    return-void

    :goto_2
    invoke-virtual {v0, v1}, Li/a/aa;->a(Z)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static final a(Li/a/U;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/a/U<",
            "-TT;>;I)V"
        }
    .end annotation

    const-string v0, "$this$dispatch"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Li/a/U;->e()Lh/c/b;

    move-result-object v0

    .line 60
    invoke-static {p1}, Li/a/Ja;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Li/a/Q;

    if-eqz v1, :cond_1

    invoke-static {p1}, Li/a/Ja;->a(I)Z

    move-result v1

    iget v2, p0, Li/a/U;->c:I

    invoke-static {v2}, Li/a/Ja;->a(I)Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 61
    move-object p1, v0

    check-cast p1, Li/a/Q;

    iget-object p1, p1, Li/a/Q;->g:Li/a/C;

    .line 62
    invoke-interface {v0}, Lh/c/b;->b()Lh/c/e;

    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Li/a/C;->b(Lh/c/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p1, v0, p0}, Li/a/C;->a(Lh/c/e;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {p0}, Li/a/T;->a(Li/a/U;)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-static {p0, v0, p1}, Li/a/T;->a(Li/a/U;Lh/c/b;I)V

    :goto_0
    return-void
.end method

.method public static final a(Li/a/U;Lh/c/b;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/a/U<",
            "-TT;>;",
            "Lh/c/b<",
            "-TT;>;I)V"
        }
    .end annotation

    const-string v0, "$this$resume"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Li/a/U;->f()Ljava/lang/Object;

    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Li/a/U;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 69
    instance-of p0, p1, Li/a/U;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, p1}, Li/a/c/u;->a(Ljava/lang/Throwable;Lh/c/b;)Ljava/lang/Throwable;

    move-result-object v1

    .line 70
    :goto_0
    invoke-static {p1, v1, p2}, Li/a/Ja;->b(Lh/c/b;Ljava/lang/Throwable;I)V

    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {p0, v0}, Li/a/U;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0, p2}, Li/a/Ja;->a(Lh/c/b;Ljava/lang/Object;I)V

    :goto_1
    return-void
.end method

.method public static final b(Lh/c/b;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lh/c/b<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "$this$resumeDirect"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Li/a/Q;

    if-eqz v0, :cond_0

    check-cast p0, Li/a/Q;

    iget-object p0, p0, Li/a/Q;->h:Lh/c/b;

    sget-object v0, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Lh/c/b;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Lh/c/b;->b(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final b(Lh/c/b;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lh/c/b<",
            "-TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "$this$resumeDirectWithException"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p0, Li/a/Q;

    if-eqz v0, :cond_0

    check-cast p0, Li/a/Q;

    iget-object p0, p0, Li/a/Q;->h:Lh/c/b;

    .line 4
    sget-object v0, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {p1, p0}, Li/a/c/u;->a(Ljava/lang/Throwable;Lh/c/b;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Lh/c/b;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {p1, p0}, Li/a/c/u;->a(Ljava/lang/Throwable;Lh/c/b;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Lh/c/b;->b(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
