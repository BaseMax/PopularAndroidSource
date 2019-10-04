.class final Lio/reactivex/internal/operators/flowable/ci$b;
.super Lio/reactivex/internal/operators/flowable/ci$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ci;
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
        "Lio/reactivex/internal/operators/flowable/ci$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final n:Lio/reactivex/internal/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/a<",
            "-TT;>;"
        }
    .end annotation
.end field

.field o:J


# direct methods
.method constructor <init>(Lio/reactivex/internal/b/a;Lio/reactivex/ah$c;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/b/a<",
            "-TT;>;",
            "Lio/reactivex/ah$c;",
            "ZI)V"
        }
    .end annotation

    .line 501
    invoke-direct {p0, p2, p3, p4}, Lio/reactivex/internal/operators/flowable/ci$a;-><init>(Lio/reactivex/ah$c;ZI)V

    .line 502
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ci$b;->n:Lio/reactivex/internal/b/a;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 686
    :cond_0
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/ci$b;->h:Z

    if-eqz v2, :cond_1

    return-void

    .line 690
    :cond_1
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/ci$b;->i:Z

    .line 692
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/ci$b;->n:Lio/reactivex/internal/b/a;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lio/reactivex/internal/b/a;->onNext(Ljava/lang/Object;)V

    if-eqz v2, :cond_3

    .line 695
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ci$b;->h:Z

    .line 696
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ci$b;->j:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 698
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ci$b;->n:Lio/reactivex/internal/b/a;

    invoke-interface {v1, v0}, Lio/reactivex/internal/b/a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 700
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ci$b;->n:Lio/reactivex/internal/b/a;

    invoke-interface {v0}, Lio/reactivex/internal/b/a;->onComplete()V

    .line 702
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ci$b;->a:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    return-void

    :cond_3
    neg-int v1, v1

    .line 706
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/ci$b;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void
.end method

