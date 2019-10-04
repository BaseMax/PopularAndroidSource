.class public abstract Lio/reactivex/internal/c/u;
.super Lio/reactivex/internal/c/w;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/internal/util/k;


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
        "Lio/reactivex/internal/c/w;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/internal/util/k<",
        "TU;TV;>;"
    }
.end annotation


# instance fields
.field protected final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TV;>;"
        }
    .end annotation
.end field

.field protected volatile b:Z

.field protected c:Ljava/lang/Throwable;

.field public volatile cancelled:Z

.field public final queue:Lio/reactivex/internal/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/i<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ag;Lio/reactivex/internal/b/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TV;>;",
            "Lio/reactivex/internal/b/i<",
            "TU;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lio/reactivex/internal/c/w;-><init>()V

    .line 41
    iput-object p1, p0, Lio/reactivex/internal/c/u;->a:Lio/reactivex/ag;

    .line 42
    iput-object p2, p0, Lio/reactivex/internal/c/u;->queue:Lio/reactivex/internal/b/i;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;Lio/reactivex/b/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Lio/reactivex/b/c;",
            ")V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lio/reactivex/internal/c/u;->a:Lio/reactivex/ag;

    .line 66
    iget-object v1, p0, Lio/reactivex/internal/c/u;->queue:Lio/reactivex/internal/b/i;

    .line 68
    iget-object v2, p0, Lio/reactivex/internal/c/u;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/reactivex/internal/c/u;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {p0, v0, p1}, Lio/reactivex/internal/c/u;->accept(Lio/reactivex/ag;Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 70
    invoke-virtual {p0, p1}, Lio/reactivex/internal/c/u;->leave(I)I

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 74
    :cond_0
    invoke-interface {v1, p1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {p0}, Lio/reactivex/internal/c/u;->enter()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 79
    :cond_1
    invoke-static {v1, v0, v3, p2, p0}, Lio/reactivex/internal/util/o;->drainLoop(Lio/reactivex/internal/b/i;Lio/reactivex/ag;ZLio/reactivex/b/c;Lio/reactivex/internal/util/k;)V

    return-void
.end method

.method public accept(Lio/reactivex/ag;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TV;>;TU;)V"
        }
    .end annotation

    return-void
.end method

.method public final cancelled()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lio/reactivex/internal/c/u;->cancelled:Z

    return v0
.end method

.method public final done()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lio/reactivex/internal/c/u;->b:Z

    return v0
.end method

.method public final enter()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lio/reactivex/internal/c/u;->d:Ljava/util/concurrent/atomic/AtomicInteger;

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

    .line 112
    iget-object v0, p0, Lio/reactivex/internal/c/u;->c:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final fastEnter()Z
    .locals 3

    .line 61
    iget-object v0, p0, Lio/reactivex/internal/c/u;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/c/u;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public final fastPathOrderedEmit(Ljava/lang/Object;ZLio/reactivex/b/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "Lio/reactivex/b/c;",
            ")V"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/c/u;->a:Lio/reactivex/ag;

    .line 90
    iget-object v1, p0, Lio/reactivex/internal/c/u;->queue:Lio/reactivex/internal/b/i;

    .line 92
    iget-object v2, p0, Lio/reactivex/internal/c/u;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lio/reactivex/internal/c/u;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    invoke-interface {v1}, Lio/reactivex/internal/b/i;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {p0, v0, p1}, Lio/reactivex/internal/c/u;->accept(Lio/reactivex/ag;Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 95
    invoke-virtual {p0, p1}, Lio/reactivex/internal/c/u;->leave(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 99
    :cond_0
    invoke-interface {v1, p1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :cond_1
    invoke-interface {v1, p1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {p0}, Lio/reactivex/internal/c/u;->enter()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 107
    :cond_2
    :goto_0
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/internal/util/o;->drainLoop(Lio/reactivex/internal/b/i;Lio/reactivex/ag;ZLio/reactivex/b/c;Lio/reactivex/internal/util/k;)V

    return-void
.end method

.method public final leave(I)I
    .locals 1

    .line 117
    iget-object v0, p0, Lio/reactivex/internal/c/u;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    return p1
.end method
