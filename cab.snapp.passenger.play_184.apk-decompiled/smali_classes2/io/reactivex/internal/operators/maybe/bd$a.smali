.class final Lio/reactivex/internal/operators/maybe/bd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/bd;
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
        "Ljava/lang/Object;",
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

.field final b:Lio/reactivex/internal/operators/maybe/bd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/bd<",
            "TT;>;"
        }
    .end annotation
.end field

.field c:Lio/reactivex/b/c;


# direct methods
.method constructor <init>(Lio/reactivex/t;Lio/reactivex/internal/operators/maybe/bd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;",
            "Lio/reactivex/internal/operators/maybe/bd<",
            "TT;>;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/bd$a;->a:Lio/reactivex/t;

    .line 68
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/bd$a;->b:Lio/reactivex/internal/operators/maybe/bd;

    return-void
.end method

.method private a()V
    .locals 1

    .line 174
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bd$a;->b:Lio/reactivex/internal/operators/maybe/bd;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/bd;->f:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 176
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 177
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 4

    .line 139
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bd$a;->b:Lio/reactivex/internal/operators/maybe/bd;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/bd;->d:Lio/reactivex/e/g;

    invoke-interface {v0, p1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 141
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 142
    new-instance v1, Lio/reactivex/c/a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 145
    :goto_0
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/bd$a;->c:Lio/reactivex/b/c;

    .line 147
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bd$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    .line 149
    invoke-direct {p0}, Lio/reactivex/internal/operators/maybe/bd$a;->a()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 74
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bd$a;->b:Lio/reactivex/internal/operators/maybe/bd;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/bd;->g:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 76
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 77
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    .line 80
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bd$a;->c:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 81
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/bd$a;->c:Lio/reactivex/b/c;

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bd$a;->c:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 154
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bd$a;->c:Lio/reactivex/b/c;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_0

    return-void

    .line 159
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bd$a;->b:Lio/reactivex/internal/operators/maybe/bd;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/bd;->e:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/bd$a;->c:Lio/reactivex/b/c;

    .line 167
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bd$a;->a:Lio/reactivex/t;

    invoke-interface {v0}, Lio/reactivex/t;->onComplete()V

    .line 169
    invoke-direct {p0}, Lio/reactivex/internal/operators/maybe/bd$a;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 161
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 162
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/maybe/bd$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bd$a;->c:Lio/reactivex/b/c;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_0

    .line 130
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 134
    :cond_0
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/maybe/bd$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bd$a;->c:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bd$a;->b:Lio/reactivex/internal/operators/maybe/bd;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/bd;->b:Lio/reactivex/e/g;

    invoke-interface {v0, p1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/bd$a;->c:Lio/reactivex/b/c;

    .line 104
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/bd$a;->a:Lio/reactivex/t;

    invoke-interface {p1, p0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/b/c;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 95
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 96
    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    .line 97
    sget-object p1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/bd$a;->c:Lio/reactivex/b/c;

    .line 98
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/bd$a;->a:Lio/reactivex/t;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/t;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bd$a;->c:Lio/reactivex/b/c;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_0

    return-void

    .line 114
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bd$a;->b:Lio/reactivex/internal/operators/maybe/bd;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/bd;->c:Lio/reactivex/e/g;

    invoke-interface {v0, p1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/bd$a;->c:Lio/reactivex/b/c;

    .line 122
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bd$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onSuccess(Ljava/lang/Object;)V

    .line 124
    invoke-direct {p0}, Lio/reactivex/internal/operators/maybe/bd$a;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 116
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 117
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/maybe/bd$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method
