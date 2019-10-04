.class final Lio/reactivex/internal/operators/c/h$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/h;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/ag<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/c/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/h$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TT;>;"
        }
    .end annotation
.end field

.field d:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/h$a;ILio/reactivex/ag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/h$a<",
            "TT;>;I",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 150
    iput-object p1, p0, Lio/reactivex/internal/operators/c/h$b;->a:Lio/reactivex/internal/operators/c/h$a;

    .line 151
    iput p2, p0, Lio/reactivex/internal/operators/c/h$b;->b:I

    .line 152
    iput-object p3, p0, Lio/reactivex/internal/operators/c/h$b;->c:Lio/reactivex/ag;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 201
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final onComplete()V
    .locals 2

    .line 190
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/h$b;->d:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lio/reactivex/internal/operators/c/h$b;->c:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/h$b;->a:Lio/reactivex/internal/operators/c/h$a;

    iget v1, p0, Lio/reactivex/internal/operators/c/h$b;->b:I

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/c/h$a;->win(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/h$b;->d:Z

    .line 195
    iget-object v0, p0, Lio/reactivex/internal/operators/c/h$b;->c:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    :cond_1
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 176
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/h$b;->d:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lio/reactivex/internal/operators/c/h$b;->c:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/h$b;->a:Lio/reactivex/internal/operators/c/h$a;

    iget v1, p0, Lio/reactivex/internal/operators/c/h$b;->b:I

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/c/h$a;->win(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/h$b;->d:Z

    .line 181
    iget-object v0, p0, Lio/reactivex/internal/operators/c/h$b;->c:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 183
    :cond_1
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 162
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/h$b;->d:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lio/reactivex/internal/operators/c/h$b;->c:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/h$b;->a:Lio/reactivex/internal/operators/c/h$a;

    iget v1, p0, Lio/reactivex/internal/operators/c/h$b;->b:I

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/c/h$a;->win(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/h$b;->d:Z

    .line 167
    iget-object v0, p0, Lio/reactivex/internal/operators/c/h$b;->c:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    return-void

    .line 169
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/h$b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/b/c;

    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 157
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
