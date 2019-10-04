.class Lio/reactivex/internal/operators/flowable/de$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/operators/flowable/de$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/de;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/internal/operators/flowable/de$f;",
        ">;",
        "Lio/reactivex/internal/operators/flowable/de$g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field a:Lio/reactivex/internal/operators/flowable/de$f;

.field b:I

.field c:J


# direct methods
.method constructor <init>()V
    .locals 4

    .line 738
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 739
    new-instance v0, Lio/reactivex/internal/operators/flowable/de$f;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/internal/operators/flowable/de$f;-><init>(Ljava/lang/Object;J)V

    .line 740
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/de$a;->a:Lio/reactivex/internal/operators/flowable/de$f;

    .line 741
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/de$a;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lio/reactivex/internal/operators/flowable/de$f;)V
    .locals 1

    .line 749
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/de$a;->a:Lio/reactivex/internal/operators/flowable/de$f;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/de$f;->set(Ljava/lang/Object;)V

    .line 750
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/de$a;->a:Lio/reactivex/internal/operators/flowable/de$f;

    .line 751
    iget p1, p0, Lio/reactivex/internal/operators/flowable/de$a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/reactivex/internal/operators/flowable/de$a;->b:I

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method a()V
    .locals 0

    return-void
.end method

.method b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method b()V
    .locals 5

    .line 1810
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/de$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/de$f;

    .line 1811
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/de$f;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1812
    new-instance v1, Lio/reactivex/internal/operators/flowable/de$f;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/de$f;-><init>(Ljava/lang/Object;J)V

    .line 1813
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/de$f;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/flowable/de$f;->lazySet(Ljava/lang/Object;)V

    .line 1814
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/de$a;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method c()Lio/reactivex/internal/operators/flowable/de$f;
    .locals 1

    .line 950
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/de$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/de$f;

    return-object v0
.end method

.method public final complete()V
    .locals 6

    .line 803
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/de$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 804
    new-instance v1, Lio/reactivex/internal/operators/flowable/de$f;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/de$a;->c:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/de$a;->c:J

    invoke-direct {v1, v0, v2, v3}, Lio/reactivex/internal/operators/flowable/de$f;-><init>(Ljava/lang/Object;J)V

    .line 805
    invoke-direct {p0, v1}, Lio/reactivex/internal/operators/flowable/de$a;->a(Lio/reactivex/internal/operators/flowable/de$f;)V

    .line 806
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/de$a;->b()V

    return-void
.end method

.method public final error(Ljava/lang/Throwable;)V
    .locals 5

    .line 795
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/de$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 796
    new-instance v0, Lio/reactivex/internal/operators/flowable/de$f;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/de$a;->c:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/reactivex/internal/operators/flowable/de$a;->c:J

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/flowable/de$f;-><init>(Ljava/lang/Object;J)V

    .line 797
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/flowable/de$a;->a(Lio/reactivex/internal/operators/flowable/de$f;)V

    .line 798
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/de$a;->b()V

    return-void
.end method

