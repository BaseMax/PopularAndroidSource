.class final Lio/reactivex/internal/operators/c/aw$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/ag<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final a:J

.field final b:Lio/reactivex/internal/operators/c/aw$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/aw$b<",
            "TT;TU;>;"
        }
    .end annotation
.end field

.field volatile c:Z

.field volatile d:Lio/reactivex/internal/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/j<",
            "TU;>;"
        }
    .end annotation
.end field

.field e:I


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/aw$b;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/aw$b<",
            "TT;TU;>;J)V"
        }
    .end annotation

    .line 531
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 532
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/aw$a;->a:J

    .line 533
    iput-object p1, p0, Lio/reactivex/internal/operators/c/aw$a;->b:Lio/reactivex/internal/operators/c/aw$b;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 588
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 583
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/aw$a;->c:Z

    .line 584
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aw$a;->b:Lio/reactivex/internal/operators/c/aw$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/aw$b;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 570
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aw$a;->b:Lio/reactivex/internal/operators/c/aw$b;

    iget-object v0, v0, Lio/reactivex/internal/operators/c/aw$b;->h:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    iget-object p1, p0, Lio/reactivex/internal/operators/c/aw$a;->b:Lio/reactivex/internal/operators/c/aw$b;

    iget-boolean p1, p1, Lio/reactivex/internal/operators/c/aw$b;->c:Z

    if-nez p1, :cond_0

    .line 572
    iget-object p1, p0, Lio/reactivex/internal/operators/c/aw$a;->b:Lio/reactivex/internal/operators/c/aw$b;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/aw$b;->c()Z

    :cond_0
    const/4 p1, 0x1

    .line 574
    iput-boolean p1, p0, Lio/reactivex/internal/operators/c/aw$a;->c:Z

    .line 575
    iget-object p1, p0, Lio/reactivex/internal/operators/c/aw$a;->b:Lio/reactivex/internal/operators/c/aw$b;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/aw$b;->a()V

    return-void

    .line 577
    :cond_1
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 561
    iget v0, p0, Lio/reactivex/internal/operators/c/aw$a;->e:I

    if-nez v0, :cond_4

    .line 562
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aw$a;->b:Lio/reactivex/internal/operators/c/aw$b;

    .line 1264
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/aw$b;->get()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/reactivex/internal/operators/c/aw$b;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1265
    iget-object v1, v0, Lio/reactivex/internal/operators/c/aw$b;->a:Lio/reactivex/ag;

    invoke-interface {v1, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    .line 1266
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/aw$b;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 1270
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/c/aw$a;->d:Lio/reactivex/internal/b/j;

    if-nez v1, :cond_1

    .line 1272
    new-instance v1, Lio/reactivex/internal/d/c;

    iget v2, v0, Lio/reactivex/internal/operators/c/aw$b;->e:I

    invoke-direct {v1, v2}, Lio/reactivex/internal/d/c;-><init>(I)V

    .line 1273
    iput-object v1, p0, Lio/reactivex/internal/operators/c/aw$a;->d:Lio/reactivex/internal/b/j;

    .line 1275
    :cond_1
    invoke-interface {v1, p1}, Lio/reactivex/internal/b/j;->offer(Ljava/lang/Object;)Z

    .line 1276
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/aw$b;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_3

    .line 1280
    :cond_2
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/aw$b;->b()V

    :cond_3
    return-void

    .line 564
    :cond_4
    iget-object p1, p0, Lio/reactivex/internal/operators/c/aw$a;->b:Lio/reactivex/internal/operators/c/aw$b;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/aw$b;->a()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 2

    .line 538
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    instance-of v0, p1, Lio/reactivex/internal/b/e;

    if-eqz v0, :cond_1

    .line 541
    check-cast p1, Lio/reactivex/internal/b/e;

    const/4 v0, 0x7

    .line 543
    invoke-interface {p1, v0}, Lio/reactivex/internal/b/e;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 545
    iput v0, p0, Lio/reactivex/internal/operators/c/aw$a;->e:I

    .line 546
    iput-object p1, p0, Lio/reactivex/internal/operators/c/aw$a;->d:Lio/reactivex/internal/b/j;

    .line 547
    iput-boolean v1, p0, Lio/reactivex/internal/operators/c/aw$a;->c:Z

    .line 548
    iget-object p1, p0, Lio/reactivex/internal/operators/c/aw$a;->b:Lio/reactivex/internal/operators/c/aw$b;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/aw$b;->a()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 552
    iput v0, p0, Lio/reactivex/internal/operators/c/aw$a;->e:I

    .line 553
    iput-object p1, p0, Lio/reactivex/internal/operators/c/aw$a;->d:Lio/reactivex/internal/b/j;

    :cond_1
    return-void
.end method
