.class public final Lio/reactivex/internal/operators/maybe/j;
.super Lio/reactivex/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/q<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/u<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/u<",
            "TT;>;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    .line 36
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/j;->a:Lio/reactivex/u;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    .line 41
    new-instance v0, Lio/reactivex/internal/operators/maybe/j$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/maybe/j$a;-><init>(Lio/reactivex/t;)V

    .line 42
    invoke-interface {p1, v0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/b/c;)V

    .line 45
    :try_start_0
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/j;->a:Lio/reactivex/u;

    invoke-interface {p1, v0}, Lio/reactivex/u;->subscribe(Lio/reactivex/s;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 47
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 48
    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/maybe/j$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
