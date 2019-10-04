.class final Lio/reactivex/internal/operators/c/v$b$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/v$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/ag<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TU;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/operators/c/v$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/v$b<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/internal/operators/c/v$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TU;>;",
            "Lio/reactivex/internal/operators/c/v$b<",
            "**>;)V"
        }
    .end annotation

    .line 240
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 241
    iput-object p1, p0, Lio/reactivex/internal/operators/c/v$b$a;->a:Lio/reactivex/ag;

    .line 242
    iput-object p2, p0, Lio/reactivex/internal/operators/c/v$b$a;->b:Lio/reactivex/internal/operators/c/v$b;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 2

    .line 263
    iget-object v0, p0, Lio/reactivex/internal/operators/c/v$b$a;->b:Lio/reactivex/internal/operators/c/v$b;

    const/4 v1, 0x0

    .line 1155
    iput-boolean v1, v0, Lio/reactivex/internal/operators/c/v$b;->g:Z

    .line 1156
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/v$b;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 257
    iget-object v0, p0, Lio/reactivex/internal/operators/c/v$b$a;->b:Lio/reactivex/internal/operators/c/v$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/v$b;->dispose()V

    .line 258
    iget-object v0, p0, Lio/reactivex/internal/operators/c/v$b$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lio/reactivex/internal/operators/c/v$b$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 247
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
