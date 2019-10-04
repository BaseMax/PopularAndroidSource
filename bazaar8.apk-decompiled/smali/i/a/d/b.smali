.class public final Li/a/d/b;
.super Ljava/lang/Object;
.source "Undispatched.kt"


# direct methods
.method public static final a(Li/a/a;Ljava/lang/Object;Lh/f/a/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/a/a<",
            "-TT;>;TR;",
            "Lh/f/a/c<",
            "-TR;-",
            "Lh/c/b<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "$this$startUndispatchedOrReturn"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Li/a/a;->o()V

    const/4 v0, 0x2

    .line 2
    :try_start_0
    invoke-static {p2, v0}, Lh/f/b/o;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    check-cast p2, Lh/f/a/c;

    invoke-interface {p2, p1, p0}, Lh/f/a/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Li/a/v;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p2, p1, v1, v0, v2}, Li/a/v;-><init>(Ljava/lang/Throwable;ZILh/f/b/f;)V

    move-object p1, p2

    .line 4
    :goto_0
    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 p2, 0x4

    .line 5
    invoke-virtual {p0, p1, p2}, Li/a/xa;->b(Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Li/a/xa;->h()Ljava/lang/Object;

    move-result-object p1

    .line 7
    instance-of p2, p1, Li/a/v;

    if-eqz p2, :cond_1

    .line 8
    check-cast p1, Li/a/v;

    iget-object p1, p1, Li/a/v;->b:Ljava/lang/Throwable;

    .line 9
    invoke-static {p0, p1}, Li/a/c/t;->a(Li/a/a;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    .line 10
    :cond_1
    invoke-static {p1}, Li/a/za;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static final a(Lh/f/a/c;Ljava/lang/Object;Lh/c/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lh/f/a/c<",
            "-TR;-",
            "Lh/c/b<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lh/c/b<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "$this$startCoroutineUndispatched"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p2}, Lh/c/b/a/f;->a(Lh/c/b;)Lh/c/b;

    .line 13
    :try_start_0
    invoke-interface {p2}, Lh/c/b;->b()Lh/c/e;

    move-result-object v0

    const/4 v1, 0x0

    .line 14
    invoke-static {v0, v1}, Li/a/c/z;->b(Lh/c/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    .line 15
    :try_start_1
    invoke-static {p0, v2}, Lh/f/b/o;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    check-cast p0, Lh/f/a/c;

    invoke-interface {p0, p1, p2}, Lh/f/a/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :try_start_2
    invoke-static {v0, v1}, Li/a/c/z;->a(Lh/c/e;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 17
    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object p1

    if-eq p0, p1, :cond_0

    .line 18
    sget-object p1, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p0}, Lh/c/b;->b(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 19
    :try_start_3
    invoke-static {v0, v1}, Li/a/c/z;->a(Lh/c/e;Ljava/lang/Object;)V

    throw p0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p0

    .line 20
    sget-object p1, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {p0}, Lh/e;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p0}, Lh/c/b;->b(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
