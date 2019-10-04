.class public final Li/a/l;
.super Ljava/lang/Object;
.source "CancellableContinuation.kt"


# direct methods
.method public static final a(Li/a/j;Li/a/X;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/j<",
            "*>;",
            "Li/a/X;",
            ")V"
        }
    .end annotation

    const-string v0, "$this$disposeOnCancellation"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handle"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Li/a/Y;

    invoke-direct {v0, p1}, Li/a/Y;-><init>(Li/a/X;)V

    invoke-interface {p0, v0}, Li/a/j;->a(Lh/f/a/b;)V

    return-void
.end method

.method public static final a(Li/a/j;Li/a/c/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/j<",
            "*>;",
            "Li/a/c/k;",
            ")V"
        }
    .end annotation

    const-string v0, "$this$removeOnCancellation"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "node"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Li/a/Ha;

    invoke-direct {v0, p1}, Li/a/Ha;-><init>(Li/a/c/k;)V

    invoke-interface {p0, v0}, Li/a/j;->a(Lh/f/a/b;)V

    return-void
.end method
