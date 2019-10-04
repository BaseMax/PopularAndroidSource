.class final Lio/reactivex/internal/operators/c/do$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# static fields
.field static final j:Lio/reactivex/internal/operators/c/do$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/do$a<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Z

.field final e:Lio/reactivex/internal/util/b;

.field volatile f:Z

.field volatile g:Z

.field h:Lio/reactivex/b/c;

.field final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/c/do$a<",
            "TT;TR;>;>;"
        }
    .end annotation
.end field

.field volatile k:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 75
    new-instance v0, Lio/reactivex/internal/operators/c/do$a;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lio/reactivex/internal/operators/c/do$a;-><init>(Lio/reactivex/internal/operators/c/do$b;JI)V

    .line 76
    sput-object v0, Lio/reactivex/internal/operators/c/do$b;->j:Lio/reactivex/internal/operators/c/do$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/do$a;->cancel()V

    return-void
.end method

.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/e/h;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TR;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/c/do$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 84
    iput-object p1, p0, Lio/reactivex/internal/operators/c/do$b;->a:Lio/reactivex/ag;

    .line 85
    iput-object p2, p0, Lio/reactivex/internal/operators/c/do$b;->b:Lio/reactivex/e/h;

    .line 86
    iput p3, p0, Lio/reactivex/internal/operators/c/do$b;->c:I

    .line 87
    iput-boolean p4, p0, Lio/reactivex/internal/operators/c/do$b;->d:Z

    .line 88
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/do$b;->e:Lio/reactivex/internal/util/b;

    return-void
.end method

