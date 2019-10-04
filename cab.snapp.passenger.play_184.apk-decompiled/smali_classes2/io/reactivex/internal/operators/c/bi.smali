.class public final Lio/reactivex/internal/operators/c/bi;
.super Lio/reactivex/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/bi$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TS;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/c<",
            "TS;",
            "Lio/reactivex/i<",
            "TT;>;TS;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lio/reactivex/e/c;Lio/reactivex/e/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "Lio/reactivex/e/c<",
            "TS;",
            "Lio/reactivex/i<",
            "TT;>;TS;>;",
            "Lio/reactivex/e/g<",
            "-TS;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 32
    iput-object p1, p0, Lio/reactivex/internal/operators/c/bi;->a:Ljava/util/concurrent/Callable;

    .line 33
    iput-object p2, p0, Lio/reactivex/internal/operators/c/bi;->b:Lio/reactivex/e/c;

    .line 34
    iput-object p3, p0, Lio/reactivex/internal/operators/c/bi;->c:Lio/reactivex/e/g;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 42
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bi;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    new-instance v1, Lio/reactivex/internal/operators/c/bi$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/bi;->b:Lio/reactivex/e/c;

    iget-object v3, p0, Lio/reactivex/internal/operators/c/bi;->c:Lio/reactivex/e/g;

    invoke-direct {v1, p1, v2, v3, v0}, Lio/reactivex/internal/operators/c/bi$a;-><init>(Lio/reactivex/ag;Lio/reactivex/e/c;Lio/reactivex/e/g;Ljava/lang/Object;)V

    .line 50
    invoke-interface {p1, v1}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 51
    invoke-virtual {v1}, Lio/reactivex/internal/operators/c/bi$a;->run()V

    return-void

    :catchall_0
    move-exception v0

    .line 44
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 45
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/ag;)V

    return-void
.end method
