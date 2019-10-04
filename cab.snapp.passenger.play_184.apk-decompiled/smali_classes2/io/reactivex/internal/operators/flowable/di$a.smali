.class final Lio/reactivex/internal/operators/flowable/di$a;
.super Lio/reactivex/internal/operators/flowable/di$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/di;
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
        "Lio/reactivex/internal/operators/flowable/di$c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile b:Z


# direct methods
.method constructor <init>(Lorg/b/c;Lorg/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;",
            "Lorg/b/b<",
            "*>;)V"
        }
    .end annotation

    .line 198
    invoke-direct {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/di$c;-><init>(Lorg/b/c;Lorg/b/b;)V

    .line 199
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/di$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/di$a;->b:Z

    .line 205
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/di$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/di$a;->c()V

    .line 207
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/di$a;->c:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    :cond_0
    return-void
.end method

.method final b()V
    .locals 1

    .line 213
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/di$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_2

    .line 215
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/di$a;->b:Z

    .line 216
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/di$a;->c()V

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/di$a;->c:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/di$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    return-void
.end method
