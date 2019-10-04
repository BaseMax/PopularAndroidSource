.class final Lio/reactivex/internal/operators/c/cm$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/cm;
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
        "Ljava/lang/Object;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/t<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/c<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field

.field c:Z

.field d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field e:Lio/reactivex/b/c;


# direct methods
.method constructor <init>(Lio/reactivex/t;Lio/reactivex/e/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;",
            "Lio/reactivex/e/c<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cm$a;->a:Lio/reactivex/t;

    .line 60
    iput-object p2, p0, Lio/reactivex/internal/operators/c/cm$a;->b:Lio/reactivex/e/c;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 119
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cm$a;->e:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cm$a;->e:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 104
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/cm$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/cm$a;->c:Z

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cm$a;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 109
    iput-object v1, p0, Lio/reactivex/internal/operators/c/cm$a;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 111
    iget-object v1, p0, Lio/reactivex/internal/operators/c/cm$a;->a:Lio/reactivex/t;

    invoke-interface {v1, v0}, Lio/reactivex/t;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cm$a;->a:Lio/reactivex/t;

    invoke-interface {v0}, Lio/reactivex/t;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 93
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/cm$a;->c:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/cm$a;->c:Z

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lio/reactivex/internal/operators/c/cm$a;->d:Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cm$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 74
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/cm$a;->c:Z

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cm$a;->d:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 78
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cm$a;->d:Ljava/lang/Object;

    return-void

    .line 81
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/c/cm$a;->b:Lio/reactivex/e/c;

    invoke-interface {v1, v0, p1}, Lio/reactivex/e/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The reducer returned a null value"

    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/operators/c/cm$a;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 83
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 84
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cm$a;->e:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 85
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/cm$a;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cm$a;->e:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cm$a;->e:Lio/reactivex/b/c;

    .line 68
    iget-object p1, p0, Lio/reactivex/internal/operators/c/cm$a;->a:Lio/reactivex/t;

    invoke-interface {p1, p0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method
