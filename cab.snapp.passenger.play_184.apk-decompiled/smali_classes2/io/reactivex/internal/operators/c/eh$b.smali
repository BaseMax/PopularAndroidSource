.class final Lio/reactivex/internal/operators/c/eh$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/eh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field static final i:Ljava/lang/Object;


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Lio/reactivex/internal/operators/c/eh$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/eh$a<",
            "TT;TB;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/b/c;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field final f:Lio/reactivex/internal/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/d/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lio/reactivex/internal/util/b;

.field final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile j:Z

.field k:Lio/reactivex/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/c/eh$b;->i:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lio/reactivex/ag;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 76
    iput-object p1, p0, Lio/reactivex/internal/operators/c/eh$b;->a:Lio/reactivex/ag;

    .line 77
    iput p2, p0, Lio/reactivex/internal/operators/c/eh$b;->b:I

    .line 78
    new-instance p1, Lio/reactivex/internal/operators/c/eh$a;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/c/eh$a;-><init>(Lio/reactivex/internal/operators/c/eh$b;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/eh$b;->c:Lio/reactivex/internal/operators/c/eh$a;

    .line 79
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/eh$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 80
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/eh$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 81
    new-instance p1, Lio/reactivex/internal/d/a;

    invoke-direct {p1}, Lio/reactivex/internal/d/a;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/eh$b;->f:Lio/reactivex/internal/d/a;

    .line 82
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/eh$b;->g:Lio/reactivex/internal/util/b;

    .line 83
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/eh$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 141
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eh$b;->f:Lio/reactivex/internal/d/a;

    sget-object v1, Lio/reactivex/internal/operators/c/eh$b;->i:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/d/a;->offer(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/eh$b;->b()V

    return-void
.end method

.method final b()V
    .locals 10

    .line 163
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/eh$b;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eh$b;->a:Lio/reactivex/ag;

    .line 169
    iget-object v1, p0, Lio/reactivex/internal/operators/c/eh$b;->f:Lio/reactivex/internal/d/a;

    .line 170
    iget-object v2, p0, Lio/reactivex/internal/operators/c/eh$b;->g:Lio/reactivex/internal/util/b;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 175
    :cond_1
    :goto_0
    iget-object v5, p0, Lio/reactivex/internal/operators/c/eh$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 176
    invoke-virtual {v1}, Lio/reactivex/internal/d/a;->clear()V

    .line 177
    iput-object v6, p0, Lio/reactivex/internal/operators/c/eh$b;->k:Lio/reactivex/j/e;

    return-void

    .line 181
    :cond_2
    iget-object v5, p0, Lio/reactivex/internal/operators/c/eh$b;->k:Lio/reactivex/j/e;

    .line 183
    iget-boolean v7, p0, Lio/reactivex/internal/operators/c/eh$b;->j:Z

    if-eqz v7, :cond_4

    .line 185
    invoke-virtual {v2}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 186
    invoke-virtual {v1}, Lio/reactivex/internal/d/a;->clear()V

    .line 187
    invoke-virtual {v2}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v5, :cond_3

    .line 189
    iput-object v6, p0, Lio/reactivex/internal/operators/c/eh$b;->k:Lio/reactivex/j/e;

    .line 190
    invoke-virtual {v5, v1}, Lio/reactivex/j/e;->onError(Ljava/lang/Throwable;)V

    .line 192
    :cond_3
    invoke-interface {v0, v1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 196
    :cond_4
    invoke-virtual {v1}, Lio/reactivex/internal/d/a;->poll()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5

    const/4 v9, 0x1

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    :goto_1
    if-eqz v7, :cond_9

    if-eqz v9, :cond_9

    .line 201
    invoke-virtual {v2}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_7

    if-eqz v5, :cond_6

    .line 204
    iput-object v6, p0, Lio/reactivex/internal/operators/c/eh$b;->k:Lio/reactivex/j/e;

    .line 205
    invoke-virtual {v5}, Lio/reactivex/j/e;->onComplete()V

    .line 207
    :cond_6
    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void

    :cond_7
    if-eqz v5, :cond_8

    .line 210
    iput-object v6, p0, Lio/reactivex/internal/operators/c/eh$b;->k:Lio/reactivex/j/e;

    .line 211
    invoke-virtual {v5, v1}, Lio/reactivex/j/e;->onError(Ljava/lang/Throwable;)V

    .line 213
    :cond_8
    invoke-interface {v0, v1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_9
    if-nez v9, :cond_c

    .line 222
    sget-object v7, Lio/reactivex/internal/operators/c/eh$b;->i:Ljava/lang/Object;

    if-eq v8, v7, :cond_a

    .line 223
    invoke-virtual {v5, v8}, Lio/reactivex/j/e;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_a
    if-eqz v5, :cond_b

    .line 228
    iput-object v6, p0, Lio/reactivex/internal/operators/c/eh$b;->k:Lio/reactivex/j/e;

    .line 229
    invoke-virtual {v5}, Lio/reactivex/j/e;->onComplete()V

    .line 232
    :cond_b
    iget-object v5, p0, Lio/reactivex/internal/operators/c/eh$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_1

    .line 233
    iget v5, p0, Lio/reactivex/internal/operators/c/eh$b;->b:I

    invoke-static {v5, p0}, Lio/reactivex/j/e;->create(ILjava/lang/Runnable;)Lio/reactivex/j/e;

    move-result-object v5

    .line 234
    iput-object v5, p0, Lio/reactivex/internal/operators/c/eh$b;->k:Lio/reactivex/j/e;

    .line 235
    iget-object v6, p0, Lio/reactivex/internal/operators/c/eh$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 237
    invoke-interface {v0, v5}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_c
    neg-int v4, v4

    .line 241
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/c/eh$b;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void
.end method

.method public final dispose()V
    .locals 3

    .line 120
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eh$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eh$b;->c:Lio/reactivex/internal/operators/c/eh$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/eh$a;->dispose()V

    .line 122
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eh$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eh$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eh$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 113
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eh$b;->c:Lio/reactivex/internal/operators/c/eh$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/eh$a;->dispose()V

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/eh$b;->j:Z

    .line 115
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/eh$b;->b()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eh$b;->c:Lio/reactivex/internal/operators/c/eh$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/eh$a;->dispose()V

    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eh$b;->g:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 104
    iput-boolean p1, p0, Lio/reactivex/internal/operators/c/eh$b;->j:Z

    .line 105
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/eh$b;->b()V

    return-void

    .line 107
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eh$b;->f:Lio/reactivex/internal/d/a;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/d/a;->offer(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/eh$b;->b()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eh$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/eh$b;->a()V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 1

    .line 135
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eh$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eh$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method
