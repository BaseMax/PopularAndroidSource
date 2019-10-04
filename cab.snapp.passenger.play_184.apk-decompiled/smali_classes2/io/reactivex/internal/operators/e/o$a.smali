.class final Lio/reactivex/internal/operators/e/o$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/al;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/e/o;
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
        "Lio/reactivex/al<",
        "TT;>;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/al<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/a;

.field c:Lio/reactivex/b/c;


# direct methods
.method constructor <init>(Lio/reactivex/al;Lio/reactivex/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-TT;>;",
            "Lio/reactivex/e/a;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 58
    iput-object p1, p0, Lio/reactivex/internal/operators/e/o$a;->a:Lio/reactivex/al;

    .line 59
    iput-object p2, p0, Lio/reactivex/internal/operators/e/o$a;->b:Lio/reactivex/e/a;

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 95
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/e/o$a;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/e/o$a;->b:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 99
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 100
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/e/o$a;->c:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 86
    invoke-direct {p0}, Lio/reactivex/internal/operators/e/o$a;->a()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/e/o$a;->c:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/e/o$a;->a:Lio/reactivex/al;

    invoke-interface {v0, p1}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

    .line 80
    invoke-direct {p0}, Lio/reactivex/internal/operators/e/o$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/e/o$a;->c:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iput-object p1, p0, Lio/reactivex/internal/operators/e/o$a;->c:Lio/reactivex/b/c;

    .line 67
    iget-object p1, p0, Lio/reactivex/internal/operators/e/o$a;->a:Lio/reactivex/al;

    invoke-interface {p1, p0}, Lio/reactivex/al;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/e/o$a;->a:Lio/reactivex/al;

    invoke-interface {v0, p1}, Lio/reactivex/al;->onSuccess(Ljava/lang/Object;)V

    .line 74
    invoke-direct {p0}, Lio/reactivex/internal/operators/e/o$a;->a()V

    return-void
.end method
