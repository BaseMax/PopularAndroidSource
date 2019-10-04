.class final Lio/reactivex/internal/operators/c/dx$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/dx;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;",
        "Ljava/lang/Runnable;"
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

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/ah$c;

.field final e:Z

.field final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field g:Lio/reactivex/b/c;

.field volatile h:Z

.field i:Ljava/lang/Throwable;

.field volatile j:Z

.field volatile k:Z

.field l:Z


# direct methods
.method constructor <init>(Lio/reactivex/ag;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah$c;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah$c;",
            "Z)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 91
    iput-object p1, p0, Lio/reactivex/internal/operators/c/dx$a;->a:Lio/reactivex/ag;

    .line 92
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/dx$a;->b:J

    .line 93
    iput-object p4, p0, Lio/reactivex/internal/operators/c/dx$a;->c:Ljava/util/concurrent/TimeUnit;

    .line 94
    iput-object p5, p0, Lio/reactivex/internal/operators/c/dx$a;->d:Lio/reactivex/ah$c;

    .line 95
    iput-boolean p6, p0, Lio/reactivex/internal/operators/c/dx$a;->e:Z

    .line 96
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/dx$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private a()V
    .locals 8

    .line 148
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/dx$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dx$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 155
    iget-object v1, p0, Lio/reactivex/internal/operators/c/dx$a;->a:Lio/reactivex/ag;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 160
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lio/reactivex/internal/operators/c/dx$a;->j:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 161
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    .line 165
    :cond_2
    iget-boolean v4, p0, Lio/reactivex/internal/operators/c/dx$a;->h:Z

    if-eqz v4, :cond_3

    .line 167
    iget-object v6, p0, Lio/reactivex/internal/operators/c/dx$a;->i:Ljava/lang/Throwable;

    if-eqz v6, :cond_3

    .line 168
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dx$a;->i:Ljava/lang/Throwable;

    invoke-interface {v1, v0}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    .line 170
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dx$a;->d:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    return-void

    .line 174
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    if-eqz v4, :cond_6

    .line 178
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_5

    .line 179
    iget-boolean v2, p0, Lio/reactivex/internal/operators/c/dx$a;->e:Z

    if-eqz v2, :cond_5

    .line 180
    invoke-interface {v1, v0}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    .line 182
    :cond_5
    invoke-interface {v1}, Lio/reactivex/ag;->onComplete()V

    .line 183
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dx$a;->d:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    return-void

    :cond_6
    if-eqz v6, :cond_7

    .line 188
    iget-boolean v4, p0, Lio/reactivex/internal/operators/c/dx$a;->k:Z

    if-eqz v4, :cond_8

    .line 189
    iput-boolean v7, p0, Lio/reactivex/internal/operators/c/dx$a;->l:Z

    .line 190
    iput-boolean v7, p0, Lio/reactivex/internal/operators/c/dx$a;->k:Z

    goto :goto_2

    .line 195
    :cond_7
    iget-boolean v4, p0, Lio/reactivex/internal/operators/c/dx$a;->l:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lio/reactivex/internal/operators/c/dx$a;->k:Z

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    neg-int v3, v3

    .line 207
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/c/dx$a;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 196
    :cond_9
    :goto_3
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 197
    invoke-interface {v1, v4}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    .line 199
    iput-boolean v7, p0, Lio/reactivex/internal/operators/c/dx$a;->k:Z

    .line 200
    iput-boolean v2, p0, Lio/reactivex/internal/operators/c/dx$a;->l:Z

    .line 201
    iget-object v4, p0, Lio/reactivex/internal/operators/c/dx$a;->d:Lio/reactivex/ah$c;

    iget-wide v5, p0, Lio/reactivex/internal/operators/c/dx$a;->b:J

    iget-object v7, p0, Lio/reactivex/internal/operators/c/dx$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p0, v5, v6, v7}, Lio/reactivex/ah$c;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    goto :goto_0
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/dx$a;->j:Z

    .line 129
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dx$a;->g:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dx$a;->d:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    .line 131
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/dx$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dx$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/dx$a;->j:Z

    return v0
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/dx$a;->h:Z

    .line 123
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/dx$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lio/reactivex/internal/operators/c/dx$a;->i:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lio/reactivex/internal/operators/c/dx$a;->h:Z

    .line 117
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/dx$a;->a()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dx$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 110
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/dx$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dx$a;->g:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iput-object p1, p0, Lio/reactivex/internal/operators/c/dx$a;->g:Lio/reactivex/b/c;

    .line 103
    iget-object p1, p0, Lio/reactivex/internal/operators/c/dx$a;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 1

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/dx$a;->k:Z

    .line 144
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/dx$a;->a()V

    return-void
.end method
