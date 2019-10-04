.class public final Li/a/ja;
.super Ljava/lang/Object;
.source "Executors.kt"


# direct methods
.method public static final a(Ljava/util/concurrent/Executor;)Li/a/C;
    .locals 1

    const-string v0, "$this$asCoroutineDispatcher"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Li/a/V;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Li/a/V;

    if-eqz v0, :cond_1

    iget-object v0, v0, Li/a/V;->a:Li/a/C;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Li/a/ia;

    invoke-direct {v0, p0}, Li/a/ia;-><init>(Ljava/util/concurrent/Executor;)V

    :goto_1
    return-object v0
.end method
