.class final Lio/reactivex/internal/operators/a/ae$a;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/a/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lio/reactivex/b/b;

.field final b:Lio/reactivex/d;

.field final c:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lio/reactivex/d;Lio/reactivex/b/b;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 108
    iput-object p1, p0, Lio/reactivex/internal/operators/a/ae$a;->b:Lio/reactivex/d;

    .line 109
    iput-object p2, p0, Lio/reactivex/internal/operators/a/ae$a;->a:Lio/reactivex/b/b;

    .line 110
    iput-object p3, p0, Lio/reactivex/internal/operators/a/ae$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 2

    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ae$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 131
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/a/ae$a;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ae$a;->b:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ae$a;->a:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 121
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/a/ae$a;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ae$a;->b:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 124
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ae$a;->a:Lio/reactivex/b/b;

    invoke-virtual {v0, p1}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    return-void
.end method
