.class final Lio/reactivex/internal/operators/c/dq$a;
.super Ljava/util/ArrayDeque;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/dq;
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

.field volatile d:Z


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

    .line 45
    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    .line 46
    iput-object p1, p0, Lio/reactivex/internal/operators/c/dq$a;->a:Lio/reactivex/ag;

    .line 47
    iput p2, p0, Lio/reactivex/internal/operators/c/dq$a;->b:I

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 91
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/dq$a;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/dq$a;->d:Z

    .line 93
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dq$a;->c:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/dq$a;->d:Z

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dq$a;->a:Lio/reactivex/ag;

    .line 75
    :goto_0
    iget-boolean v1, p0, Lio/reactivex/internal/operators/c/dq$a;->d:Z

    if-eqz v1, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/dq$a;->poll()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 80
    iget-boolean v1, p0, Lio/reactivex/internal/operators/c/dq$a;->d:Z

    if-nez v1, :cond_1

    .line 81
    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    :cond_1
    return-void

    .line 85
    :cond_2
    invoke-interface {v0, v1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dq$a;->a:Lio/reactivex/ag;

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

    .line 60
    iget v0, p0, Lio/reactivex/internal/operators/c/dq$a;->b:I

    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/dq$a;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/dq$a;->poll()Ljava/lang/Object;

    .line 63
    :cond_0
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/dq$a;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dq$a;->c:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iput-object p1, p0, Lio/reactivex/internal/operators/c/dq$a;->c:Lio/reactivex/b/c;

    .line 54
    iget-object p1, p0, Lio/reactivex/internal/operators/c/dq$a;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method
