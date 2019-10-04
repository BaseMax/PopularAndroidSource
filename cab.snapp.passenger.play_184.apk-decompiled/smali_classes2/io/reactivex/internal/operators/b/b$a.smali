.class final Lio/reactivex/internal/operators/b/b$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/d;
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/b/d;",
        ">;",
        "Lio/reactivex/d;",
        "Lio/reactivex/o<",
        "TR;>;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-TR;>;"
        }
    .end annotation
.end field

.field b:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "+TR;>;"
        }
    .end annotation
.end field

.field c:Lio/reactivex/b/c;

.field final d:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Lorg/b/c;Lorg/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;",
            "Lorg/b/b<",
            "+TR;>;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 64
    iput-object p1, p0, Lio/reactivex/internal/operators/b/b$a;->a:Lorg/b/c;

    .line 65
    iput-object p2, p0, Lio/reactivex/internal/operators/b/b$a;->b:Lorg/b/b;

    .line 66
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/b/b$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 97
    iget-object v0, p0, Lio/reactivex/internal/operators/b/b$a;->c:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 98
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final onComplete()V
    .locals 2

    .line 81
    iget-object v0, p0, Lio/reactivex/internal/operators/b/b$a;->b:Lorg/b/b;

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lio/reactivex/internal/operators/b/b$a;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 85
    iput-object v1, p0, Lio/reactivex/internal/operators/b/b$a;->b:Lorg/b/b;

    .line 86
    invoke-interface {v0, p0}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lio/reactivex/internal/operators/b/b$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/b/b$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/b/b$a;->c:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iput-object p1, p0, Lio/reactivex/internal/operators/b/b$a;->c:Lio/reactivex/b/c;

    .line 105
    iget-object p1, p0, Lio/reactivex/internal/operators/b/b$a;->a:Lorg/b/c;

    invoke-interface {p1, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    :cond_0
    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/b/b$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p0, v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->deferredSetOnce(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;Lorg/b/d;)Z

    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 92
    iget-object v0, p0, Lio/reactivex/internal/operators/b/b$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p0, v0, p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->deferredRequest(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    return-void
.end method
