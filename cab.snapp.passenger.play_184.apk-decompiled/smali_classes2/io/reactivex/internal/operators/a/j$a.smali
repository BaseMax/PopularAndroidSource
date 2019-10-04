.class final Lio/reactivex/internal/operators/a/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Lio/reactivex/d;

.field b:Lio/reactivex/b/c;


# direct methods
.method constructor <init>(Lio/reactivex/d;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lio/reactivex/internal/operators/a/j$a;->a:Lio/reactivex/d;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lio/reactivex/internal/operators/a/j$a;->a:Lio/reactivex/d;

    .line 51
    iget-object v0, p0, Lio/reactivex/internal/operators/a/j$a;->b:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 52
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/a/j$a;->b:Lio/reactivex/b/c;

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lio/reactivex/internal/operators/a/j$a;->b:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 81
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/a/j$a;->b:Lio/reactivex/b/c;

    .line 82
    iget-object v0, p0, Lio/reactivex/internal/operators/a/j$a;->a:Lio/reactivex/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 84
    iput-object v1, p0, Lio/reactivex/internal/operators/a/j$a;->a:Lio/reactivex/d;

    .line 85
    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 71
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/a/j$a;->b:Lio/reactivex/b/c;

    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/a/j$a;->a:Lio/reactivex/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 74
    iput-object v1, p0, Lio/reactivex/internal/operators/a/j$a;->a:Lio/reactivex/d;

    .line 75
    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lio/reactivex/internal/operators/a/j$a;->b:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iput-object p1, p0, Lio/reactivex/internal/operators/a/j$a;->b:Lio/reactivex/b/c;

    .line 65
    iget-object p1, p0, Lio/reactivex/internal/operators/a/j$a;->a:Lio/reactivex/d;

    invoke-interface {p1, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method
