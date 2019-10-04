.class public final Li/a/d/a;
.super Ljava/lang/Object;
.source "Cancellable.kt"


# direct methods
.method public static final a(Lh/f/a/c;Ljava/lang/Object;Lh/c/b;)V
    .locals 1
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

    const-string v0, "$this$startCoroutineCancellable"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lh/c/a/a;->a(Lh/f/a/c;Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p0

    invoke-static {p0}, Lh/c/a/a;->a(Lh/c/b;)Lh/c/b;

    move-result-object p0

    sget-object p1, Lh/h;->a:Lh/h;

    invoke-static {p0, p1}, Li/a/T;->a(Lh/c/b;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    sget-object p1, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {p0}, Lh/e;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p0}, Lh/c/b;->b(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
