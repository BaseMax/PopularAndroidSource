.class final Lio/reactivex/internal/operators/maybe/br$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/br;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/t<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-TD;>;"
        }
    .end annotation
.end field

.field final c:Z

.field d:Lio/reactivex/b/c;


# direct methods
.method constructor <init>(Lio/reactivex/t;Ljava/lang/Object;Lio/reactivex/e/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;TD;",
            "Lio/reactivex/e/g<",
            "-TD;>;Z)V"
        }
    .end annotation

    .line 113
    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 114
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/br$a;->a:Lio/reactivex/t;

    .line 115
    iput-object p3, p0, Lio/reactivex/internal/operators/maybe/br$a;->b:Lio/reactivex/e/g;

    .line 116
    iput-boolean p4, p0, Lio/reactivex/internal/operators/maybe/br$a;->c:Z

    return-void
.end method

.method private a()V
    .locals 2

    .line 128
    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/maybe/br$a;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 131
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/br$a;->b:Lio/reactivex/e/g;

    invoke-interface {v1, v0}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 133
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 134
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 121
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/br$a;->d:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 122
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/br$a;->d:Lio/reactivex/b/c;

    .line 123
    invoke-direct {p0}, Lio/reactivex/internal/operators/maybe/br$a;->a()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 141
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/br$a;->d:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 207
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/br$a;->d:Lio/reactivex/b/c;

    .line 208
    iget-boolean v0, p0, Lio/reactivex/internal/operators/maybe/br$a;->c:Z

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/maybe/br$a;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 212
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/br$a;->b:Lio/reactivex/e/g;

    invoke-interface {v1, v0}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 214
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 215
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/br$a;->a:Lio/reactivex/t;

    invoke-interface {v1, v0}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 223
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/br$a;->a:Lio/reactivex/t;

    invoke-interface {v0}, Lio/reactivex/t;->onComplete()V

    .line 225
    iget-boolean v0, p0, Lio/reactivex/internal/operators/maybe/br$a;->c:Z

    if-nez v0, :cond_2

    .line 226
    invoke-direct {p0}, Lio/reactivex/internal/operators/maybe/br$a;->a()V

    :cond_2
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 182
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/br$a;->d:Lio/reactivex/b/c;

    .line 183
    iget-boolean v0, p0, Lio/reactivex/internal/operators/maybe/br$a;->c:Z

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/maybe/br$a;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 187
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/br$a;->b:Lio/reactivex/e/g;

    invoke-interface {v1, v0}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 189
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 190
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

    .line 197
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/br$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    .line 199
    iget-boolean p1, p0, Lio/reactivex/internal/operators/maybe/br$a;->c:Z

    if-nez p1, :cond_2

    .line 200
    invoke-direct {p0}, Lio/reactivex/internal/operators/maybe/br$a;->a()V

    :cond_2
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/br$a;->d:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/br$a;->d:Lio/reactivex/b/c;

    .line 149
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/br$a;->a:Lio/reactivex/t;

    invoke-interface {p1, p0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/b/c;)V

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

    .line 156
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/br$a;->d:Lio/reactivex/b/c;

    .line 157
    iget-boolean v0, p0, Lio/reactivex/internal/operators/maybe/br$a;->c:Z

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/maybe/br$a;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 161
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/br$a;->b:Lio/reactivex/e/g;

    invoke-interface {v1, v0}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 163
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 164
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/br$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 172
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/br$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onSuccess(Ljava/lang/Object;)V

    .line 174
    iget-boolean p1, p0, Lio/reactivex/internal/operators/maybe/br$a;->c:Z

    if-nez p1, :cond_2

    .line 175
    invoke-direct {p0}, Lio/reactivex/internal/operators/maybe/br$a;->a()V

    :cond_2
    return-void
.end method
