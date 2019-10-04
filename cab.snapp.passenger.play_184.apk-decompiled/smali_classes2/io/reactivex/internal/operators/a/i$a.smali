.class final Lio/reactivex/internal/operators/a/i$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/d;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/d;

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/ah;

.field final e:Z

.field f:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/reactivex/d;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 66
    iput-object p1, p0, Lio/reactivex/internal/operators/a/i$a;->a:Lio/reactivex/d;

    .line 67
    iput-wide p2, p0, Lio/reactivex/internal/operators/a/i$a;->b:J

    .line 68
    iput-object p4, p0, Lio/reactivex/internal/operators/a/i$a;->c:Ljava/util/concurrent/TimeUnit;

    .line 69
    iput-object p5, p0, Lio/reactivex/internal/operators/a/i$a;->d:Lio/reactivex/ah;

    .line 70
    iput-boolean p6, p0, Lio/reactivex/internal/operators/a/i$a;->e:Z

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 93
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 98
    invoke-virtual {p0}, Lio/reactivex/internal/operators/a/i$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/b/c;)Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 4

    .line 82
    iget-object v0, p0, Lio/reactivex/internal/operators/a/i$a;->d:Lio/reactivex/ah;

    iget-wide v1, p0, Lio/reactivex/internal/operators/a/i$a;->b:J

    iget-object v3, p0, Lio/reactivex/internal/operators/a/i$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, v1, v2, v3}, Lio/reactivex/ah;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-static {p0, v0}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 87
    iput-object p1, p0, Lio/reactivex/internal/operators/a/i$a;->f:Ljava/lang/Throwable;

    .line 88
    iget-object p1, p0, Lio/reactivex/internal/operators/a/i$a;->d:Lio/reactivex/ah;

    iget-boolean v0, p0, Lio/reactivex/internal/operators/a/i$a;->e:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/reactivex/internal/operators/a/i$a;->b:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lio/reactivex/internal/operators/a/i$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p0, v0, v1, v2}, Lio/reactivex/ah;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 75
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lio/reactivex/internal/operators/a/i$a;->a:Lio/reactivex/d;

    invoke-interface {p1, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 2

    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/a/i$a;->f:Ljava/lang/Throwable;

    const/4 v1, 0x0

    .line 104
    iput-object v1, p0, Lio/reactivex/internal/operators/a/i$a;->f:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lio/reactivex/internal/operators/a/i$a;->a:Lio/reactivex/d;

    invoke-interface {v1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/a/i$a;->a:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    return-void
.end method
