.class final Lio/reactivex/internal/operators/c/an$a;
.super Lio/reactivex/internal/c/b;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/c/b<",
        "TT;>;",
        "Lio/reactivex/ag<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/a;

.field c:Lio/reactivex/b/c;

.field d:Lio/reactivex/internal/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field e:Z


# direct methods
.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;",
            "Lio/reactivex/e/a;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lio/reactivex/internal/c/b;-><init>()V

    .line 61
    iput-object p1, p0, Lio/reactivex/internal/operators/c/an$a;->a:Lio/reactivex/ag;

    .line 62
    iput-object p2, p0, Lio/reactivex/internal/operators/c/an$a;->b:Lio/reactivex/e/a;

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 140
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/c/an$a;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/an$a;->b:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 144
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 145
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 121
    iget-object v0, p0, Lio/reactivex/internal/operators/c/an$a;->d:Lio/reactivex/internal/b/e;

    invoke-interface {v0}, Lio/reactivex/internal/b/e;->clear()V

    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 97
    iget-object v0, p0, Lio/reactivex/internal/operators/c/an$a;->c:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 98
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/an$a;->a()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/c/an$a;->c:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lio/reactivex/internal/operators/c/an$a;->d:Lio/reactivex/internal/b/e;

    invoke-interface {v0}, Lio/reactivex/internal/b/e;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/c/an$a;->a:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    .line 92
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/an$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/c/an$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    .line 86
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/an$a;->a()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lio/reactivex/internal/operators/c/an$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lio/reactivex/internal/operators/c/an$a;->c:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iput-object p1, p0, Lio/reactivex/internal/operators/c/an$a;->c:Lio/reactivex/b/c;

    .line 70
    instance-of v0, p1, Lio/reactivex/internal/b/e;

    if-eqz v0, :cond_0

    .line 71
    check-cast p1, Lio/reactivex/internal/b/e;

    iput-object p1, p0, Lio/reactivex/internal/operators/c/an$a;->d:Lio/reactivex/internal/b/e;

    .line 74
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/c/an$a;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_1
    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/c/an$a;->d:Lio/reactivex/internal/b/e;

    invoke-interface {v0}, Lio/reactivex/internal/b/e;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
    iget-boolean v1, p0, Lio/reactivex/internal/operators/c/an$a;->e:Z

    if-eqz v1, :cond_0

    .line 134
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/an$a;->a()V

    :cond_0
    return-object v0
.end method

.method public final requestFusion(I)I
    .locals 3

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/c/an$a;->d:Lio/reactivex/internal/b/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    and-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_2

    .line 110
    invoke-interface {v0, p1}, Lio/reactivex/internal/b/e;->requestFusion(I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 112
    :goto_0
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/an$a;->e:Z

    :cond_1
    return p1

    :cond_2
    return v1
.end method
