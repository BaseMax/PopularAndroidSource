.class final Lio/reactivex/internal/operators/flowable/et$c;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Ljava/lang/Runnable;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/et;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Ljava/lang/Runnable;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:J

.field final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final f:I

.field g:J

.field h:Lorg/b/d;

.field i:Lio/reactivex/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/h/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/b/c;JJI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;JJI)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 187
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 188
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/et$c;->a:Lorg/b/c;

    .line 189
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/et$c;->b:J

    .line 190
    iput-wide p4, p0, Lio/reactivex/internal/operators/flowable/et$c;->c:J

    .line 191
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/et$c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 192
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/et$c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 193
    iput p6, p0, Lio/reactivex/internal/operators/flowable/et$c;->f:I

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 275
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/et$c;->run()V

    :cond_0
    return-void
.end method

.method public final onComplete()V
    .locals 2

    .line 249
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$c;->i:Lio/reactivex/h/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 251
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/et$c;->i:Lio/reactivex/h/c;

    .line 252
    invoke-interface {v0}, Lorg/b/a;->onComplete()V

    .line 255
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$c;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 238
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$c;->i:Lio/reactivex/h/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 240
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/et$c;->i:Lio/reactivex/h/c;

    .line 241
    invoke-interface {v0, p1}, Lorg/b/a;->onError(Ljava/lang/Throwable;)V

    .line 244
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$c;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 206
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/et$c;->g:J

    .line 208
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/et$c;->i:Lio/reactivex/h/c;

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 210
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/et$c;->getAndIncrement()I

    .line 212
    iget v2, p0, Lio/reactivex/internal/operators/flowable/et$c;->f:I

    invoke-static {v2, p0}, Lio/reactivex/h/c;->create(ILjava/lang/Runnable;)Lio/reactivex/h/c;

    move-result-object v2

    .line 213
    iput-object v2, p0, Lio/reactivex/internal/operators/flowable/et$c;->i:Lio/reactivex/h/c;

    .line 215
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/et$c;->a:Lorg/b/c;

    invoke-interface {v5, v2}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    if-eqz v2, :cond_1

    .line 221
    invoke-virtual {v2, p1}, Lio/reactivex/h/c;->onNext(Ljava/lang/Object;)V

    .line 224
    :cond_1
    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/et$c;->b:J

    cmp-long p1, v0, v5

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 225
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/et$c;->i:Lio/reactivex/h/c;

    .line 226
    invoke-virtual {v2}, Lio/reactivex/h/c;->onComplete()V

    .line 229
    :cond_2
    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/et$c;->c:J

    cmp-long p1, v0, v5

    if-nez p1, :cond_3

    .line 230
    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/et$c;->g:J

    return-void

    .line 232
    :cond_3
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/et$c;->g:J

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$c;->h:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/et$c;->h:Lorg/b/d;

    .line 200
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/et$c;->a:Lorg/b/c;

    invoke-interface {p1, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 6

    .line 260
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/et$c;->b:J

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/c;->multiplyCap(JJ)J

    move-result-wide v0

    .line 263
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/et$c;->c:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/et$c;->b:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr p1, v4

    invoke-static {v2, v3, p1, p2}, Lio/reactivex/internal/util/c;->multiplyCap(JJ)J

    move-result-wide p1

    .line 264
    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/c;->addCap(JJ)J

    move-result-wide p1

    .line 265
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$c;->h:Lorg/b/d;

    invoke-interface {v0, p1, p2}, Lorg/b/d;->request(J)V

    return-void

    .line 267
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/et$c;->c:J

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/c;->multiplyCap(JJ)J

    move-result-wide p1

    .line 268
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$c;->h:Lorg/b/d;

    invoke-interface {v0, p1, p2}, Lorg/b/d;->request(J)V

    :cond_1
    return-void
.end method

.method public final run()V
    .locals 1

    .line 282
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/et$c;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$c;->h:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    :cond_0
    return-void
.end method
