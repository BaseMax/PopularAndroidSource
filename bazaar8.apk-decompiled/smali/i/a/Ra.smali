.class public final Li/a/Ra;
.super Ljava/lang/Object;
.source "Yield.kt"


# direct methods
.method public static final a(Lh/c/e;)V
    .locals 1

    const-string v0, "$this$checkCompletion"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Li/a/ra;->c:Li/a/ra$b;

    invoke-interface {p0, v0}, Lh/c/e;->get(Lh/c/e$c;)Lh/c/e$b;

    move-result-object p0

    check-cast p0, Li/a/ra;

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0}, Li/a/ra;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Li/a/ra;->t()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
