.class public final synthetic Li/a/g;
.super Ljava/lang/Object;
.source "Builders.common.kt"


# direct methods
.method public static final a(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;)Li/a/N;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/a/H;",
            "Lh/c/e;",
            "Lkotlinx/coroutines/CoroutineStart;",
            "Lh/f/a/c<",
            "-",
            "Li/a/H;",
            "-",
            "Lh/c/b<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Li/a/N<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$async"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "start"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1}, Li/a/B;->a(Li/a/H;Lh/c/e;)Lh/c/e;

    move-result-object p0

    .line 4
    invoke-virtual {p2}, Lkotlinx/coroutines/CoroutineStart;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Li/a/Aa;

    invoke-direct {p1, p0, p3}, Li/a/Aa;-><init>(Lh/c/e;Lh/f/a/c;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Li/a/O;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Li/a/O;-><init>(Lh/c/e;Z)V

    .line 7
    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Li/a/a;->a(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lh/f/a/c;)V

    return-object p1
.end method

.method public static synthetic a(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/N;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 1
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->a:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 2
    sget-object p2, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Li/a/e;->a(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;)Li/a/N;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lh/c/e;Lh/f/a/c;Lh/c/b;)Ljava/lang/Object;
    .locals 3
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
            ">;",
            "Lh/c/b<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 8
    invoke-interface {p2}, Lh/c/b;->b()Lh/c/e;

    move-result-object v0

    .line 9
    invoke-interface {v0, p0}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object p0

    .line 10
    invoke-static {p0}, Li/a/Ra;->a(Lh/c/e;)V

    if-ne p0, v0, :cond_0

    .line 11
    new-instance v0, Li/a/c/s;

    invoke-direct {v0, p0, p2}, Li/a/c/s;-><init>(Lh/c/e;Lh/c/b;)V

    .line 12
    invoke-static {v0, v0, p1}, Li/a/d/b;->a(Li/a/a;Ljava/lang/Object;Lh/f/a/c;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Lh/c/c;->c:Lh/c/c$b;

    invoke-interface {p0, v1}, Lh/c/e;->get(Lh/c/e$c;)Lh/c/e$b;

    move-result-object v1

    check-cast v1, Lh/c/c;

    sget-object v2, Lh/c/c;->c:Lh/c/c$b;

    invoke-interface {v0, v2}, Lh/c/e;->get(Lh/c/e$c;)Lh/c/e$b;

    move-result-object v0

    check-cast v0, Lh/c/c;

    invoke-static {v1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    new-instance v0, Li/a/Qa;

    invoke-direct {v0, p0, p2}, Li/a/Qa;-><init>(Lh/c/e;Lh/c/b;)V

    const/4 v1, 0x0

    .line 15
    invoke-static {p0, v1}, Li/a/c/z;->b(Lh/c/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 16
    :try_start_0
    invoke-static {v0, v0, p1}, Li/a/d/b;->a(Li/a/a;Ljava/lang/Object;Lh/f/a/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {p0, v1}, Li/a/c/z;->a(Lh/c/e;Ljava/lang/Object;)V

    move-object p0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p0, v1}, Li/a/c/z;->a(Lh/c/e;Ljava/lang/Object;)V

    throw p1

    .line 18
    :cond_1
    new-instance v0, Li/a/S;

    invoke-direct {v0, p0, p2}, Li/a/S;-><init>(Lh/c/e;Lh/c/b;)V

    .line 19
    invoke-virtual {v0}, Li/a/a;->o()V

    .line 20
    invoke-static {p1, v0, v0}, Li/a/d/a;->a(Lh/f/a/c;Ljava/lang/Object;Lh/c/b;)V

    .line 21
    invoke-virtual {v0}, Li/a/S;->q()Ljava/lang/Object;

    move-result-object p0

    .line 22
    :goto_0
    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    invoke-static {p2}, Lh/c/b/a/f;->c(Lh/c/b;)V

    :cond_2
    return-object p0
.end method

.method public static final b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;)Li/a/ra;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/H;",
            "Lh/c/e;",
            "Lkotlinx/coroutines/CoroutineStart;",
            "Lh/f/a/c<",
            "-",
            "Li/a/H;",
            "-",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Li/a/ra;"
        }
    .end annotation

    const-string v0, "$this$launch"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "start"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1}, Li/a/B;->a(Li/a/H;Lh/c/e;)Lh/c/e;

    move-result-object p0

    .line 4
    invoke-virtual {p2}, Lkotlinx/coroutines/CoroutineStart;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Li/a/Ba;

    invoke-direct {p1, p0, p3}, Li/a/Ba;-><init>(Lh/c/e;Lh/f/a/c;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Li/a/Ka;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Li/a/Ka;-><init>(Lh/c/e;Z)V

    .line 7
    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Li/a/a;->a(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lh/f/a/c;)V

    return-object p1
.end method

.method public static synthetic b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 1
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->a:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 2
    sget-object p2, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;)Li/a/ra;

    move-result-object p0

    return-object p0
.end method
