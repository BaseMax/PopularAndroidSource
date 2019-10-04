.class final Lio/reactivex/internal/operators/c/ea$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/internal/operators/c/ea$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/internal/operators/c/ea$d;"
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

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/ah$c;

.field final e:Lio/reactivex/internal/disposables/f;

.field final f:Ljava/util/concurrent/atomic/AtomicLong;

.field final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/b/c;",
            ">;"
        }
    .end annotation
.end field

.field h:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/ag;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah$c;Lio/reactivex/ae;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah$c;",
            "Lio/reactivex/ae<",
            "+TT;>;)V"
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 192
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ea$b;->a:Lio/reactivex/ag;

    .line 193
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/ea$b;->b:J

    .line 194
    iput-object p4, p0, Lio/reactivex/internal/operators/c/ea$b;->c:Ljava/util/concurrent/TimeUnit;

    .line 195
    iput-object p5, p0, Lio/reactivex/internal/operators/c/ea$b;->d:Lio/reactivex/ah$c;

    .line 196
    iput-object p6, p0, Lio/reactivex/internal/operators/c/ea$b;->h:Lio/reactivex/ae;

    .line 197
    new-instance p1, Lio/reactivex/internal/disposables/f;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/f;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/ea$b;->e:Lio/reactivex/internal/disposables/f;

    .line 198
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/ea$b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 199
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/ea$b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method final a(J)V
    .locals 4

    .line 222
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ea$b;->e:Lio/reactivex/internal/disposables/f;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/ea$b;->d:Lio/reactivex/ah$c;

    new-instance v2, Lio/reactivex/internal/operators/c/ea$e;

    invoke-direct {v2, p1, p2, p0}, Lio/reactivex/internal/operators/c/ea$e;-><init>(JLio/reactivex/internal/operators/c/ea$d;)V

    iget-wide p1, p0, Lio/reactivex/internal/operators/c/ea$b;->b:J

    iget-object v3, p0, Lio/reactivex/internal/operators/c/ea$b;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, p1, p2, v3}, Lio/reactivex/ah$c;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 265
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ea$b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 266
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 267
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ea$b;->d:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 272
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ea$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/b/c;)Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 5

    .line 240
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ea$b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ea$b;->e:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/f;->dispose()V

    .line 243
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ea$b;->a:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    .line 245
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ea$b;->d:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 227
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ea$b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ea$b;->e:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/f;->dispose()V

    .line 230
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ea$b;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    .line 232
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ea$b;->d:Lio/reactivex/ah$c;

    invoke-virtual {p1}, Lio/reactivex/ah$c;->dispose()V

    return-void

    .line 234
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ea$b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 210
    iget-object v2, p0, Lio/reactivex/internal/operators/c/ea$b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    invoke-virtual {v2, v0, v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ea$b;->e:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/f;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 216
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ea$b;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    .line 218
    invoke-virtual {p0, v3, v4}, Lio/reactivex/internal/operators/c/ea$b;->a(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ea$b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method

.method public final onTimeout(J)V
    .locals 3

    .line 251
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ea$b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 252
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ea$b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 254
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ea$b;->h:Lio/reactivex/ae;

    const/4 p2, 0x0

    .line 255
    iput-object p2, p0, Lio/reactivex/internal/operators/c/ea$b;->h:Lio/reactivex/ae;

    .line 257
    new-instance p2, Lio/reactivex/internal/operators/c/ea$a;

    iget-object v0, p0, Lio/reactivex/internal/operators/c/ea$b;->a:Lio/reactivex/ag;

    invoke-direct {p2, v0, p0}, Lio/reactivex/internal/operators/c/ea$a;-><init>(Lio/reactivex/ag;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {p1, p2}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    .line 259
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ea$b;->d:Lio/reactivex/ah$c;

    invoke-virtual {p1}, Lio/reactivex/ah$c;->dispose()V

    :cond_0
    return-void
.end method
