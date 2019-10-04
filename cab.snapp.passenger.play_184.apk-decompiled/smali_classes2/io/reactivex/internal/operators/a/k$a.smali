.class final Lio/reactivex/internal/operators/a/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lio/reactivex/d;

.field final b:Lio/reactivex/ah;

.field c:Lio/reactivex/b/c;

.field volatile d:Z


# direct methods
.method constructor <init>(Lio/reactivex/d;Lio/reactivex/ah;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lio/reactivex/internal/operators/a/k$a;->a:Lio/reactivex/d;

    .line 48
    iput-object p2, p0, Lio/reactivex/internal/operators/a/k$a;->b:Lio/reactivex/ah;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lio/reactivex/internal/operators/a/k$a;->d:Z

    .line 80
    iget-object v0, p0, Lio/reactivex/internal/operators/a/k$a;->b:Lio/reactivex/ah;

    invoke-virtual {v0, p0}, Lio/reactivex/ah;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/b/c;

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lio/reactivex/internal/operators/a/k$a;->d:Z

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 53
    iget-boolean v0, p0, Lio/reactivex/internal/operators/a/k$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/a/k$a;->a:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 61
    iget-boolean v0, p0, Lio/reactivex/internal/operators/a/k$a;->d:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/a/k$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/a/k$a;->c:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iput-object p1, p0, Lio/reactivex/internal/operators/a/k$a;->c:Lio/reactivex/b/c;

    .line 73
    iget-object p1, p0, Lio/reactivex/internal/operators/a/k$a;->a:Lio/reactivex/d;

    invoke-interface {p1, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 1

    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/a/k$a;->c:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 91
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/a/k$a;->c:Lio/reactivex/b/c;

    return-void
.end method
