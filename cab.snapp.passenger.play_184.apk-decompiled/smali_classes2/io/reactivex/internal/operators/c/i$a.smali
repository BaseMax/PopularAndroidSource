.class final Lio/reactivex/internal/operators/c/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/i;
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
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/q<",
            "-TT;>;"
        }
    .end annotation
.end field

.field c:Lio/reactivex/b/c;

.field d:Z


# direct methods
.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/e/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/reactivex/e/q<",
            "-TT;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lio/reactivex/internal/operators/c/i$a;->a:Lio/reactivex/ag;

    .line 45
    iput-object p2, p0, Lio/reactivex/internal/operators/c/i$a;->b:Lio/reactivex/e/q;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/c/i$a;->c:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lio/reactivex/internal/operators/c/i$a;->c:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 91
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/i$a;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/i$a;->d:Z

    .line 93
    iget-object v0, p0, Lio/reactivex/internal/operators/c/i$a;->a:Lio/reactivex/ag;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/c/i$a;->a:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 80
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/i$a;->d:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/i$a;->d:Z

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/c/i$a;->a:Lio/reactivex/ag;

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

    .line 58
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/i$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 63
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/i$a;->b:Lio/reactivex/e/q;

    invoke-interface {v0, p1}, Lio/reactivex/e/q;->test(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lio/reactivex/internal/operators/c/i$a;->d:Z

    .line 72
    iget-object p1, p0, Lio/reactivex/internal/operators/c/i$a;->c:Lio/reactivex/b/c;

    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    .line 73
    iget-object p1, p0, Lio/reactivex/internal/operators/c/i$a;->a:Lio/reactivex/ag;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    .line 74
    iget-object p1, p0, Lio/reactivex/internal/operators/c/i$a;->a:Lio/reactivex/ag;

    invoke-interface {p1}, Lio/reactivex/ag;->onComplete()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 65
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 66
    iget-object v0, p0, Lio/reactivex/internal/operators/c/i$a;->c:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 67
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/i$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lio/reactivex/internal/operators/c/i$a;->c:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iput-object p1, p0, Lio/reactivex/internal/operators/c/i$a;->c:Lio/reactivex/b/c;

    .line 52
    iget-object p1, p0, Lio/reactivex/internal/operators/c/i$a;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method
