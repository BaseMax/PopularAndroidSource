.class public abstract Lc/e/a/a/c/i;
.super Ljava/lang/Object;
.source "SimpleDecoder.java"

# interfaces
.implements Lc/e/a/a/c/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lc/e/a/a/c/f;",
        "O:",
        "Lc/e/a/a/c/g;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;",
        "Lc/e/a/a/c/d<",
        "TI;TO;TE;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Thread;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TI;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final e:[Lc/e/a/a/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field public final f:[Lc/e/a/a/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TO;"
        }
    .end annotation
.end field

.field public g:I

.field public h:I

.field public i:Lc/e/a/a/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field public j:Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public k:Z

.field public l:Z

.field public m:I


# direct methods
.method public constructor <init>([Lc/e/a/a/c/f;[Lc/e/a/a/c/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;[TO;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/e/a/a/c/i;->b:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lc/e/a/a/c/i;->c:Ljava/util/ArrayDeque;

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lc/e/a/a/c/i;->d:Ljava/util/ArrayDeque;

    .line 5
    iput-object p1, p0, Lc/e/a/a/c/i;->e:[Lc/e/a/a/c/f;

    .line 6
    array-length p1, p1

    iput p1, p0, Lc/e/a/a/c/i;->g:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 7
    :goto_0
    iget v1, p0, Lc/e/a/a/c/i;->g:I

    if-ge v0, v1, :cond_0

    .line 8
    iget-object v1, p0, Lc/e/a/a/c/i;->e:[Lc/e/a/a/c/f;

    invoke-virtual {p0}, Lc/e/a/a/c/i;->e()Lc/e/a/a/c/f;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iput-object p2, p0, Lc/e/a/a/c/i;->f:[Lc/e/a/a/c/g;

    .line 10
    array-length p2, p2

    iput p2, p0, Lc/e/a/a/c/i;->h:I

    .line 11
    :goto_1
    iget p2, p0, Lc/e/a/a/c/i;->h:I

    if-ge p1, p2, :cond_1

    .line 12
    iget-object p2, p0, Lc/e/a/a/c/i;->f:[Lc/e/a/a/c/g;

    invoke-virtual {p0}, Lc/e/a/a/c/i;->f()Lc/e/a/a/c/g;

    move-result-object v0

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 13
    :cond_1
    new-instance p1, Lc/e/a/a/c/h;

    invoke-direct {p1, p0}, Lc/e/a/a/c/h;-><init>(Lc/e/a/a/c/i;)V

    iput-object p1, p0, Lc/e/a/a/c/i;->a:Ljava/lang/Thread;

    .line 14
    iget-object p1, p0, Lc/e/a/a/c/i;->a:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/c/i;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/c/i;->j()V

    return-void
.end method


# virtual methods
.method public abstract a(Lc/e/a/a/c/f;Lc/e/a/a/c/g;Z)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;Z)TE;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TE;"
        }
    .end annotation
.end method

.method public a()V
    .locals 2

    .line 17
    iget-object v0, p0, Lc/e/a/a/c/i;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 18
    :try_start_0
    iput-boolean v1, p0, Lc/e/a/a/c/i;->l:Z

    .line 19
    iget-object v1, p0, Lc/e/a/a/c/i;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :try_start_1
    iget-object v0, p0, Lc/e/a/a/c/i;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 22
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 23
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final a(I)V
    .locals 4

    .line 3
    iget v0, p0, Lc/e/a/a/c/i;->g:I

    iget-object v1, p0, Lc/e/a/a/c/i;->e:[Lc/e/a/a/c/f;

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/e/a/a/o/e;->b(Z)V

    .line 4
    iget-object v0, p0, Lc/e/a/a/c/i;->e:[Lc/e/a/a/c/f;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 5
    invoke-virtual {v3, p1}, Lc/e/a/a/c/f;->g(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a(Lc/e/a/a/c/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V^TE;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lc/e/a/a/c/i;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lc/e/a/a/c/i;->i()V

    .line 8
    iget-object v1, p0, Lc/e/a/a/c/i;->i:Lc/e/a/a/c/f;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lc/e/a/a/o/e;->a(Z)V

    .line 9
    iget-object v1, p0, Lc/e/a/a/c/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Lc/e/a/a/c/i;->h()V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lc/e/a/a/c/i;->i:Lc/e/a/a/c/f;

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lc/e/a/a/c/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lc/e/a/a/c/i;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    invoke-virtual {p0, p1}, Lc/e/a/a/c/i;->b(Lc/e/a/a/c/g;)V

    .line 15
    invoke-virtual {p0}, Lc/e/a/a/c/i;->h()V

    .line 16
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lc/e/a/a/c/f;

    invoke-virtual {p0, p1}, Lc/e/a/a/c/i;->a(Lc/e/a/a/c/f;)V

    return-void
.end method

.method public final b()Lc/e/a/a/c/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;^TE;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/e/a/a/c/i;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lc/e/a/a/c/i;->i()V

    .line 4
    iget-object v1, p0, Lc/e/a/a/c/i;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 5
    monitor-exit v0

    return-object v1

    .line 6
    :cond_0
    iget-object v1, p0, Lc/e/a/a/c/i;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/c/g;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/c/i;->b()Lc/e/a/a/c/g;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lc/e/a/a/c/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 8
    invoke-virtual {p1}, Lc/e/a/a/c/f;->g()V

    .line 9
    iget-object v0, p0, Lc/e/a/a/c/i;->e:[Lc/e/a/a/c/f;

    iget v1, p0, Lc/e/a/a/c/i;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc/e/a/a/c/i;->g:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final b(Lc/e/a/a/c/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 10
    invoke-virtual {p1}, Lc/e/a/a/c/a;->g()V

    .line 11
    iget-object v0, p0, Lc/e/a/a/c/i;->f:[Lc/e/a/a/c/g;

    iget v1, p0, Lc/e/a/a/c/i;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc/e/a/a/c/i;->h:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final c()Lc/e/a/a/c/f;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;^TE;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/e/a/a/c/i;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lc/e/a/a/c/i;->i()V

    .line 4
    iget-object v1, p0, Lc/e/a/a/c/i;->i:Lc/e/a/a/c/f;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lc/e/a/a/o/e;->b(Z)V

    .line 5
    iget v1, p0, Lc/e/a/a/c/i;->g:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lc/e/a/a/c/i;->e:[Lc/e/a/a/c/f;

    iget v3, p0, Lc/e/a/a/c/i;->g:I

    sub-int/2addr v3, v2

    iput v3, p0, Lc/e/a/a/c/i;->g:I

    aget-object v1, v1, v3

    :goto_1
    iput-object v1, p0, Lc/e/a/a/c/i;->i:Lc/e/a/a/c/f;

    .line 6
    iget-object v1, p0, Lc/e/a/a/c/i;->i:Lc/e/a/a/c/f;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/c/i;->c()Lc/e/a/a/c/f;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/c/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lc/e/a/a/c/i;->h:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract e()Lc/e/a/a/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation
.end method

.method public abstract f()Lc/e/a/a/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation
.end method

.method public final flush()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/c/i;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lc/e/a/a/c/i;->k:Z

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lc/e/a/a/c/i;->m:I

    .line 4
    iget-object v1, p0, Lc/e/a/a/c/i;->i:Lc/e/a/a/c/f;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lc/e/a/a/c/i;->i:Lc/e/a/a/c/f;

    invoke-virtual {p0, v1}, Lc/e/a/a/c/i;->b(Lc/e/a/a/c/f;)V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lc/e/a/a/c/i;->i:Lc/e/a/a/c/f;

    .line 7
    :cond_0
    :goto_0
    iget-object v1, p0, Lc/e/a/a/c/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lc/e/a/a/c/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/c/f;

    invoke-virtual {p0, v1}, Lc/e/a/a/c/i;->b(Lc/e/a/a/c/f;)V

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    iget-object v1, p0, Lc/e/a/a/c/i;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    iget-object v1, p0, Lc/e/a/a/c/i;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/c/g;

    invoke-virtual {v1}, Lc/e/a/a/c/g;->k()V

    goto :goto_1

    .line 11
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public final g()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lc/e/a/a/c/i;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lc/e/a/a/c/i;->l:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lc/e/a/a/c/i;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lc/e/a/a/c/i;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v1, p0, Lc/e/a/a/c/i;->l:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 5
    monitor-exit v0

    return v2

    .line 6
    :cond_1
    iget-object v1, p0, Lc/e/a/a/c/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/c/f;

    .line 7
    iget-object v3, p0, Lc/e/a/a/c/i;->f:[Lc/e/a/a/c/g;

    iget v4, p0, Lc/e/a/a/c/i;->h:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lc/e/a/a/c/i;->h:I

    aget-object v3, v3, v4

    .line 8
    iget-boolean v4, p0, Lc/e/a/a/c/i;->k:Z

    .line 9
    iput-boolean v2, p0, Lc/e/a/a/c/i;->k:Z

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 11
    invoke-virtual {v1}, Lc/e/a/a/c/a;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 12
    invoke-virtual {v3, v0}, Lc/e/a/a/c/a;->b(I)V

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {v1}, Lc/e/a/a/c/a;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, -0x80000000

    .line 14
    invoke-virtual {v3, v0}, Lc/e/a/a/c/a;->b(I)V

    .line 15
    :cond_3
    :try_start_1
    invoke-virtual {p0, v1, v3, v4}, Lc/e/a/a/c/i;->a(Lc/e/a/a/c/f;Lc/e/a/a/c/g;Z)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/c/i;->j:Ljava/lang/Exception;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {p0, v0}, Lc/e/a/a/c/i;->a(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/c/i;->j:Ljava/lang/Exception;

    goto :goto_1

    :catch_1
    move-exception v0

    .line 17
    invoke-virtual {p0, v0}, Lc/e/a/a/c/i;->a(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/c/i;->j:Ljava/lang/Exception;

    .line 18
    :goto_1
    iget-object v0, p0, Lc/e/a/a/c/i;->j:Ljava/lang/Exception;

    if-eqz v0, :cond_4

    .line 19
    iget-object v0, p0, Lc/e/a/a/c/i;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 20
    :cond_4
    :goto_2
    iget-object v4, p0, Lc/e/a/a/c/i;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 21
    :try_start_3
    iget-boolean v0, p0, Lc/e/a/a/c/i;->k:Z

    if-eqz v0, :cond_5

    .line 22
    invoke-virtual {v3}, Lc/e/a/a/c/g;->k()V

    goto :goto_3

    .line 23
    :cond_5
    invoke-virtual {v3}, Lc/e/a/a/c/a;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    iget v0, p0, Lc/e/a/a/c/i;->m:I

    add-int/2addr v0, v5

    iput v0, p0, Lc/e/a/a/c/i;->m:I

    .line 25
    invoke-virtual {v3}, Lc/e/a/a/c/g;->k()V

    goto :goto_3

    .line 26
    :cond_6
    iget v0, p0, Lc/e/a/a/c/i;->m:I

    iput v0, v3, Lc/e/a/a/c/g;->c:I

    .line 27
    iput v2, p0, Lc/e/a/a/c/i;->m:I

    .line 28
    iget-object v0, p0, Lc/e/a/a/c/i;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 29
    :goto_3
    invoke-virtual {p0, v1}, Lc/e/a/a/c/i;->b(Lc/e/a/a/c/f;)V

    .line 30
    monitor-exit v4

    return v5

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 31
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method public final h()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/c/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/c/i;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/a/c/i;->j:Ljava/lang/Exception;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    throw v0
.end method

.method public final j()V
    .locals 2

    .line 1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lc/e/a/a/c/i;->g()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
