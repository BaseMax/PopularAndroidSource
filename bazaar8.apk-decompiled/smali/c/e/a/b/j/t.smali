.class public final Lc/e/a/b/j/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc/e/a/b/j/g;

.field public final synthetic b:Lc/e/a/b/j/s;


# direct methods
.method public constructor <init>(Lc/e/a/b/j/s;Lc/e/a/b/j/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/j/t;->b:Lc/e/a/b/j/s;

    iput-object p2, p0, Lc/e/a/b/j/t;->a:Lc/e/a/b/j/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/b/j/t;->b:Lc/e/a/b/j/s;

    invoke-static {v0}, Lc/e/a/b/j/s;->a(Lc/e/a/b/j/s;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/e/a/b/j/t;->b:Lc/e/a/b/j/s;

    invoke-static {v1}, Lc/e/a/b/j/s;->b(Lc/e/a/b/j/s;)Lc/e/a/b/j/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lc/e/a/b/j/t;->b:Lc/e/a/b/j/s;

    invoke-static {v1}, Lc/e/a/b/j/s;->b(Lc/e/a/b/j/s;)Lc/e/a/b/j/d;

    move-result-object v1

    iget-object v2, p0, Lc/e/a/b/j/t;->a:Lc/e/a/b/j/g;

    invoke-virtual {v2}, Lc/e/a/b/j/g;->a()Ljava/lang/Exception;

    move-result-object v2

    invoke-interface {v1, v2}, Lc/e/a/b/j/d;->a(Ljava/lang/Exception;)V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