.method public final next(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 787
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/de$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 788
    new-instance v0, Lio/reactivex/internal/operators/flowable/de$f;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/de$a;->c:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/reactivex/internal/operators/flowable/de$a;->c:J

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/flowable/de$f;-><init>(Ljava/lang/Object;J)V

    .line 789
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/flowable/de$a;->a(Lio/reactivex/internal/operators/flowable/de$f;)V

    .line 790
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/de$a;->a()V

    return-void
.end method

.method public final replay(Lio/reactivex/internal/operators/flowable/de$d;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/de$d<",
            "TT;>;)V"
        }
    .end annotation

    .line 820
    monitor-enter p1

    .line 821
    :try_start_0
    iget-boolean v0, p1, Lio/reactivex/internal/operators/flowable/de$d;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 822
    iput-boolean v1, p1, Lio/reactivex/internal/operators/flowable/de$d;->f:Z

    .line 823
    monitor-exit p1

    return-void

    .line 825
    :cond_0
    iput-boolean v1, p1, Lio/reactivex/internal/operators/flowable/de$d;->e:Z

    .line 826
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 828
    :goto_0
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/de$d;->isDisposed()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 829
    iput-object v2, p1, Lio/reactivex/internal/operators/flowable/de$d;->c:Ljava/lang/Object;

    return-void

    .line 833
    :cond_1
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/de$d;->get()J

    move-result-wide v3

    const-wide v5, 0x7fffffffffffffffL

    const/4 v0, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 1579
    :goto_1
    iget-object v6, p1, Lio/reactivex/internal/operators/flowable/de$d;->c:Ljava/lang/Object;

    .line 837
    check-cast v6, Lio/reactivex/internal/operators/flowable/de$f;

    const-wide/16 v7, 0x0

    if-nez v6, :cond_3

    .line 839
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/de$a;->c()Lio/reactivex/internal/operators/flowable/de$f;

    move-result-object v6

    .line 840
    iput-object v6, p1, Lio/reactivex/internal/operators/flowable/de$d;->c:Ljava/lang/Object;

    .line 842
    iget-object v9, p1, Lio/reactivex/internal/operators/flowable/de$d;->d:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v10, v6, Lio/reactivex/internal/operators/flowable/de$f;->b:J

    invoke-static {v9, v10, v11}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_3
    move-wide v9, v7

    :goto_2
    cmp-long v11, v3, v7

    if-eqz v11, :cond_7

    .line 846
    invoke-virtual {v6}, Lio/reactivex/internal/operators/flowable/de$f;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/reactivex/internal/operators/flowable/de$f;

    if-eqz v11, :cond_7

    .line 848
    iget-object v6, v11, Lio/reactivex/internal/operators/flowable/de$f;->a:Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lio/reactivex/internal/operators/flowable/de$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 850
    :try_start_1
    iget-object v12, p1, Lio/reactivex/internal/operators/flowable/de$d;->b:Lorg/b/c;

    invoke-static {v6, v12}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lorg/b/c;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 851
    iput-object v2, p1, Lio/reactivex/internal/operators/flowable/de$d;->c:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_4
    const-wide/16 v12, 0x1

    add-long/2addr v9, v12

    sub-long/2addr v3, v12

    .line 869
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/de$d;->isDisposed()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 870
    iput-object v2, p1, Lio/reactivex/internal/operators/flowable/de$d;->c:Ljava/lang/Object;

    return-void

    :cond_5
    move-object v6, v11

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 855
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 856
    iput-object v2, p1, Lio/reactivex/internal/operators/flowable/de$d;->c:Ljava/lang/Object;

    .line 857
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/de$d;->dispose()V

    .line 858
    invoke-static {v6}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v6}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 859
    iget-object p1, p1, Lio/reactivex/internal/operators/flowable/de$d;->b:Lorg/b/c;

    invoke-interface {p1, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    :cond_6
    return-void

    :cond_7
    cmp-long v2, v9, v7

    if-eqz v2, :cond_8

    .line 876
    iput-object v6, p1, Lio/reactivex/internal/operators/flowable/de$d;->c:Ljava/lang/Object;

    if-nez v5, :cond_8

    .line 878
    invoke-virtual {p1, v9, v10}, Lio/reactivex/internal/operators/flowable/de$d;->produced(J)J

    .line 882
    :cond_8
    monitor-enter p1

    .line 883
    :try_start_2
    iget-boolean v2, p1, Lio/reactivex/internal/operators/flowable/de$d;->f:Z

    if-nez v2, :cond_9

    .line 884
    iput-boolean v0, p1, Lio/reactivex/internal/operators/flowable/de$d;->e:Z

    .line 885
    monitor-exit p1

    return-void

    .line 887
    :cond_9
    iput-boolean v0, p1, Lio/reactivex/internal/operators/flowable/de$d;->f:Z

    .line 888
    monitor-exit p1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 826
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
