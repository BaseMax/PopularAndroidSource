.class public final Lio/reactivex/internal/operators/flowable/t;
.super Lio/reactivex/ai;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/t$a;
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
        "Lio/reactivex/internal/b/b<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j<",
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
.method public constructor <init>(Lio/reactivex/j;Ljava/util/concurrent/Callable;Lio/reactivex/e/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "+TU;>;",
            "Lio/reactivex/e/b<",
            "-TU;-TT;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lio/reactivex/ai;-><init>()V

    .line 37
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/t;->a:Lio/reactivex/j;

    .line 38
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/t;->b:Ljava/util/concurrent/Callable;

    .line 39
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/t;->c:Lio/reactivex/e/b;

    return-void
.end method


# virtual methods
.method public final fuseToFlowable()Lio/reactivex/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TU;>;"
        }
    .end annotation

    .line 57
    new-instance v0, Lio/reactivex/internal/operators/flowable/s;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/t;->a:Lio/reactivex/j;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/t;->b:Ljava/util/concurrent/Callable;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/t;->c:Lio/reactivex/e/b;

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/internal/operators/flowable/s;-><init>(Lio/reactivex/j;Ljava/util/concurrent/Callable;Lio/reactivex/e/b;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

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

    .line 46
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The initialSupplier returned a null value"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/t;->a:Lio/reactivex/j;

    new-instance v2, Lio/reactivex/internal/operators/flowable/t$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/t;->c:Lio/reactivex/e/b;

    invoke-direct {v2, p1, v0, v3}, Lio/reactivex/internal/operators/flowable/t$a;-><init>(Lio/reactivex/al;Ljava/lang/Object;Lio/reactivex/e/b;)V

    invoke-virtual {v1, v2}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void

    :catchall_0
    move-exception v0

    .line 48
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/al;)V

    return-void
.end method