.method final b()V
    .locals 10

    .line 548
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ci$b;->n:Lio/reactivex/internal/b/a;

    .line 549
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ci$b;->g:Lio/reactivex/internal/b/j;

    .line 551
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/ci$b;->l:J

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 555
    :cond_0
    :goto_0
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/ci$b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    :cond_1
    :goto_1
    cmp-long v8, v2, v6

    if-eqz v8, :cond_4

    .line 560
    :try_start_0
    invoke-interface {v1}, Lio/reactivex/internal/b/j;->poll()Ljava/lang/Object;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    iget-boolean v9, p0, Lio/reactivex/internal/operators/flowable/ci$b;->h:Z

    if-eqz v9, :cond_2

    return-void

    :cond_2
    if-nez v8, :cond_3

    .line 574
    iput-boolean v4, p0, Lio/reactivex/internal/operators/flowable/ci$b;->h:Z

    .line 575
    invoke-interface {v0}, Lio/reactivex/internal/b/a;->onComplete()V

    .line 576
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ci$b;->a:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    return-void

    .line 580
    :cond_3
    invoke-interface {v0, v8}, Lio/reactivex/internal/b/a;->tryOnNext(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 562
    invoke-static {v1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 563
    iput-boolean v4, p0, Lio/reactivex/internal/operators/flowable/ci$b;->h:Z

    .line 564
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ci$b;->f:Lorg/b/d;

    invoke-interface {v2}, Lorg/b/d;->cancel()V

    .line 565
    invoke-interface {v0, v1}, Lio/reactivex/internal/b/a;->onError(Ljava/lang/Throwable;)V

    .line 566
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ci$b;->a:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    return-void

    .line 585
    :cond_4
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/ci$b;->h:Z

    if-eqz v6, :cond_5

    return-void

    .line 589
    :cond_5
    invoke-interface {v1}, Lio/reactivex/internal/b/j;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 590
    iput-boolean v4, p0, Lio/reactivex/internal/operators/flowable/ci$b;->h:Z

    .line 591
    invoke-interface {v0}, Lio/reactivex/internal/b/a;->onComplete()V

    .line 592
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ci$b;->a:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    return-void

    .line 596
    :cond_6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ci$b;->get()I

    move-result v6

    if-ne v5, v6, :cond_7

    .line 598
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/ci$b;->l:J

    neg-int v5, v5

    .line 599
    invoke-virtual {p0, v5}, Lio/reactivex/internal/operators/flowable/ci$b;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_7
    move v5, v6

    goto :goto_0
.end method

.method final c()V
    .locals 13

    .line 613
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ci$b;->n:Lio/reactivex/internal/b/a;

    .line 614
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ci$b;->g:Lio/reactivex/internal/b/j;

    .line 616
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/ci$b;->l:J

    .line 617
    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/ci$b;->o:J

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 621
    :cond_0
    :goto_0
    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/ci$b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    :cond_1
    :goto_1
    cmp-long v10, v2, v8

    if-eqz v10, :cond_5

    .line 624
    iget-boolean v10, p0, Lio/reactivex/internal/operators/flowable/ci$b;->i:Z

    .line 627
    :try_start_0
    invoke-interface {v1}, Lio/reactivex/internal/b/j;->poll()Ljava/lang/Object;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v11, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    .line 641
    :goto_2
    invoke-virtual {p0, v10, v12, v0}, Lio/reactivex/internal/operators/flowable/ci$b;->a(ZZLorg/b/c;)Z

    move-result v10

    if-eqz v10, :cond_3

    return-void

    :cond_3
    if-nez v12, :cond_5

    .line 649
    invoke-interface {v0, v11}, Lio/reactivex/internal/b/a;->tryOnNext(Ljava/lang/Object;)Z

    move-result v10

    const-wide/16 v11, 0x1

    if-eqz v10, :cond_4

    add-long/2addr v2, v11

    :cond_4
    add-long/2addr v4, v11

    .line 655
    iget v10, p0, Lio/reactivex/internal/operators/flowable/ci$b;->d:I

    int-to-long v10, v10

    cmp-long v12, v4, v10

    if-nez v12, :cond_1

    .line 656
    iget-object v10, p0, Lio/reactivex/internal/operators/flowable/ci$b;->f:Lorg/b/d;

    invoke-interface {v10, v4, v5}, Lorg/b/d;->request(J)V

    const-wide/16 v4, 0x0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 629
    invoke-static {v2}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 631
    iput-boolean v6, p0, Lio/reactivex/internal/operators/flowable/ci$b;->h:Z

    .line 632
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/ci$b;->f:Lorg/b/d;

    invoke-interface {v3}, Lorg/b/d;->cancel()V

    .line 633
    invoke-interface {v1}, Lio/reactivex/internal/b/j;->clear()V

    .line 635
    invoke-interface {v0, v2}, Lio/reactivex/internal/b/a;->onError(Ljava/lang/Throwable;)V

    .line 636
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ci$b;->a:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    return-void

    :cond_5
    cmp-long v10, v2, v8

    if-nez v10, :cond_6

    .line 661
    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/ci$b;->i:Z

    invoke-interface {v1}, Lio/reactivex/internal/b/j;->isEmpty()Z

    move-result v9

    invoke-virtual {p0, v8, v9, v0}, Lio/reactivex/internal/operators/flowable/ci$b;->a(ZZLorg/b/c;)Z

    move-result v8

    if-eqz v8, :cond_6

    return-void

    .line 665
    :cond_6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ci$b;->get()I

    move-result v8

    if-ne v7, v8, :cond_7

    .line 667
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/ci$b;->l:J

    .line 668
    iput-wide v4, p0, Lio/reactivex/internal/operators/flowable/ci$b;->o:J

    neg-int v7, v7

    .line 669
    invoke-virtual {p0, v7}, Lio/reactivex/internal/operators/flowable/ci$b;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_0

    return-void

    :cond_7
    move v7, v8

    goto :goto_0
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 3

    .line 507
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ci$b;->f:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 508
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ci$b;->f:Lorg/b/d;

    .line 510
    instance-of v0, p1, Lio/reactivex/internal/b/g;

    if-eqz v0, :cond_1

    .line 512
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/b/g;

    const/4 v1, 0x7

    .line 514
    invoke-interface {v0, v1}, Lio/reactivex/internal/b/g;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 517
    iput v2, p0, Lio/reactivex/internal/operators/flowable/ci$b;->k:I

    .line 518
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/ci$b;->g:Lio/reactivex/internal/b/j;

    .line 519
    iput-boolean v2, p0, Lio/reactivex/internal/operators/flowable/ci$b;->i:Z

    .line 521
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ci$b;->n:Lio/reactivex/internal/b/a;

    invoke-interface {p1, p0}, Lio/reactivex/internal/b/a;->onSubscribe(Lorg/b/d;)V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 525
    iput v2, p0, Lio/reactivex/internal/operators/flowable/ci$b;->k:I

    .line 526
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/ci$b;->g:Lio/reactivex/internal/b/j;

    .line 528
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ci$b;->n:Lio/reactivex/internal/b/a;

    invoke-interface {v0, p0}, Lio/reactivex/internal/b/a;->onSubscribe(Lorg/b/d;)V

    .line 530
    iget v0, p0, Lio/reactivex/internal/operators/flowable/ci$b;->c:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    .line 536
    :cond_1
    new-instance v0, Lio/reactivex/internal/d/b;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/ci$b;->c:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/d/b;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/ci$b;->g:Lio/reactivex/internal/b/j;

    .line 538
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ci$b;->n:Lio/reactivex/internal/b/a;

    invoke-interface {v0, p0}, Lio/reactivex/internal/b/a;->onSubscribe(Lorg/b/d;)V

    .line 540
    iget v0, p0, Lio/reactivex/internal/operators/flowable/ci$b;->c:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_2
    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 716
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ci$b;->g:Lio/reactivex/internal/b/j;

    invoke-interface {v0}, Lio/reactivex/internal/b/j;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 717
    iget v1, p0, Lio/reactivex/internal/operators/flowable/ci$b;->k:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 718
    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/ci$b;->o:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 719
    iget v3, p0, Lio/reactivex/internal/operators/flowable/ci$b;->d:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-wide/16 v3, 0x0

    .line 720
    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/ci$b;->o:J

    .line 721
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/ci$b;->f:Lorg/b/d;

    invoke-interface {v3, v1, v2}, Lorg/b/d;->request(J)V

    goto :goto_0

    .line 723
    :cond_0
    iput-wide v1, p0, Lio/reactivex/internal/operators/flowable/ci$b;->o:J

    :cond_1
    :goto_0
    return-object v0
.end method
