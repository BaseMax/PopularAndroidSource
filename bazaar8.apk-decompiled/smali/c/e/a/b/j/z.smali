.class public final Lc/e/a/b/j/z;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lc/e/a/b/j/y<",
            "TTResult;>;>;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/e/a/b/j/z;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lc/e/a/b/j/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/j/g<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lc/e/a/b/j/z;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lc/e/a/b/j/z;->b:Ljava/util/Queue;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lc/e/a/b/j/z;->c:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lc/e/a/b/j/z;->c:Z

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :goto_0
    iget-object v1, p0, Lc/e/a/b/j/z;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 11
    :try_start_1
    iget-object v0, p0, Lc/e/a/b/j/z;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/b/j/y;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lc/e/a/b/j/z;->c:Z

    .line 13
    monitor-exit v1

    return-void

    .line 14
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    invoke-interface {v0, p1}, Lc/e/a/b/j/y;->a(Lc/e/a/b/j/g;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 16
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 17
    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final a(Lc/e/a/b/j/y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/j/y<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/j/z;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/e/a/b/j/z;->b:Ljava/util/Queue;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lc/e/a/b/j/z;->b:Ljava/util/Queue;

    .line 4
    :cond_0
    iget-object v1, p0, Lc/e/a/b/j/z;->b:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
