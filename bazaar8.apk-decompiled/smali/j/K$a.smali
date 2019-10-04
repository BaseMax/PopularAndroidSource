.class public final Lj/K$a;
.super Lj/a/b;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field public final b:Lj/j;

.field public final synthetic c:Lj/K;


# direct methods
.method public constructor <init>(Lj/K;Lj/j;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lj/K$a;->c:Lj/K;

    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lj/K;->c()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lj/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-object p2, p0, Lj/K$a;->b:Lj/j;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2
    :try_start_1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "executor rejected"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4
    iget-object p1, p0, Lj/K$a;->c:Lj/K;

    invoke-static {p1}, Lj/K;->a(Lj/K;)Lj/z;

    move-result-object p1

    iget-object v1, p0, Lj/K$a;->c:Lj/K;

    invoke-virtual {p1, v1, v0}, Lj/z;->a(Lj/i;Ljava/io/IOException;)V

    .line 5
    iget-object p1, p0, Lj/K$a;->b:Lj/j;

    iget-object v1, p0, Lj/K$a;->c:Lj/K;

    invoke-interface {p1, v1, v0}, Lj/j;->a(Lj/i;Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    iget-object p1, p0, Lj/K$a;->c:Lj/K;

    iget-object p1, p1, Lj/K;->a:Lj/I;

    invoke-virtual {p1}, Lj/I;->i()Lj/u;

    move-result-object p1

    invoke-virtual {p1, p0}, Lj/u;->b(Lj/K$a;)V

    :goto_0
    return-void

    :goto_1
    iget-object v0, p0, Lj/K$a;->c:Lj/K;

    iget-object v0, v0, Lj/K;->a:Lj/I;

    invoke-virtual {v0}, Lj/I;->i()Lj/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj/u;->b(Lj/K$a;)V

    throw p1
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lj/K$a;->c:Lj/K;

    iget-object v0, v0, Lj/K;->c:Lk/c;

    invoke-virtual {v0}, Lk/c;->h()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lj/K$a;->c:Lj/K;

    invoke-virtual {v1}, Lj/K;->b()Lj/P;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .line 3
    :try_start_1
    iget-object v2, p0, Lj/K$a;->b:Lj/j;

    iget-object v3, p0, Lj/K$a;->c:Lj/K;

    invoke-interface {v2, v3, v0}, Lj/j;->a(Lj/i;Lj/P;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :goto_0
    iget-object v0, p0, Lj/K$a;->c:Lj/K;

    iget-object v0, v0, Lj/K;->a:Lj/I;

    invoke-virtual {v0}, Lj/I;->i()Lj/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj/u;->b(Lj/K$a;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x0

    .line 5
    :goto_1
    :try_start_2
    iget-object v2, p0, Lj/K$a;->c:Lj/K;

    invoke-virtual {v2, v0}, Lj/K;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v1, :cond_0

    .line 6
    invoke-static {}, Lj/a/g/f;->b()Lj/a/g/f;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lj/K$a;->c:Lj/K;

    invoke-virtual {v4}, Lj/K;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lj/a/g/f;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lj/K$a;->c:Lj/K;

    invoke-static {v1}, Lj/K;->a(Lj/K;)Lj/z;

    move-result-object v1

    iget-object v2, p0, Lj/K$a;->c:Lj/K;

    invoke-virtual {v1, v2, v0}, Lj/z;->a(Lj/i;Ljava/io/IOException;)V

    .line 8
    iget-object v1, p0, Lj/K$a;->b:Lj/j;

    iget-object v2, p0, Lj/K$a;->c:Lj/K;

    invoke-interface {v1, v2, v0}, Lj/j;->a(Lj/i;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    return-void

    .line 9
    :goto_3
    iget-object v1, p0, Lj/K$a;->c:Lj/K;

    iget-object v1, v1, Lj/K;->a:Lj/I;

    invoke-virtual {v1}, Lj/I;->i()Lj/u;

    move-result-object v1

    invoke-virtual {v1, p0}, Lj/u;->b(Lj/K$a;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public c()Lj/K;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/K$a;->c:Lj/K;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/K$a;->c:Lj/K;

    iget-object v0, v0, Lj/K;->e:Lj/L;

    invoke-virtual {v0}, Lj/L;->g()Lj/D;

    move-result-object v0

    invoke-virtual {v0}, Lj/D;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
