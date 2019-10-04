.class public final synthetic Li/a/f;
.super Ljava/lang/Object;
.source "Builders.kt"


# direct methods
.method public static final a(Lh/c/e;Lh/f/a/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lh/c/e;",
            "Lh/f/a/c<",
            "-",
            "Li/a/H;",
            "-",
            "Lh/c/b<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 3
    sget-object v1, Lh/c/c;->c:Lh/c/c$b;

    invoke-interface {p0, v1}, Lh/c/e;->get(Lh/c/e$c;)Lh/c/e$b;

    move-result-object v1

    check-cast v1, Lh/c/c;

    if-nez v1, :cond_0

    .line 4
    sget-object v1, Li/a/Ma;->b:Li/a/Ma;

    invoke-virtual {v1}, Li/a/Ma;->b()Li/a/aa;

    move-result-object v1

    .line 5
    sget-object v2, Li/a/ka;->a:Li/a/ka;

    invoke-interface {p0, v1}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object p0

    invoke-static {v2, p0}, Li/a/B;->a(Li/a/H;Lh/c/e;)Lh/c/e;

    move-result-object p0

    goto :goto_2

    .line 6
    :cond_0
    instance-of v2, v1, Li/a/aa;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v1, v3

    :cond_1
    check-cast v1, Li/a/aa;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Li/a/aa;->C()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    sget-object v1, Li/a/Ma;->b:Li/a/Ma;

    invoke-virtual {v1}, Li/a/Ma;->a()Li/a/aa;

    move-result-object v1

    .line 8
    :goto_1
    sget-object v2, Li/a/ka;->a:Li/a/ka;

    invoke-static {v2, p0}, Li/a/B;->a(Li/a/H;Lh/c/e;)Lh/c/e;

    move-result-object p0

    .line 9
    :goto_2
    new-instance v2, Li/a/c;

    const-string v3, "currentThread"

    invoke-static {v0, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p0, v0, v1}, Li/a/c;-><init>(Lh/c/e;Ljava/lang/Thread;Li/a/aa;)V

    .line 10
    sget-object p0, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    invoke-virtual {v2, p0, v2, p1}, Li/a/a;->a(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lh/f/a/c;)V

    .line 11
    invoke-virtual {v2}, Li/a/c;->q()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lh/c/e;Lh/f/a/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 1
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->a:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_0
    invoke-static {p0, p1}, Li/a/e;->a(Lh/c/e;Lh/f/a/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
