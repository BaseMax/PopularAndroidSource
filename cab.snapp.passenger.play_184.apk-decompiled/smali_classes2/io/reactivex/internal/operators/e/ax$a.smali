.class final Lio/reactivex/internal/operators/e/ax$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/al;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/e/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/al<",
        "TT;>;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/al<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-TU;>;"
        }
    .end annotation
.end field

.field final c:Z

.field d:Lio/reactivex/b/c;


# direct methods
.method constructor <init>(Lio/reactivex/al;Ljava/lang/Object;ZLio/reactivex/e/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-TT;>;TU;Z",
            "Lio/reactivex/e/g<",
            "-TU;>;)V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 103
    iput-object p1, p0, Lio/reactivex/internal/operators/e/ax$a;->a:Lio/reactivex/al;

    .line 104
    iput-boolean p3, p0, Lio/reactivex/internal/operators/e/ax$a;->c:Z

    .line 105
    iput-object p4, p0, Lio/reactivex/internal/operators/e/ax$a;->b:Lio/reactivex/e/g;

    return-void
.end method

.method private a()V
    .locals 2

    .line 184
    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/e/ax$a;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 187
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/e/ax$a;->b:Lio/reactivex/e/g;

    invoke-interface {v1, v0}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 189
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 190
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 110
    iget-object v0, p0, Lio/reactivex/internal/operators/e/ax$a;->d:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 111
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/e/ax$a;->d:Lio/reactivex/b/c;

    .line 112
    invoke-direct {p0}, Lio/reactivex/internal/operators/e/ax$a;->a()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lio/reactivex/internal/operators/e/ax$a;->d:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 159
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/e/ax$a;->d:Lio/reactivex/b/c;

    .line 161
    iget-boolean v0, p0, Lio/reactivex/internal/operators/e/ax$a;->c:Z

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/e/ax$a;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 165
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/e/ax$a;->b:Lio/reactivex/e/g;

    invoke-interface {v1, v0}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 167
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 168
    new-instance v1, Lio/reactivex/c/a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    goto :goto_0

    :cond_0
    return-void

    .line 175
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/e/ax$a;->a:Lio/reactivex/al;

    invoke-interface {v0, p1}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

    .line 177
    iget-boolean p1, p0, Lio/reactivex/internal/operators/e/ax$a;->c:Z

    if-nez p1, :cond_2

    .line 178
    invoke-direct {p0}, Lio/reactivex/internal/operators/e/ax$a;->a()V

    :cond_2
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lio/reactivex/internal/operators/e/ax$a;->d:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iput-object p1, p0, Lio/reactivex/internal/operators/e/ax$a;->d:Lio/reactivex/b/c;

    .line 125
    iget-object p1, p0, Lio/reactivex/internal/operators/e/ax$a;->a:Lio/reactivex/al;

    invoke-interface {p1, p0}, Lio/reactivex/al;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 132
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/e/ax$a;->d:Lio/reactivex/b/c;

    .line 134
    iget-boolean v0, p0, Lio/reactivex/internal/operators/e/ax$a;->c:Z

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/e/ax$a;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 138
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/e/ax$a;->b:Lio/reactivex/e/g;

    invoke-interface {v1, v0}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 140
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 141
    iget-object v0, p0, Lio/reactivex/internal/operators/e/ax$a;->a:Lio/reactivex/al;

    invoke-interface {v0, p1}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 149
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/e/ax$a;->a:Lio/reactivex/al;

    invoke-interface {v0, p1}, Lio/reactivex/al;->onSuccess(Ljava/lang/Object;)V

    .line 151
    iget-boolean p1, p0, Lio/reactivex/internal/operators/e/ax$a;->c:Z

    if-nez p1, :cond_2

    .line 152
    invoke-direct {p0}, Lio/reactivex/internal/operators/e/ax$a;->a()V

    :cond_2
    return-void
.end method
