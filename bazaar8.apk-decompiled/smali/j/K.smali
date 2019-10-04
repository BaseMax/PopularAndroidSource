.class public final Lj/K;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lj/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/K$a;
    }
.end annotation


# instance fields
.field public final a:Lj/I;

.field public final b:Lj/a/c/k;

.field public final c:Lk/c;

.field public d:Lj/z;

.field public final e:Lj/L;

.field public final f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Lj/I;Lj/L;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj/K;->a:Lj/I;

    .line 3
    iput-object p2, p0, Lj/K;->e:Lj/L;

    .line 4
    iput-boolean p3, p0, Lj/K;->f:Z

    .line 5
    new-instance p2, Lj/a/c/k;

    invoke-direct {p2, p1, p3}, Lj/a/c/k;-><init>(Lj/I;Z)V

    iput-object p2, p0, Lj/K;->b:Lj/a/c/k;

    .line 6
    new-instance p2, Lj/J;

    invoke-direct {p2, p0}, Lj/J;-><init>(Lj/K;)V

    iput-object p2, p0, Lj/K;->c:Lk/c;

    .line 7
    iget-object p2, p0, Lj/K;->c:Lk/c;

    invoke-virtual {p1}, Lj/I;->c()I

    move-result p1

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Lk/B;->a(JLjava/util/concurrent/TimeUnit;)Lk/B;

    return-void
.end method

.method public static a(Lj/I;Lj/L;Z)Lj/K;
    .locals 1

    .line 2
    new-instance v0, Lj/K;

    invoke-direct {v0, p0, p1, p2}, Lj/K;-><init>(Lj/I;Lj/L;Z)V

    .line 3
    invoke-virtual {p0}, Lj/I;->k()Lj/z$a;

    move-result-object p0

    invoke-interface {p0, v0}, Lj/z$a;->a(Lj/i;)Lj/z;

    move-result-object p0

    iput-object p0, v0, Lj/K;->d:Lj/z;

    return-object v0
.end method

.method public static synthetic a(Lj/K;)Lj/z;
    .locals 0

    .line 1
    iget-object p0, p0, Lj/K;->d:Lj/z;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 4
    iget-object v0, p0, Lj/K;->c:Lk/c;

    invoke-virtual {v0}, Lk/c;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 5
    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_1
    return-object v0
.end method

