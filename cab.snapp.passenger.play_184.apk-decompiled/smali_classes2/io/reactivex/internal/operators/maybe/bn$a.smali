.class final Lio/reactivex/internal/operators/maybe/bn$a;
.super Lio/reactivex/internal/c/l;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/bn;
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
        "Lio/reactivex/internal/c/l<",
        "TT;>;",
        "Lio/reactivex/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field c:Lio/reactivex/b/c;


# direct methods
.method constructor <init>(Lio/reactivex/ag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1}, Lio/reactivex/internal/c/l;-><init>(Lio/reactivex/ag;)V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 95
    invoke-super {p0}, Lio/reactivex/internal/c/l;->dispose()V

    .line 96
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bn$a;->c:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    return-void
.end method

.method public final onComplete()V
    .locals 0

    .line 90
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/bn$a;->complete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/maybe/bn$a;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bn$a;->c:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/bn$a;->c:Lio/reactivex/b/c;

    .line 74
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/bn$a;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 80
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/maybe/bn$a;->complete(Ljava/lang/Object;)V

    return-void
.end method
