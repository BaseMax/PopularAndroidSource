.class public final Lio/reactivex/internal/operators/a/f;
.super Lio/reactivex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/a/f$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/g;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 29
    iput-object p1, p0, Lio/reactivex/internal/operators/a/f;->a:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 2

    .line 38
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/a/f;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "The iterator returned is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    new-instance v1, Lio/reactivex/internal/operators/a/f$a;

    invoke-direct {v1, p1, v0}, Lio/reactivex/internal/operators/a/f$a;-><init>(Lio/reactivex/d;Ljava/util/Iterator;)V

    .line 46
    iget-object v0, v1, Lio/reactivex/internal/operators/a/f$a;->c:Lio/reactivex/internal/disposables/f;

    invoke-interface {p1, v0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    .line 47
    invoke-virtual {v1}, Lio/reactivex/internal/operators/a/f$a;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 40
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 41
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/d;)V

    return-void
.end method