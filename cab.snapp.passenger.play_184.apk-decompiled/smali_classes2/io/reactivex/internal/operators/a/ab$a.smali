.class final Lio/reactivex/internal/operators/a/ab$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/a/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lio/reactivex/d;

.field final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final c:Lio/reactivex/b/b;


# direct methods
.method constructor <init>(Lio/reactivex/d;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/b/b;I)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 65
    iput-object p1, p0, Lio/reactivex/internal/operators/a/ab$a;->a:Lio/reactivex/d;

    .line 66
    iput-object p2, p0, Lio/reactivex/internal/operators/a/ab$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    iput-object p3, p0, Lio/reactivex/internal/operators/a/ab$a;->c:Lio/reactivex/b/b;

    .line 68
    invoke-virtual {p0, p4}, Lio/reactivex/internal/operators/a/ab$a;->lazySet(I)V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 3

    .line 88
    invoke-virtual {p0}, Lio/reactivex/internal/operators/a/ab$a;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ab$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ab$a;->a:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 78
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ab$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ab$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ab$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 82
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ab$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v0, p1}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    return-void
.end method
