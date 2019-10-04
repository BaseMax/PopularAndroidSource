.class final Lio/reactivex/internal/operators/c/cn$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/cn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/al<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/c<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field d:Lio/reactivex/b/c;


# direct methods
.method constructor <init>(Lio/reactivex/al;Lio/reactivex/e/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-TR;>;",
            "Lio/reactivex/e/c<",
            "TR;-TT;TR;>;TR;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cn$a;->a:Lio/reactivex/al;

    .line 62
    iput-object p3, p0, Lio/reactivex/internal/operators/c/cn$a;->c:Ljava/lang/Object;

    .line 63
    iput-object p2, p0, Lio/reactivex/internal/operators/c/cn$a;->b:Lio/reactivex/e/c;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cn$a;->d:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cn$a;->d:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 102
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cn$a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 104
    iput-object v1, p0, Lio/reactivex/internal/operators/c/cn$a;->c:Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lio/reactivex/internal/operators/c/cn$a;->a:Lio/reactivex/al;

    invoke-interface {v1, v0}, Lio/reactivex/al;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cn$a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lio/reactivex/internal/operators/c/cn$a;->c:Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cn$a;->a:Lio/reactivex/al;

    invoke-interface {v0, p1}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 96
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cn$a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/c/cn$a;->b:Lio/reactivex/e/c;

    invoke-interface {v1, v0, p1}, Lio/reactivex/e/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The reducer returned a null value"

    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/operators/c/cn$a;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 82
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 83
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cn$a;->d:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 84
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/cn$a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cn$a;->d:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cn$a;->d:Lio/reactivex/b/c;

    .line 71
    iget-object p1, p0, Lio/reactivex/internal/operators/c/cn$a;->a:Lio/reactivex/al;

    invoke-interface {p1, p0}, Lio/reactivex/al;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method
