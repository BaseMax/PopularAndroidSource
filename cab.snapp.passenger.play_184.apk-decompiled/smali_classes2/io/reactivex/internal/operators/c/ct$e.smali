.class final Lio/reactivex/internal/operators/c/ct$e;
.super Lio/reactivex/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/f/a<",
            "TU;>;>;"
        }
    .end annotation
.end field

.field private final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/z<",
            "TU;>;+",
            "Lio/reactivex/ae<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/f/a<",
            "TU;>;>;",
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/z<",
            "TU;>;+",
            "Lio/reactivex/ae<",
            "TR;>;>;)V"
        }
    .end annotation

    .line 1032
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 1033
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ct$e;->a:Ljava/util/concurrent/Callable;

    .line 1034
    iput-object p2, p0, Lio/reactivex/internal/operators/c/ct$e;->b:Lio/reactivex/e/h;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1042
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ct$e;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The connectableFactory returned a null ConnectableObservable"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/f/a;

    .line 1043
    iget-object v1, p0, Lio/reactivex/internal/operators/c/ct$e;->b:Lio/reactivex/e/h;

    invoke-interface {v1, v0}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The selector returned a null ObservableSource"

    invoke-static {v1, v2}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    new-instance v2, Lio/reactivex/internal/operators/c/ep;

    invoke-direct {v2, p1}, Lio/reactivex/internal/operators/c/ep;-><init>(Lio/reactivex/ag;)V

    .line 1052
    invoke-interface {v1, v2}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    .line 1054
    new-instance p1, Lio/reactivex/internal/operators/c/ct$c;

    invoke-direct {p1, v2}, Lio/reactivex/internal/operators/c/ct$c;-><init>(Lio/reactivex/internal/operators/c/ep;)V

    invoke-virtual {v0, p1}, Lio/reactivex/f/a;->connect(Lio/reactivex/e/g;)V

    return-void

    :catchall_0
    move-exception v0

    .line 1045
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1046
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/ag;)V

    return-void
.end method
