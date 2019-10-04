.class final Lio/reactivex/internal/operators/maybe/v$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/v;
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
        "Lio/reactivex/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/maybe/v$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/v$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/maybe/v$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/maybe/v$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 137
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/v$b;->a:Lio/reactivex/internal/operators/maybe/v$a;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 141
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 162
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/v$b;->a:Lio/reactivex/internal/operators/maybe/v$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/v$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 157
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/v$b;->a:Lio/reactivex/internal/operators/maybe/v$a;

    const/4 v1, 0x0

    .line 1113
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/maybe/v$a;->getAndSet(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 1114
    iget-object v1, v0, Lio/reactivex/internal/operators/maybe/v$a;->b:Lio/reactivex/internal/operators/maybe/v$b;

    if-ne p0, v1, :cond_0

    .line 1115
    iget-object v1, v0, Lio/reactivex/internal/operators/maybe/v$a;->c:Lio/reactivex/internal/operators/maybe/v$b;

    invoke-virtual {v1}, Lio/reactivex/internal/operators/maybe/v$b;->dispose()V

    goto :goto_0

    .line 1117
    :cond_0
    iget-object v1, v0, Lio/reactivex/internal/operators/maybe/v$a;->b:Lio/reactivex/internal/operators/maybe/v$b;

    invoke-virtual {v1}, Lio/reactivex/internal/operators/maybe/v$b;->dispose()V

    .line 1119
    :goto_0
    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/v$a;->a:Lio/reactivex/al;

    invoke-interface {v0, p1}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 1121
    :cond_1
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 146
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/v$b;->b:Ljava/lang/Object;

    .line 152
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/v$b;->a:Lio/reactivex/internal/operators/maybe/v$a;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/maybe/v$a;->a()V

    return-void
.end method
