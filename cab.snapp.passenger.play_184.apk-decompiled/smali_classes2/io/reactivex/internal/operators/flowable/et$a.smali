.class final Lio/reactivex/internal/operators/flowable/et$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Ljava/lang/Runnable;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/et;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Ljava/lang/Runnable;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final d:I

.field e:J

.field f:Lorg/b/d;

.field g:Lio/reactivex/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/h/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/b/c;JI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;JI)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 75
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 76
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/et$a;->a:Lorg/b/c;

    .line 77
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/et$a;->b:J

    .line 78
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/et$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    iput p4, p0, Lio/reactivex/internal/operators/flowable/et$a;->d:I

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/et$a;->run()V

    :cond_0
    return-void
.end method

.method public final onComplete()V
    .locals 2

    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$a;->g:Lio/reactivex/h/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 132
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/et$a;->g:Lio/reactivex/h/c;

    .line 133
    invoke-interface {v0}, Lorg/b/a;->onComplete()V

    .line 136
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$a;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$a;->g:Lio/reactivex/h/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 121
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/et$a;->g:Lio/reactivex/h/c;

    .line 122
    invoke-interface {v0, p1}, Lorg/b/a;->onError(Ljava/lang/Throwable;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 92
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/et$a;->e:J

    .line 94
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/et$a;->g:Lio/reactivex/h/c;

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 96
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/et$a;->getAndIncrement()I

    .line 98
    iget v2, p0, Lio/reactivex/internal/operators/flowable/et$a;->d:I

    invoke-static {v2, p0}, Lio/reactivex/h/c;->create(ILjava/lang/Runnable;)Lio/reactivex/h/c;

    move-result-object v2

    .line 99
    iput-object v2, p0, Lio/reactivex/internal/operators/flowable/et$a;->g:Lio/reactivex/h/c;

    .line 101
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/et$a;->a:Lorg/b/c;

    invoke-interface {v5, v2}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    .line 106
    invoke-virtual {v2, p1}, Lio/reactivex/h/c;->onNext(Ljava/lang/Object;)V

    .line 108
    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/et$a;->b:J

    cmp-long p1, v0, v5

    if-nez p1, :cond_1

    .line 109
    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/et$a;->e:J

    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/et$a;->g:Lio/reactivex/h/c;

    .line 111
    invoke-virtual {v2}, Lio/reactivex/h/c;->onComplete()V

    return-void

    .line 113
    :cond_1
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/et$a;->e:J

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$a;->f:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/et$a;->f:Lorg/b/d;

    .line 86
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/et$a;->a:Lorg/b/c;

    invoke-interface {p1, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 2

    .line 141
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/et$a;->b:J

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/c;->multiplyCap(JJ)J

    move-result-wide p1

    .line 143
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$a;->f:Lorg/b/d;

    invoke-interface {v0, p1, p2}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 1

    .line 156
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/et$a;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$a;->f:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    :cond_0
    return-void
.end method
