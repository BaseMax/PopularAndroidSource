.class final Lio/reactivex/internal/operators/a/ar$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/a/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/d;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/d;

.field final b:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final c:Z

.field d:Lio/reactivex/b/c;


# direct methods
.method constructor <init>(Lio/reactivex/d;Ljava/lang/Object;Lio/reactivex/e/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/d;",
            "TR;",
            "Lio/reactivex/e/g<",
            "-TR;>;Z)V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 103
    iput-object p1, p0, Lio/reactivex/internal/operators/a/ar$a;->a:Lio/reactivex/d;

    .line 104
    iput-object p3, p0, Lio/reactivex/internal/operators/a/ar$a;->b:Lio/reactivex/e/g;

    .line 105
    iput-boolean p4, p0, Lio/reactivex/internal/operators/a/ar$a;->c:Z

    return-void
.end method

.method private a()V
    .locals 2

    .line 117
    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/a/ar$a;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 120
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/a/ar$a;->b:Lio/reactivex/e/g;

    invoke-interface {v1, v0}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 122
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 123
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 110
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ar$a;->d:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 111
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/a/ar$a;->d:Lio/reactivex/b/c;

    .line 112
    invoke-direct {p0}, Lio/reactivex/internal/operators/a/ar$a;->a()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ar$a;->d:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 170
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/a/ar$a;->d:Lio/reactivex/b/c;

    .line 171
    iget-boolean v0, p0, Lio/reactivex/internal/operators/a/ar$a;->c:Z

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/a/ar$a;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 175
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/a/ar$a;->b:Lio/reactivex/e/g;

    invoke-interface {v1, v0}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 177
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 178
    iget-object v1, p0, Lio/reactivex/internal/operators/a/ar$a;->a:Lio/reactivex/d;

    invoke-interface {v1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 186
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ar$a;->a:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    .line 188
    iget-boolean v0, p0, Lio/reactivex/internal/operators/a/ar$a;->c:Z

    if-nez v0, :cond_2

    .line 189
    invoke-direct {p0}, Lio/reactivex/internal/operators/a/ar$a;->a()V

    :cond_2
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 145
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/a/ar$a;->d:Lio/reactivex/b/c;

    .line 146
    iget-boolean v0, p0, Lio/reactivex/internal/operators/a/ar$a;->c:Z

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/a/ar$a;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 150
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/a/ar$a;->b:Lio/reactivex/e/g;

    invoke-interface {v1, v0}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 152
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 153
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

    .line 160
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ar$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    .line 162
    iget-boolean p1, p0, Lio/reactivex/internal/operators/a/ar$a;->c:Z

    if-nez p1, :cond_2

    .line 163
    invoke-direct {p0}, Lio/reactivex/internal/operators/a/ar$a;->a()V

    :cond_2
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ar$a;->d:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iput-object p1, p0, Lio/reactivex/internal/operators/a/ar$a;->d:Lio/reactivex/b/c;

    .line 138
    iget-object p1, p0, Lio/reactivex/internal/operators/a/ar$a;->a:Lio/reactivex/d;

    invoke-interface {p1, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method
