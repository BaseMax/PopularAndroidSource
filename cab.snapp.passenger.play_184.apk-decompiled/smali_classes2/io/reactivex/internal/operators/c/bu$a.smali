.class final Lio/reactivex/internal/operators/c/bu$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/bu;
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
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/al<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field c:Lio/reactivex/b/c;

.field d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/al;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lio/reactivex/internal/operators/c/bu$a;->a:Lio/reactivex/al;

    .line 58
    iput-object p2, p0, Lio/reactivex/internal/operators/c/bu$a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bu$a;->c:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 64
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/c/bu$a;->c:Lio/reactivex/b/c;

    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .line 69
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bu$a;->c:Lio/reactivex/b/c;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 95
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/c/bu$a;->c:Lio/reactivex/b/c;

    .line 96
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bu$a;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 98
    iput-object v1, p0, Lio/reactivex/internal/operators/c/bu$a;->d:Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lio/reactivex/internal/operators/c/bu$a;->a:Lio/reactivex/al;

    invoke-interface {v1, v0}, Lio/reactivex/al;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bu$a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 103
    iget-object v1, p0, Lio/reactivex/internal/operators/c/bu$a;->a:Lio/reactivex/al;

    invoke-interface {v1, v0}, Lio/reactivex/al;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bu$a;->a:Lio/reactivex/al;

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-interface {v0, v1}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 88
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/c/bu$a;->c:Lio/reactivex/b/c;

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lio/reactivex/internal/operators/c/bu$a;->d:Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bu$a;->a:Lio/reactivex/al;

    invoke-interface {v0, p1}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lio/reactivex/internal/operators/c/bu$a;->d:Ljava/lang/Object;

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bu$a;->c:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iput-object p1, p0, Lio/reactivex/internal/operators/c/bu$a;->c:Lio/reactivex/b/c;

    .line 77
    iget-object p1, p0, Lio/reactivex/internal/operators/c/bu$a;->a:Lio/reactivex/al;

    invoke-interface {p1, p0}, Lio/reactivex/al;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method
