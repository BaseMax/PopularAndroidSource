.class final Lio/reactivex/internal/operators/c/cu$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/cu;
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

.field final d:Lio/reactivex/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/d<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field e:I


# direct methods
.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/e/d;Lio/reactivex/internal/disposables/f;Lio/reactivex/ae;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;",
            "Lio/reactivex/e/d<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/internal/disposables/f;",
            "Lio/reactivex/ae<",
            "+TT;>;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 53
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cu$a;->a:Lio/reactivex/ag;

    .line 54
    iput-object p3, p0, Lio/reactivex/internal/operators/c/cu$a;->b:Lio/reactivex/internal/disposables/f;

    .line 55
    iput-object p4, p0, Lio/reactivex/internal/operators/c/cu$a;->c:Lio/reactivex/ae;

    .line 56
    iput-object p2, p0, Lio/reactivex/internal/operators/c/cu$a;->d:Lio/reactivex/e/d;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 95
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/cu$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 98
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/c/cu$a;->b:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v1}, Lio/reactivex/internal/disposables/f;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 101
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/c/cu$a;->c:Lio/reactivex/ae;

    invoke-interface {v1, p0}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    neg-int v0, v0

    .line 103
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/c/cu$a;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 88
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cu$a;->a:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 6

    const/4 v0, 0x1

    .line 73
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/c/cu$a;->d:Lio/reactivex/e/d;

    iget v2, p0, Lio/reactivex/internal/operators/c/cu$a;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lio/reactivex/internal/operators/c/cu$a;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lio/reactivex/e/d;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cu$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/cu$a;->a()V

    return-void

    :catchall_0
    move-exception v1

    .line 75
    invoke-static {v1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 76
    iget-object v2, p0, Lio/reactivex/internal/operators/c/cu$a;->a:Lio/reactivex/ag;

    new-instance v3, Lio/reactivex/c/a;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object v1, v4, v0

    invoke-direct {v3, v4}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cu$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cu$a;->b:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    return-void
.end method
