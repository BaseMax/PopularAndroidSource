.class final Lio/reactivex/internal/operators/c/cb$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/cb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/cb$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
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

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/b/c;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/operators/c/cb$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/cb$a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/internal/util/b;

.field volatile e:Lio/reactivex/internal/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field volatile g:Z

.field volatile h:Z

.field volatile i:I


# direct methods
.method constructor <init>(Lio/reactivex/ag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 78
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cb$a;->a:Lio/reactivex/ag;

    .line 79
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/cb$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 80
    new-instance p1, Lio/reactivex/internal/operators/c/cb$a$a;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/c/cb$a$a;-><init>(Lio/reactivex/internal/operators/c/cb$a;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/cb$a;->c:Lio/reactivex/internal/operators/c/cb$a$a;

    .line 81
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/cb$a;->d:Lio/reactivex/internal/util/b;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 171
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/cb$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/cb$a;->b()V

    :cond_0
    return-void
.end method

.method final b()V
    .locals 9

    .line 177
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cb$a;->a:Lio/reactivex/ag;

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 182
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lio/reactivex/internal/operators/c/cb$a;->g:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 183
    iput-object v4, p0, Lio/reactivex/internal/operators/c/cb$a;->f:Ljava/lang/Object;

    .line 184
    iput-object v4, p0, Lio/reactivex/internal/operators/c/cb$a;->e:Lio/reactivex/internal/b/i;

    return-void

    .line 188
    :cond_1
    iget-object v3, p0, Lio/reactivex/internal/operators/c/cb$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v3}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 189
    iput-object v4, p0, Lio/reactivex/internal/operators/c/cb$a;->f:Ljava/lang/Object;

    .line 190
    iput-object v4, p0, Lio/reactivex/internal/operators/c/cb$a;->e:Lio/reactivex/internal/b/i;

    .line 191
    iget-object v1, p0, Lio/reactivex/internal/operators/c/cb$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 195
    :cond_2
    iget v3, p0, Lio/reactivex/internal/operators/c/cb$a;->i:I

    const/4 v5, 0x2

    if-ne v3, v1, :cond_3

    .line 197
    iget-object v3, p0, Lio/reactivex/internal/operators/c/cb$a;->f:Ljava/lang/Object;

    .line 198
    iput-object v4, p0, Lio/reactivex/internal/operators/c/cb$a;->f:Ljava/lang/Object;

    .line 199
    iput v5, p0, Lio/reactivex/internal/operators/c/cb$a;->i:I

    .line 201
    invoke-interface {v0, v3}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    const/4 v3, 0x2

    .line 204
    :cond_3
    iget-boolean v6, p0, Lio/reactivex/internal/operators/c/cb$a;->h:Z

    .line 205
    iget-object v7, p0, Lio/reactivex/internal/operators/c/cb$a;->e:Lio/reactivex/internal/b/i;

    if-eqz v7, :cond_4

    .line 206
    invoke-interface {v7}, Lio/reactivex/internal/b/i;->poll()Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    :cond_4
    move-object v7, v4

    :goto_1
    if-nez v7, :cond_5

    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-eqz v6, :cond_6

    if-eqz v8, :cond_6

    if-ne v3, v5, :cond_6

    .line 210
    iput-object v4, p0, Lio/reactivex/internal/operators/c/cb$a;->e:Lio/reactivex/internal/b/i;

    .line 211
    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void

    :cond_6
    if-nez v8, :cond_7

    .line 219
    invoke-interface {v0, v7}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    neg-int v2, v2

    .line 222
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/c/cb$a;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void
.end method

.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/cb$a;->g:Z

    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cb$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 131
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cb$a;->c:Lio/reactivex/internal/operators/c/cb$a$a;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 132
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/cb$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lio/reactivex/internal/operators/c/cb$a;->e:Lio/reactivex/internal/b/i;

    .line 134
    iput-object v0, p0, Lio/reactivex/internal/operators/c/cb$a;->f:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cb$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/b/c;)Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/cb$a;->h:Z

    .line 119
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/cb$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cb$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object p1, p0, Lio/reactivex/internal/operators/c/cb$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 110
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/cb$a;->a()V

    return-void

    .line 112
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

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 91
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/c/cb$a;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cb$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/cb$a;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 1162
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cb$a;->e:Lio/reactivex/internal/b/i;

    if-nez v0, :cond_1

    .line 1164
    new-instance v0, Lio/reactivex/internal/d/c;

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/d/c;-><init>(I)V

    .line 1165
    iput-object v0, p0, Lio/reactivex/internal/operators/c/cb$a;->e:Lio/reactivex/internal/b/i;

    .line 98
    :cond_1
    invoke-interface {v0, p1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/cb$a;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 103
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/cb$a;->b()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cb$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
