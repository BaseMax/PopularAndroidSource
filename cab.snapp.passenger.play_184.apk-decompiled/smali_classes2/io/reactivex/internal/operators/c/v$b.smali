.class final Lio/reactivex/internal/operators/c/v$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/v$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
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
            "-TU;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/operators/c/v$b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/v$b$a<",
            "TU;>;"
        }
    .end annotation
.end field

.field final d:I

.field e:Lio/reactivex/internal/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field f:Lio/reactivex/b/c;

.field volatile g:Z

.field volatile h:Z

.field volatile i:Z

.field j:I


# direct methods
.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/e/h;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TU;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TU;>;>;I)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 81
    iput-object p1, p0, Lio/reactivex/internal/operators/c/v$b;->a:Lio/reactivex/ag;

    .line 82
    iput-object p2, p0, Lio/reactivex/internal/operators/c/v$b;->b:Lio/reactivex/e/h;

    .line 83
    iput p3, p0, Lio/reactivex/internal/operators/c/v$b;->d:I

    .line 84
    new-instance p2, Lio/reactivex/internal/operators/c/v$b$a;

    invoke-direct {p2, p1, p0}, Lio/reactivex/internal/operators/c/v$b$a;-><init>(Lio/reactivex/ag;Lio/reactivex/internal/operators/c/v$b;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/c/v$b;->c:Lio/reactivex/internal/operators/c/v$b$a;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 176
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/v$b;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 181
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/v$b;->h:Z

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lio/reactivex/internal/operators/c/v$b;->e:Lio/reactivex/internal/b/j;

    invoke-interface {v0}, Lio/reactivex/internal/b/j;->clear()V

    return-void

    .line 185
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/v$b;->g:Z

    if-nez v0, :cond_4

    .line 187
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/v$b;->i:Z

    .line 192
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/c/v$b;->e:Lio/reactivex/internal/b/j;

    invoke-interface {v1}, Lio/reactivex/internal/b/j;->poll()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 204
    iput-boolean v2, p0, Lio/reactivex/internal/operators/c/v$b;->h:Z

    .line 205
    iget-object v0, p0, Lio/reactivex/internal/operators/c/v$b;->a:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void

    :cond_3
    if-nez v3, :cond_4

    .line 213
    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/c/v$b;->b:Lio/reactivex/e/h;

    invoke-interface {v0, v1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null ObservableSource"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/ae;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    iput-boolean v2, p0, Lio/reactivex/internal/operators/c/v$b;->g:Z

    .line 223
    iget-object v1, p0, Lio/reactivex/internal/operators/c/v$b;->c:Lio/reactivex/internal/operators/c/v$b$a;

    invoke-interface {v0, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 215
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 216
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/v$b;->dispose()V

    .line 217
    iget-object v1, p0, Lio/reactivex/internal/operators/c/v$b;->e:Lio/reactivex/internal/b/j;

    invoke-interface {v1}, Lio/reactivex/internal/b/j;->clear()V

    .line 218
    iget-object v1, p0, Lio/reactivex/internal/operators/c/v$b;->a:Lio/reactivex/ag;

    invoke-interface {v1, v0}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v0

    .line 194
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 195
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/v$b;->dispose()V

    .line 196
    iget-object v1, p0, Lio/reactivex/internal/operators/c/v$b;->e:Lio/reactivex/internal/b/j;

    invoke-interface {v1}, Lio/reactivex/internal/b/j;->clear()V

    .line 197
    iget-object v1, p0, Lio/reactivex/internal/operators/c/v$b;->a:Lio/reactivex/ag;

    invoke-interface {v1, v0}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 227
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/v$b;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/v$b;->h:Z

    .line 167
    iget-object v0, p0, Lio/reactivex/internal/operators/c/v$b;->c:Lio/reactivex/internal/operators/c/v$b$a;

    .line 1267
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 168
    iget-object v0, p0, Lio/reactivex/internal/operators/c/v$b;->f:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 170
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/v$b;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lio/reactivex/internal/operators/c/v$b;->e:Lio/reactivex/internal/b/j;

    invoke-interface {v0}, Lio/reactivex/internal/b/j;->clear()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/v$b;->h:Z

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 147
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/v$b;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/v$b;->i:Z

    .line 151
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/v$b;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 136
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/v$b;->i:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/v$b;->i:Z

    .line 141
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/v$b;->dispose()V

    .line 142
    iget-object v0, p0, Lio/reactivex/internal/operators/c/v$b;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 125
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/v$b;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/c/v$b;->j:I

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lio/reactivex/internal/operators/c/v$b;->e:Lio/reactivex/internal/b/j;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/j;->offer(Ljava/lang/Object;)Z

    .line 131
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/v$b;->a()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/c/v$b;->f:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    iput-object p1, p0, Lio/reactivex/internal/operators/c/v$b;->f:Lio/reactivex/b/c;

    .line 91
    instance-of v0, p1, Lio/reactivex/internal/b/e;

    if-eqz v0, :cond_1

    .line 93
    check-cast p1, Lio/reactivex/internal/b/e;

    const/4 v0, 0x3

    .line 95
    invoke-interface {p1, v0}, Lio/reactivex/internal/b/e;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 97
    iput v0, p0, Lio/reactivex/internal/operators/c/v$b;->j:I

    .line 98
    iput-object p1, p0, Lio/reactivex/internal/operators/c/v$b;->e:Lio/reactivex/internal/b/j;

    .line 99
    iput-boolean v1, p0, Lio/reactivex/internal/operators/c/v$b;->i:Z

    .line 101
    iget-object p1, p0, Lio/reactivex/internal/operators/c/v$b;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 103
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/v$b;->a()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 108
    iput v0, p0, Lio/reactivex/internal/operators/c/v$b;->j:I

    .line 109
    iput-object p1, p0, Lio/reactivex/internal/operators/c/v$b;->e:Lio/reactivex/internal/b/j;

    .line 111
    iget-object p1, p0, Lio/reactivex/internal/operators/c/v$b;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    return-void

    .line 117
    :cond_1
    new-instance p1, Lio/reactivex/internal/d/c;

    iget v0, p0, Lio/reactivex/internal/operators/c/v$b;->d:I

    invoke-direct {p1, v0}, Lio/reactivex/internal/d/c;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/v$b;->e:Lio/reactivex/internal/b/j;

    .line 119
    iget-object p1, p0, Lio/reactivex/internal/operators/c/v$b;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_2
    return-void
.end method
