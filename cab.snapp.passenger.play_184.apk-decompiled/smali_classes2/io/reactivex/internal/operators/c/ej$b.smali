.class final Lio/reactivex/internal/operators/c/ej$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ej;
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
.field static final d:Lio/reactivex/internal/operators/c/ej$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/ej$a<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final j:Ljava/lang/Object;


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

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/c/ej$a<",
            "TT;TB;>;>;"
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

.field final i:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/ae<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field k:Lio/reactivex/b/c;

.field volatile l:Z

.field m:Lio/reactivex/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Lio/reactivex/internal/operators/c/ej$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/c/ej$a;-><init>(Lio/reactivex/internal/operators/c/ej$b;)V

    sput-object v0, Lio/reactivex/internal/operators/c/ej$b;->d:Lio/reactivex/internal/operators/c/ej$a;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/c/ej$b;->j:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lio/reactivex/ag;ILjava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;>;I",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/ae<",
            "TB;>;>;)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 82
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ej$b;->a:Lio/reactivex/ag;

    .line 83
    iput p2, p0, Lio/reactivex/internal/operators/c/ej$b;->b:I

    .line 84
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/ej$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 85
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/ej$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 86
    new-instance p1, Lio/reactivex/internal/d/a;

    invoke-direct {p1}, Lio/reactivex/internal/d/a;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/ej$b;->f:Lio/reactivex/internal/d/a;

    .line 87
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/ej$b;->g:Lio/reactivex/internal/util/b;

    .line 88
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/ej$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    iput-object p3, p0, Lio/reactivex/internal/operators/c/ej$b;->i:Ljava/util/concurrent/Callable;

    return-void
.end method

