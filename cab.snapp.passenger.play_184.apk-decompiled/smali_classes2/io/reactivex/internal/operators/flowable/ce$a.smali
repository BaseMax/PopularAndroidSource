.class final Lio/reactivex/internal/operators/flowable/ce$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/ce$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
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

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/b/d;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/operators/flowable/ce$a$a;

.field final d:Lio/reactivex/internal/util/b;

.field final e:Ljava/util/concurrent/atomic/AtomicLong;

.field volatile f:Z

.field volatile g:Z


# direct methods
.method constructor <init>(Lorg/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 70
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ce$a;->a:Lorg/b/c;

    .line 71
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ce$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 72
    new-instance p1, Lio/reactivex/internal/operators/flowable/ce$a$a;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/flowable/ce$a$a;-><init>(Lio/reactivex/internal/operators/flowable/ce$a;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ce$a;->c:Lio/reactivex/internal/operators/flowable/ce$a$a;

    .line 73
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ce$a;->d:Lio/reactivex/internal/util/b;

    .line 74
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ce$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ce$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ce$a;->c:Lio/reactivex/internal/operators/flowable/ce$a$a;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final onComplete()V
    .locals 2

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ce$a;->f:Z

    .line 96
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ce$a;->g:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ce$a;->a:Lorg/b/c;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ce$a;->d:Lio/reactivex/internal/util/b;

    invoke-static {v0, p0, v1}, Lio/reactivex/internal/util/i;->onComplete(Lorg/b/c;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/b;)V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ce$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ce$a;->a:Lorg/b/c;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ce$a;->d:Lio/reactivex/internal/util/b;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/i;->onError(Lorg/b/c;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/b;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ce$a;->a:Lorg/b/c;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ce$a;->d:Lio/reactivex/internal/util/b;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/i;->onNext(Lorg/b/c;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/b;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ce$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ce$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->deferredSetOnce(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;Lorg/b/d;)Z

    return-void
.end method

.method public final request(J)V
    .locals 2

    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ce$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ce$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->deferredRequest(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    return-void
.end method
