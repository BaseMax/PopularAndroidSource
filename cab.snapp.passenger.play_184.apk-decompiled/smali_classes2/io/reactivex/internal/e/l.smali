.class public final Lio/reactivex/internal/e/l;
.super Lio/reactivex/internal/e/a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lio/reactivex/internal/e/a;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic getWrappedRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 26
    invoke-super {p0}, Lio/reactivex/internal/e/a;->getWrappedRunnable()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public final run()V
    .locals 2

    .line 36
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/e/l;->b:Ljava/lang/Thread;

    const/4 v0, 0x0

    .line 38
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/e/l;->a:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 39
    iput-object v0, p0, Lio/reactivex/internal/e/l;->b:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 41
    iput-object v0, p0, Lio/reactivex/internal/e/l;->b:Ljava/lang/Thread;

    .line 42
    sget-object v0, Lio/reactivex/internal/e/l;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/e/l;->lazySet(Ljava/lang/Object;)V

    .line 43
    invoke-static {v1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
