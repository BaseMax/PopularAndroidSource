.class public Li/a/k;
.super Li/a/U;
.source "CancellableContinuationImpl.kt"

# interfaces
.implements Li/a/j;
.implements Lh/c/b/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/a/U<",
        "TT;>;",
        "Li/a/j<",
        "TT;>;",
        "Lh/c/b/a/c;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile _decision:I

.field public volatile _state:Ljava/lang/Object;

.field public final f:Lh/c/e;

.field public final g:Lh/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/c/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile parentHandle:Li/a/X;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Li/a/k;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Li/a/k;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v0, Li/a/k;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Li/a/k;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lh/c/b;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-TT;>;I)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Li/a/U;-><init>(I)V

    iput-object p1, p0, Li/a/k;->g:Lh/c/b;

    .line 2
    iget-object p1, p0, Li/a/k;->g:Lh/c/b;

    invoke-interface {p1}, Lh/c/b;->b()Lh/c/e;

    move-result-object p1

    iput-object p1, p0, Li/a/k;->f:Lh/c/e;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Li/a/k;->_decision:I

    .line 4
    sget-object p1, Li/a/b;->a:Li/a/b;

    iput-object p1, p0, Li/a/k;->_state:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;I)Li/a/m;
    .locals 3

    .line 25
    :goto_0
    iget-object v0, p0, Li/a/k;->_state:Ljava/lang/Object;

    .line 26
    instance-of v1, v0, Li/a/Fa;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 27
    sget-object v1, Li/a/k;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Li/a/k;->g()V

    .line 29
    invoke-virtual {p0, p2}, Li/a/k;->a(I)V

    return-object v2

    .line 30
    :cond_1
    instance-of p2, v0, Li/a/m;

    if-eqz p2, :cond_2

    .line 31
    check-cast v0, Li/a/m;

    invoke-virtual {v0}, Li/a/m;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    return-object v0

    .line 32
    :cond_2
    invoke-virtual {p0, p1}, Li/a/k;->e(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public final a(Ljava/lang/Throwable;I)Li/a/m;
    .locals 4

    const-string v0, "exception"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Li/a/v;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Li/a/v;-><init>(Ljava/lang/Throwable;ZILh/f/b/f;)V

    invoke-virtual {p0, v0, p2}, Li/a/k;->a(Ljava/lang/Object;I)Li/a/m;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 33
    :goto_0
    iget-object v0, p0, Li/a/k;->_state:Ljava/lang/Object;

    .line 34
    instance-of v1, v0, Li/a/Fa;

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    move-object v1, p1

    goto :goto_1

    .line 35
    :cond_0
    new-instance v1, Li/a/x;

    move-object v2, v0

    check-cast v2, Li/a/Fa;

    invoke-direct {v1, p2, p1, v2}, Li/a/x;-><init>(Ljava/lang/Object;Ljava/lang/Object;Li/a/Fa;)V

    .line 36
    :goto_1
    sget-object v2, Li/a/k;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0}, Li/a/k;->g()V

    return-object v0

    .line 38
    :cond_2
    instance-of v1, v0, Li/a/x;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 39
    check-cast v0, Li/a/x;

    iget-object v1, v0, Li/a/x;->a:Ljava/lang/Object;

    if-ne v1, p2, :cond_6

    .line 40
    invoke-static {}, Li/a/K;->a()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, v0, Li/a/x;->b:Ljava/lang/Object;

    if-ne p2, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 41
    :cond_5
    :goto_3
    iget-object v2, v0, Li/a/x;->c:Li/a/Fa;

    :cond_6
    return-object v2
.end method

.method public a(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 5

    const-string v0, "exception"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    :goto_0
    iget-object v0, p0, Li/a/k;->_state:Ljava/lang/Object;

    .line 43
    instance-of v1, v0, Li/a/Fa;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 44
    new-instance v1, Li/a/v;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, p1, v3, v4, v2}, Li/a/v;-><init>(Ljava/lang/Throwable;ZILh/f/b/f;)V

    .line 45
    sget-object v2, Li/a/k;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Li/a/k;->g()V

    return-object v0

    :cond_1
    return-object v2
.end method

.method public a(Li/a/ra;)Ljava/lang/Throwable;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p1}, Li/a/ra;->t()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)V
    .locals 1

    .line 9
    invoke-virtual {p0}, Li/a/k;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-static {p0, p1}, Li/a/T;->a(Li/a/U;I)V

    return-void
