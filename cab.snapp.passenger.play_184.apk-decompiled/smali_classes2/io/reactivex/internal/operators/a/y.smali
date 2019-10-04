.class public final Lio/reactivex/internal/operators/a/y;
.super Lio/reactivex/a;
.source "SourceFile"


# instance fields
.field final a:Lio/reactivex/g;

.field final b:Lio/reactivex/f;


# direct methods
.method public constructor <init>(Lio/reactivex/g;Lio/reactivex/f;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 27
    iput-object p1, p0, Lio/reactivex/internal/operators/a/y;->a:Lio/reactivex/g;

    .line 28
    iput-object p2, p0, Lio/reactivex/internal/operators/a/y;->b:Lio/reactivex/f;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 1

    .line 36
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/a/y;->b:Lio/reactivex/f;

    invoke-interface {v0, p1}, Lio/reactivex/f;->apply(Lio/reactivex/d;)Lio/reactivex/d;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lio/reactivex/internal/operators/a/y;->a:Lio/reactivex/g;

    invoke-interface {v0, p1}, Lio/reactivex/g;->subscribe(Lio/reactivex/d;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 42
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 43
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception p1

    .line 40
    throw p1
.end method
