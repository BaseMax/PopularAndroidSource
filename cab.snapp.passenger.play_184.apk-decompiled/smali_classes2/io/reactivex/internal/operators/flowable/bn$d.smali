.class final Lio/reactivex/internal/operators/flowable/bn$d;
.super Lio/reactivex/internal/subscriptions/a;
.source "SourceFile"

# interfaces
.implements Lorg/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/a<",
        "TT;>;",
        "Lorg/b/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/d/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/operators/flowable/bn$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/bn$b<",
            "*TK;TT;>;"
        }
    .end annotation
.end field

.field final d:Z

.field final e:Ljava/util/concurrent/atomic/AtomicLong;

.field volatile f:Z

.field g:Ljava/lang/Throwable;

.field final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/b/c<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field k:Z

.field l:I


# direct methods
.method constructor <init>(ILio/reactivex/internal/operators/flowable/bn$b;Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/reactivex/internal/operators/flowable/bn$b<",
            "*TK;TT;>;TK;Z)V"
        }
    .end annotation

    .line 503
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/a;-><init>()V

    .line 488
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$d;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 493
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 495
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$d;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 497
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$d;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 504
    new-instance v0, Lio/reactivex/internal/d/c;

    invoke-direct {v0, p1}, Lio/reactivex/internal/d/c;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$d;->b:Lio/reactivex/internal/d/c;

    .line 505
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/bn$d;->c:Lio/reactivex/internal/operators/flowable/bn$b;

    .line 506
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/bn$d;->a:Ljava/lang/Object;

    .line 507
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/bn$d;->d:Z

    return-void
.end method

.method private a()V
    .locals 1

    .line 553
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/bn$d;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 556
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bn$d;->k:Z

    if-eqz v0, :cond_1

    .line 557
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bn$d;->b()V

    return-void

    .line 559
    :cond_1
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bn$d;->c()V

    return-void
.end method

