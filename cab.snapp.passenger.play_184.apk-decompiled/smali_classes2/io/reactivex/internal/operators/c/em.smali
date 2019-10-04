.class public final Lio/reactivex/internal/operators/c/em;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/em$a;,
        Lio/reactivex/internal/operators/c/em$c;,
        Lio/reactivex/internal/operators/c/em$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/c/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final b:[Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/ae<",
            "*>;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ae<",
            "*>;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ae;Ljava/lang/Iterable;Lio/reactivex/e/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ae<",
            "*>;>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lio/reactivex/internal/operators/c/em;->b:[Lio/reactivex/ae;

    .line 57
    iput-object p2, p0, Lio/reactivex/internal/operators/c/em;->c:Ljava/lang/Iterable;

    .line 58
    iput-object p3, p0, Lio/reactivex/internal/operators/c/em;->d:Lio/reactivex/e/h;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/ae;[Lio/reactivex/ae;Lio/reactivex/e/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;[",
            "Lio/reactivex/ae<",
            "*>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 49
    iput-object p2, p0, Lio/reactivex/internal/operators/c/em;->b:[Lio/reactivex/ae;

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lio/reactivex/internal/operators/c/em;->c:Ljava/lang/Iterable;

    .line 51
    iput-object p3, p0, Lio/reactivex/internal/operators/c/em;->d:Lio/reactivex/e/h;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TR;>;)V"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/c/em;->b:[Lio/reactivex/ae;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [Lio/reactivex/ae;

    .line 69
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/c/em;->c:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/ae;

    .line 70
    array-length v5, v0

    if-ne v3, v5, :cond_0

    shr-int/lit8 v5, v3, 0x1

    add-int/2addr v5, v3

    .line 71
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/ae;

    :cond_0
    add-int/lit8 v5, v3, 0x1

    .line 73
    aput-object v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 76
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 77
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/ag;)V

    return-void

    .line 82
    :cond_1
    array-length v3, v0

    :cond_2
    if-nez v3, :cond_3

    .line 86
    new-instance v0, Lio/reactivex/internal/operators/c/bw;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/em;->a:Lio/reactivex/ae;

    new-instance v2, Lio/reactivex/internal/operators/c/em$a;

    invoke-direct {v2, p0}, Lio/reactivex/internal/operators/c/em$a;-><init>(Lio/reactivex/internal/operators/c/em;)V

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/c/bw;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;)V

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/c/bw;->subscribeActual(Lio/reactivex/ag;)V

    return-void

    .line 90
    :cond_3
    new-instance v2, Lio/reactivex/internal/operators/c/em$b;

    iget-object v4, p0, Lio/reactivex/internal/operators/c/em;->d:Lio/reactivex/e/h;

    invoke-direct {v2, p1, v4, v3}, Lio/reactivex/internal/operators/c/em$b;-><init>(Lio/reactivex/ag;Lio/reactivex/e/h;I)V

    .line 91
    invoke-interface {p1, v2}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 1131
    iget-object p1, v2, Lio/reactivex/internal/operators/c/em$b;->c:[Lio/reactivex/internal/operators/c/em$c;

    .line 1132
    iget-object v4, v2, Lio/reactivex/internal/operators/c/em$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_1
    if-ge v1, v3, :cond_5

    .line 1134
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/reactivex/b/c;

    invoke-static {v5}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/b/c;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-boolean v5, v2, Lio/reactivex/internal/operators/c/em$b;->g:Z

    if-eqz v5, :cond_4

    goto :goto_2

    .line 1137
    :cond_4
    aget-object v5, v0, v1

    aget-object v6, p1, v1

    invoke-interface {v5, v6}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 94
    :cond_5
    :goto_2
    iget-object p1, p0, Lio/reactivex/internal/operators/c/em;->a:Lio/reactivex/ae;

    invoke-interface {p1, v2}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
