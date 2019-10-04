.class public final Lc/e/a/b/j/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc/e/a/b/j/o;


# direct methods
.method public constructor <init>(Lc/e/a/b/j/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/j/p;->a:Lc/e/a/b/j/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/j/p;->a:Lc/e/a/b/j/o;

    invoke-static {v0}, Lc/e/a/b/j/o;->a(Lc/e/a/b/j/o;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/e/a/b/j/p;->a:Lc/e/a/b/j/o;

    invoke-static {v1}, Lc/e/a/b/j/o;->b(Lc/e/a/b/j/o;)Lc/e/a/b/j/b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lc/e/a/b/j/p;->a:Lc/e/a/b/j/o;

    invoke-static {v1}, Lc/e/a/b/j/o;->b(Lc/e/a/b/j/o;)Lc/e/a/b/j/b;

    move-result-object v1

    invoke-interface {v1}, Lc/e/a/b/j/b;->a()V

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
