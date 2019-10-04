.class public final Lio/reactivex/internal/operators/c/t;
.super Lio/reactivex/ai;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/b/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/ai<",
        "TU;>;",
        "Lio/reactivex/internal/b/d<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "TT;>;"
        }
    .end annotation
.end field

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

    .line 33
    invoke-direct {p0}, Lio/reactivex/ai;-><init>()V

    .line 34
    iput-object p1, p0, Lio/reactivex/internal/operators/c/t;->a:Lio/reactivex/ae;

    .line 35
    iput-object p2, p0, Lio/reactivex/internal/operators/c/t;->b:Ljava/util/concurrent/Callable;

    .line 36
    iput-object p3, p0, Lio/reactivex/internal/operators/c/t;->c:Lio/reactivex/e/b;

    return-void
.end method


# virtual methods
.method public final fuseToObservable()Lio/reactivex/z;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "TU;>;"
        }
    .end annotation

    .line 54
    new-instance v0, Lio/reactivex/internal/operators/c/s;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/t;->a:Lio/reactivex/ae;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/t;->b:Ljava/util/concurrent/Callable;

    iget-object v3, p0, Lio/reactivex/internal/operators/c/t;->c:Lio/reactivex/e/b;

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/internal/operators/c/s;-><init>(Lio/reactivex/ae;Ljava/util/concurrent/Callable;Lio/reactivex/e/b;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final subscribeActual(Lio/reactivex/al;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-TU;>;)V"
        }
    .end annotation

    .line 43
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/t;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The initialSupplier returned a null value"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    iget-object v1, p0, Lio/reactivex/internal/operators/c/t;->a:Lio/reactivex/ae;

    new-instance v2, Lio/reactivex/internal/operators/c/t$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/c/t;->c:Lio/reactivex/e/b;

    invoke-direct {v2, p1, v0, v3}, Lio/reactivex/internal/operators/c/t$a;-><init>(Lio/reactivex/al;Ljava/lang/Object;Lio/reactivex/e/b;)V

    invoke-interface {v1, v2}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void

    :catchall_0
    move-exception v0

    .line 45
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/al;)V

    return-void
.end method
