.class public final Lc/c/a/c/a/a;
.super Ljava/lang/Object;
.source "Coroutines.kt"


# direct methods
.method public static final a(Lh/f/a/c;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
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

    .line 1
    sget-object v0, Lc/c/a/c/a/b;->c:Lc/c/a/c/a/b;

    invoke-virtual {v0}, Lc/c/a/c/a/b;->a()Lh/c/e;

    move-result-object v0

    invoke-static {v0, p0, p1}, Li/a/e;->a(Lh/c/e;Lh/f/a/c;Lh/c/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Li/a/b/p;Ljava/lang/Object;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Li/a/b/p<",
            "TE;>;TE;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Li/a/b/p;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p0, Lh/h;->a:Lh/h;

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0, p1, p2}, Lc/c/a/c/a/a;->a(Li/a/b/x;Ljava/lang/Object;Lh/c/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Li/a/b/x;Ljava/lang/Object;Lh/c/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/a/b/x<",
            "-TT;>;TT;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/farsitel/bazaar/common/coroutines/CoroutinesKt$safeSend$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/farsitel/bazaar/common/coroutines/CoroutinesKt$safeSend$1;

    iget v1, v0, Lcom/farsitel/bazaar/common/coroutines/CoroutinesKt$safeSend$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/common/coroutines/CoroutinesKt$safeSend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/common/coroutines/CoroutinesKt$safeSend$1;

    invoke-direct {v0, p2}, Lcom/farsitel/bazaar/common/coroutines/CoroutinesKt$safeSend$1;-><init>(Lh/c/b;)V

    :goto_0
    iget-object p2, v0, Lcom/farsitel/bazaar/common/coroutines/CoroutinesKt$safeSend$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 5
    iget v2, v0, Lcom/farsitel/bazaar/common/coroutines/CoroutinesKt$safeSend$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/farsitel/bazaar/common/coroutines/CoroutinesKt$safeSend$1;->L$1:Ljava/lang/Object;

    iget-object p0, v0, Lcom/farsitel/bazaar/common/coroutines/CoroutinesKt$safeSend$1;->L$0:Ljava/lang/Object;

    check-cast p0, Li/a/b/x;

    :try_start_0
    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    .line 8
    invoke-interface {p0}, Li/a/b/x;->a()Z

    move-result p2

    if-nez p2, :cond_3

    .line 9
    :try_start_1
    iput-object p0, v0, Lcom/farsitel/bazaar/common/coroutines/CoroutinesKt$safeSend$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/common/coroutines/CoroutinesKt$safeSend$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/common/coroutines/CoroutinesKt$safeSend$1;->label:I

    invoke-interface {p0, p1, v0}, Li/a/b/x;->a(Ljava/lang/Object;Lh/c/b;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v1, :cond_3

    return-object v1

    .line 10
    :catch_0
    :cond_3
    :goto_1
    sget-object p0, Lh/h;->a:Lh/h;

    return-object p0
.end method
