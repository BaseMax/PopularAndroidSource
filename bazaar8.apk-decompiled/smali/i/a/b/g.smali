.class public Li/a/b/g;
.super Li/a/b/a;
.source "ArrayChannel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Li/a/b/a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/concurrent/locks/ReentrantLock;

.field public d:[Ljava/lang/Object;

.field public e:I

.field public final f:I

.field public volatile size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Li/a/b/a;-><init>()V

    iput p1, p0, Li/a/b/g;->f:I

    .line 2
    iget p1, p0, Li/a/b/g;->f:I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Li/a/b/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    iget p1, p0, Li/a/b/g;->f:I

    const/16 v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Li/a/b/g;->d:[Ljava/lang/Object;

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ArrayChannel capacity must be at least 1, but "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Li/a/b/g;->f:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " was specified"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Li/a/b/g;->d:[Ljava/lang/Object;

    array-length v1, v0

    if-lt p1, v1, :cond_1

    .line 2
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Li/a/b/g;->f:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 4
    iget-object v3, p0, Li/a/b/g;->d:[Ljava/lang/Object;

    iget v4, p0, Li/a/b/g;->e:I

    add-int/2addr v4, v2

    array-length v5, v3

    rem-int/2addr v4, v5

    aget-object v3, v3, v4

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput-object v0, p0, Li/a/b/g;->d:[Ljava/lang/Object;

    .line 6
    iput v1, p0, Li/a/b/g;->e:I

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/a/b/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    iget v1, p0, Li/a/b/g;->size:I

    .line 4
    invoke-virtual {p0}, Li/a/b/d;->f()Li/a/b/o;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    .line 5
    :cond_0
    :try_start_1
    iget v2, p0, Li/a/b/g;->f:I

    if-ge v1, v2, :cond_8

    add-int/lit8 v2, v1, 0x1

    .line 6
    iput v2, p0, Li/a/b/g;->size:I

    if-nez v1, :cond_7

    .line 7
    :cond_1
    invoke-virtual {p0}, Li/a/b/a;->l()Li/a/b/u;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 8
    instance-of v3, v2, Li/a/b/o;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 9
    iput v1, p0, Li/a/b/g;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 10
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :cond_2
    :try_start_2
    invoke-static {}, Lh/f/b/j;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_3
    if-eqz v2, :cond_6

    .line 11
    :try_start_3
    invoke-interface {v2, p1, v4}, Li/a/b/u;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 12
    iput v1, p0, Li/a/b/g;->size:I

    .line 13
    sget-object p1, Lh/h;->a:Lh/h;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v2, :cond_5

    .line 14
    invoke-interface {v2, v3}, Li/a/b/u;->b(Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    .line 15
    invoke-interface {v2}, Li/a/b/u;->c()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Lh/f/b/j;->a()V

    throw v4

    .line 16
    :cond_5
    invoke-static {}, Lh/f/b/j;->a()V

    throw v4

    .line 17
    :cond_6
    :try_start_4
    invoke-static {}, Lh/f/b/j;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 18
    :cond_7
    :try_start_5
    invoke-virtual {p0, v1}, Li/a/b/g;->a(I)V

    .line 19
    iget-object v2, p0, Li/a/b/g;->d:[Ljava/lang/Object;

    iget v3, p0, Li/a/b/g;->e:I

    add-int/2addr v3, v1

    iget-object v1, p0, Li/a/b/g;->d:[Ljava/lang/Object;

    array-length v1, v1

    rem-int/2addr v3, v1

    aput-object p1, v2, v3

    .line 20
    sget-object p1, Li/a/b/c;->a:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 21
    :cond_8
    :try_start_6
    sget-object p1, Li/a/b/c;->b:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(buffer:capacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Li/a/b/g;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Li/a/b/g;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final k()Z
    .locals 2

    .line 1
    iget v0, p0, Li/a/b/g;->size:I

    iget v1, p0, Li/a/b/g;->f:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()V
    .locals 7

    .line 1
    iget-object v0, p0, Li/a/b/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    iget v1, p0, Li/a/b/g;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 4
    iget-object v4, p0, Li/a/b/g;->d:[Ljava/lang/Object;

    iget v5, p0, Li/a/b/g;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 5
    iget v4, p0, Li/a/b/g;->e:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Li/a/b/g;->d:[Ljava/lang/Object;

    array-length v5, v5

    rem-int/2addr v4, v5

    iput v4, p0, Li/a/b/g;->e:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iput v2, p0, Li/a/b/g;->size:I

    .line 7
    sget-object v1, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 8
    invoke-super {p0}, Li/a/b/a;->n()V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget v0, p0, Li/a/b/g;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Li/a/b/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    iget v1, p0, Li/a/b/g;->size:I

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Li/a/b/d;->f()Li/a/b/o;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Li/a/b/c;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 5
    :cond_1
    :try_start_1
    iget-object v2, p0, Li/a/b/g;->d:[Ljava/lang/Object;

    iget v3, p0, Li/a/b/g;->e:I

    aget-object v2, v2, v3

    .line 6
    iget-object v3, p0, Li/a/b/g;->d:[Ljava/lang/Object;

    iget v4, p0, Li/a/b/g;->e:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    add-int/lit8 v3, v1, -0x1

    .line 7
    iput v3, p0, Li/a/b/g;->size:I

    .line 8
    sget-object v3, Li/a/b/c;->c:Ljava/lang/Object;

    .line 9
    iget v4, p0, Li/a/b/g;->f:I

    if-ne v1, v4, :cond_5

    move-object v4, v5

    move-object v6, v4

    .line 10
    :goto_1
    invoke-virtual {p0}, Li/a/b/d;->m()Li/a/b/w;

    move-result-object v7

    if-eqz v7, :cond_6

    if-eqz v7, :cond_4

    .line 11
    invoke-virtual {v7, v5}, Li/a/b/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    if-eqz v7, :cond_2

    .line 12
    invoke-virtual {v7}, Li/a/b/w;->q()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v7

    goto :goto_2

    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_3
    move-object v4, v7

    goto :goto_1

    .line 13
    :cond_4
    :try_start_2
    invoke-static {}, Lh/f/b/j;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :cond_5
    move-object v4, v5

    move-object v6, v4

    .line 14
    :cond_6
    :goto_2
    :try_start_3
    sget-object v7, Li/a/b/c;->c:Ljava/lang/Object;

    if-eq v3, v7, :cond_7

    instance-of v7, v3, Li/a/b/o;

    if-nez v7, :cond_7

    .line 15
    iput v1, p0, Li/a/b/g;->size:I

    .line 16
    iget-object v7, p0, Li/a/b/g;->d:[Ljava/lang/Object;

    iget v8, p0, Li/a/b/g;->e:I

    add-int/2addr v8, v1

    iget-object v1, p0, Li/a/b/g;->d:[Ljava/lang/Object;

    array-length v1, v1

    rem-int/2addr v8, v1

    aput-object v3, v7, v8

    .line 17
    :cond_7
    iget v1, p0, Li/a/b/g;->e:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Li/a/b/g;->d:[Ljava/lang/Object;

    array-length v3, v3

    rem-int/2addr v1, v3

    iput v1, p0, Li/a/b/g;->e:I

    .line 18
    sget-object v1, Lh/h;->a:Lh/h;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v6, :cond_9

    if-eqz v4, :cond_8

    .line 19
    invoke-virtual {v4, v6}, Li/a/b/w;->c(Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    invoke-static {}, Lh/f/b/j;->a()V

    throw v5

    :cond_9
    :goto_3
    return-object v2

    :catchall_0
    move-exception v1

    .line 20
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method
