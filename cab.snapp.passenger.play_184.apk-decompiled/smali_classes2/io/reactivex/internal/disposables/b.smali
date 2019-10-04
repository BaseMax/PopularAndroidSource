.class public final Lio/reactivex/internal/disposables/b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/e/f;",
        ">;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/reactivex/e/f;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 44
    invoke-virtual {p0}, Lio/reactivex/internal/disposables/b;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0}, Lio/reactivex/internal/disposables/b;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/e/f;

    if-eqz v0, :cond_0

    .line 48
    :try_start_0
    invoke-interface {v0}, Lio/reactivex/e/f;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 50
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 51
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 39
    invoke-virtual {p0}, Lio/reactivex/internal/disposables/b;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
