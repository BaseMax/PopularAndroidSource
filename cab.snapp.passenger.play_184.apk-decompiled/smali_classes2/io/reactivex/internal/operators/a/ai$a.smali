.class final Lio/reactivex/internal/operators/a/ai$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/a/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Lio/reactivex/d;

.field b:Lio/reactivex/b/c;

.field final synthetic c:Lio/reactivex/internal/operators/a/ai;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/a/ai;Lio/reactivex/d;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lio/reactivex/internal/operators/a/ai$a;->c:Lio/reactivex/internal/operators/a/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lio/reactivex/internal/operators/a/ai$a;->a:Lio/reactivex/d;

    return-void
.end method

.method private a()V
    .locals 1

    .line 122
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ai$a;->c:Lio/reactivex/internal/operators/a/ai;

    iget-object v0, v0, Lio/reactivex/internal/operators/a/ai;->f:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 124
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 125
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 132
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ai$a;->c:Lio/reactivex/internal/operators/a/ai;

    iget-object v0, v0, Lio/reactivex/internal/operators/a/ai;->g:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 134
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 135
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    .line 137
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ai$a;->b:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ai$a;->b:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 102
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ai$a;->b:Lio/reactivex/b/c;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_0

    return-void

    .line 107
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ai$a;->c:Lio/reactivex/internal/operators/a/ai;

    iget-object v0, v0, Lio/reactivex/internal/operators/a/ai;->d:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ai$a;->c:Lio/reactivex/internal/operators/a/ai;

    iget-object v0, v0, Lio/reactivex/internal/operators/a/ai;->e:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ai$a;->a:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    .line 117
    invoke-direct {p0}, Lio/reactivex/internal/operators/a/ai$a;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 110
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 111
    iget-object v1, p0, Lio/reactivex/internal/operators/a/ai$a;->a:Lio/reactivex/d;

    invoke-interface {v1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 83
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ai$a;->b:Lio/reactivex/b/c;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_0

    .line 84
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 88
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ai$a;->c:Lio/reactivex/internal/operators/a/ai;

    iget-object v0, v0, Lio/reactivex/internal/operators/a/ai;->c:Lio/reactivex/e/g;

    invoke-interface {v0, p1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ai$a;->c:Lio/reactivex/internal/operators/a/ai;

    iget-object v0, v0, Lio/reactivex/internal/operators/a/ai;->e:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 91
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 92
    new-instance v1, Lio/reactivex/c/a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 95
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ai$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    .line 97
    invoke-direct {p0}, Lio/reactivex/internal/operators/a/ai$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 67
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ai$a;->c:Lio/reactivex/internal/operators/a/ai;

    iget-object v0, v0, Lio/reactivex/internal/operators/a/ai;->b:Lio/reactivex/e/g;

    invoke-interface {v0, p1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iget-object v0, p0, Lio/reactivex/internal/operators/a/ai$a;->b:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iput-object p1, p0, Lio/reactivex/internal/operators/a/ai$a;->b:Lio/reactivex/b/c;

    .line 77
    iget-object p1, p0, Lio/reactivex/internal/operators/a/ai$a;->a:Lio/reactivex/d;

    invoke-interface {p1, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 69
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 70
    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    .line 71
    sget-object p1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object p1, p0, Lio/reactivex/internal/operators/a/ai$a;->b:Lio/reactivex/b/c;

    .line 72
    iget-object p1, p0, Lio/reactivex/internal/operators/a/ai$a;->a:Lio/reactivex/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/d;)V

    return-void
.end method
