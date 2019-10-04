.class final Lio/reactivex/internal/operators/c/cw$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/cw$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/ag<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/c/cw$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/cw$a;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cw$a$a;->a:Lio/reactivex/internal/operators/c/cw$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 3

    .line 178
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cw$a$a;->a:Lio/reactivex/internal/operators/c/cw$a;

    .line 1137
    iget-object v1, v0, Lio/reactivex/internal/operators/c/cw$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 1138
    iget-object v1, v0, Lio/reactivex/internal/operators/c/cw$a;->a:Lio/reactivex/ag;

    iget-object v2, v0, Lio/reactivex/internal/operators/c/cw$a;->c:Lio/reactivex/internal/util/b;

    invoke-static {v1, v0, v2}, Lio/reactivex/internal/util/i;->onComplete(Lio/reactivex/ag;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/b;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 173
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cw$a$a;->a:Lio/reactivex/internal/operators/c/cw$a;

    .line 1132
    iget-object v1, v0, Lio/reactivex/internal/operators/c/cw$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 1133
    iget-object v1, v0, Lio/reactivex/internal/operators/c/cw$a;->a:Lio/reactivex/ag;

    iget-object v2, v0, Lio/reactivex/internal/operators/c/cw$a;->c:Lio/reactivex/internal/util/b;

    invoke-static {v1, p1, v0, v2}, Lio/reactivex/internal/util/i;->onError(Lio/reactivex/ag;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/b;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0

    .line 168
    iget-object p1, p0, Lio/reactivex/internal/operators/c/cw$a$a;->a:Lio/reactivex/internal/operators/c/cw$a;

    .line 1128
    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/cw$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 163
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
