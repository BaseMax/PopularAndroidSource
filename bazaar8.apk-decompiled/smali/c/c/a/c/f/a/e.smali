.class public final Lc/c/a/c/f/a/e;
.super Ljava/lang/Object;
.source "Sweep.kt"


# direct methods
.method public static final a(Lc/e/d/k;Lh/f/a/b;)Lc/e/d/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/k;",
            "Lh/f/a/b<",
            "-",
            "Lc/c/a/c/f/a/d;",
            "Lh/h;",
            ">;)",
            "Lc/e/d/k;"
        }
    .end annotation

    const-string v0, "$this$withSweep"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lc/c/a/c/f/a/d;

    invoke-direct {v0, p0}, Lc/c/a/c/f/a/d;-><init>(Lc/e/d/k;)V

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh/h;

    :cond_0
    invoke-virtual {v0}, Lc/c/a/c/f/a/d;->a()Lc/e/d/k;

    move-result-object p0

    return-object p0
.end method