.method public final a()V
    .locals 2

    .line 7
    invoke-static {}, Lj/a/g/f;->b()Lj/a/g/f;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lj/a/g/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lj/K;->b:Lj/a/c/k;

    invoke-virtual {v1, v0}, Lj/a/c/k;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lj/j;)V
    .locals 2

    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-boolean v0, p0, Lj/K;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lj/K;->g:Z

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p0}, Lj/K;->a()V

    .line 14
    iget-object v0, p0, Lj/K;->d:Lj/z;

    invoke-virtual {v0, p0}, Lj/z;->b(Lj/i;)V

    .line 15
    iget-object v0, p0, Lj/K;->a:Lj/I;

    invoke-virtual {v0}, Lj/I;->i()Lj/u;

    move-result-object v0

    new-instance v1, Lj/K$a;

    invoke-direct {v1, p0, p1}, Lj/K$a;-><init>(Lj/K;Lj/j;)V

    invoke-virtual {v0, v1}, Lj/u;->a(Lj/K$a;)V

    return-void

    .line 16
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already Executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()Lj/P;
    .locals 13

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lj/K;->a:Lj/I;

    invoke-virtual {v0}, Lj/I;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v0, p0, Lj/K;->b:Lj/a/c/k;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Lj/a/c/a;

    iget-object v2, p0, Lj/K;->a:Lj/I;

    invoke-virtual {v2}, Lj/I;->h()Lj/t;

    move-result-object v2

    invoke-direct {v0, v2}, Lj/a/c/a;-><init>(Lj/t;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v0, Lj/a/a/b;

    iget-object v2, p0, Lj/K;->a:Lj/I;

    invoke-virtual {v2}, Lj/I;->t()Lj/a/a/j;

    move-result-object v2

    invoke-direct {v0, v2}, Lj/a/a/b;-><init>(Lj/a/a/j;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v0, Lj/a/b/a;

    iget-object v2, p0, Lj/K;->a:Lj/I;

    invoke-direct {v0, v2}, Lj/a/b/a;-><init>(Lj/I;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-boolean v0, p0, Lj/K;->f:Z

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lj/K;->a:Lj/I;

    invoke-virtual {v0}, Lj/I;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    :cond_0
    new-instance v0, Lj/a/c/b;

    iget-boolean v2, p0, Lj/K;->f:Z

    invoke-direct {v0, v2}, Lj/a/c/b;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v12, Lj/a/c/h;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lj/K;->e:Lj/L;

    iget-object v8, p0, Lj/K;->d:Lj/z;

    iget-object v0, p0, Lj/K;->a:Lj/I;

    .line 11
    invoke-virtual {v0}, Lj/I;->e()I

    move-result v9

    iget-object v0, p0, Lj/K;->a:Lj/I;

    .line 12
    invoke-virtual {v0}, Lj/I;->A()I

    move-result v10

    iget-object v0, p0, Lj/K;->a:Lj/I;

    invoke-virtual {v0}, Lj/I;->E()I

    move-result v11

    move-object v0, v12

    move-object v7, p0

    invoke-direct/range {v0 .. v11}, Lj/a/c/h;-><init>(Ljava/util/List;Lj/a/b/f;Lj/a/c/c;Lj/a/b/c;ILj/L;Lj/i;Lj/z;III)V

    .line 13
    iget-object v0, p0, Lj/K;->e:Lj/L;

    invoke-interface {v12, v0}, Lj/E$a;->a(Lj/L;)Lj/P;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lj/K;->b:Lj/a/c/k;

    invoke-virtual {v1}, Lj/a/c/k;->b()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 15
    :cond_1
    invoke-static {v0}, Lj/a/e;->a(Ljava/io/Closeable;)V

    .line 16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/K;->e:Lj/L;

    invoke-virtual {v0}, Lj/L;->g()Lj/D;

    move-result-object v0

    invoke-virtual {v0}, Lj/D;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/K;->b:Lj/a/c/k;

    invoke-virtual {v0}, Lj/a/c/k;->a()V

    return-void
.end method

.method public clone()Lj/K;
    .locals 3

    .line 2
    iget-object v0, p0, Lj/K;->a:Lj/I;

    iget-object v1, p0, Lj/K;->e:Lj/L;

    iget-boolean v2, p0, Lj/K;->f:Z

    invoke-static {v0, v1, v2}, Lj/K;->a(Lj/I;Lj/L;Z)Lj/K;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj/K;->clone()Lj/K;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lj/K;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-boolean v1, p0, Lj/K;->f:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lj/K;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lj/P;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lj/K;->g:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lj/K;->g:Z

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    invoke-virtual {p0}, Lj/K;->a()V

    .line 6
    iget-object v0, p0, Lj/K;->c:Lk/c;

    invoke-virtual {v0}, Lk/c;->h()V

    .line 7
    iget-object v0, p0, Lj/K;->d:Lj/z;

    invoke-virtual {v0, p0}, Lj/z;->b(Lj/i;)V

    .line 8
    :try_start_1
    iget-object v0, p0, Lj/K;->a:Lj/I;

    invoke-virtual {v0}, Lj/I;->i()Lj/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj/u;->a(Lj/K;)V

    .line 9
    invoke-virtual {p0}, Lj/K;->b()Lj/P;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 10
    iget-object v1, p0, Lj/K;->a:Lj/I;

    invoke-virtual {v1}, Lj/I;->i()Lj/u;

    move-result-object v1

    invoke-virtual {v1, p0}, Lj/u;->b(Lj/K;)V

    return-object v0

    .line 11
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    :try_start_3
    invoke-virtual {p0, v0}, Lj/K;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lj/K;->d:Lj/z;

    invoke-virtual {v1, p0, v0}, Lj/z;->a(Lj/i;Ljava/io/IOException;)V

    .line 14
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    :goto_0
    iget-object v1, p0, Lj/K;->a:Lj/I;

    invoke-virtual {v1}, Lj/I;->i()Lj/u;

    move-result-object v1

    invoke-virtual {v1, p0}, Lj/u;->b(Lj/K;)V

    throw v0

    .line 16
    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 17
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj/K;->b:Lj/a/c/k;

    invoke-virtual {v0}, Lj/a/c/k;->b()Z

    move-result v0

    return v0
.end method
