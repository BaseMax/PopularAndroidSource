.class public final Lh/c/d;
.super Ljava/lang/Object;
.source "Continuation.kt"


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

    const-string v0, "$this$startCoroutine"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Lh/c/a/a;->a(Lh/f/a/c;Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p0

    invoke-static {p0}, Lh/c/a/a;->a(Lh/c/b;)Lh/c/b;

    move-result-object p0

    sget-object p1, Lh/h;->a:Lh/h;

    sget-object p2, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Lh/c/b;->b(Ljava/lang/Object;)V

    return-void
.end method