.method private b()V
    .locals 2

    .line 138
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ej$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/c/ej$b;->d:Lio/reactivex/internal/operators/c/ej$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    if-eqz v0, :cond_0

    .line 139
    sget-object v1, Lio/reactivex/internal/operators/c/ej$b;->d:Lio/reactivex/internal/operators/c/ej$a;

    if-eq v0, v1, :cond_0

    .line 140
    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 10

    .line 180
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ej$b;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ej$b;->a:Lio/reactivex/ag;

    .line 186
    iget-object v1, p0, Lio/reactivex/internal/operators/c/ej$b;->f:Lio/reactivex/internal/d/a;

    .line 187
    iget-object v2, p0, Lio/reactivex/internal/operators/c/ej$b;->g:Lio/reactivex/internal/util/b;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 192
    :cond_1
    :goto_0
    iget-object v5, p0, Lio/reactivex/internal/operators/c/ej$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 193
    invoke-virtual {v1}, Lio/reactivex/internal/d/a;->clear()V

    .line 194
    iput-object v6, p0, Lio/reactivex/internal/operators/c/ej$b;->m:Lio/reactivex/j/e;

    return-void

    .line 198
    :cond_2
    iget-object v5, p0, Lio/reactivex/internal/operators/c/ej$b;->m:Lio/reactivex/j/e;

    .line 200
    iget-boolean v7, p0, Lio/reactivex/internal/operators/c/ej$b;->l:Z

    if-eqz v7, :cond_4

    .line 202
    invoke-virtual {v2}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 203
    invoke-virtual {v1}, Lio/reactivex/internal/d/a;->clear()V

    .line 204
    invoke-virtual {v2}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v5, :cond_3

    .line 206
    iput-object v6, p0, Lio/reactivex/internal/operators/c/ej$b;->m:Lio/reactivex/j/e;

    .line 207
    invoke-virtual {v5, v1}, Lio/reactivex/j/e;->onError(Ljava/lang/Throwable;)V

    .line 209
    :cond_3
    invoke-interface {v0, v1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 213
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

    .line 218
    invoke-virtual {v2}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_7

    if-eqz v5, :cond_6

    .line 221
    iput-object v6, p0, Lio/reactivex/internal/operators/c/ej$b;->m:Lio/reactivex/j/e;

    .line 222
    invoke-virtual {v5}, Lio/reactivex/j/e;->onComplete()V

    .line 224
    :cond_6
    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void

    :cond_7
    if-eqz v5, :cond_8

    .line 227
    iput-object v6, p0, Lio/reactivex/internal/operators/c/ej$b;->m:Lio/reactivex/j/e;

    .line 228
    invoke-virtual {v5, v1}, Lio/reactivex/j/e;->onError(Ljava/lang/Throwable;)V

    .line 230
    :cond_8
    invoke-interface {v0, v1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_9
    if-nez v9, :cond_c

    .line 239
    sget-object v7, Lio/reactivex/internal/operators/c/ej$b;->j:Ljava/lang/Object;

    if-eq v8, v7, :cond_a

    .line 240
    invoke-virtual {v5, v8}, Lio/reactivex/j/e;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_a
    if-eqz v5, :cond_b

    .line 245
    iput-object v6, p0, Lio/reactivex/internal/operators/c/ej$b;->m:Lio/reactivex/j/e;

    .line 246
    invoke-virtual {v5}, Lio/reactivex/j/e;->onComplete()V

    .line 249
    :cond_b
    iget-object v5, p0, Lio/reactivex/internal/operators/c/ej$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_1

    .line 250
    iget v5, p0, Lio/reactivex/internal/operators/c/ej$b;->b:I

    invoke-static {v5, p0}, Lio/reactivex/j/e;->create(ILjava/lang/Runnable;)Lio/reactivex/j/e;

    move-result-object v5

    .line 251
    iput-object v5, p0, Lio/reactivex/internal/operators/c/ej$b;->m:Lio/reactivex/j/e;

    .line 252
    iget-object v7, p0, Lio/reactivex/internal/operators/c/ej$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 257
    :try_start_0
    iget-object v7, p0, Lio/reactivex/internal/operators/c/ej$b;->i:Ljava/util/concurrent/Callable;

    invoke-interface {v7}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v7

    const-string v8, "The other Callable returned a null ObservableSource"

    invoke-static {v7, v8}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    new-instance v8, Lio/reactivex/internal/operators/c/ej$a;

    invoke-direct {v8, p0}, Lio/reactivex/internal/operators/c/ej$a;-><init>(Lio/reactivex/internal/operators/c/ej$b;)V

    .line 267
    iget-object v9, p0, Lio/reactivex/internal/operators/c/ej$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9, v6, v8}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 268
    invoke-interface {v7, v8}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    .line 270
    invoke-interface {v0, v5}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    .line 259
    invoke-static {v5}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 260
    invoke-virtual {v2, v5}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 261
    iput-boolean v3, p0, Lio/reactivex/internal/operators/c/ej$b;->l:Z

    goto/16 :goto_0

    :cond_c
    neg-int v4, v4

    .line 275
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/c/ej$b;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void
.end method

.method public final dispose()V
    .locals 3

    .line 128
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ej$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ej$b;->b()V

    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ej$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ej$b;->k:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 146
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ej$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 121
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ej$b;->b()V

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ej$b;->l:Z

    .line 123
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ej$b;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ej$b;->b()V

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ej$b;->g:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 112
    iput-boolean p1, p0, Lio/reactivex/internal/operators/c/ej$b;->l:Z

    .line 113
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ej$b;->a()V

    return-void

    .line 115
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

    .line 104
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ej$b;->f:Lio/reactivex/internal/d/a;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/d/a;->offer(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ej$b;->a()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ej$b;->k:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ej$b;->k:Lio/reactivex/b/c;

    .line 96
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ej$b;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 97
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ej$b;->f:Lio/reactivex/internal/d/a;

    sget-object v0, Lio/reactivex/internal/operators/c/ej$b;->j:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lio/reactivex/internal/d/a;->offer(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ej$b;->a()V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 1

    .line 151
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ej$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ej$b;->k:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    :cond_0
    return-void
.end method
