.class final Lio/reactivex/internal/operators/maybe/aa$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/aa$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/operators/maybe/aa$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/aa$a$a<",
            "TT;TU;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/t;Lio/reactivex/e/h;Lio/reactivex/e/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TR;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TU;>;>;",
            "Lio/reactivex/e/c<",
            "-TT;-TU;+TR;>;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lio/reactivex/internal/operators/maybe/aa$a$a;

    invoke-direct {v0, p1, p3}, Lio/reactivex/internal/operators/maybe/aa$a$a;-><init>(Lio/reactivex/t;Lio/reactivex/e/c;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/aa$a;->b:Lio/reactivex/internal/operators/maybe/aa$a$a;

    .line 63
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/aa$a;->a:Lio/reactivex/e/h;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 68
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/aa$a;->b:Lio/reactivex/internal/operators/maybe/aa$a$a;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/aa$a;->b:Lio/reactivex/internal/operators/maybe/aa$a$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/aa$a$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/b/c;)Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/aa$a;->b:Lio/reactivex/internal/operators/maybe/aa$a$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/aa$a$a;->a:Lio/reactivex/t;

    invoke-interface {v0}, Lio/reactivex/t;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/aa$a;->b:Lio/reactivex/internal/operators/maybe/aa$a$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/aa$a$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/aa$a;->b:Lio/reactivex/internal/operators/maybe/aa$a$a;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/aa$a;->b:Lio/reactivex/internal/operators/maybe/aa$a$a;

    iget-object p1, p1, Lio/reactivex/internal/operators/maybe/aa$a$a;->a:Lio/reactivex/t;

    invoke-interface {p1, p0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 88
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/aa$a;->a:Lio/reactivex/e/h;

    invoke-interface {v0, p1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null MaybeSource"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/aa$a;->b:Lio/reactivex/internal/operators/maybe/aa$a$a;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/aa$a;->b:Lio/reactivex/internal/operators/maybe/aa$a$a;

    iput-object p1, v1, Lio/reactivex/internal/operators/maybe/aa$a$a;->c:Ljava/lang/Object;

    .line 97
    invoke-interface {v0, v1}, Lio/reactivex/w;->subscribe(Lio/reactivex/t;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 90
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/aa$a;->b:Lio/reactivex/internal/operators/maybe/aa$a$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/aa$a$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
