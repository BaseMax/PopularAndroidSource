.class final Lio/reactivex/internal/operators/flowable/u$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/u;
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
        "Lorg/b/d;",
        ">;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/u$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/u$a<",
            "TT;*>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:I

.field final d:I

.field e:I


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/u$a;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/u$a<",
            "TT;*>;II)V"
        }
    .end annotation

    .line 507
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 508
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/u$b;->a:Lio/reactivex/internal/operators/flowable/u$a;

    .line 509
    iput p2, p0, Lio/reactivex/internal/operators/flowable/u$b;->b:I

    .line 510
    iput p3, p0, Lio/reactivex/internal/operators/flowable/u$b;->c:I

    shr-int/lit8 p1, p3, 0x2

    sub-int/2addr p3, p1

    .line 511
    iput p3, p0, Lio/reactivex/internal/operators/flowable/u$b;->d:I

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    .line 535
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final onComplete()V
    .locals 2

    .line 531
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/u$b;->a:Lio/reactivex/internal/operators/flowable/u$a;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/u$b;->b:I

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/u$a;->a(I)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 526
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/u$b;->a:Lio/reactivex/internal/operators/flowable/u$a;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/u$b;->b:I

    .line 1276
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/u$a;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, p1}, Lio/reactivex/internal/util/h;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1277
    iget-boolean p1, v0, Lio/reactivex/internal/operators/flowable/u$a;->f:Z

    if-nez p1, :cond_0

    .line 1278
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/u$a;->b()V

    const/4 p1, 0x1

    .line 1279
    iput-boolean p1, v0, Lio/reactivex/internal/operators/flowable/u$a;->l:Z

    .line 1280
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/u$a;->a()V

    return-void

    .line 1282
    :cond_0
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/u$a;->a(I)V

    return-void

    .line 1285
    :cond_1
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/u$b;->a:Lio/reactivex/internal/operators/flowable/u$a;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/u$b;->b:I

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/operators/flowable/u$a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 516
    iget v0, p0, Lio/reactivex/internal/operators/flowable/u$b;->c:I

    int-to-long v0, v0

    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;J)Z

    return-void
.end method

.method public final requestOne()V
    .locals 4

    .line 540
    iget v0, p0, Lio/reactivex/internal/operators/flowable/u$b;->e:I

    add-int/lit8 v0, v0, 0x1

    .line 541
    iget v1, p0, Lio/reactivex/internal/operators/flowable/u$b;->d:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    .line 542
    iput v1, p0, Lio/reactivex/internal/operators/flowable/u$b;->e:I

    .line 543
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/u$b;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/b/d;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lorg/b/d;->request(J)V

    return-void

    .line 545
    :cond_0
    iput v0, p0, Lio/reactivex/internal/operators/flowable/u$b;->e:I

    return-void
.end method
