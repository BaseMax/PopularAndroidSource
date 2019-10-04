.class final Lio/reactivex/internal/operators/flowable/dn$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/dn;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/b/d;",
        ">;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/dn$b;

.field final b:I

.field final c:I

.field d:J

.field volatile e:Lio/reactivex/internal/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile f:Z

.field g:I


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/dn$b;I)V
    .locals 0

    .line 265
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 266
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dn$c;->a:Lio/reactivex/internal/operators/flowable/dn$b;

    shr-int/lit8 p1, p2, 0x2

    sub-int p1, p2, p1

    .line 267
    iput p1, p0, Lio/reactivex/internal/operators/flowable/dn$c;->c:I

    .line 268
    iput p2, p0, Lio/reactivex/internal/operators/flowable/dn$c;->b:I

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 339
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dn$c;->e:Lio/reactivex/internal/b/j;

    if-eqz v0, :cond_0

    .line 341
    invoke-interface {v0}, Lio/reactivex/internal/b/j;->clear()V

    :cond_0
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 335
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 318
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/dn$c;->f:Z

    .line 319
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dn$c;->a:Lio/reactivex/internal/operators/flowable/dn$b;

    invoke-interface {v0}, Lio/reactivex/internal/operators/flowable/dn$b;->drain()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dn$c;->a:Lio/reactivex/internal/operators/flowable/dn$b;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/flowable/dn$b;->innerError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 302
    iget v0, p0, Lio/reactivex/internal/operators/flowable/dn$c;->g:I

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dn$c;->e:Lio/reactivex/internal/b/j;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/j;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 304
    new-instance p1, Lio/reactivex/c/c;

    invoke-direct {p1}, Lio/reactivex/c/c;-><init>()V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/dn$c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 308
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/dn$c;->a:Lio/reactivex/internal/operators/flowable/dn$b;

    invoke-interface {p1}, Lio/reactivex/internal/operators/flowable/dn$b;->drain()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 3

    .line 273
    invoke-static {p0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    instance-of v0, p1, Lio/reactivex/internal/b/g;

    if-eqz v0, :cond_1

    .line 276
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/b/g;

    const/4 v1, 0x3

    .line 278
    invoke-interface {v0, v1}, Lio/reactivex/internal/b/g;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 280
    iput v1, p0, Lio/reactivex/internal/operators/flowable/dn$c;->g:I

    .line 281
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/dn$c;->e:Lio/reactivex/internal/b/j;

    .line 282
    iput-boolean v2, p0, Lio/reactivex/internal/operators/flowable/dn$c;->f:Z

    .line 283
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/dn$c;->a:Lio/reactivex/internal/operators/flowable/dn$b;

    invoke-interface {p1}, Lio/reactivex/internal/operators/flowable/dn$b;->drain()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 287
    iput v1, p0, Lio/reactivex/internal/operators/flowable/dn$c;->g:I

    .line 288
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/dn$c;->e:Lio/reactivex/internal/b/j;

    .line 289
    iget v0, p0, Lio/reactivex/internal/operators/flowable/dn$c;->b:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    .line 294
    :cond_1
    new-instance v0, Lio/reactivex/internal/d/b;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/dn$c;->b:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/d/b;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/dn$c;->e:Lio/reactivex/internal/b/j;

    .line 296
    iget v0, p0, Lio/reactivex/internal/operators/flowable/dn$c;->b:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_2
    return-void
.end method

.method public final request()V
    .locals 5

    .line 323
    iget v0, p0, Lio/reactivex/internal/operators/flowable/dn$c;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 324
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/dn$c;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 325
    iget v2, p0, Lio/reactivex/internal/operators/flowable/dn$c;->c:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/16 v2, 0x0

    .line 326
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/dn$c;->d:J

    .line 327
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/dn$c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/b/d;

    invoke-interface {v2, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    .line 329
    :cond_0
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/dn$c;->d:J

    :cond_1
    return-void
.end method
