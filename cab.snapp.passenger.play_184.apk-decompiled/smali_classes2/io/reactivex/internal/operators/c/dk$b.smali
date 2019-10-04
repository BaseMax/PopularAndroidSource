.class final Lio/reactivex/internal/operators/c/dk$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/dk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ag<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/disposables/a;

.field c:Lio/reactivex/b/c;

.field volatile d:Z

.field e:Z


# direct methods
.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/internal/disposables/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;",
            "Lio/reactivex/internal/disposables/a;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lio/reactivex/internal/operators/c/dk$b;->a:Lio/reactivex/ag;

    .line 56
    iput-object p2, p0, Lio/reactivex/internal/operators/c/dk$b;->b:Lio/reactivex/internal/disposables/a;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dk$b;->b:Lio/reactivex/internal/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/a;->dispose()V

    .line 87
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dk$b;->a:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dk$b;->b:Lio/reactivex/internal/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/a;->dispose()V

    .line 81
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dk$b;->a:Lio/reactivex/ag;

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

    .line 69
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/dk$b;->e:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dk$b;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    return-void

    .line 72
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/dk$b;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/dk$b;->e:Z

    .line 74
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dk$b;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dk$b;->c:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iput-object p1, p0, Lio/reactivex/internal/operators/c/dk$b;->c:Lio/reactivex/b/c;

    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dk$b;->b:Lio/reactivex/internal/disposables/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/disposables/a;->setResource(ILio/reactivex/b/c;)Z

    :cond_0
    return-void
.end method
