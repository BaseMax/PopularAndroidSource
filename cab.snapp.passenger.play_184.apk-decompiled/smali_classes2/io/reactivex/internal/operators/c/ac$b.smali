.class final Lio/reactivex/internal/operators/c/ac$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/ab<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ab<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/util/b;

.field final c:Lio/reactivex/internal/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/d/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile d:Z


# direct methods
.method constructor <init>(Lio/reactivex/ab;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ab<",
            "TT;>;)V"
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 155
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ac$b;->a:Lio/reactivex/ab;

    .line 156
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/ac$b;->b:Lio/reactivex/internal/util/b;

    .line 157
    new-instance p1, Lio/reactivex/internal/d/c;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lio/reactivex/internal/d/c;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/ac$b;->c:Lio/reactivex/internal/d/c;

    return-void
.end method

.method private a()V
    .locals 1

    .line 219
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ac$b;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ac$b;->b()V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 8

    .line 225
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ac$b;->a:Lio/reactivex/ab;

    .line 226
    iget-object v1, p0, Lio/reactivex/internal/operators/c/ac$b;->c:Lio/reactivex/internal/d/c;

    .line 227
    iget-object v2, p0, Lio/reactivex/internal/operators/c/ac$b;->b:Lio/reactivex/internal/util/b;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 232
    :cond_0
    :goto_0
    invoke-interface {v0}, Lio/reactivex/ab;->isDisposed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 233
    invoke-virtual {v1}, Lio/reactivex/internal/d/c;->clear()V

    return-void

    .line 237
    :cond_1
    invoke-virtual {v2}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 238
    invoke-virtual {v1}, Lio/reactivex/internal/d/c;->clear()V

    .line 239
    invoke-virtual {v2}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/ab;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 243
    :cond_2
    iget-boolean v5, p0, Lio/reactivex/internal/operators/c/ac$b;->d:Z

    .line 244
    invoke-virtual {v1}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    if-eqz v5, :cond_4

    if-eqz v7, :cond_4

    .line 249
    invoke-interface {v0}, Lio/reactivex/ab;->onComplete()V

    return-void

    :cond_4
    if-nez v7, :cond_5

    .line 257
    invoke-interface {v0, v6}, Lio/reactivex/ab;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    neg-int v4, v4

    .line 260
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/c/ac$b;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void
.end method


# virtual methods
.method public final isDisposed()Z
    .locals 1

    .line 279
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ac$b;->a:Lio/reactivex/ab;

    invoke-interface {v0}, Lio/reactivex/ab;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 211
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ac$b;->a:Lio/reactivex/ab;

    invoke-interface {v0}, Lio/reactivex/ab;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ac$b;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ac$b;->d:Z

    .line 215
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ac$b;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 188
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/ac$b;->tryOnError(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ac$b;->a:Lio/reactivex/ab;

    invoke-interface {v0}, Lio/reactivex/ab;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ac$b;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 166
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/ac$b;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 169
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ac$b;->get()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/c/ac$b;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ac$b;->a:Lio/reactivex/ab;

    invoke-interface {v0, p1}, Lio/reactivex/ab;->onNext(Ljava/lang/Object;)V

    .line 171
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ac$b;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 175
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ac$b;->c:Lio/reactivex/internal/d/c;

    .line 176
    monitor-enter v0

    .line 177
    :try_start_0
    invoke-interface {v0, p1}, Lio/reactivex/internal/b/j;->offer(Ljava/lang/Object;)Z

    .line 178
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ac$b;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 183
    :cond_3
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ac$b;->b()V

    return-void

    :catchall_0
    move-exception p1

    .line 178
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method public final serialize()Lio/reactivex/ab;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ab<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final setCancellable(Lio/reactivex/e/f;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ac$b;->a:Lio/reactivex/ab;

    invoke-interface {v0, p1}, Lio/reactivex/ab;->setCancellable(Lio/reactivex/e/f;)V

    return-void
.end method

.method public final setDisposable(Lio/reactivex/b/c;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ac$b;->a:Lio/reactivex/ab;

    invoke-interface {v0, p1}, Lio/reactivex/ab;->setDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ac$b;->a:Lio/reactivex/ab;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tryOnError(Ljava/lang/Throwable;)Z
    .locals 2

    .line 195
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ac$b;->a:Lio/reactivex/ab;

    invoke-interface {v0}, Lio/reactivex/ab;->isDisposed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ac$b;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 199
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 201
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ac$b;->b:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 202
    iput-boolean p1, p0, Lio/reactivex/internal/operators/c/ac$b;->d:Z

    .line 203
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ac$b;->a()V

    return p1

    :cond_2
    :goto_0
    return v1
.end method
