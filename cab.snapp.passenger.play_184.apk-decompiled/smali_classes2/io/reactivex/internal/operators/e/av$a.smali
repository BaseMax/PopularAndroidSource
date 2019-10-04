.class final Lio/reactivex/internal/operators/e/av$a;
.super Lio/reactivex/internal/c/l;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/al;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/e/av;
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
        "Lio/reactivex/al<",
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

    .line 58
    invoke-direct {p0, p1}, Lio/reactivex/internal/c/l;-><init>(Lio/reactivex/ag;)V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 82
    invoke-super {p0}, Lio/reactivex/internal/c/l;->dispose()V

    .line 83
    iget-object v0, p0, Lio/reactivex/internal/operators/e/av$a;->c:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/e/av$a;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/e/av$a;->c:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iput-object p1, p0, Lio/reactivex/internal/operators/e/av$a;->c:Lio/reactivex/b/c;

    .line 66
    iget-object p1, p0, Lio/reactivex/internal/operators/e/av$a;->a:Lio/reactivex/ag;

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

    .line 72
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/e/av$a;->complete(Ljava/lang/Object;)V

    return-void
.end method
