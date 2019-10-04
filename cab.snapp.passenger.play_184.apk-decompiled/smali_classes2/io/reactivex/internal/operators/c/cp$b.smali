.class final Lio/reactivex/internal/operators/c/cp$b;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/cp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/operators/c/cp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/cp<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/operators/c/cp$a;

.field d:Lio/reactivex/b/c;


# direct methods
.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/internal/operators/c/cp;Lio/reactivex/internal/operators/c/cp$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;",
            "Lio/reactivex/internal/operators/c/cp<",
            "TT;>;",
            "Lio/reactivex/internal/operators/c/cp$a;",
            ")V"
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 200
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cp$b;->a:Lio/reactivex/ag;

    .line 201
    iput-object p2, p0, Lio/reactivex/internal/operators/c/cp$b;->b:Lio/reactivex/internal/operators/c/cp;

    .line 202
    iput-object p3, p0, Lio/reactivex/internal/operators/c/cp$b;->c:Lio/reactivex/internal/operators/c/cp$a;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 7

    .line 230
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cp$b;->d:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 231
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/c/cp$b;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 232
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cp$b;->b:Lio/reactivex/internal/operators/c/cp;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/cp$b;->c:Lio/reactivex/internal/operators/c/cp$a;

    .line 1093
    monitor-enter v0

    .line 1094
    :try_start_0
    iget-object v2, v0, Lio/reactivex/internal/operators/c/cp;->f:Lio/reactivex/internal/operators/c/cp$a;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lio/reactivex/internal/operators/c/cp;->f:Lio/reactivex/internal/operators/c/cp$a;

    if-eq v2, v1, :cond_0

    goto :goto_1

    .line 1097
    :cond_0
    iget-wide v2, v1, Lio/reactivex/internal/operators/c/cp$a;->c:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 1098
    iput-wide v2, v1, Lio/reactivex/internal/operators/c/cp$a;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    .line 1099
    iget-boolean v2, v1, Lio/reactivex/internal/operators/c/cp$a;->d:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 1102
    :cond_1
    iget-wide v2, v0, Lio/reactivex/internal/operators/c/cp;->c:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 1103
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/c/cp;->b(Lio/reactivex/internal/operators/c/cp$a;)V

    .line 1104
    monitor-exit v0

    return-void

    .line 1106
    :cond_2
    new-instance v2, Lio/reactivex/internal/disposables/f;

    invoke-direct {v2}, Lio/reactivex/internal/disposables/f;-><init>()V

    .line 1107
    iput-object v2, v1, Lio/reactivex/internal/operators/c/cp$a;->b:Lio/reactivex/b/c;

    .line 1108
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1110
    iget-object v3, v0, Lio/reactivex/internal/operators/c/cp;->e:Lio/reactivex/ah;

    iget-wide v4, v0, Lio/reactivex/internal/operators/c/cp;->c:J

    iget-object v0, v0, Lio/reactivex/internal/operators/c/cp;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v4, v5, v0}, Lio/reactivex/ah;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    goto :goto_2

    .line 1100
    :cond_3
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    .line 1095
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 1108
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_5
    :goto_2
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 238
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cp$b;->d:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 222
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/c/cp$b;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cp$b;->b:Lio/reactivex/internal/operators/c/cp;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/cp$b;->c:Lio/reactivex/internal/operators/c/cp$a;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/c/cp;->a(Lio/reactivex/internal/operators/c/cp$a;)V

    .line 224
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cp$b;->a:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 212
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/c/cp$b;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cp$b;->b:Lio/reactivex/internal/operators/c/cp;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/cp$b;->c:Lio/reactivex/internal/operators/c/cp$a;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/c/cp;->a(Lio/reactivex/internal/operators/c/cp$a;)V

    .line 214
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cp$b;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 216
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cp$b;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cp$b;->d:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cp$b;->d:Lio/reactivex/b/c;

    .line 246
    iget-object p1, p0, Lio/reactivex/internal/operators/c/cp$b;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method
