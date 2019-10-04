.class final Lio/reactivex/internal/operators/flowable/ej$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Ljava/lang/Runnable;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ej;
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
        "Ljava/util/concurrent/atomic/AtomicLong;",
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
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/ah$c;

.field e:Lorg/b/d;

.field final f:Lio/reactivex/internal/disposables/f;

.field volatile g:Z

.field h:Z


# direct methods
.method constructor <init>(Lorg/b/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah$c;)V
    .locals 1
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

    .line 68
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 62
    new-instance v0, Lio/reactivex/internal/disposables/f;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/f;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/ej$a;->f:Lio/reactivex/internal/disposables/f;

    .line 69
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ej$a;->a:Lorg/b/c;

    .line 70
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/ej$a;->b:J

    .line 71
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/ej$a;->c:Ljava/util/concurrent/TimeUnit;

    .line 72
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/ej$a;->d:Lio/reactivex/ah$c;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 147
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ej$a;->e:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 148
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ej$a;->d:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 130
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ej$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ej$a;->h:Z

    .line 134
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ej$a;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    .line 135
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ej$a;->d:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 119
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ej$a;->h:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ej$a;->h:Z

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ej$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    .line 125
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ej$a;->d:Lio/reactivex/ah$c;

    invoke-virtual {p1}, Lio/reactivex/ah$c;->dispose()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 86
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ej$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ej$a;->g:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ej$a;->g:Z

    .line 92
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ej$a;->get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ej$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v0, 0x1

    .line 95
    invoke-static {p0, v0, v1}, Lio/reactivex/internal/util/c;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 103
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ej$a;->f:Lio/reactivex/internal/disposables/f;

    invoke-virtual {p1}, Lio/reactivex/internal/disposables/f;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/b/c;

    if-eqz p1, :cond_1

    .line 105
    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    .line 108
    :cond_1
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ej$a;->f:Lio/reactivex/internal/disposables/f;

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ej$a;->d:Lio/reactivex/ah$c;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/ej$a;->b:J

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/ej$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, v1, v2, v3}, Lio/reactivex/ah$c;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    goto :goto_0

    .line 97
    :cond_2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ej$a;->h:Z

    .line 98
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ej$a;->cancel()V

    .line 99
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ej$a;->a:Lorg/b/c;

    new-instance v0, Lio/reactivex/c/c;

    const-string v1, "Could not deliver value due to lack of requests"

    invoke-direct {v0, v1}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ej$a;->e:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ej$a;->e:Lorg/b/d;

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ej$a;->a:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 80
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 140
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 1

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ej$a;->g:Z

    return-void
.end method
