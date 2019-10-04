.class public final Li/a/V;
.super Ljava/lang/Object;
.source "Executors.kt"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final a:Li/a/C;


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "block"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Li/a/V;->a:Li/a/C;

    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->a:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-virtual {v0, v1, p1}, Li/a/C;->a(Lh/c/e;Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/V;->a:Li/a/C;

    invoke-virtual {v0}, Li/a/C;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
