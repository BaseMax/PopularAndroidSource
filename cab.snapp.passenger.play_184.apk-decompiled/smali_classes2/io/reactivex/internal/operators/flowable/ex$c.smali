.class final Lio/reactivex/internal/operators/flowable/ex$c;
.super Lio/reactivex/internal/f/n;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/ex$c$a;,
        Lio/reactivex/internal/operators/flowable/ex$c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/f/n<",
        "TT;",
        "Ljava/lang/Object;",
        "Lio/reactivex/j<",
        "TT;>;>;",
        "Ljava/lang/Runnable;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:J

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/ah$c;

.field final e:I

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/reactivex/h/c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field g:Lorg/b/d;

.field volatile h:Z


# direct methods
.method constructor <init>(Lorg/b/c;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah$c;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah$c;",
            "I)V"
        }
    .end annotation

    .line 615
    new-instance v0, Lio/reactivex/internal/d/a;

    invoke-direct {v0}, Lio/reactivex/internal/d/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/f/n;-><init>(Lorg/b/c;Lio/reactivex/internal/b/i;)V

    .line 616
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/ex$c;->a:J

    .line 617
    iput-wide p4, p0, Lio/reactivex/internal/operators/flowable/ex$c;->b:J

    .line 618
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/ex$c;->c:Ljava/util/concurrent/TimeUnit;

    .line 619
    iput-object p7, p0, Lio/reactivex/internal/operators/flowable/ex$c;->d:Lio/reactivex/ah$c;

    .line 620
    iput p8, p0, Lio/reactivex/internal/operators/flowable/ex$c;->e:I

    .line 621
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ex$c;->f:Ljava/util/List;

    return-void
.end method

