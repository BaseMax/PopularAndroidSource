.class final Lio/reactivex/internal/operators/flowable/da$b;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/da;
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
        "Lio/reactivex/o<",
        "TT;>;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/operators/flowable/da;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/da<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/operators/flowable/da$a;

.field d:Lorg/b/d;


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/internal/operators/flowable/da;Lio/reactivex/internal/operators/flowable/da$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;",
            "Lio/reactivex/internal/operators/flowable/da<",
            "TT;>;",
            "Lio/reactivex/internal/operators/flowable/da$a;",
            ")V"
        }
    .end annotation

    .line 201
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 202
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/da$b;->a:Lorg/b/c;

    .line 203
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/da$b;->b:Lio/reactivex/internal/operators/flowable/da;

    .line 204
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/da$b;->c:Lio/reactivex/internal/operators/flowable/da$a;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 7

    .line 237
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/da$b;->d:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 238
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/da$b;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 239
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/da$b;->b:Lio/reactivex/internal/operators/flowable/da;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/da$b;->c:Lio/reactivex/internal/operators/flowable/da$a;

    .line 1096
    monitor-enter v0

    .line 1097
    :try_start_0
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/da;->g:Lio/reactivex/internal/operators/flowable/da$a;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/da;->g:Lio/reactivex/internal/operators/flowable/da$a;

    if-eq v2, v1, :cond_0

    goto :goto_1

    .line 1100
    :cond_0
    iget-wide v2, v1, Lio/reactivex/internal/operators/flowable/da$a;->c:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 1101
    iput-wide v2, v1, Lio/reactivex/internal/operators/flowable/da$a;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    .line 1102
    iget-boolean v2, v1, Lio/reactivex/internal/operators/flowable/da$a;->d:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 1105
    :cond_1
    iget-wide v2, v0, Lio/reactivex/internal/operators/flowable/da;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 1106
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/da;->b(Lio/reactivex/internal/operators/flowable/da$a;)V

    .line 1107
    monitor-exit v0

    return-void

    .line 1109
    :cond_2
    new-instance v2, Lio/reactivex/internal/disposables/f;

    invoke-direct {v2}, Lio/reactivex/internal/disposables/f;-><init>()V

    .line 1110
    iput-object v2, v1, Lio/reactivex/internal/operators/flowable/da$a;->b:Lio/reactivex/b/c;

    .line 1111
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    iget-object v3, v0, Lio/reactivex/internal/operators/flowable/da;->f:Lio/reactivex/ah;

    iget-wide v4, v0, Lio/reactivex/internal/operators/flowable/da;->d:J

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/da;->e:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v4, v5, v0}, Lio/reactivex/ah;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    goto :goto_2

    .line 1103
    :cond_3
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    .line 1098
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 1111
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_5
    :goto_2
    return-void
.end method

.method public final onComplete()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 224
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/da$b;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/da$b;->b:Lio/reactivex/internal/operators/flowable/da;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/da$b;->c:Lio/reactivex/internal/operators/flowable/da$a;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/da;->a(Lio/reactivex/internal/operators/flowable/da$a;)V

    .line 226
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/da$b;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 214
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/da$b;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/da$b;->b:Lio/reactivex/internal/operators/flowable/da;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/da$b;->c:Lio/reactivex/internal/operators/flowable/da$a;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/da;->a(Lio/reactivex/internal/operators/flowable/da$a;)V

    .line 216
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/da$b;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 218
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

    .line 209
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/da$b;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/da$b;->d:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/da$b;->d:Lorg/b/d;

    .line 248
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/da$b;->a:Lorg/b/c;

    invoke-interface {p1, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 232
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/da$b;->d:Lorg/b/d;

    invoke-interface {v0, p1, p2}, Lorg/b/d;->request(J)V

    return-void
.end method
