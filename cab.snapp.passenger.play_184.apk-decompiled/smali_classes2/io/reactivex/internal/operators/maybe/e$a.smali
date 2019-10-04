.class final Lio/reactivex/internal/operators/maybe/e$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/t;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/e;
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
        "Lio/reactivex/t<",
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

.field final b:Ljava/util/concurrent/atomic/AtomicLong;

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/internal/disposables/f;

.field final e:[Lio/reactivex/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/w<",
            "+TT;>;"
        }
    .end annotation
.end field

.field f:I

.field g:J


# direct methods
.method constructor <init>(Lorg/b/c;[Lio/reactivex/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;[",
            "Lio/reactivex/w<",
            "+TT;>;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 67
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/e$a;->a:Lorg/b/c;

    .line 68
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/e$a;->e:[Lio/reactivex/w;

    .line 69
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/e$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 70
    new-instance p1, Lio/reactivex/internal/disposables/f;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/f;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/e$a;->d:Lio/reactivex/internal/disposables/f;

    .line 71
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/e$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 11

    .line 111
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/e$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/e$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 116
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/e$a;->a:Lorg/b/c;

    .line 117
    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/e$a;->d:Lio/reactivex/internal/disposables/f;

    .line 120
    :cond_1
    invoke-interface {v2}, Lio/reactivex/b/c;->isDisposed()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 121
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    .line 125
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 129
    sget-object v5, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    const/4 v6, 0x1

    if-eq v3, v5, :cond_4

    .line 130
    iget-wide v7, p0, Lio/reactivex/internal/operators/maybe/e$a;->g:J

    .line 131
    iget-object v5, p0, Lio/reactivex/internal/operators/maybe/e$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-eqz v5, :cond_3

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    .line 132
    iput-wide v7, p0, Lio/reactivex/internal/operators/maybe/e$a;->g:J

    .line 133
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 136
    invoke-interface {v1, v3}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 142
    :cond_4
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :goto_0
    if-eqz v6, :cond_6

    .line 145
    invoke-interface {v2}, Lio/reactivex/b/c;->isDisposed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 146
    iget v3, p0, Lio/reactivex/internal/operators/maybe/e$a;->f:I

    .line 147
    iget-object v4, p0, Lio/reactivex/internal/operators/maybe/e$a;->e:[Lio/reactivex/w;

    array-length v5, v4

    if-ne v3, v5, :cond_5

    .line 148
    invoke-interface {v1}, Lorg/b/c;->onComplete()V

    return-void

    :cond_5
    add-int/lit8 v5, v3, 0x1

    .line 151
    iput v5, p0, Lio/reactivex/internal/operators/maybe/e$a;->f:I

    .line 153
    aget-object v3, v4, v3

    invoke-interface {v3, p0}, Lio/reactivex/w;->subscribe(Lio/reactivex/t;)V

    .line 157
    :cond_6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/e$a;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_1

    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 84
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/e$a;->d:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/f;->dispose()V

    return-void
.end method

.method public final onComplete()V
    .locals 2

    .line 105
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/e$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 106
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/e$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/e$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/e$a;->d:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/e$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/e$a;->a()V

    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 76
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/e$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 78
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/e$a;->a()V

    :cond_0
    return-void
.end method
