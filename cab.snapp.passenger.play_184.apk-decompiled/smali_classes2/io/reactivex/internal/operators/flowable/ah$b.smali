.class final Lio/reactivex/internal/operators/flowable/ah$b;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ah;
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
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/ah$c;

.field e:Lorg/b/d;

.field f:Lio/reactivex/b/c;

.field volatile g:J

.field h:Z


# direct methods
.method constructor <init>(Lorg/b/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah$c;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 68
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ah$b;->a:Lorg/b/c;

    .line 69
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/ah$b;->b:J

    .line 70
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/ah$b;->c:Ljava/util/concurrent/TimeUnit;

    .line 71
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/ah$b;->d:Lio/reactivex/ah$c;

    return-void
.end method


# virtual methods
.method final a(JLjava/lang/Object;Lio/reactivex/internal/operators/flowable/ah$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;",
            "Lio/reactivex/internal/operators/flowable/ah$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 153
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/ah$b;->g:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 154
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ah$b;->get()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 156
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ah$b;->a:Lorg/b/c;

    invoke-interface {p1, p3}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 p1, 0x1

    .line 157
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/c;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 159
    invoke-virtual {p4}, Lio/reactivex/internal/operators/flowable/ah$a;->dispose()V

    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ah$b;->cancel()V

    .line 162
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ah$b;->a:Lorg/b/c;

    new-instance p2, Lio/reactivex/c/c;

    const-string p3, "Could not deliver value due to lack of requests"

    invoke-direct {p2, p3}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 148
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ah$b;->e:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ah$b;->d:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 119
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ah$b;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ah$b;->h:Z

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ah$b;->f:Lio/reactivex/b/c;

    if-eqz v0, :cond_1

    .line 126
    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 130
    :cond_1
    check-cast v0, Lio/reactivex/internal/operators/flowable/ah$a;

    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/ah$a;->a()V

    .line 135
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ah$b;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    .line 136
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ah$b;->d:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 104
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ah$b;->h:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ah$b;->h:Z

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ah$b;->f:Lio/reactivex/b/c;

    if-eqz v0, :cond_1

    .line 111
    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 113
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ah$b;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    .line 114
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ah$b;->d:Lio/reactivex/ah$c;

    invoke-virtual {p1}, Lio/reactivex/ah$c;->dispose()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 85
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ah$b;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/ah$b;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 89
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/ah$b;->g:J

    .line 91
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ah$b;->f:Lio/reactivex/b/c;

    if-eqz v2, :cond_1

    .line 93
    invoke-interface {v2}, Lio/reactivex/b/c;->dispose()V

    .line 96
    :cond_1
    new-instance v2, Lio/reactivex/internal/operators/flowable/ah$a;

    invoke-direct {v2, p1, v0, v1, p0}, Lio/reactivex/internal/operators/flowable/ah$a;-><init>(Ljava/lang/Object;JLio/reactivex/internal/operators/flowable/ah$b;)V

    .line 97
    iput-object v2, p0, Lio/reactivex/internal/operators/flowable/ah$b;->f:Lio/reactivex/b/c;

    .line 98
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ah$b;->d:Lio/reactivex/ah$c;

    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/ah$b;->b:J

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/ah$b;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v0, v1, v3}, Lio/reactivex/ah$c;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    .line 99
    invoke-virtual {v2, p1}, Lio/reactivex/internal/operators/flowable/ah$a;->setResource(Lio/reactivex/b/c;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ah$b;->e:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ah$b;->e:Lorg/b/d;

    .line 78
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ah$b;->a:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 79
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 141
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method
