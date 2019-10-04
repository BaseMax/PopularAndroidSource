.class final Lio/reactivex/internal/operators/c/cy$a;
.super Lio/reactivex/internal/operators/c/cy$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/cy;
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
        "Lio/reactivex/internal/operators/c/cy$c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile b:Z


# direct methods
.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/ae;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;",
            "Lio/reactivex/ae<",
            "*>;)V"
        }
    .end annotation

    .line 183
    invoke-direct {p0, p1, p2}, Lio/reactivex/internal/operators/c/cy$c;-><init>(Lio/reactivex/ag;Lio/reactivex/ae;)V

    .line 184
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/cy$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/cy$a;->b:Z

    .line 190
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cy$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/cy$a;->c()V

    .line 192
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cy$a;->c:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    :cond_0
    return-void
.end method

.method final b()V
    .locals 1

    .line 198
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cy$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_2

    .line 200
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/cy$a;->b:Z

    .line 201
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/cy$a;->c()V

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cy$a;->c:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cy$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    return-void
.end method
