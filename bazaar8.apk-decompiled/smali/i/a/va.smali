.class public final synthetic Li/a/va;
.super Ljava/lang/Object;
.source "Job.kt"


# direct methods
.method public static final a(Li/a/ra;)Li/a/u;
    .locals 1

    .line 1
    new-instance v0, Li/a/ta;

    invoke-direct {v0, p0}, Li/a/ta;-><init>(Li/a/ra;)V

    return-object v0
.end method

.method public static synthetic a(Li/a/ra;ILjava/lang/Object;)Li/a/u;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 2
    :cond_0
    invoke-static {p0}, Li/a/ua;->a(Li/a/ra;)Li/a/u;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Li/a/ra;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    const-string v0, "$this$cancelChildren"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p0}, Li/a/ra;->getChildren()Lh/j/d;

    move-result-object p0

    .line 5
    invoke-interface {p0}, Lh/j/d;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/a/ra;

    .line 6
    invoke-interface {v0, p1}, Li/a/ra;->a(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Li/a/ra;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Li/a/ua;->a(Li/a/ra;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method
