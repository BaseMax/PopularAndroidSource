.class final Lio/reactivex/internal/operators/flowable/fa$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/fa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/b/d;",
        ">;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/fa$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/fa$a<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:I

.field d:Lio/reactivex/internal/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field e:J

.field volatile f:Z

.field g:I


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/fa$a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/fa$a<",
            "TT;TR;>;I)V"
        }
    .end annotation

    .line 340
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 341
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/fa$b;->a:Lio/reactivex/internal/operators/flowable/fa$a;

    .line 342
    iput p2, p0, Lio/reactivex/internal/operators/flowable/fa$b;->b:I

    shr-int/lit8 p1, p2, 0x2

    sub-int/2addr p2, p1

    .line 343
    iput p2, p0, Lio/reactivex/internal/operators/flowable/fa$b;->c:I

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    .line 397
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 391
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/fa$b;->f:Z

    .line 392
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/fa$b;->a:Lio/reactivex/internal/operators/flowable/fa$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/fa$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 386
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/fa$b;->a:Lio/reactivex/internal/operators/flowable/fa$a;

    invoke-virtual {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/fa$a;->a(Lio/reactivex/internal/operators/flowable/fa$b;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 378
    iget v0, p0, Lio/reactivex/internal/operators/flowable/fa$b;->g:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 379
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/fa$b;->d:Lio/reactivex/internal/b/j;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/j;->offer(Ljava/lang/Object;)Z

    .line 381
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/fa$b;->a:Lio/reactivex/internal/operators/flowable/fa$a;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/fa$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 3

    .line 349
    invoke-static {p0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 350
    instance-of v0, p1, Lio/reactivex/internal/b/g;

    if-eqz v0, :cond_1

    .line 351
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/b/g;

    const/4 v1, 0x7

    .line 353
    invoke-interface {v0, v1}, Lio/reactivex/internal/b/g;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 356
    iput v1, p0, Lio/reactivex/internal/operators/flowable/fa$b;->g:I

    .line 357
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/fa$b;->d:Lio/reactivex/internal/b/j;

    .line 358
    iput-boolean v2, p0, Lio/reactivex/internal/operators/flowable/fa$b;->f:Z

    .line 359
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/fa$b;->a:Lio/reactivex/internal/operators/flowable/fa$a;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/fa$a;->a()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 363
    iput v1, p0, Lio/reactivex/internal/operators/flowable/fa$b;->g:I

    .line 364
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/fa$b;->d:Lio/reactivex/internal/b/j;

    .line 365
    iget v0, p0, Lio/reactivex/internal/operators/flowable/fa$b;->b:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    .line 370
    :cond_1
    new-instance v0, Lio/reactivex/internal/d/b;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/fa$b;->b:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/d/b;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/fa$b;->d:Lio/reactivex/internal/b/j;

    .line 372
    iget v0, p0, Lio/reactivex/internal/operators/flowable/fa$b;->b:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_2
    return-void
.end method

.method public final request(J)V
    .locals 3

    .line 402
    iget v0, p0, Lio/reactivex/internal/operators/flowable/fa$b;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 403
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/fa$b;->e:J

    add-long/2addr v0, p1

    .line 404
    iget p1, p0, Lio/reactivex/internal/operators/flowable/fa$b;->c:I

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const-wide/16 p1, 0x0

    .line 405
    iput-wide p1, p0, Lio/reactivex/internal/operators/flowable/fa$b;->e:J

    .line 406
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/fa$b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/b/d;

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    .line 408
    :cond_0
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/fa$b;->e:J

    :cond_1
    return-void
.end method
