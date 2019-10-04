.class public final Lio/reactivex/internal/operators/a/g;
.super Lio/reactivex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/a/g$a;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/e;


# direct methods
.method public constructor <init>(Lio/reactivex/e;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 30
    iput-object p1, p0, Lio/reactivex/internal/operators/a/g;->a:Lio/reactivex/e;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 1

    .line 35
    new-instance v0, Lio/reactivex/internal/operators/a/g$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/a/g$a;-><init>(Lio/reactivex/d;)V

    .line 36
    invoke-interface {p1, v0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    .line 39
    :try_start_0
    iget-object p1, p0, Lio/reactivex/internal/operators/a/g;->a:Lio/reactivex/e;

    invoke-interface {p1, v0}, Lio/reactivex/e;->subscribe(Lio/reactivex/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 41
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 42
    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/a/g$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
