.class final Lio/reactivex/internal/operators/flowable/ba$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ba$a;
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
        "Lio/reactivex/b/c;",
        "Lio/reactivex/d;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/flowable/ba$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/ba$a;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ba$a$a;->a:Lio/reactivex/internal/operators/flowable/ba$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 230
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 235
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ba$a$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/b/c;)Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 220
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ba$a$a;->a:Lio/reactivex/internal/operators/flowable/ba$a;

    .line 1201
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/ba$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v1, p0}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 1202
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/ba$a;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 225
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ba$a$a;->a:Lio/reactivex/internal/operators/flowable/ba$a;

    .line 1206
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/ba$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v1, p0}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 1207
    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/ba$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 215
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
