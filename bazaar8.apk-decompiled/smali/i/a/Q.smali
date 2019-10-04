.class public final Li/a/Q;
.super Li/a/U;
.source "Dispatched.kt"

# interfaces
.implements Lh/c/b/a/c;
.implements Lh/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/a/U<",
        "TT;>;",
        "Lh/c/b/a/c;",
        "Lh/c/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public d:Ljava/lang/Object;

.field public final e:Lh/c/b/a/c;

.field public final f:Ljava/lang/Object;

.field public final g:Li/a/C;

.field public final h:Lh/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/c/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/a/C;Lh/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/C;",
            "Lh/c/b<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Li/a/U;-><init>(I)V

    iput-object p1, p0, Li/a/Q;->g:Li/a/C;

    iput-object p2, p0, Li/a/Q;->h:Lh/c/b;

    .line 2
    invoke-static {}, Li/a/T;->a()Li/a/c/v;

    move-result-object p1

    iput-object p1, p0, Li/a/Q;->d:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Li/a/Q;->h:Lh/c/b;

    instance-of p2, p1, Lh/c/b/a/c;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lh/c/b/a/c;

    iput-object p1, p0, Li/a/Q;->e:Lh/c/b/a/c;

    .line 4
    invoke-virtual {p0}, Li/a/Q;->b()Lh/c/e;

    move-result-object p1

    invoke-static {p1}, Li/a/c/z;->a(Lh/c/e;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Li/a/Q;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b()Lh/c/e;
    .locals 1

    iget-object v0, p0, Li/a/Q;->h:Lh/c/b;

    invoke-interface {v0}, Lh/c/b;->b()Lh/c/e;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Li/a/Q;->h:Lh/c/b;

    invoke-interface {v0}, Lh/c/b;->b()Lh/c/e;

    move-result-object v0

    .line 2
    invoke-static {p1}, Li/a/w;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    iget-object v2, p0, Li/a/Q;->g:Li/a/C;

    invoke-virtual {v2, v0}, Li/a/C;->b(Lh/c/e;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    iput-object v1, p0, Li/a/Q;->d:Ljava/lang/Object;

    .line 5
    iput v3, p0, Li/a/U;->c:I

    .line 6
    iget-object p1, p0, Li/a/Q;->g:Li/a/C;

    invoke-virtual {p1, v0, p0}, Li/a/C;->a(Lh/c/e;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 7
    :cond_0
    sget-object v0, Li/a/Ma;->b:Li/a/Ma;

    invoke-virtual {v0}, Li/a/Ma;->b()Li/a/aa;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Li/a/aa;->y()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    iput-object v1, p0, Li/a/Q;->d:Ljava/lang/Object;

    .line 10
    iput v3, p0, Li/a/U;->c:I

    .line 11
    invoke-virtual {v0, p0}, Li/a/aa;->a(Li/a/U;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Li/a/aa;->c(Z)V

    .line 13
    :try_start_0
    invoke-virtual {p0}, Li/a/Q;->b()Lh/c/e;

    move-result-object v2

    iget-object v3, p0, Li/a/Q;->f:Ljava/lang/Object;

    .line 14
    invoke-static {v2, v3}, Li/a/c/z;->b(Lh/c/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    iget-object v4, p0, Li/a/Q;->h:Lh/c/b;

    invoke-interface {v4, p1}, Lh/c/b;->b(Ljava/lang/Object;)V

    .line 16
    sget-object p1, Lh/h;->a:Lh/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    invoke-static {v2, v3}, Li/a/c/z;->a(Lh/c/e;Ljava/lang/Object;)V

    .line 18
    :cond_2
    invoke-virtual {v0}, Li/a/aa;->B()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 19
    invoke-static {v2, v3}, Li/a/c/z;->a(Lh/c/e;Ljava/lang/Object;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    const/4 v2, 0x0

    .line 20
    :try_start_3
    invoke-virtual {p0, p1, v2}, Li/a/U;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 21
    :goto_0
    invoke-virtual {v0, v1}, Li/a/aa;->a(Z)V

    :goto_1
    return-void

    :goto_2
    invoke-virtual {v0, v1}, Li/a/aa;->a(Z)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public c()Lh/c/b/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/Q;->e:Lh/c/b/a/c;

    return-object v0
.end method

.method public d()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Lh/c/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh/c/b<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public f()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Li/a/Q;->d:Ljava/lang/Object;

    .line 2
    invoke-static {}, Li/a/K;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Li/a/T;->a()Li/a/c/v;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3
    :cond_2
    :goto_1
    invoke-static {}, Li/a/T;->a()Li/a/c/v;

    move-result-object v1

    iput-object v1, p0, Li/a/Q;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DispatchedContinuation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/a/Q;->g:Li/a/C;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/a/Q;->h:Lh/c/b;

    invoke-static {v1}, Li/a/L;->a(Lh/c/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
