.class final Lio/reactivex/internal/operators/maybe/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/s;
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
        "Ljava/lang/Object;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/t<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/b<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field c:Lio/reactivex/b/c;


# direct methods
.method constructor <init>(Lio/reactivex/t;Lio/reactivex/e/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;",
            "Lio/reactivex/e/b<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/s$a;->a:Lio/reactivex/t;

    .line 51
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/s$a;->b:Lio/reactivex/e/b;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 56
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/s$a;->c:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 57
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/s$a;->c:Lio/reactivex/b/c;

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/s$a;->c:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 105
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/s$a;->c:Lio/reactivex/b/c;

    .line 108
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/s$a;->b:Lio/reactivex/e/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lio/reactivex/e/b;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/s$a;->a:Lio/reactivex/t;

    invoke-interface {v0}, Lio/reactivex/t;->onComplete()V

    return-void

    :catchall_0
    move-exception v0

    .line 110
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 111
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/s$a;->a:Lio/reactivex/t;

    invoke-interface {v1, v0}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 91
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/s$a;->c:Lio/reactivex/b/c;

    .line 94
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/s$a;->b:Lio/reactivex/e/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lio/reactivex/e/b;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 96
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 97
    new-instance v1, Lio/reactivex/c/a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 100
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/s$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/s$a;->c:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/s$a;->c:Lio/reactivex/b/c;

    .line 70
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/s$a;->a:Lio/reactivex/t;

    invoke-interface {p1, p0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 76
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/s$a;->c:Lio/reactivex/b/c;

    .line 79
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/s$a;->b:Lio/reactivex/e/b;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lio/reactivex/e/b;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/s$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 81
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 82
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/s$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
