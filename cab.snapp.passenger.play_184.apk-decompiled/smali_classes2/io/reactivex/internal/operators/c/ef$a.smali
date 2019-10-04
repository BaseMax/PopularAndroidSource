.class final Lio/reactivex/internal/operators/c/ef$a;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;"
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

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-TD;>;"
        }
    .end annotation
.end field

.field final d:Z

.field e:Lio/reactivex/b/c;


# direct methods
.method constructor <init>(Lio/reactivex/ag;Ljava/lang/Object;Lio/reactivex/e/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;TD;",
            "Lio/reactivex/e/g<",
            "-TD;>;Z)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 88
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ef$a;->a:Lio/reactivex/ag;

    .line 89
    iput-object p2, p0, Lio/reactivex/internal/operators/c/ef$a;->b:Ljava/lang/Object;

    .line 90
    iput-object p3, p0, Lio/reactivex/internal/operators/c/ef$a;->c:Lio/reactivex/e/g;

    .line 91
    iput-boolean p4, p0, Lio/reactivex/internal/operators/c/ef$a;->d:Z

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 162
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/c/ef$a;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ef$a;->c:Lio/reactivex/e/g;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/ef$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 166
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 168
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 152
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ef$a;->a()V

    .line 153
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ef$a;->e:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 158
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ef$a;->get()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 130
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ef$a;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 131
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/c/ef$a;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ef$a;->c:Lio/reactivex/e/g;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/ef$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 135
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 136
    iget-object v1, p0, Lio/reactivex/internal/operators/c/ef$a;->a:Lio/reactivex/ag;

    invoke-interface {v1, v0}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 141
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ef$a;->e:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 142
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ef$a;->a:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ef$a;->a:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    .line 145
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ef$a;->e:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 146
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ef$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 109
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ef$a;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0, v1, v0}, Lio/reactivex/internal/operators/c/ef$a;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/c/ef$a;->c:Lio/reactivex/e/g;

    iget-object v3, p0, Lio/reactivex/internal/operators/c/ef$a;->b:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 114
    invoke-static {v2}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 115
    new-instance v3, Lio/reactivex/c/a;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object p1, v4, v1

    aput-object v2, v4, v0

    invoke-direct {v3, v4}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v3

    .line 119
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ef$a;->e:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 120
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ef$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ef$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    .line 123
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ef$a;->e:Lio/reactivex/b/c;

    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    .line 124
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ef$a;->a()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ef$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ef$a;->e:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ef$a;->e:Lio/reactivex/b/c;

    .line 98
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ef$a;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method
