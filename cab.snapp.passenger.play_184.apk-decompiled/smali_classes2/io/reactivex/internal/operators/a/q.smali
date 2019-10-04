.class public final Lio/reactivex/internal/operators/a/q;
.super Lio/reactivex/a;
.source "SourceFile"


# instance fields
.field final a:Lio/reactivex/e/a;


# direct methods
.method public constructor <init>(Lio/reactivex/e/a;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 27
    iput-object p1, p0, Lio/reactivex/internal/operators/a/q;->a:Lio/reactivex/e/a;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 2

    .line 32
    invoke-static {}, Lio/reactivex/b/d;->empty()Lio/reactivex/b/c;

    move-result-object v0

    .line 33
    invoke-interface {p1, v0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    .line 35
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/a/q;->a:Lio/reactivex/e/a;

    invoke-interface {v1}, Lio/reactivex/e/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-interface {v0}, Lio/reactivex/b/c;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-interface {p1}, Lio/reactivex/d;->onComplete()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 37
    invoke-static {v1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 38
    invoke-interface {v0}, Lio/reactivex/b/c;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    invoke-interface {p1, v1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 41
    :cond_1
    invoke-static {v1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
