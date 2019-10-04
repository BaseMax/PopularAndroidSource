.class final Lio/reactivex/internal/operators/c/cr$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/cr;
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

.field final d:Lio/reactivex/e/e;


# direct methods
.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/e/e;Lio/reactivex/internal/disposables/f;Lio/reactivex/ae;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;",
            "Lio/reactivex/e/e;",
            "Lio/reactivex/internal/disposables/f;",
            "Lio/reactivex/ae<",
            "+TT;>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 49
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cr$a;->a:Lio/reactivex/ag;

    .line 50
    iput-object p3, p0, Lio/reactivex/internal/operators/c/cr$a;->b:Lio/reactivex/internal/disposables/f;

    .line 51
    iput-object p4, p0, Lio/reactivex/internal/operators/c/cr$a;->c:Lio/reactivex/ae;

    .line 52
    iput-object p2, p0, Lio/reactivex/internal/operators/c/cr$a;->d:Lio/reactivex/e/e;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 91
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/cr$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 94
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/c/cr$a;->c:Lio/reactivex/ae;

    invoke-interface {v1, p0}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    neg-int v0, v0

    .line 96
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/c/cr$a;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public final onComplete()V
    .locals 2

    .line 74
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cr$a;->d:Lio/reactivex/e/e;

    invoke-interface {v0}, Lio/reactivex/e/e;->getAsBoolean()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cr$a;->a:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/cr$a;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 76
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 77
    iget-object v1, p0, Lio/reactivex/internal/operators/c/cr$a;->a:Lio/reactivex/ag;

    invoke-interface {v1, v0}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cr$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cr$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cr$a;->b:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    return-void
.end method
