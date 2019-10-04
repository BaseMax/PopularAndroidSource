.class final Lio/reactivex/internal/operators/maybe/l$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/t;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/l;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/t<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/t<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/ah;

.field e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field f:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/reactivex/t;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 67
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/l$a;->a:Lio/reactivex/t;

    .line 68
    iput-wide p2, p0, Lio/reactivex/internal/operators/maybe/l$a;->b:J

    .line 69
    iput-object p4, p0, Lio/reactivex/internal/operators/maybe/l$a;->c:Ljava/util/concurrent/TimeUnit;

    .line 70
    iput-object p5, p0, Lio/reactivex/internal/operators/maybe/l$a;->d:Lio/reactivex/ah;

    return-void
.end method

.method private a()V
    .locals 4

    .line 123
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/l$a;->d:Lio/reactivex/ah;

    iget-wide v1, p0, Lio/reactivex/internal/operators/maybe/l$a;->b:J

    iget-object v3, p0, Lio/reactivex/internal/operators/maybe/l$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, v1, v2, v3}, Lio/reactivex/ah;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-static {p0, v0}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 90
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 95
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/l$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/b/c;)Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 0

    .line 119
    invoke-direct {p0}, Lio/reactivex/internal/operators/maybe/l$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/l$a;->f:Ljava/lang/Throwable;

    .line 114
    invoke-direct {p0}, Lio/reactivex/internal/operators/maybe/l$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 100
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/l$a;->a:Lio/reactivex/t;

    invoke-interface {p1, p0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/l$a;->e:Ljava/lang/Object;

    .line 108
    invoke-direct {p0}, Lio/reactivex/internal/operators/maybe/l$a;->a()V

    return-void
.end method

.method public final run()V
    .locals 2

    .line 75
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/l$a;->f:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/l$a;->a:Lio/reactivex/t;

    invoke-interface {v1, v0}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/l$a;->e:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 81
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/l$a;->a:Lio/reactivex/t;

    invoke-interface {v1, v0}, Lio/reactivex/t;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/l$a;->a:Lio/reactivex/t;

    invoke-interface {v0}, Lio/reactivex/t;->onComplete()V

    return-void
.end method
