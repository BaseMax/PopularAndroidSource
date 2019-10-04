.class final Lio/reactivex/internal/operators/c/ek$c;
.super Lio/reactivex/internal/c/u;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/ek$c$a;,
        Lio/reactivex/internal/operators/c/ek$c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/c/u<",
        "TT;",
        "Ljava/lang/Object;",
        "Lio/reactivex/z<",
        "TT;>;>;",
        "Lio/reactivex/b/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final e:J

.field final f:J

.field final g:Ljava/util/concurrent/TimeUnit;

.field final h:Lio/reactivex/ah$c;

.field final i:I

.field final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/reactivex/j/e<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field k:Lio/reactivex/b/c;

.field volatile l:Z


# direct methods
.method constructor <init>(Lio/reactivex/ag;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah$c;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah$c;",
            "I)V"
        }
    .end annotation

    .line 537
    new-instance v0, Lio/reactivex/internal/d/a;

    invoke-direct {v0}, Lio/reactivex/internal/d/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/c/u;-><init>(Lio/reactivex/ag;Lio/reactivex/internal/b/i;)V

    .line 538
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/ek$c;->e:J

    .line 539
    iput-wide p4, p0, Lio/reactivex/internal/operators/c/ek$c;->f:J

    .line 540
    iput-object p6, p0, Lio/reactivex/internal/operators/c/ek$c;->g:Ljava/util/concurrent/TimeUnit;

    .line 541
    iput-object p7, p0, Lio/reactivex/internal/operators/c/ek$c;->h:Lio/reactivex/ah$c;

    .line 542
    iput p8, p0, Lio/reactivex/internal/operators/c/ek$c;->i:I

    .line 543
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/ek$c;->j:Ljava/util/List;

    return-void
.end method