.method private a(ZZLorg/b/c;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lorg/b/c<",
            "-TT;>;Z)Z"
        }
    .end annotation

    .line 663
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 664
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bn$d;->b:Lio/reactivex/internal/d/c;

    invoke-virtual {p1}, Lio/reactivex/internal/d/c;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    if-eqz p4, :cond_2

    if-eqz p2, :cond_4

    .line 671
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bn$d;->g:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 673
    invoke-interface {p3, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 675
    :cond_1
    invoke-interface {p3}, Lorg/b/c;->onComplete()V

    :goto_0
    return v1

    .line 680
    :cond_2
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bn$d;->g:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    .line 682
    iget-object p2, p0, Lio/reactivex/internal/operators/flowable/bn$d;->b:Lio/reactivex/internal/d/c;

    invoke-virtual {p2}, Lio/reactivex/internal/d/c;->clear()V

    .line 683
    invoke-interface {p3, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    .line 687
    invoke-interface {p3}, Lorg/b/c;->onComplete()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private b()V
    .locals 5

    .line 566
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$d;->b:Lio/reactivex/internal/d/c;

    .line 567
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bn$d;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/b/c;

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 571
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/bn$d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 572
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    return-void

    .line 576
    :cond_1
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/bn$d;->f:Z

    if-eqz v3, :cond_2

    .line 578
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/bn$d;->d:Z

    if-nez v4, :cond_2

    .line 579
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/bn$d;->g:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 581
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    .line 582
    invoke-interface {v1, v4}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    const/4 v4, 0x0

    .line 587
    invoke-interface {v1, v4}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    if-eqz v3, :cond_4

    .line 590
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$d;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 592
    invoke-interface {v1, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 594
    :cond_3
    invoke-interface {v1}, Lorg/b/c;->onComplete()V

    return-void

    :cond_4
    neg-int v2, v2

    .line 600
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/flowable/bn$d;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_5

    return-void

    :cond_5
    if-nez v1, :cond_0

    .line 606
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bn$d;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/b/c;

    goto :goto_0
.end method

.method private c()V
    .locals 14

    .line 614
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$d;->b:Lio/reactivex/internal/d/c;

    .line 615
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/bn$d;->d:Z

    .line 616
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/bn$d;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/b/c;

    const/4 v3, 0x1

    const/4 v4, 0x1

    :cond_0
    :goto_0
    if-eqz v2, :cond_6

    .line 619
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/bn$d;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    move-wide v9, v7

    :goto_1
    cmp-long v11, v9, v5

    if-eqz v11, :cond_3

    .line 623
    iget-boolean v11, p0, Lio/reactivex/internal/operators/flowable/bn$d;->f:Z

    .line 624
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_1

    const/4 v13, 0x1

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    .line 627
    :goto_2
    invoke-direct {p0, v11, v13, v2, v1}, Lio/reactivex/internal/operators/flowable/bn$d;->a(ZZLorg/b/c;Z)Z

    move-result v11

    if-eqz v11, :cond_2

    return-void

    :cond_2
    if-nez v13, :cond_3

    .line 635
    invoke-interface {v2, v12}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    goto :goto_1

    :cond_3
    cmp-long v11, v9, v5

    if-nez v11, :cond_4

    .line 640
    iget-boolean v11, p0, Lio/reactivex/internal/operators/flowable/bn$d;->f:Z

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->isEmpty()Z

    move-result v12

    invoke-direct {p0, v11, v12, v2, v1}, Lio/reactivex/internal/operators/flowable/bn$d;->a(ZZLorg/b/c;Z)Z

    move-result v11

    if-eqz v11, :cond_4

    return-void

    :cond_4
    cmp-long v11, v9, v7

    if-eqz v11, :cond_6

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v11, v5, v7

    if-eqz v11, :cond_5

    .line 646
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/bn$d;->e:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v6, v9

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 648
    :cond_5
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/bn$d;->c:Lio/reactivex/internal/operators/flowable/bn$b;

    iget-object v5, v5, Lio/reactivex/internal/operators/flowable/bn$b;->j:Lorg/b/d;

    invoke-interface {v5, v9, v10}, Lorg/b/d;->request(J)V

    :cond_6
    neg-int v4, v4

    .line 652
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/flowable/bn$d;->addAndGet(I)I

    move-result v4

    if-eqz v4, :cond_7

    if-nez v2, :cond_0

    .line 657
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/bn$d;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/b/c;

    goto :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 520
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$d;->c:Lio/reactivex/internal/operators/flowable/bn$b;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bn$d;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/bn$b;->cancel(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 728
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$d;->b:Lio/reactivex/internal/d/c;

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    .line 723
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$d;->b:Lio/reactivex/internal/d/c;

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 548
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bn$d;->f:Z

    .line 549
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bn$d;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bn$d;->g:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 543
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/bn$d;->f:Z

    .line 544
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bn$d;->a()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 537
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$d;->b:Lio/reactivex/internal/d/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;)Z

    .line 538
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bn$d;->a()V

    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 708
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$d;->b:Lio/reactivex/internal/d/c;

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 710
    iget v1, p0, Lio/reactivex/internal/operators/flowable/bn$d;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/reactivex/internal/operators/flowable/bn$d;->l:I

    return-object v0

    .line 713
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/bn$d;->l:I

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 715
    iput v1, p0, Lio/reactivex/internal/operators/flowable/bn$d;->l:I

    .line 716
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bn$d;->c:Lio/reactivex/internal/operators/flowable/bn$b;

    iget-object v1, v1, Lio/reactivex/internal/operators/flowable/bn$b;->j:Lorg/b/d;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lorg/b/d;->request(J)V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final request(J)V
    .locals 1

    .line 512
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$d;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 514
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bn$d;->a()V

    :cond_0
    return-void
.end method

.method public final requestFusion(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 699
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/bn$d;->k:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final subscribe(Lorg/b/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$d;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    invoke-interface {p1, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 529
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$d;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 530
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bn$d;->a()V

    return-void

    .line 532
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one Subscriber allowed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/b/c;)V

    return-void
.end method
