.class final Lio/reactivex/internal/operators/c/di$a;
.super Ljava/util/ArrayDeque;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/di;
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
        "Ljava/util/ArrayDeque<",
        "TT;>;",
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
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:I

.field c:Lio/reactivex/b/c;


# direct methods
.method constructor <init>(Lio/reactivex/ag;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p2}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 45
    iput-object p1, p0, Lio/reactivex/internal/operators/c/di$a;->a:Lio/reactivex/ag;

    .line 46
    iput p2, p0, Lio/reactivex/internal/operators/c/di$a;->b:I

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 59
    iget-object v0, p0, Lio/reactivex/internal/operators/c/di$a;->c:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/c/di$a;->c:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 82
    iget-object v0, p0, Lio/reactivex/internal/operators/c/di$a;->a:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/c/di$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 69
    iget v0, p0, Lio/reactivex/internal/operators/c/di$a;->b:I

    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/di$a;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/c/di$a;->a:Lio/reactivex/ag;

    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/di$a;->poll()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    .line 72
    :cond_0
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/di$a;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lio/reactivex/internal/operators/c/di$a;->c:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iput-object p1, p0, Lio/reactivex/internal/operators/c/di$a;->c:Lio/reactivex/b/c;

    .line 53
    iget-object p1, p0, Lio/reactivex/internal/operators/c/di$a;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method
