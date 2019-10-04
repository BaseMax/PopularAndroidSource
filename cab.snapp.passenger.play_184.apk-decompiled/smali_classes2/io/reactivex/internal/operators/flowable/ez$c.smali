.class final Lio/reactivex/internal/operators/flowable/ez$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/b/d;",
        ">;",
        "Lio/reactivex/o<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/ez$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/ez$b<",
            "**>;"
        }
    .end annotation
.end field

.field final b:I

.field c:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/ez$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/ez$b<",
            "**>;I)V"
        }
    .end annotation

    .line 264
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 265
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ez$c;->a:Lio/reactivex/internal/operators/flowable/ez$b;

    .line 266
    iput p2, p0, Lio/reactivex/internal/operators/flowable/ez$c;->b:I

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 3

    .line 289
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ez$c;->a:Lio/reactivex/internal/operators/flowable/ez$b;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/ez$c;->b:I

    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/ez$c;->c:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 1235
    iput-boolean v2, v0, Lio/reactivex/internal/operators/flowable/ez$b;->h:Z

    .line 1236
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/ez$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 1237
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/ez$b;->a(I)V

    .line 1238
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/ez$b;->a:Lorg/b/c;

    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/ez$b;->g:Lio/reactivex/internal/util/b;

    invoke-static {v1, v0, v2}, Lio/reactivex/internal/util/i;->onComplete(Lorg/b/c;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/b;)V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 284
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ez$c;->a:Lio/reactivex/internal/operators/flowable/ez$b;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/ez$c;->b:I

    const/4 v2, 0x1

    .line 1227
    iput-boolean v2, v0, Lio/reactivex/internal/operators/flowable/ez$b;->h:Z

    .line 1228
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/ez$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 1229
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/ez$b;->a(I)V

    .line 1230
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/ez$b;->a:Lorg/b/c;

    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/ez$b;->g:Lio/reactivex/internal/util/b;

    invoke-static {v1, p1, v0, v2}, Lio/reactivex/internal/util/i;->onError(Lorg/b/c;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/b;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2

    .line 276
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ez$c;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 277
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ez$c;->c:Z

    .line 279
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ez$c;->a:Lio/reactivex/internal/operators/flowable/ez$b;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/ez$c;->b:I

    .line 1223
    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/ez$b;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 271
    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;J)Z

    return-void
.end method
