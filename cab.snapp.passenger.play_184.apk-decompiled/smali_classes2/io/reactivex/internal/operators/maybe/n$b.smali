.class final Lio/reactivex/internal/operators/maybe/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/n;
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
        "Ljava/lang/Object;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/o<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/maybe/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/n$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field b:Lio/reactivex/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/w<",
            "TT;>;"
        }
    .end annotation
.end field

.field c:Lorg/b/d;


# direct methods
.method constructor <init>(Lio/reactivex/t;Lio/reactivex/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;",
            "Lio/reactivex/w<",
            "TT;>;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lio/reactivex/internal/operators/maybe/n$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/maybe/n$a;-><init>(Lio/reactivex/t;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/n$b;->a:Lio/reactivex/internal/operators/maybe/n$a;

    .line 55
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/n$b;->b:Lio/reactivex/w;

    return-void
.end method

.method private a()V
    .locals 2

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/n$b;->b:Lio/reactivex/w;

    const/4 v1, 0x0

    .line 101
    iput-object v1, p0, Lio/reactivex/internal/operators/maybe/n$b;->b:Lio/reactivex/w;

    .line 103
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/n$b;->a:Lio/reactivex/internal/operators/maybe/n$a;

    invoke-interface {v0, v1}, Lio/reactivex/w;->subscribe(Lio/reactivex/t;)V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 113
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/n$b;->c:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 114
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/n$b;->c:Lorg/b/d;

    .line 115
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/n$b;->a:Lio/reactivex/internal/operators/maybe/n$a;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/n$b;->a:Lio/reactivex/internal/operators/maybe/n$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/n$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/b/c;)Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 92
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/n$b;->c:Lorg/b/d;

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v0, v1, :cond_0

    .line 93
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/n$b;->c:Lorg/b/d;

    .line 95
    invoke-direct {p0}, Lio/reactivex/internal/operators/maybe/n$b;->a()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/n$b;->c:Lorg/b/d;

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v0, v1, :cond_0

    .line 82
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/n$b;->c:Lorg/b/d;

    .line 84
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/n$b;->a:Lio/reactivex/internal/operators/maybe/n$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/n$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 86
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1

    .line 71
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/n$b;->c:Lorg/b/d;

    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq p1, v0, :cond_0

    .line 72
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/n$b;->c:Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 73
    sget-object p1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/n$b;->c:Lorg/b/d;

    .line 75
    invoke-direct {p0}, Lio/reactivex/internal/operators/maybe/n$b;->a()V

    :cond_0
    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/n$b;->c:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/n$b;->c:Lorg/b/d;

    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/n$b;->a:Lio/reactivex/internal/operators/maybe/n$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/n$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/b/c;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 65
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method