.method private a()V
    .locals 11

    .line 722
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$c;->queue:Lio/reactivex/internal/b/i;

    .line 723
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ex$c;->n:Lorg/b/c;

    .line 724
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ex$c;->f:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 731
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/ex$c;->h:Z

    if-eqz v5, :cond_1

    .line 732
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ex$c;->g:Lorg/b/d;

    invoke-interface {v1}, Lorg/b/d;->cancel()V

    .line 733
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$c;->dispose()V

    .line 734
    invoke-interface {v0}, Lio/reactivex/internal/b/i;->clear()V

    .line 735
    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void

    .line 739
    :cond_1
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/ex$c;->o:Z

    .line 741
    invoke-interface {v0}, Lio/reactivex/internal/b/i;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 744
    :goto_1
    instance-of v8, v6, Lio/reactivex/internal/operators/flowable/ex$c$b;

    if-eqz v5, :cond_6

    if-nez v7, :cond_3

    if-eqz v8, :cond_6

    .line 747
    :cond_3
    invoke-interface {v0}, Lio/reactivex/internal/b/i;->clear()V

    .line 748
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$c;->p:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 750
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/h/c;

    .line 751
    invoke-virtual {v3, v0}, Lio/reactivex/h/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 754
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/h/c;

    .line 755
    invoke-virtual {v1}, Lio/reactivex/h/c;->onComplete()V

    goto :goto_3

    .line 758
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 759
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$c;->dispose()V

    return-void

    :cond_6
    if-nez v7, :cond_b

    if-eqz v8, :cond_a

    .line 768
    check-cast v6, Lio/reactivex/internal/operators/flowable/ex$c$b;

    .line 770
    iget-boolean v5, v6, Lio/reactivex/internal/operators/flowable/ex$c$b;->b:Z

    if-eqz v5, :cond_9

    .line 771
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/ex$c;->cancelled:Z

    if-nez v5, :cond_0

    .line 775
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$c;->requested()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_8

    .line 777
    iget v7, p0, Lio/reactivex/internal/operators/flowable/ex$c;->e:I

    invoke-static {v7}, Lio/reactivex/h/c;->create(I)Lio/reactivex/h/c;

    move-result-object v7

    .line 778
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    invoke-interface {v1, v7}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v10, v5, v8

    if-eqz v10, :cond_7

    const-wide/16 v5, 0x1

    .line 781
    invoke-virtual {p0, v5, v6}, Lio/reactivex/internal/operators/flowable/ex$c;->produced(J)J

    .line 784
    :cond_7
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/ex$c;->d:Lio/reactivex/ah$c;

    new-instance v6, Lio/reactivex/internal/operators/flowable/ex$c$a;

    invoke-direct {v6, p0, v7}, Lio/reactivex/internal/operators/flowable/ex$c$a;-><init>(Lio/reactivex/internal/operators/flowable/ex$c;Lio/reactivex/h/c;)V

    iget-wide v7, p0, Lio/reactivex/internal/operators/flowable/ex$c;->a:J

    iget-object v9, p0, Lio/reactivex/internal/operators/flowable/ex$c;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8, v9}, Lio/reactivex/ah$c;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    goto/16 :goto_0

    .line 786
    :cond_8
    new-instance v5, Lio/reactivex/c/c;

    const-string v6, "Can\'t emit window due to lack of requests"

    invoke-direct {v5, v6}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 789
    :cond_9
    iget-object v5, v6, Lio/reactivex/internal/operators/flowable/ex$c$b;->a:Lio/reactivex/h/c;

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 790
    iget-object v5, v6, Lio/reactivex/internal/operators/flowable/ex$c$b;->a:Lio/reactivex/h/c;

    invoke-virtual {v5}, Lio/reactivex/h/c;->onComplete()V

    .line 791
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/ex$c;->cancelled:Z

    if-eqz v5, :cond_0

    .line 792
    iput-boolean v3, p0, Lio/reactivex/internal/operators/flowable/ex$c;->h:Z

    goto/16 :goto_0

    .line 796
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/h/c;

    .line 797
    invoke-virtual {v7, v6}, Lio/reactivex/h/c;->onNext(Ljava/lang/Object;)V

    goto :goto_4

    :cond_b
    neg-int v4, v4

    .line 802
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/flowable/ex$c;->leave(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void
.end method


# virtual methods
.method final a(Lio/reactivex/h/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/h/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 714
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$c;->queue:Lio/reactivex/internal/b/i;

    new-instance v1, Lio/reactivex/internal/operators/flowable/ex$c$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/ex$c$b;-><init>(Lio/reactivex/h/c;Z)V

    invoke-interface {v0, v1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 715
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$c;->enter()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 716
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ex$c;->a()V

    :cond_0
    return-void
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 706
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ex$c;->cancelled:Z

    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 710
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$c;->d:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    return-void
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 690
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ex$c;->o:Z

    .line 691
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$c;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ex$c;->a()V

    .line 695
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$c;->n:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    .line 696
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$c;->dispose()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 678
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ex$c;->p:Ljava/lang/Throwable;

    const/4 v0, 0x1

    .line 679
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ex$c;->o:Z

    .line 680
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$c;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ex$c;->a()V

    .line 684
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$c;->n:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    .line 685
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$c;->dispose()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 660
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$c;->fastEnter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/h/c;

    .line 662
    invoke-virtual {v1, p1}, Lio/reactivex/h/c;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 664
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ex$c;->leave(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 668
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$c;->queue:Lio/reactivex/internal/b/i;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 669
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$c;->enter()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 673
    :cond_2
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ex$c;->a()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 14

    .line 626
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$c;->g:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 628
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ex$c;->g:Lorg/b/d;

    .line 630
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$c;->n:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 632
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ex$c;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 636
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$c;->requested()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 638
    iget v2, p0, Lio/reactivex/internal/operators/flowable/ex$c;->e:I

    invoke-static {v2}, Lio/reactivex/h/c;->create(I)Lio/reactivex/h/c;

    move-result-object v2

    .line 639
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/ex$c;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/ex$c;->n:Lorg/b/c;

    invoke-interface {v3, v2}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v0, v3

    if-eqz v5, :cond_1

    const-wide/16 v0, 0x1

    .line 643
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/ex$c;->produced(J)J

    .line 645
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$c;->d:Lio/reactivex/ah$c;

    new-instance v1, Lio/reactivex/internal/operators/flowable/ex$c$a;

    invoke-direct {v1, p0, v2}, Lio/reactivex/internal/operators/flowable/ex$c$a;-><init>(Lio/reactivex/internal/operators/flowable/ex$c;Lio/reactivex/h/c;)V

    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/ex$c;->a:J

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ex$c;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v5, v6, v2}, Lio/reactivex/ah$c;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    .line 647
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/ex$c;->d:Lio/reactivex/ah$c;

    iget-wide v11, p0, Lio/reactivex/internal/operators/flowable/ex$c;->b:J

    iget-object v13, p0, Lio/reactivex/internal/operators/flowable/ex$c;->c:Ljava/util/concurrent/TimeUnit;

    move-object v8, p0

    move-wide v9, v11

    invoke-virtual/range {v7 .. v13}, Lio/reactivex/ah$c;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    .line 649
    invoke-interface {p1, v3, v4}, Lorg/b/d;->request(J)V

    return-void

    .line 652
    :cond_2
    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 653
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ex$c;->n:Lorg/b/c;

    new-instance v0, Lio/reactivex/c/c;

    const-string v1, "Could not emit the first window due to lack of requests"

    invoke-direct {v0, v1}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final request(J)V
    .locals 0

    .line 701
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/ex$c;->requested(J)V

    return-void
.end method

.method public final run()V
    .locals 3

    .line 812
    iget v0, p0, Lio/reactivex/internal/operators/flowable/ex$c;->e:I

    invoke-static {v0}, Lio/reactivex/h/c;->create(I)Lio/reactivex/h/c;

    move-result-object v0

    .line 814
    new-instance v1, Lio/reactivex/internal/operators/flowable/ex$c$b;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/flowable/ex$c$b;-><init>(Lio/reactivex/h/c;Z)V

    .line 815
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ex$c;->cancelled:Z

    if-nez v0, :cond_0

    .line 816
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$c;->queue:Lio/reactivex/internal/b/i;

    invoke-interface {v0, v1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 818
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$c;->enter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ex$c;->a()V

    :cond_1
    return-void
.end method