.method private a()V
    .locals 10

    .line 632
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$c;->queue:Lio/reactivex/internal/b/i;

    check-cast v0, Lio/reactivex/internal/d/a;

    .line 633
    iget-object v1, p0, Lio/reactivex/internal/operators/c/ek$c;->a:Lio/reactivex/ag;

    .line 634
    iget-object v2, p0, Lio/reactivex/internal/operators/c/ek$c;->j:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 641
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/internal/operators/c/ek$c;->l:Z

    if-eqz v5, :cond_1

    .line 642
    iget-object v1, p0, Lio/reactivex/internal/operators/c/ek$c;->k:Lio/reactivex/b/c;

    invoke-interface {v1}, Lio/reactivex/b/c;->dispose()V

    .line 3620
    iget-object v1, p0, Lio/reactivex/internal/operators/c/ek$c;->h:Lio/reactivex/ah$c;

    invoke-virtual {v1}, Lio/reactivex/ah$c;->dispose()V

    .line 644
    invoke-virtual {v0}, Lio/reactivex/internal/d/a;->clear()V

    .line 645
    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void

    .line 649
    :cond_1
    iget-boolean v5, p0, Lio/reactivex/internal/operators/c/ek$c;->b:Z

    .line 651
    invoke-virtual {v0}, Lio/reactivex/internal/d/a;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 654
    :goto_1
    instance-of v8, v6, Lio/reactivex/internal/operators/c/ek$c$b;

    if-eqz v5, :cond_6

    if-nez v7, :cond_3

    if-eqz v8, :cond_6

    .line 657
    :cond_3
    invoke-virtual {v0}, Lio/reactivex/internal/d/a;->clear()V

    .line 658
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$c;->c:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 660
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/j/e;

    .line 661
    invoke-virtual {v3, v0}, Lio/reactivex/j/e;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 664
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/j/e;

    .line 665
    invoke-virtual {v1}, Lio/reactivex/j/e;->onComplete()V

    goto :goto_3

    .line 4620
    :cond_5
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$c;->h:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    .line 669
    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void

    :cond_6
    if-nez v7, :cond_9

    if-eqz v8, :cond_8

    .line 678
    check-cast v6, Lio/reactivex/internal/operators/c/ek$c$b;

    .line 680
    iget-boolean v5, v6, Lio/reactivex/internal/operators/c/ek$c$b;->b:Z

    if-eqz v5, :cond_7

    .line 681
    iget-boolean v5, p0, Lio/reactivex/internal/operators/c/ek$c;->cancelled:Z

    if-nez v5, :cond_0

    .line 685
    iget v5, p0, Lio/reactivex/internal/operators/c/ek$c;->i:I

    invoke-static {v5}, Lio/reactivex/j/e;->create(I)Lio/reactivex/j/e;

    move-result-object v5

    .line 686
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    invoke-interface {v1, v5}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    .line 689
    iget-object v6, p0, Lio/reactivex/internal/operators/c/ek$c;->h:Lio/reactivex/ah$c;

    new-instance v7, Lio/reactivex/internal/operators/c/ek$c$a;

    invoke-direct {v7, p0, v5}, Lio/reactivex/internal/operators/c/ek$c$a;-><init>(Lio/reactivex/internal/operators/c/ek$c;Lio/reactivex/j/e;)V

    iget-wide v8, p0, Lio/reactivex/internal/operators/c/ek$c;->e:J

    iget-object v5, p0, Lio/reactivex/internal/operators/c/ek$c;->g:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7, v8, v9, v5}, Lio/reactivex/ah$c;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    goto/16 :goto_0

    .line 691
    :cond_7
    iget-object v5, v6, Lio/reactivex/internal/operators/c/ek$c$b;->a:Lio/reactivex/j/e;

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 692
    iget-object v5, v6, Lio/reactivex/internal/operators/c/ek$c$b;->a:Lio/reactivex/j/e;

    invoke-virtual {v5}, Lio/reactivex/j/e;->onComplete()V

    .line 693
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lio/reactivex/internal/operators/c/ek$c;->cancelled:Z

    if-eqz v5, :cond_0

    .line 694
    iput-boolean v3, p0, Lio/reactivex/internal/operators/c/ek$c;->l:Z

    goto/16 :goto_0

    .line 698
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/j/e;

    .line 699
    invoke-virtual {v7, v6}, Lio/reactivex/j/e;->onNext(Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    neg-int v4, v4

    .line 704
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/c/ek$c;->leave(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void
.end method


# virtual methods
.method final a(Lio/reactivex/j/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j/e<",
            "TT;>;)V"
        }
    .end annotation

    .line 624
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$c;->queue:Lio/reactivex/internal/b/i;

    new-instance v1, Lio/reactivex/internal/operators/c/ek$c$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/c/ek$c$b;-><init>(Lio/reactivex/j/e;Z)V

    invoke-interface {v0, v1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 625
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ek$c;->enter()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 626
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ek$c;->a()V

    :cond_0
    return-void
.end method

.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 611
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ek$c;->cancelled:Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 616
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ek$c;->cancelled:Z

    return v0
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 600
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ek$c;->b:Z

    .line 601
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ek$c;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ek$c;->a()V

    .line 605
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$c;->a:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    .line 2620
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$c;->h:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 588
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ek$c;->c:Ljava/lang/Throwable;

    const/4 v0, 0x1

    .line 589
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ek$c;->b:Z

    .line 590
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ek$c;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ek$c;->a()V

    .line 594
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$c;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    .line 1620
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ek$c;->h:Lio/reactivex/ah$c;

    invoke-virtual {p1}, Lio/reactivex/ah$c;->dispose()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 570
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ek$c;->fastEnter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$c;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/j/e;

    .line 572
    invoke-virtual {v1, p1}, Lio/reactivex/j/e;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 574
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/ek$c;->leave(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 578
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$c;->queue:Lio/reactivex/internal/b/i;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 579
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ek$c;->enter()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 583
    :cond_2
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ek$c;->a()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 11

    .line 548
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$c;->k:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ek$c;->k:Lio/reactivex/b/c;

    .line 551
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ek$c;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 553
    iget-boolean p1, p0, Lio/reactivex/internal/operators/c/ek$c;->cancelled:Z

    if-eqz p1, :cond_0

    return-void

    .line 557
    :cond_0
    iget p1, p0, Lio/reactivex/internal/operators/c/ek$c;->i:I

    invoke-static {p1}, Lio/reactivex/j/e;->create(I)Lio/reactivex/j/e;

    move-result-object p1

    .line 558
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$c;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$c;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    .line 561
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$c;->h:Lio/reactivex/ah$c;

    new-instance v1, Lio/reactivex/internal/operators/c/ek$c$a;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/c/ek$c$a;-><init>(Lio/reactivex/internal/operators/c/ek$c;Lio/reactivex/j/e;)V

    iget-wide v2, p0, Lio/reactivex/internal/operators/c/ek$c;->e:J

    iget-object p1, p0, Lio/reactivex/internal/operators/c/ek$c;->g:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, p1}, Lio/reactivex/ah$c;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    .line 563
    iget-object v4, p0, Lio/reactivex/internal/operators/c/ek$c;->h:Lio/reactivex/ah$c;

    iget-wide v8, p0, Lio/reactivex/internal/operators/c/ek$c;->f:J

    iget-object v10, p0, Lio/reactivex/internal/operators/c/ek$c;->g:Ljava/util/concurrent/TimeUnit;

    move-object v5, p0

    move-wide v6, v8

    invoke-virtual/range {v4 .. v10}, Lio/reactivex/ah$c;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    :cond_1
    return-void
.end method

.method public final run()V
    .locals 3

    .line 714
    iget v0, p0, Lio/reactivex/internal/operators/c/ek$c;->i:I

    invoke-static {v0}, Lio/reactivex/j/e;->create(I)Lio/reactivex/j/e;

    move-result-object v0

    .line 716
    new-instance v1, Lio/reactivex/internal/operators/c/ek$c$b;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/c/ek$c$b;-><init>(Lio/reactivex/j/e;Z)V

    .line 717
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ek$c;->cancelled:Z

    if-nez v0, :cond_0

    .line 718
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$c;->queue:Lio/reactivex/internal/b/i;

    invoke-interface {v0, v1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 720
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ek$c;->enter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 721
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ek$c;->a()V

    :cond_1
    return-void
.end method
