.class public final Lio/reactivex/internal/operators/c/s;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/c/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+TU;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/b<",
            "-TU;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ae;Ljava/util/concurrent/Callable;Lio/reactivex/e/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "+TU;>;",
            "Lio/reactivex/e/b<",
            "-TU;-TT;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 31
    iput-object p2, p0, Lio/reactivex/internal/operators/c/s;->b:Ljava/util/concurrent/Callable;

    .line 32
    iput-object p3, p0, Lio/reactivex/internal/operators/c/s;->c:Lio/reactivex/e/b;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TU;>;)V"
        }
    .end annotation

    .line 39
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/s;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The initialSupplier returned a null value"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    iget-object v1, p0, Lio/reactivex/internal/operators/c/s;->a:Lio/reactivex/ae;

    new-instance v2, Lio/reactivex/internal/operators/c/s$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/c/s;->c:Lio/reactivex/e/b;

    invoke-direct {v2, p1, v0, v3}, Lio/reactivex/internal/operators/c/s$a;-><init>(Lio/reactivex/ag;Ljava/lang/Object;Lio/reactivex/e/b;)V

    invoke-interface {v1, v2}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void

    :catchall_0
    move-exception v0

    .line 41
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/ag;)V

    return-void
.end method