.end method

.method public a(Lh/f/a/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/f/a/b<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh/h;",
            ">;)V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object v1, v0

    .line 11
    :cond_0
    iget-object v2, p0, Li/a/k;->_state:Ljava/lang/Object;

    .line 12
    instance-of v3, v2, Li/a/b;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0, p1}, Li/a/k;->b(Lh/f/a/b;)Li/a/h;

    move-result-object v1

    .line 14
    :goto_0
    sget-object v3, Li/a/k;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 15
    :cond_2
    instance-of v1, v2, Li/a/h;

    if-nez v1, :cond_7

    .line 16
    instance-of v1, v2, Li/a/m;

    if-eqz v1, :cond_6

    .line 17
    move-object v1, v2

    check-cast v1, Li/a/m;

    invoke-virtual {v1}, Li/a/v;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 18
    :try_start_0
    instance-of v1, v2, Li/a/v;

    if-nez v1, :cond_3

    move-object v2, v0

    :cond_3
    check-cast v2, Li/a/v;

    if-eqz v2, :cond_4

    iget-object v0, v2, Li/a/v;->b:Ljava/lang/Throwable;

    .line 19
    :cond_4
    invoke-interface {p1, v0}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p0}, Li/a/k;->b()Lh/c/e;

    move-result-object v0

    .line 21
    new-instance v1, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in cancellation handler for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    invoke-static {v0, v1}, Li/a/E;->a(Lh/c/e;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    .line 23
    :cond_5
    invoke-virtual {p0, p1, v2}, Li/a/k;->a(Lh/f/a/b;Ljava/lang/Object;)V

    throw v0

    :cond_6
    return-void

    .line 24
    :cond_7
    invoke-virtual {p0, p1, v2}, Li/a/k;->a(Lh/f/a/b;Ljava/lang/Object;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final a(Lh/f/a/b;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/f/a/b<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh/h;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", already has "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "cause"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Li/a/y;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    check-cast p1, Li/a/y;

    iget-object p1, p1, Li/a/y;->b:Lh/f/a/b;

    invoke-interface {p1, p2}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p0}, Li/a/k;->b()Lh/c/e;

    move-result-object p2

    .line 4
    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in cancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-static {p2, v0}, Li/a/E;->a(Lh/c/e;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public b()Lh/c/e;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/k;->f:Lh/c/e;

    return-object v0
.end method

.method public final b(Lh/f/a/b;)Li/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/f/a/b<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh/h;",
            ">;)",
            "Li/a/h;"
        }
    .end annotation

    .line 3
    instance-of v0, p1, Li/a/h;

    if-eqz v0, :cond_0

    check-cast p1, Li/a/h;

    goto :goto_0

    :cond_0
    new-instance v0, Li/a/oa;

    invoke-direct {v0, p1}, Li/a/oa;-><init>(Lh/f/a/b;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    .line 2
    invoke-static {p1}, Li/a/w;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Li/a/U;->c:I

    invoke-virtual {p0, p1, v0}, Li/a/k;->a(Ljava/lang/Object;I)Li/a/m;

    return-void
.end method

.method public b(Ljava/lang/Throwable;)Z
    .locals 5

    .line 4
    :goto_0
    iget-object v0, p0, Li/a/k;->_state:Ljava/lang/Object;

    .line 5
    instance-of v1, v0, Li/a/Fa;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 6
    :cond_0
    new-instance v1, Li/a/m;

    instance-of v3, v0, Li/a/h;

    invoke-direct {v1, p0, p1, v3}, Li/a/m;-><init>(Lh/c/b;Ljava/lang/Throwable;Z)V

    .line 7
    sget-object v4, Li/a/k;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 8
    :try_start_0
    check-cast v0, Li/a/h;

    invoke-virtual {v0, p1}, Li/a/i;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p0}, Li/a/k;->b()Lh/c/e;

    move-result-object v0

    .line 10
    new-instance v1, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in cancellation handler for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    invoke-static {v0, v1}, Li/a/E;->a(Lh/c/e;Ljava/lang/Throwable;)V

    .line 12
    :cond_2
    :goto_1
    invoke-virtual {p0}, Li/a/k;->g()V

    .line 13
    invoke-virtual {p0, v2}, Li/a/k;->a(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public c()Lh/c/b/a/c;
    .locals 2

    .line 1
    iget-object v0, p0, Li/a/k;->g:Lh/c/b;

    instance-of v1, v0, Lh/c/b/a/c;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lh/c/b/a/c;

    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget p1, p0, Li/a/U;->c:I

    invoke-virtual {p0, p1}, Li/a/k;->a(I)V

    return-void
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Li/a/x;

    if-eqz v0, :cond_0

    check-cast p1, Li/a/x;

    iget-object p1, p1, Li/a/x;->b:Ljava/lang/Object;

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Li/a/y;

    if-eqz v0, :cond_1

    check-cast p1, Li/a/y;

    iget-object p1, p1, Li/a/y;->a:Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public d()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Lh/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh/c/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/a/k;->g:Lh/c/b;

    return-object v0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already resumed, but proposed with update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/k;->i()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/k;->parentHandle:Li/a/X;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Li/a/X;->f()V

    .line 3
    sget-object v0, Li/a/Ea;->a:Li/a/Ea;

    iput-object v0, p0, Li/a/k;->parentHandle:Li/a/X;

    :cond_0
    return-void
.end method

.method public final h()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Li/a/k;->j()V

    .line 2
    invoke-virtual {p0}, Li/a/k;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Li/a/k;->i()Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v1, v0, Li/a/v;

    if-nez v1, :cond_3

    .line 5
    iget v1, p0, Li/a/U;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 6
    invoke-virtual {p0}, Li/a/k;->b()Lh/c/e;

    move-result-object v1

    sget-object v2, Li/a/ra;->c:Li/a/ra$b;

    invoke-interface {v1, v2}, Lh/c/e;->get(Lh/c/e$c;)Lh/c/e$b;

    move-result-object v1

    check-cast v1, Li/a/ra;

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {v1}, Li/a/ra;->s()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v1}, Li/a/ra;->t()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    .line 9
    invoke-virtual {p0, v0, v1}, Li/a/k;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 10
    invoke-static {v1, p0}, Li/a/c/u;->a(Ljava/lang/Throwable;Lh/c/b;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Li/a/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 12
    :cond_3
    check-cast v0, Li/a/v;

    iget-object v0, v0, Li/a/v;->b:Ljava/lang/Throwable;

    invoke-static {v0, p0}, Li/a/c/u;->a(Ljava/lang/Throwable;Lh/c/b;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public final i()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/k;->_state:Ljava/lang/Object;

    return-object v0
.end method

.method public final j()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Li/a/k;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li/a/k;->g:Lh/c/b;

    invoke-interface {v0}, Lh/c/b;->b()Lh/c/e;

    move-result-object v0

    sget-object v1, Li/a/ra;->c:Li/a/ra$b;

    invoke-interface {v0, v1}, Lh/c/e;->get(Lh/c/e$c;)Lh/c/e$b;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Li/a/ra;

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1}, Li/a/ra;->start()Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v4, Li/a/n;

    invoke-direct {v4, v1, p0}, Li/a/n;-><init>(Li/a/ra;Li/a/k;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 5
    invoke-static/range {v1 .. v6}, Li/a/ra$a;->a(Li/a/ra;ZZLh/f/a/b;ILjava/lang/Object;)Li/a/X;

    move-result-object v0

    .line 6
    iput-object v0, p0, Li/a/k;->parentHandle:Li/a/X;

    .line 7
    invoke-virtual {p0}, Li/a/k;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v0}, Li/a/X;->f()V

    .line 9
    sget-object v0, Li/a/Ea;->a:Li/a/Ea;

    iput-object v0, p0, Li/a/k;->parentHandle:Li/a/X;

    :cond_1
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/k;->i()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Li/a/Fa;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    const-string v0, "CancellableContinuation"

    return-object v0
.end method

.method public final m()Z
    .locals 4

    .line 1
    :cond_0
    iget v0, p0, Li/a/k;->_decision:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return v1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already resumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    sget-object v0, Li/a/k;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method public final n()Z
    .locals 3

    .line 1
    :cond_0
    iget v0, p0, Li/a/k;->_decision:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    sget-object v0, Li/a/k;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Li/a/k;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/a/k;->g:Lh/c/b;

    invoke-static {v1}, Li/a/L;->a(Lh/c/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Li/a/k;->i()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Li/a/L;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
