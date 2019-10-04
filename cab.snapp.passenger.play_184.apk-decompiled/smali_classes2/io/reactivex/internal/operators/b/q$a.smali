.class final Lio/reactivex/internal/operators/b/q$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/b/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/b/q$a$a;
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


# static fields
.field static final f:Lio/reactivex/internal/operators/b/q$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/b/q$a$a<",
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
            "Lio/reactivex/ao<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:Z

.field final d:Lio/reactivex/internal/util/b;

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/b/q$a$a<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field g:Lio/reactivex/b/c;

.field volatile h:Z

.field volatile i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Lio/reactivex/internal/operators/b/q$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/b/q$a$a;-><init>(Lio/reactivex/internal/operators/b/q$a;)V

    sput-object v0, Lio/reactivex/internal/operators/b/q$a;->f:Lio/reactivex/internal/operators/b/q$a$a;

    return-void
.end method

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

    .line 85
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 86
    iput-object p1, p0, Lio/reactivex/internal/operators/b/q$a;->a:Lio/reactivex/ag;

    .line 87
    iput-object p2, p0, Lio/reactivex/internal/operators/b/q$a;->b:Lio/reactivex/e/h;

    .line 88
    iput-boolean p3, p0, Lio/reactivex/internal/operators/b/q$a;->c:Z

    .line 89
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/b/q$a;->d:Lio/reactivex/internal/util/b;

    .line 90
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/b/q$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 156
    iget-object v0, p0, Lio/reactivex/internal/operators/b/q$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/b/q$a;->f:Lio/reactivex/internal/operators/b/q$a$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/b/q$a$a;

    if-eqz v0, :cond_0

    .line 157
    sget-object v1, Lio/reactivex/internal/operators/b/q$a;->f:Lio/reactivex/internal/operators/b/q$a$a;

    if-eq v0, v1, :cond_0

    .line 2273
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method

.method final b()V
    .locals 8

    .line 189
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/q$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/b/q$a;->a:Lio/reactivex/ag;

    .line 195
    iget-object v1, p0, Lio/reactivex/internal/operators/b/q$a;->d:Lio/reactivex/internal/util/b;

    .line 196
    iget-object v2, p0, Lio/reactivex/internal/operators/b/q$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 201
    :cond_1
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/internal/operators/b/q$a;->i:Z

    if-eqz v5, :cond_2

    return-void

    .line 205
    :cond_2
    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 206
    iget-boolean v5, p0, Lio/reactivex/internal/operators/b/q$a;->c:Z

    if-nez v5, :cond_3

    .line 207
    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    .line 208
    invoke-interface {v0, v1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 213
    :cond_3
    iget-boolean v5, p0, Lio/reactivex/internal/operators/b/q$a;->h:Z

    .line 214
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/reactivex/internal/operators/b/q$a$a;

    if-nez v6, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-eqz v5, :cond_6

    if-eqz v7, :cond_6

    .line 218
    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 220
    invoke-interface {v0, v1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 222
    :cond_5
    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void

    :cond_6
    if-nez v7, :cond_7

    .line 227
    iget-object v5, v6, Lio/reactivex/internal/operators/b/q$a$a;->b:Ljava/lang/Object;

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    .line 231
    invoke-virtual {v2, v6, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 233
    iget-object v5, v6, Lio/reactivex/internal/operators/b/q$a$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v5}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    neg-int v4, v4

    .line 236
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/b/q$a;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void
.end method

.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lio/reactivex/internal/operators/b/q$a;->i:Z

    .line 165
    iget-object v0, p0, Lio/reactivex/internal/operators/b/q$a;->g:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 166
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/q$a;->a()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lio/reactivex/internal/operators/b/q$a;->i:Z

    return v0
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lio/reactivex/internal/operators/b/q$a;->h:Z

    .line 151
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/q$a;->b()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lio/reactivex/internal/operators/b/q$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-boolean p1, p0, Lio/reactivex/internal/operators/b/q$a;->c:Z

    if-nez p1, :cond_0

    .line 139
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/q$a;->a()V

    :cond_0
    const/4 p1, 0x1

    .line 141
    iput-boolean p1, p0, Lio/reactivex/internal/operators/b/q$a;->h:Z

    .line 142
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/q$a;->b()V

    return-void

    .line 144
    :cond_1
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lio/reactivex/internal/operators/b/q$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/b/q$a$a;

    if-eqz v0, :cond_0

    .line 1273
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 112
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/b/q$a;->b:Lio/reactivex/e/h;

    invoke-interface {v0, p1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null SingleSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/ao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    new-instance v0, Lio/reactivex/internal/operators/b/q$a$a;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/b/q$a$a;-><init>(Lio/reactivex/internal/operators/b/q$a;)V

    .line 124
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/b/q$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/b/q$a$a;

    .line 125
    sget-object v2, Lio/reactivex/internal/operators/b/q$a;->f:Lio/reactivex/internal/operators/b/q$a$a;

    if-eq v1, v2, :cond_2

    .line 128
    iget-object v2, p0, Lio/reactivex/internal/operators/b/q$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    invoke-interface {p1, v0}, Lio/reactivex/ao;->subscribe(Lio/reactivex/al;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 114
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 115
    iget-object v0, p0, Lio/reactivex/internal/operators/b/q$a;->g:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 116
    iget-object v0, p0, Lio/reactivex/internal/operators/b/q$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/b/q$a;->f:Lio/reactivex/internal/operators/b/q$a$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/b/q$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lio/reactivex/internal/operators/b/q$a;->g:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iput-object p1, p0, Lio/reactivex/internal/operators/b/q$a;->g:Lio/reactivex/b/c;

    .line 97
    iget-object p1, p0, Lio/reactivex/internal/operators/b/q$a;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method
