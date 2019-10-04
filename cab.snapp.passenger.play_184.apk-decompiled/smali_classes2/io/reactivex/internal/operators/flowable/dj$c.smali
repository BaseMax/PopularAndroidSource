.class abstract Lio/reactivex/internal/operators/flowable/dj$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Ljava/lang/Runnable;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/dj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "TT;>;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Ljava/lang/Runnable;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final b:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;

.field final e:Lio/reactivex/ah;

.field final f:Ljava/util/concurrent/atomic/AtomicLong;

.field final g:Lio/reactivex/internal/disposables/f;

.field h:Lorg/b/d;


# direct methods
.method constructor <init>(Lorg/b/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/dj$c;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 64
    new-instance v0, Lio/reactivex/internal/disposables/f;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/f;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/dj$c;->g:Lio/reactivex/internal/disposables/f;

    .line 69
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dj$c;->b:Lorg/b/c;

    .line 70
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/dj$c;->c:J

    .line 71
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/dj$c;->d:Ljava/util/concurrent/TimeUnit;

    .line 72
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/dj$c;->e:Lio/reactivex/ah;

    return-void
.end method

.method private c()V
    .locals 1

    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dj$c;->g:Lio/reactivex/internal/disposables/f;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method final b()V
    .locals 6

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/dj$c;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/dj$c;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 124
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/dj$c;->b:Lorg/b/c;

    invoke-interface {v1, v0}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dj$c;->f:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lio/reactivex/internal/util/c;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/dj$c;->cancel()V

    .line 128
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dj$c;->b:Lorg/b/c;

    new-instance v1, Lio/reactivex/c/c;

    const-string v2, "Couldn\'t emit value due to lack of requests!"

    invoke-direct {v1, v2}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 115
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/dj$c;->c()V

    .line 116
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dj$c;->h:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/dj$c;->c()V

    .line 99
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/dj$c;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/dj$c;->c()V

    .line 93
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dj$c;->b:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/dj$c;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lorg/b/d;)V
    .locals 8

    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dj$c;->h:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dj$c;->h:Lorg/b/d;

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dj$c;->b:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 80
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dj$c;->g:Lio/reactivex/internal/disposables/f;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/dj$c;->e:Lio/reactivex/ah;

    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/dj$c;->c:J

    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/dj$c;->d:Ljava/util/concurrent/TimeUnit;

    move-object v2, p0

    move-wide v3, v5

    invoke-virtual/range {v1 .. v7}, Lio/reactivex/ah;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    const-wide v0, 0x7fffffffffffffffL

    .line 81
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 108
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dj$c;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method
