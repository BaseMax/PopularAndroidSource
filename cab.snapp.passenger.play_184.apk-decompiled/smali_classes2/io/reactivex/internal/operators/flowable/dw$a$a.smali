.class final Lio/reactivex/internal/operators/flowable/dw$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/dw$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
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
.field final synthetic a:Lio/reactivex/internal/operators/flowable/dw$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/dw$a;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dw$a$a;->a:Lio/reactivex/internal/operators/flowable/dw$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 2

    .line 134
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dw$a$a;->a:Lio/reactivex/internal/operators/flowable/dw$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/internal/operators/flowable/dw$a;->f:Z

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 128
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dw$a$a;->a:Lio/reactivex/internal/operators/flowable/dw$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/dw$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 129
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dw$a$a;->a:Lio/reactivex/internal/operators/flowable/dw$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/dw$a;->a:Lorg/b/c;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/dw$a$a;->a:Lio/reactivex/internal/operators/flowable/dw$a;

    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/dw$a;->e:Lio/reactivex/internal/util/b;

    invoke-static {v0, p1, v1, v2}, Lio/reactivex/internal/util/i;->onError(Lorg/b/c;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/b;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1

    .line 122
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/dw$a$a;->a:Lio/reactivex/internal/operators/flowable/dw$a;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lio/reactivex/internal/operators/flowable/dw$a;->f:Z

    .line 123
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/dw$a$a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 117
    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;J)Z

    return-void
.end method