.method private b()V
    .locals 2

    .line 170
    iget-object v0, p0, Lio/reactivex/internal/operators/c/do$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/c/do$a;

    .line 171
    sget-object v1, Lio/reactivex/internal/operators/c/do$b;->j:Lio/reactivex/internal/operators/c/do$a;

    if-eq v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lio/reactivex/internal/operators/c/do$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/c/do$a;

    .line 173
    sget-object v1, Lio/reactivex/internal/operators/c/do$b;->j:Lio/reactivex/internal/operators/c/do$a;

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/do$a;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 13

    .line 180
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/do$b;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/do$b;->a:Lio/reactivex/ag;

    .line 185
    iget-object v1, p0, Lio/reactivex/internal/operators/c/do$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 186
    iget-boolean v2, p0, Lio/reactivex/internal/operators/c/do$b;->d:Z

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 192
    :cond_1
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/internal/operators/c/do$b;->g:Z

    if-eqz v5, :cond_2

    return-void

    .line 196
    :cond_2
    iget-boolean v5, p0, Lio/reactivex/internal/operators/c/do$b;->f:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    .line 197
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v2, :cond_5

    if-eqz v5, :cond_7

    .line 200
    iget-object v1, p0, Lio/reactivex/internal/operators/c/do$b;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 202
    invoke-interface {v0, v1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 204
    :cond_4
    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void

    .line 209
    :cond_5
    iget-object v7, p0, Lio/reactivex/internal/operators/c/do$b;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v7}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    if-eqz v7, :cond_6

    .line 211
    iget-object v1, p0, Lio/reactivex/internal/operators/c/do$b;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_6
    if-eqz v5, :cond_7

    .line 215
    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void

    .line 221
    :cond_7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/reactivex/internal/operators/c/do$a;

    if-eqz v5, :cond_12

    .line 224
    iget-object v7, v5, Lio/reactivex/internal/operators/c/do$a;->d:Lio/reactivex/internal/b/j;

    if-eqz v7, :cond_12

    .line 227
    iget-boolean v8, v5, Lio/reactivex/internal/operators/c/do$a;->e:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_a

    .line 228
    invoke-interface {v7}, Lio/reactivex/internal/b/j;->isEmpty()Z

    move-result v8

    if-eqz v2, :cond_8

    if-eqz v8, :cond_a

    .line 231
    invoke-virtual {v1, v5, v9}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    :cond_8
    iget-object v10, p0, Lio/reactivex/internal/operators/c/do$b;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v10}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Throwable;

    if-eqz v10, :cond_9

    .line 237
    iget-object v1, p0, Lio/reactivex/internal/operators/c/do$b;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_9
    if-eqz v8, :cond_a

    .line 241
    invoke-virtual {v1, v5, v9}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_a
    const/4 v8, 0x0

    .line 250
    :goto_2
    iget-boolean v10, p0, Lio/reactivex/internal/operators/c/do$b;->g:Z

    if-eqz v10, :cond_b

    return-void

    .line 253
    :cond_b
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eq v5, v10, :cond_c

    :goto_3
    const/4 v8, 0x1

    goto :goto_7

    :cond_c
    if-nez v2, :cond_d

    .line 259
    iget-object v10, p0, Lio/reactivex/internal/operators/c/do$b;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v10}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Throwable;

    if-eqz v10, :cond_d

    .line 261
    iget-object v1, p0, Lio/reactivex/internal/operators/c/do$b;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 266
    :cond_d
    iget-boolean v10, v5, Lio/reactivex/internal/operators/c/do$a;->e:Z

    .line 270
    :try_start_0
    invoke-interface {v7}, Lio/reactivex/internal/b/j;->poll()Ljava/lang/Object;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v8

    .line 272
    invoke-static {v8}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 273
    iget-object v11, p0, Lio/reactivex/internal/operators/c/do$b;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v11, v8}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 274
    invoke-virtual {v1, v5, v9}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-nez v2, :cond_e

    .line 276
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/do$b;->b()V

    .line 277
    iget-object v8, p0, Lio/reactivex/internal/operators/c/do$b;->h:Lio/reactivex/b/c;

    invoke-interface {v8}, Lio/reactivex/b/c;->dispose()V

    .line 278
    iput-boolean v3, p0, Lio/reactivex/internal/operators/c/do$b;->f:Z

    goto :goto_4

    .line 280
    :cond_e
    invoke-virtual {v5}, Lio/reactivex/internal/operators/c/do$a;->cancel()V

    :goto_4
    move-object v11, v9

    const/4 v8, 0x1

    :goto_5
    if-nez v11, :cond_f

    const/4 v12, 0x1

    goto :goto_6

    :cond_f
    const/4 v12, 0x0

    :goto_6
    if-eqz v10, :cond_10

    if-eqz v12, :cond_10

    .line 288
    invoke-virtual {v1, v5, v9}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_3

    :cond_10
    if-nez v12, :cond_11

    .line 297
    invoke-interface {v0, v11}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    goto :goto_2

    :cond_11
    :goto_7
    if-nez v8, :cond_1

    :cond_12
    neg-int v4, v4

    .line 306
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/c/do$b;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 156
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/do$b;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/do$b;->g:Z

    .line 158
    iget-object v0, p0, Lio/reactivex/internal/operators/c/do$b;->h:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 159
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/do$b;->b()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/do$b;->g:Z

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 148
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/do$b;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/do$b;->f:Z

    .line 150
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/do$b;->a()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 135
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/do$b;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/c/do$b;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-boolean p1, p0, Lio/reactivex/internal/operators/c/do$b;->d:Z

    if-nez p1, :cond_0

    .line 137
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/do$b;->b()V

    :cond_0
    const/4 p1, 0x1

    .line 139
    iput-boolean p1, p0, Lio/reactivex/internal/operators/c/do$b;->f:Z

    .line 140
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/do$b;->a()V

    return-void

    .line 142
    :cond_1
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 101
    iget-wide v0, p0, Lio/reactivex/internal/operators/c/do$b;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 102
    iput-wide v0, p0, Lio/reactivex/internal/operators/c/do$b;->k:J

    .line 104
    iget-object v2, p0, Lio/reactivex/internal/operators/c/do$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/internal/operators/c/do$a;

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {v2}, Lio/reactivex/internal/operators/c/do$a;->cancel()V

    .line 111
    :cond_0
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/c/do$b;->b:Lio/reactivex/e/h;

    invoke-interface {v2, p1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "The ObservableSource returned is null"

    invoke-static {p1, v2}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    new-instance v2, Lio/reactivex/internal/operators/c/do$a;

    iget v3, p0, Lio/reactivex/internal/operators/c/do$b;->c:I

    invoke-direct {v2, p0, v0, v1, v3}, Lio/reactivex/internal/operators/c/do$a;-><init>(Lio/reactivex/internal/operators/c/do$b;JI)V

    .line 122
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/c/do$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/c/do$a;

    .line 123
    sget-object v1, Lio/reactivex/internal/operators/c/do$b;->j:Lio/reactivex/internal/operators/c/do$a;

    if-eq v0, v1, :cond_2

    .line 126
    iget-object v1, p0, Lio/reactivex/internal/operators/c/do$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-interface {p1, v2}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 113
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 114
    iget-object v0, p0, Lio/reactivex/internal/operators/c/do$b;->h:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 115
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/do$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lio/reactivex/internal/operators/c/do$b;->h:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iput-object p1, p0, Lio/reactivex/internal/operators/c/do$b;->h:Lio/reactivex/b/c;

    .line 95
    iget-object p1, p0, Lio/reactivex/internal/operators/c/do$b;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method
