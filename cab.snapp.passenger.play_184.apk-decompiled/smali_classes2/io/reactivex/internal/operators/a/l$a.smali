.class final Lio/reactivex/internal/operators/a/l$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lio/reactivex/d;

.field final b:Lio/reactivex/e/a;

.field c:Lio/reactivex/b/c;


# direct methods
.method constructor <init>(Lio/reactivex/d;Lio/reactivex/e/a;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 57
    iput-object p1, p0, Lio/reactivex/internal/operators/a/l$a;->a:Lio/reactivex/d;

    .line 58
    iput-object p2, p0, Lio/reactivex/internal/operators/a/l$a;->b:Lio/reactivex/e/a;

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 94
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/a/l$a;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/a/l$a;->b:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 98
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 99
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 84
    iget-object v0, p0, Lio/reactivex/internal/operators/a/l$a;->c:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 85
    invoke-direct {p0}, Lio/reactivex/internal/operators/a/l$a;->a()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/a/l$a;->c:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 78
    iget-object v0, p0, Lio/reactivex/internal/operators/a/l$a;->a:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    .line 79
    invoke-direct {p0}, Lio/reactivex/internal/operators/a/l$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/a/l$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    .line 73
    invoke-direct {p0}, Lio/reactivex/internal/operators/a/l$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/a/l$a;->c:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iput-object p1, p0, Lio/reactivex/internal/operators/a/l$a;->c:Lio/reactivex/b/c;

    .line 66
    iget-object p1, p0, Lio/reactivex/internal/operators/a/l$a;->a:Lio/reactivex/d;

    invoke-interface {p1, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method
