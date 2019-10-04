.class public final Lio/reactivex/internal/operators/flowable/cr;
.super Lio/reactivex/d/a;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/disposables/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/cr$a;,
        Lio/reactivex/internal/operators/flowable/cr$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/d/a<",
        "TT;>;",
        "Lio/reactivex/internal/disposables/e;"
    }
.end annotation


# instance fields
.field final b:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/cr$b<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/b/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/b<",
            "TT;>;I)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lio/reactivex/d/a;-><init>()V

    .line 54
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cr;->b:Lorg/b/b;

    .line 55
    iput p2, p0, Lio/reactivex/internal/operators/flowable/cr;->c:I

    .line 56
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cr;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
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

    .line 77
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cr;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/cr$b;

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/cr$b;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    :cond_1
    new-instance v1, Lio/reactivex/internal/operators/flowable/cr$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/cr;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iget v3, p0, Lio/reactivex/internal/operators/flowable/cr;->c:I

    invoke-direct {v1, v2, v3}, Lio/reactivex/internal/operators/flowable/cr$b;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 81
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/cr;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 87
    :cond_2
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/cr$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/cr$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 92
    :goto_0
    :try_start_0
    invoke-interface {p1, v0}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    .line 99
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/cr;->b:Lorg/b/b;

    invoke-interface {p1, v0}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 94
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 95
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

    .line 68
    iget v0, p0, Lio/reactivex/internal/operators/flowable/cr;->c:I

    return v0
.end method

.method public final resetIf(Lio/reactivex/b/c;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cr;->d:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Lio/reactivex/internal/operators/flowable/cr$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
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

    .line 61
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cr;->b:Lorg/b/b;

    return-object v0
.end method

.method public final subscribeActual(Lorg/b/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 108
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cr;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/cr$b;

    if-nez v0, :cond_1

    .line 112
    new-instance v1, Lio/reactivex/internal/operators/flowable/cr$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/cr;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iget v3, p0, Lio/reactivex/internal/operators/flowable/cr;->c:I

    invoke-direct {v1, v2, v3}, Lio/reactivex/internal/operators/flowable/cr$b;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 113
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/cr;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 122
    :cond_1
    new-instance v1, Lio/reactivex/internal/operators/flowable/cr$a;

    invoke-direct {v1, p1, v0}, Lio/reactivex/internal/operators/flowable/cr$a;-><init>(Lorg/b/c;Lio/reactivex/internal/operators/flowable/cr$b;)V

    .line 123
    invoke-interface {p1, v1}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 1380
    :cond_2
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/cr$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/reactivex/internal/operators/flowable/cr$a;

    .line 1383
    sget-object v3, Lio/reactivex/internal/operators/flowable/cr$b;->l:[Lio/reactivex/internal/operators/flowable/cr$a;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3

    goto :goto_0

    .line 1387
    :cond_3
    array-length v3, v2

    add-int/lit8 v5, v3, 0x1

    .line 1389
    new-array v5, v5, [Lio/reactivex/internal/operators/flowable/cr$a;

    .line 1390
    invoke-static {v2, v4, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1391
    aput-object v1, v5, v3

    .line 1393
    iget-object v3, v0, Lio/reactivex/internal/operators/flowable/cr$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    :goto_0
    if-eqz v4, :cond_5

    .line 126
    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/cr$a;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 127
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/cr$b;->a(Lio/reactivex/internal/operators/flowable/cr$a;)V

    return-void

    .line 129
    :cond_4
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/cr$b;->a()V

    return-void

    .line 134
    :cond_5
    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/cr$b;->i:Ljava/lang/Throwable;

    if-eqz v0, :cond_6

    .line 136
    invoke-interface {p1, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 138
    :cond_6
    invoke-interface {p1}, Lorg/b/c;->onComplete()V

    return-void
.end method
