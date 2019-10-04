.class public final Li/a/I;
.super Ljava/lang/Object;
.source "CoroutineScope.kt"


# direct methods
.method public static final a(Lh/c/e;)Li/a/H;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Li/a/c/e;

    sget-object v1, Li/a/ra;->c:Li/a/ra$b;

    invoke-interface {p0, v1}, Lh/c/e;->get(Lh/c/e$c;)Lh/c/e$b;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Li/a/ua;->a(Li/a/ra;ILjava/lang/Object;)Li/a/u;

    move-result-object v1

    invoke-interface {p0, v1}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Li/a/c/e;-><init>(Lh/c/e;)V

    return-object v0
.end method

.method public static final a(Lh/f/a/c;Lh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lh/f/a/c<",
            "-",
            "Li/a/H;",
            "-",
            "Lh/c/b<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lh/c/b<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/a/c/s;

    invoke-interface {p1}, Lh/c/b;->b()Lh/c/e;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Li/a/c/s;-><init>(Lh/c/e;Lh/c/b;)V

    .line 2
    invoke-static {v0, v0, p0}, Li/a/d/b;->a(Li/a/a;Ljava/lang/Object;Lh/f/a/c;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lh/c/b/a/f;->c(Lh/c/b;)V

    :cond_0
    return-object p0
.end method
