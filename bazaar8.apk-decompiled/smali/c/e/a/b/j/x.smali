.class public final Lc/e/a/b/j/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc/e/a/b/j/g;

.field public final synthetic b:Lc/e/a/b/j/w;


# direct methods
.method public constructor <init>(Lc/e/a/b/j/w;Lc/e/a/b/j/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/j/x;->b:Lc/e/a/b/j/w;

    iput-object p2, p0, Lc/e/a/b/j/x;->a:Lc/e/a/b/j/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/e/a/b/j/x;->b:Lc/e/a/b/j/w;

    invoke-static {v0}, Lc/e/a/b/j/w;->a(Lc/e/a/b/j/w;)Lc/e/a/b/j/f;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/j/x;->a:Lc/e/a/b/j/g;

    invoke-virtual {v1}, Lc/e/a/b/j/g;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/e/a/b/j/f;->a(Ljava/lang/Object;)Lc/e/a/b/j/g;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/b/j/x;->b:Lc/e/a/b/j/w;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/e/a/b/j/w;->a(Ljava/lang/Exception;)V

    return-void

    .line 3
    :cond_0
    sget-object v1, Lc/e/a/b/j/i;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lc/e/a/b/j/x;->b:Lc/e/a/b/j/w;

    invoke-virtual {v0, v1, v2}, Lc/e/a/b/j/g;->a(Ljava/util/concurrent/Executor;Lc/e/a/b/j/e;)Lc/e/a/b/j/g;

    .line 4
    sget-object v1, Lc/e/a/b/j/i;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lc/e/a/b/j/x;->b:Lc/e/a/b/j/w;

    invoke-virtual {v0, v1, v2}, Lc/e/a/b/j/g;->a(Ljava/util/concurrent/Executor;Lc/e/a/b/j/d;)Lc/e/a/b/j/g;

    .line 5
    sget-object v1, Lc/e/a/b/j/i;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lc/e/a/b/j/x;->b:Lc/e/a/b/j/w;

    invoke-virtual {v0, v1, v2}, Lc/e/a/b/j/g;->a(Ljava/util/concurrent/Executor;Lc/e/a/b/j/b;)Lc/e/a/b/j/g;

    return-void

    :catch_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lc/e/a/b/j/x;->b:Lc/e/a/b/j/w;

    invoke-virtual {v1, v0}, Lc/e/a/b/j/w;->a(Ljava/lang/Exception;)V

    return-void

    .line 7
    :catch_1
    iget-object v0, p0, Lc/e/a/b/j/x;->b:Lc/e/a/b/j/w;

    invoke-virtual {v0}, Lc/e/a/b/j/w;->a()V

    return-void

    :catch_2
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lc/e/a/b/j/x;->b:Lc/e/a/b/j/w;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lc/e/a/b/j/w;->a(Ljava/lang/Exception;)V

    return-void

    .line 10
    :cond_1
    iget-object v1, p0, Lc/e/a/b/j/x;->b:Lc/e/a/b/j/w;

    invoke-virtual {v1, v0}, Lc/e/a/b/j/w;->a(Ljava/lang/Exception;)V

    return-void
.end method
