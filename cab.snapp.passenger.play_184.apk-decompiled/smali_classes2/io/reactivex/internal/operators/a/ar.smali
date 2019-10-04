.class public final Lio/reactivex/internal/operators/a/ar;
.super Lio/reactivex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/a/ar$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/a;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TR;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TR;+",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final d:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;Lio/reactivex/e/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lio/reactivex/e/h<",
            "-TR;+",
            "Lio/reactivex/g;",
            ">;",
            "Lio/reactivex/e/g<",
            "-TR;>;Z)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 37
    iput-object p1, p0, Lio/reactivex/internal/operators/a/ar;->a:Ljava/util/concurrent/Callable;

    .line 38
    iput-object p2, p0, Lio/reactivex/internal/operators/a/ar;->b:Lio/reactivex/e/h;

    .line 39
    iput-object p3, p0, Lio/reactivex/internal/operators/a/ar;->c:Lio/reactivex/e/g;

    .line 40
    iput-boolean p4, p0, Lio/reactivex/internal/operators/a/ar;->d:Z

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 5

    .line 48
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ar;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 58
    :try_start_1
    iget-object v1, p0, Lio/reactivex/internal/operators/a/ar;->b:Lio/reactivex/e/h;

    invoke-interface {v1, v0}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The completableFunction returned a null CompletableSource"

    invoke-static {v1, v2}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    new-instance v2, Lio/reactivex/internal/operators/a/ar$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/a/ar;->c:Lio/reactivex/e/g;

    iget-boolean v4, p0, Lio/reactivex/internal/operators/a/ar;->d:Z

    invoke-direct {v2, p1, v0, v3, v4}, Lio/reactivex/internal/operators/a/ar$a;-><init>(Lio/reactivex/d;Ljava/lang/Object;Lio/reactivex/e/g;Z)V

    invoke-interface {v1, v2}, Lio/reactivex/g;->subscribe(Lio/reactivex/d;)V

    return-void

    :catchall_0
    move-exception v1

    .line 60
    invoke-static {v1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 61
    iget-boolean v2, p0, Lio/reactivex/internal/operators/a/ar;->d:Z

    if-eqz v2, :cond_0

    .line 63
    :try_start_2
    iget-object v2, p0, Lio/reactivex/internal/operators/a/ar;->c:Lio/reactivex/e/g;

    invoke-interface {v2, v0}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 65
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 66
    new-instance v2, Lio/reactivex/c/a;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-direct {v2, v3}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v2, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/d;)V

    return-void

    .line 71
    :cond_0
    :goto_0
    invoke-static {v1, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/d;)V

    .line 73
    iget-boolean p1, p0, Lio/reactivex/internal/operators/a/ar;->d:Z

    if-nez p1, :cond_1

    .line 75
    :try_start_3
    iget-object p1, p0, Lio/reactivex/internal/operators/a/ar;->c:Lio/reactivex/e/g;

    invoke-interface {p1, v0}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    .line 77
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 78
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_3
    move-exception v0

    .line 50
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 51
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/d;)V

    return-void
.end method
