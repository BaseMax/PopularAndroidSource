.class public final Lio/reactivex/internal/operators/c/eo;
.super Lio/reactivex/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/eo$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/z<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "TU;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/c<",
            "-TT;-TU;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/z;Ljava/lang/Iterable;Lio/reactivex/e/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "TU;>;",
            "Lio/reactivex/e/c<",
            "-TT;-TU;+TV;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 34
    iput-object p1, p0, Lio/reactivex/internal/operators/c/eo;->a:Lio/reactivex/z;

    .line 35
    iput-object p2, p0, Lio/reactivex/internal/operators/c/eo;->b:Ljava/lang/Iterable;

    .line 36
    iput-object p3, p0, Lio/reactivex/internal/operators/c/eo;->c:Lio/reactivex/e/c;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TV;>;)V"
        }
    .end annotation

    .line 44
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eo;->b:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "The iterator returned by other is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 62
    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/ag;)V

    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/c/eo;->a:Lio/reactivex/z;

    new-instance v2, Lio/reactivex/internal/operators/c/eo$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/c/eo;->c:Lio/reactivex/e/c;

    invoke-direct {v2, p1, v0, v3}, Lio/reactivex/internal/operators/c/eo$a;-><init>(Lio/reactivex/ag;Ljava/util/Iterator;Lio/reactivex/e/c;)V

    invoke-virtual {v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/ag;)V

    return-void

    :catchall_0
    move-exception v0

    .line 56
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 57
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/ag;)V

    return-void

    :catchall_1
    move-exception v0

    .line 46
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 47
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/ag;)V

    return-void
.end method