.class final Lio/reactivex/internal/operators/flowable/az$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/az;
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
        "Lorg/b/d;",
        ">;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/o<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final a:J

.field final b:Lio/reactivex/internal/operators/flowable/az$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/az$b<",
            "TT;TU;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:I

.field volatile e:Z

.field volatile f:Lio/reactivex/internal/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/j<",
            "TU;>;"
        }
    .end annotation
.end field

.field g:J

.field h:I


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/az$b;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/az$b<",
            "TT;TU;>;J)V"
        }
    .end annotation

    .line 627
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 628
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/az$a;->a:J

    .line 629
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/az$a;->b:Lio/reactivex/internal/operators/flowable/az$b;

    .line 630
    iget p1, p1, Lio/reactivex/internal/operators/flowable/az$b;->e:I

    iput p1, p0, Lio/reactivex/internal/operators/flowable/az$a;->d:I

    .line 631
    iget p1, p0, Lio/reactivex/internal/operators/flowable/az$a;->d:I

    shr-int/lit8 p1, p1, 0x2

    iput p1, p0, Lio/reactivex/internal/operators/flowable/az$a;->c:I

    return-void
.end method


# virtual methods
.method final a(J)V
    .locals 3

    .line 682
    iget v0, p0, Lio/reactivex/internal/operators/flowable/az$a;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 683
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/az$a;->g:J

    add-long/2addr v0, p1

    .line 684
    iget p1, p0, Lio/reactivex/internal/operators/flowable/az$a;->c:I

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const-wide/16 p1, 0x0

    .line 685
    iput-wide p1, p0, Lio/reactivex/internal/operators/flowable/az$a;->g:J

    .line 686
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/az$a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/b/d;

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    .line 688
    :cond_0
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/az$a;->g:J

    :cond_1
    return-void
.end method

.method public final dispose()V
    .locals 0

    .line 695
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .line 700
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/az$a;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 677
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/az$a;->e:Z

    .line 678
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/az$a;->b:Lio/reactivex/internal/operators/flowable/az$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/az$b;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 671
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/az$a;->lazySet(Ljava/lang/Object;)V

    .line 672
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/az$a;->b:Lio/reactivex/internal/operators/flowable/az$b;

    .line 2598
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/az$b;->h:Lio/reactivex/internal/util/b;

    invoke-virtual {v1, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    .line 2599
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/az$a;->e:Z

    .line 2600
    iget-boolean p1, v0, Lio/reactivex/internal/operators/flowable/az$b;->c:Z

    if-nez p1, :cond_0

    .line 2601
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/az$b;->n:Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 2602
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/az$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/az$b;->l:[Lio/reactivex/internal/operators/flowable/az$a;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/internal/operators/flowable/az$a;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 2603
    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/az$a;->dispose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2606
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/az$b;->a()V

    return-void

    .line 2608
    :cond_1
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 662
    iget v0, p0, Lio/reactivex/internal/operators/flowable/az$a;->h:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    .line 663
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/az$a;->b:Lio/reactivex/internal/operators/flowable/az$b;

    .line 1278
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/az$b;->get()I

    move-result v1

    const-string v2, "Inner queue full?!"

    if-nez v1, :cond_5

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lio/reactivex/internal/operators/flowable/az$b;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1279
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/az$b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 1280
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/az$a;->f:Lio/reactivex/internal/b/j;

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    if-eqz v1, :cond_0

    .line 1281
    invoke-interface {v1}, Lio/reactivex/internal/b/j;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1282
    :cond_0
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/az$b;->a:Lorg/b/c;

    invoke-interface {v1, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide v1, 0x7fffffffffffffffL

    cmp-long p1, v3, v1

    if-eqz p1, :cond_1

    .line 1284
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/az$b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    :cond_1
    const-wide/16 v1, 0x1

    .line 1286
    invoke-virtual {p0, v1, v2}, Lio/reactivex/internal/operators/flowable/az$a;->a(J)V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 2269
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/az$a;->f:Lio/reactivex/internal/b/j;

    if-nez v1, :cond_3

    .line 2271
    new-instance v1, Lio/reactivex/internal/d/b;

    iget v3, v0, Lio/reactivex/internal/operators/flowable/az$b;->e:I

    invoke-direct {v1, v3}, Lio/reactivex/internal/d/b;-><init>(I)V

    .line 2272
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/az$a;->f:Lio/reactivex/internal/b/j;

    .line 1291
    :cond_3
    invoke-interface {v1, p1}, Lio/reactivex/internal/b/j;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1292
    new-instance p1, Lio/reactivex/c/c;

    invoke-direct {p1, v2}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/az$b;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 1296
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/az$b;->decrementAndGet()I

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    .line 1300
    :cond_5
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/az$a;->f:Lio/reactivex/internal/b/j;

    if-nez v1, :cond_6

    .line 1302
    new-instance v1, Lio/reactivex/internal/d/b;

    iget v3, v0, Lio/reactivex/internal/operators/flowable/az$b;->e:I

    invoke-direct {v1, v3}, Lio/reactivex/internal/d/b;-><init>(I)V

    .line 1303
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/az$a;->f:Lio/reactivex/internal/b/j;

    .line 1305
    :cond_6
    invoke-interface {v1, p1}, Lio/reactivex/internal/b/j;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1306
    new-instance p1, Lio/reactivex/c/c;

    invoke-direct {p1, v2}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/az$b;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 1309
    :cond_7
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/az$b;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_8

    .line 1313
    :goto_1
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/az$b;->b()V

    :cond_8
    return-void

    .line 665
    :cond_9
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/az$a;->b:Lio/reactivex/internal/operators/flowable/az$b;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/az$b;->a()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 3

    .line 636
    invoke-static {p0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 638
    instance-of v0, p1, Lio/reactivex/internal/b/g;

    if-eqz v0, :cond_1

    .line 640
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/b/g;

    const/4 v1, 0x7

    .line 641
    invoke-interface {v0, v1}, Lio/reactivex/internal/b/g;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 643
    iput v1, p0, Lio/reactivex/internal/operators/flowable/az$a;->h:I

    .line 644
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/az$a;->f:Lio/reactivex/internal/b/j;

    .line 645
    iput-boolean v2, p0, Lio/reactivex/internal/operators/flowable/az$a;->e:Z

    .line 646
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/az$a;->b:Lio/reactivex/internal/operators/flowable/az$b;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/az$b;->a()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 650
    iput v1, p0, Lio/reactivex/internal/operators/flowable/az$a;->h:I

    .line 651
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/az$a;->f:Lio/reactivex/internal/b/j;

    .line 656
    :cond_1
    iget v0, p0, Lio/reactivex/internal/operators/flowable/az$a;->d:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_2
    return-void
.end method
