.class final Lio/reactivex/internal/operators/c/cw$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/cw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/cw$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final c:Lio/reactivex/internal/util/b;

.field final d:Lio/reactivex/j/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/d<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lio/reactivex/internal/operators/c/cw$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/cw$a<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/b/c;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile h:Z


# direct methods
.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/j/d;Lio/reactivex/ae;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;",
            "Lio/reactivex/j/d<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/ae<",
            "TT;>;)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 84
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cw$a;->a:Lio/reactivex/ag;

    .line 85
    iput-object p2, p0, Lio/reactivex/internal/operators/c/cw$a;->d:Lio/reactivex/j/d;

    .line 86
    iput-object p3, p0, Lio/reactivex/internal/operators/c/cw$a;->g:Lio/reactivex/ae;

    .line 87
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/cw$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 88
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/cw$a;->c:Lio/reactivex/internal/util/b;

    .line 89
    new-instance p1, Lio/reactivex/internal/operators/c/cw$a$a;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/c/cw$a$a;-><init>(Lio/reactivex/internal/operators/c/cw$a;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/cw$a;->e:Lio/reactivex/internal/operators/c/cw$a$a;

    .line 90
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/cw$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 142
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cw$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_3

    .line 145
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/cw$a;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 149
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/cw$a;->h:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/cw$a;->h:Z

    .line 151
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cw$a;->g:Lio/reactivex/ae;

    invoke-interface {v0, p0}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    .line 153
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cw$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 123
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cw$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cw$a;->e:Lio/reactivex/internal/operators/c/cw$a$a;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cw$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/b/c;)Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 112
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cw$a;->e:Lio/reactivex/internal/operators/c/cw$a$a;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 113
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cw$a;->a:Lio/reactivex/ag;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/cw$a;->c:Lio/reactivex/internal/util/b;

    invoke-static {v0, p0, v1}, Lio/reactivex/internal/util/i;->onComplete(Lio/reactivex/ag;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/b;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cw$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/cw$a;->h:Z

    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cw$a;->d:Lio/reactivex/j/d;

    invoke-virtual {v0, p1}, Lio/reactivex/j/d;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cw$a;->a:Lio/reactivex/ag;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/cw$a;->c:Lio/reactivex/internal/util/b;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/i;->onNext(Lio/reactivex/ag;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/b;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cw$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
