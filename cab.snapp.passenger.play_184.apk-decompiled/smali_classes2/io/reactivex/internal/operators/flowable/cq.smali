.class public final Lio/reactivex/internal/operators/flowable/cq;
.super Lio/reactivex/d/a;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/operators/flowable/cs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/cq$a;,
        Lio/reactivex/internal/operators/flowable/cq$b;,
        Lio/reactivex/internal/operators/flowable/cq$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/d/a<",
        "TT;>;",
        "Lio/reactivex/internal/operators/flowable/cs<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/cq$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/b/b;Lio/reactivex/j;Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/b<",
            "TT;>;",
            "Lio/reactivex/j<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/cq$c<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lio/reactivex/d/a;-><init>()V

    .line 70
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cq;->e:Lorg/b/b;

    .line 71
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/cq;->b:Lio/reactivex/j;

    .line 72
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/cq;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 73
    iput p4, p0, Lio/reactivex/internal/operators/flowable/cq;->d:I

    return-void
.end method

.method public static create(Lio/reactivex/j;I)Lio/reactivex/d/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/j<",
            "TT;>;I)",
            "Lio/reactivex/d/a<",
            "TT;>;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 64
    new-instance v1, Lio/reactivex/internal/operators/flowable/cq$a;

    invoke-direct {v1, v0, p1}, Lio/reactivex/internal/operators/flowable/cq$a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 65
    new-instance v2, Lio/reactivex/internal/operators/flowable/cq;

    invoke-direct {v2, v1, p0, v0, p1}, Lio/reactivex/internal/operators/flowable/cq;-><init>(Lorg/b/b;Lio/reactivex/j;Ljava/util/concurrent/atomic/AtomicReference;I)V

    invoke-static {v2}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/d/a;)Lio/reactivex/d/a;

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

    .line 106
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cq;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/cq$c;

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/cq$c;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    :cond_1
    new-instance v1, Lio/reactivex/internal/operators/flowable/cq$c;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/cq;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iget v3, p0, Lio/reactivex/internal/operators/flowable/cq;->d:I

    invoke-direct {v1, v2, v3}, Lio/reactivex/internal/operators/flowable/cq$c;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 112
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/cq;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 121
    :cond_2
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/cq$c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/cq$c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 138
    :goto_0
    :try_start_0
    invoke-interface {p1, v0}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    .line 144
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/cq;->b:Lio/reactivex/j;

    invoke-virtual {p1, v0}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 140
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 141
    invoke-static {p1}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final publishBufferSize()I
    .locals 1

    .line 86
    iget v0, p0, Lio/reactivex/internal/operators/flowable/cq;->d:I

    return v0
.end method

.method public final publishSource()Lorg/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/b/b<",
            "TT;>;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cq;->b:Lio/reactivex/j;

    return-object v0
.end method

.method public final source()Lorg/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/b/b<",
            "TT;>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cq;->b:Lio/reactivex/j;

    return-object v0
.end method

.method public final subscribeActual(Lorg/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cq;->e:Lorg/b/b;

    invoke-interface {v0, p1}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    return-void
.end method
