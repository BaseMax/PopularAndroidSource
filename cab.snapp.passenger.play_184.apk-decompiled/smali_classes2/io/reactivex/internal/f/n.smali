.class public abstract Lio/reactivex/internal/f/n;
.super Lio/reactivex/internal/f/r;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/util/n;
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/f/r;",
        "Lio/reactivex/internal/util/n<",
        "TU;TV;>;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public volatile cancelled:Z

.field protected final n:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-TV;>;"
        }
    .end annotation
.end field

.field protected volatile o:Z

.field protected p:Ljava/lang/Throwable;

.field public final queue:Lio/reactivex/internal/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/i<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/b/c;Lio/reactivex/internal/b/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TV;>;",
            "Lio/reactivex/internal/b/i<",
            "TU;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lio/reactivex/internal/f/r;-><init>()V

    .line 47
    iput-object p1, p0, Lio/reactivex/internal/f/n;->n:Lorg/b/c;

    .line 48
    iput-object p2, p0, Lio/reactivex/internal/f/n;->queue:Lio/reactivex/internal/b/i;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;Lio/reactivex/b/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Lio/reactivex/b/c;",
            ")V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lio/reactivex/internal/f/n;->n:Lorg/b/c;

    .line 72
    iget-object v1, p0, Lio/reactivex/internal/f/n;->queue:Lio/reactivex/internal/b/i;

    .line 74
    invoke-virtual {p0}, Lio/reactivex/internal/f/n;->fastEnter()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    iget-object v2, p0, Lio/reactivex/internal/f/n;->q:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 77
    invoke-virtual {p0, v0, p1}, Lio/reactivex/internal/f/n;->accept(Lorg/b/c;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x1

    .line 79
    invoke-virtual {p0, v2, v3}, Lio/reactivex/internal/f/n;->produced(J)J

    :cond_0
    const/4 p1, -0x1

    .line 82
    invoke-virtual {p0, p1}, Lio/reactivex/internal/f/n;->leave(I)I

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 86
    :cond_1
    invoke-interface {p2}, Lio/reactivex/b/c;->dispose()V

    .line 87
    new-instance p1, Lio/reactivex/c/c;

    const-string p2, "Could not emit buffer due to lack of requests"

    invoke-direct {p1, p2}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 91
    :cond_2
    invoke-interface {v1, p1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {p0}, Lio/reactivex/internal/f/n;->enter()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 96
    invoke-static {v1, v0, p1, p2, p0}, Lio/reactivex/internal/util/o;->drainMaxLoop(Lio/reactivex/internal/b/i;Lorg/b/c;ZLio/reactivex/b/c;Lio/reactivex/internal/util/n;)V

    return-void
.end method

.method public accept(Lorg/b/c;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TV;>;TU;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public final cancelled()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lio/reactivex/internal/f/n;->cancelled:Z

    return v0
.end method

.method public final done()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lio/reactivex/internal/f/n;->o:Z

    return v0
.end method

.method public final enter()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lio/reactivex/internal/f/n;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final error()Ljava/lang/Throwable;
    .locals 1

    .line 140
    iget-object v0, p0, Lio/reactivex/internal/f/n;->p:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final fastEnter()Z
    .locals 3

    .line 67
    iget-object v0, p0, Lio/reactivex/internal/f/n;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/f/n;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public final fastPathOrderedEmitMax(Ljava/lang/Object;ZLio/reactivex/b/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "Lio/reactivex/b/c;",
            ")V"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/f/n;->n:Lorg/b/c;

    .line 101
    iget-object v1, p0, Lio/reactivex/internal/f/n;->queue:Lio/reactivex/internal/b/i;

    .line 103
    invoke-virtual {p0}, Lio/reactivex/internal/f/n;->fastEnter()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 104
    iget-object v2, p0, Lio/reactivex/internal/f/n;->q:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 106
    invoke-interface {v1}, Lio/reactivex/internal/b/i;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    invoke-virtual {p0, v0, p1}, Lio/reactivex/internal/f/n;->accept(Lorg/b/c;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x1

    .line 109
    invoke-virtual {p0, v2, v3}, Lio/reactivex/internal/f/n;->produced(J)J

    :cond_0
    const/4 p1, -0x1

    .line 112
    invoke-virtual {p0, p1}, Lio/reactivex/internal/f/n;->leave(I)I

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 116
    :cond_1
    invoke-interface {v1, p1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 119
    iput-boolean p1, p0, Lio/reactivex/internal/f/n;->cancelled:Z

    .line 120
    invoke-interface {p3}, Lio/reactivex/b/c;->dispose()V

    .line 121
    new-instance p1, Lio/reactivex/c/c;

    const-string p2, "Could not emit buffer due to lack of requests"

    invoke-direct {p1, p2}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 125
    :cond_3
    invoke-interface {v1, p1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {p0}, Lio/reactivex/internal/f/n;->enter()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 130
    :cond_4
    :goto_0
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/internal/util/o;->drainMaxLoop(Lio/reactivex/internal/b/i;Lorg/b/c;ZLio/reactivex/b/c;Lio/reactivex/internal/util/n;)V

    return-void
.end method

.method public final leave(I)I
    .locals 1

    .line 145
    iget-object v0, p0, Lio/reactivex/internal/f/n;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    return p1
.end method

.method public final produced(J)J
    .locals 1

    .line 155
    iget-object v0, p0, Lio/reactivex/internal/f/n;->q:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long p1, p1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final requested()J
    .locals 2

    .line 150
    iget-object v0, p0, Lio/reactivex/internal/f/n;->q:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final requested(J)V
    .locals 1

    .line 159
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lio/reactivex/internal/f/n;->q:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method
