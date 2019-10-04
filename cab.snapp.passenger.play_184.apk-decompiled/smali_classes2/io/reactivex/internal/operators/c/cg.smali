.class public final Lio/reactivex/internal/operators/c/cg;
.super Lio/reactivex/f/a;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/operators/c/ci;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/cg$c;,
        Lio/reactivex/internal/operators/c/cg$a;,
        Lio/reactivex/internal/operators/c/cg$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/f/a<",
        "TT;>;",
        "Lio/reactivex/internal/operators/c/ci<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/c/cg$b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/reactivex/ae;Lio/reactivex/ae;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;",
            "Lio/reactivex/ae<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/c/cg$b<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lio/reactivex/f/a;-><init>()V

    .line 57
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cg;->c:Lio/reactivex/ae;

    .line 58
    iput-object p2, p0, Lio/reactivex/internal/operators/c/cg;->a:Lio/reactivex/ae;

    .line 59
    iput-object p3, p0, Lio/reactivex/internal/operators/c/cg;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static create(Lio/reactivex/ae;)Lio/reactivex/f/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TT;>;)",
            "Lio/reactivex/f/a<",
            "TT;>;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 51
    new-instance v1, Lio/reactivex/internal/operators/c/cg$c;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/c/cg$c;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 52
    new-instance v2, Lio/reactivex/internal/operators/c/cg;

    invoke-direct {v2, v1, p0, v0}, Lio/reactivex/internal/operators/c/cg;-><init>(Lio/reactivex/ae;Lio/reactivex/ae;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {v2}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/f/a;)Lio/reactivex/f/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final connect(Lio/reactivex/e/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/b/c;",
            ">;)V"
        }
    .end annotation

    .line 84
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cg;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/c/cg$b;

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/cg$b;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    :cond_1
    new-instance v1, Lio/reactivex/internal/operators/c/cg$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/cg;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v2}, Lio/reactivex/internal/operators/c/cg$b;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 90
    iget-object v2, p0, Lio/reactivex/internal/operators/c/cg;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 99
    :cond_2
    iget-object v1, v0, Lio/reactivex/internal/operators/c/cg$b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lio/reactivex/internal/operators/c/cg$b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 116
    :goto_0
    :try_start_0
    invoke-interface {p1, v0}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    .line 122
    iget-object p1, p0, Lio/reactivex/internal/operators/c/cg;->a:Lio/reactivex/ae;

    invoke-interface {p1, v0}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 118
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 119
    invoke-static {p1}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final publishSource()Lio/reactivex/ae;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ae<",
            "TT;>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cg;->a:Lio/reactivex/ae;

    return-object v0
.end method

.method public final source()Lio/reactivex/ae;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ae<",
            "TT;>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cg;->a:Lio/reactivex/ae;

    return-object v0
.end method

.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cg;->c:Lio/reactivex/ae;

    invoke-interface {v0, p1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
