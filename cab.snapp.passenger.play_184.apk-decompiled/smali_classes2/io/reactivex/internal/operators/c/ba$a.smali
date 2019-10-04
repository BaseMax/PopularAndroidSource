.class final Lio/reactivex/internal/operators/c/ba$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/ba$a$a;
    }
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


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Z

.field final c:Lio/reactivex/b/b;

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field final e:Lio/reactivex/internal/util/b;

.field final f:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ao<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/d/c<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field h:Lio/reactivex/b/c;

.field volatile i:Z


# direct methods
.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/e/h;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TR;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ao<",
            "+TR;>;>;Z)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 77
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ba$a;->a:Lio/reactivex/ag;

    .line 78
    iput-object p2, p0, Lio/reactivex/internal/operators/c/ba$a;->f:Lio/reactivex/e/h;

    .line 79
    iput-boolean p3, p0, Lio/reactivex/internal/operators/c/ba$a;->b:Z

    .line 80
    new-instance p1, Lio/reactivex/b/b;

    invoke-direct {p1}, Lio/reactivex/b/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/ba$a;->c:Lio/reactivex/b/b;

    .line 81
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/ba$a;->e:Lio/reactivex/internal/util/b;

    .line 82
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/ba$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/ba$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private c()V
    .locals 1

    .line 215
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ba$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/d/c;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 209
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ba$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ba$a;->b()V

    :cond_0
    return-void
.end method

.method final b()V
    .locals 8

    .line 223
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ba$a;->a:Lio/reactivex/ag;

    .line 224
    iget-object v1, p0, Lio/reactivex/internal/operators/c/ba$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 225
    iget-object v2, p0, Lio/reactivex/internal/operators/c/ba$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 229
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/internal/operators/c/ba$a;->i:Z

    if-eqz v5, :cond_1

    .line 230
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ba$a;->c()V

    return-void

    .line 234
    :cond_1
    iget-boolean v5, p0, Lio/reactivex/internal/operators/c/ba$a;->b:Z

    if-nez v5, :cond_2

    .line 235
    iget-object v5, p0, Lio/reactivex/internal/operators/c/ba$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v5}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    .line 237
    iget-object v1, p0, Lio/reactivex/internal/operators/c/ba$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    .line 238
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ba$a;->c()V

    .line 239
    invoke-interface {v0, v1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 244
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 245
    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/internal/d/c;

    if-eqz v7, :cond_4

    .line 246
    invoke-virtual {v7}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_5

    const/4 v6, 0x1

    :cond_5
    if-eqz v5, :cond_7

    if-eqz v6, :cond_7

    .line 250
    iget-object v1, p0, Lio/reactivex/internal/operators/c/ba$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 252
    invoke-interface {v0, v1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 254
    :cond_6
    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void

    :cond_7
    if-nez v6, :cond_8

    .line 263
    invoke-interface {v0, v7}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    neg-int v4, v4

    .line 266
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/c/ba$a;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void
.end method

.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ba$a;->i:Z

    .line 139
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ba$a;->h:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 140
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ba$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ba$a;->i:Z

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ba$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 133
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ba$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ba$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 120
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ba$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-boolean p1, p0, Lio/reactivex/internal/operators/c/ba$a;->b:Z

    if-nez p1, :cond_0

    .line 122
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ba$a;->c:Lio/reactivex/b/b;

    invoke-virtual {p1}, Lio/reactivex/b/b;->dispose()V

    .line 124
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ba$a;->a()V

    return-void

    .line 126
    :cond_1
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

    .line 100
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ba$a;->f:Lio/reactivex/e/h;

    invoke-interface {v0, p1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null SingleSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/ao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ba$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 110
    new-instance v0, Lio/reactivex/internal/operators/c/ba$a$a;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/c/ba$a$a;-><init>(Lio/reactivex/internal/operators/c/ba$a;)V

    .line 112
    iget-boolean v1, p0, Lio/reactivex/internal/operators/c/ba$a;->i:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/c/ba$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v1, v0}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-interface {p1, v0}, Lio/reactivex/ao;->subscribe(Lio/reactivex/al;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 102
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ba$a;->h:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 104
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/ba$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ba$a;->h:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ba$a;->h:Lio/reactivex/b/c;

    .line 91
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ba$a;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method
