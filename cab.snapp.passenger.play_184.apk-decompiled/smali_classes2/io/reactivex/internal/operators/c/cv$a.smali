.class final Lio/reactivex/internal/operators/c/cv$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/cv;
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
        "Lio/reactivex/ag<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/disposables/f;

.field final c:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/e/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/q<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field e:J


# direct methods
.method constructor <init>(Lio/reactivex/ag;JLio/reactivex/e/q;Lio/reactivex/internal/disposables/f;Lio/reactivex/ae;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;J",
            "Lio/reactivex/e/q<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/internal/disposables/f;",
            "Lio/reactivex/ae<",
            "+TT;>;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 55
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cv$a;->a:Lio/reactivex/ag;

    .line 56
    iput-object p5, p0, Lio/reactivex/internal/operators/c/cv$a;->b:Lio/reactivex/internal/disposables/f;

    .line 57
    iput-object p6, p0, Lio/reactivex/internal/operators/c/cv$a;->c:Lio/reactivex/ae;

    .line 58
    iput-object p4, p0, Lio/reactivex/internal/operators/c/cv$a;->d:Lio/reactivex/e/q;

    .line 59
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/cv$a;->e:J

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 106
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/cv$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 109
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/c/cv$a;->b:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v1}, Lio/reactivex/internal/disposables/f;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 112
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/c/cv$a;->c:Lio/reactivex/ae;

    invoke-interface {v1, p0}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    neg-int v0, v0

    .line 114
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/c/cv$a;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 99
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cv$a;->a:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 74
    iget-wide v0, p0, Lio/reactivex/internal/operators/c/cv$a;->e:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    .line 76
    iput-wide v2, p0, Lio/reactivex/internal/operators/c/cv$a;->e:J

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cv$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 83
    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cv$a;->d:Lio/reactivex/e/q;

    invoke-interface {v0, p1}, Lio/reactivex/e/q;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cv$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 93
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/cv$a;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 85
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 86
    iget-object v1, p0, Lio/reactivex/internal/operators/c/cv$a;->a:Lio/reactivex/ag;

    new-instance v2, Lio/reactivex/c/a;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    invoke-direct {v2, v3}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cv$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cv$a;->b:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    return-void
.end method
