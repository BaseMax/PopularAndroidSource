.class final Lio/reactivex/internal/operators/flowable/ea$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
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
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/ea$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/ea$b<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:I

.field volatile d:Lio/reactivex/internal/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/j<",
            "TR;>;"
        }
    .end annotation
.end field

.field volatile e:Z

.field f:I


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/ea$b;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/ea$b<",
            "TT;TR;>;JI)V"
        }
    .end annotation

    .line 348
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 349
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ea$a;->a:Lio/reactivex/internal/operators/flowable/ea$b;

    .line 350
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/ea$a;->b:J

    .line 351
    iput p4, p0, Lio/reactivex/internal/operators/flowable/ea$a;->c:I

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    .line 419
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final onComplete()V
    .locals 6

    .line 411
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ea$a;->a:Lio/reactivex/internal/operators/flowable/ea$b;

    .line 412
    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/ea$a;->b:J

    iget-wide v3, v0, Lio/reactivex/internal/operators/flowable/ea$b;->l:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 v1, 0x1

    .line 413
    iput-boolean v1, p0, Lio/reactivex/internal/operators/flowable/ea$a;->e:Z

    .line 414
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/ea$b;->a()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 6

    .line 397
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ea$a;->a:Lio/reactivex/internal/operators/flowable/ea$b;

    .line 398
    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/ea$a;->b:J

    iget-wide v3, v0, Lio/reactivex/internal/operators/flowable/ea$b;->l:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/ea$b;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v1, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    iget-boolean p1, v0, Lio/reactivex/internal/operators/flowable/ea$b;->d:Z

    if-nez p1, :cond_0

    .line 400
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/ea$b;->h:Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    :cond_0
    const/4 p1, 0x1

    .line 402
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/ea$a;->e:Z

    .line 403
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/ea$b;->a()V

    return-void

    .line 405
    :cond_1
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ea$a;->a:Lio/reactivex/internal/operators/flowable/ea$b;

    .line 386
    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/ea$a;->b:J

    iget-wide v3, v0, Lio/reactivex/internal/operators/flowable/ea$b;->l:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 387
    iget v1, p0, Lio/reactivex/internal/operators/flowable/ea$a;->f:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ea$a;->d:Lio/reactivex/internal/b/j;

    invoke-interface {v1, p1}, Lio/reactivex/internal/b/j;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 388
    new-instance p1, Lio/reactivex/c/c;

    const-string v0, "Queue full?!"

    invoke-direct {p1, v0}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ea$a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 391
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/ea$b;->a()V

    :cond_1
    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 3

    .line 356
    invoke-static {p0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    instance-of v0, p1, Lio/reactivex/internal/b/g;

    if-eqz v0, :cond_1

    .line 359
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/b/g;

    const/4 v1, 0x7

    .line 361
    invoke-interface {v0, v1}, Lio/reactivex/internal/b/g;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 363
    iput v1, p0, Lio/reactivex/internal/operators/flowable/ea$a;->f:I

    .line 364
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/ea$a;->d:Lio/reactivex/internal/b/j;

    .line 365
    iput-boolean v2, p0, Lio/reactivex/internal/operators/flowable/ea$a;->e:Z

    .line 366
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ea$a;->a:Lio/reactivex/internal/operators/flowable/ea$b;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/ea$b;->a()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 370
    iput v1, p0, Lio/reactivex/internal/operators/flowable/ea$a;->f:I

    .line 371
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/ea$a;->d:Lio/reactivex/internal/b/j;

    .line 372
    iget v0, p0, Lio/reactivex/internal/operators/flowable/ea$a;->c:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    .line 377
    :cond_1
    new-instance v0, Lio/reactivex/internal/d/b;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/ea$a;->c:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/d/b;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/ea$a;->d:Lio/reactivex/internal/b/j;

    .line 379
    iget v0, p0, Lio/reactivex/internal/operators/flowable/ea$a;->c:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_2
    return-void
.end method
