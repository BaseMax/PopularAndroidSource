.class final Lio/reactivex/internal/operators/flowable/cy$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/cy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/al<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/c<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field d:Lorg/b/d;


# direct methods
.method constructor <init>(Lio/reactivex/al;Lio/reactivex/e/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-TR;>;",
            "Lio/reactivex/e/c<",
            "TR;-TT;TR;>;TR;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cy$a;->a:Lio/reactivex/al;

    .line 64
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/cy$a;->c:Ljava/lang/Object;

    .line 65
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/cy$a;->b:Lio/reactivex/e/c;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 116
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cy$a;->d:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 117
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/cy$a;->d:Lorg/b/d;

    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .line 122
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cy$a;->d:Lorg/b/d;

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 106
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cy$a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 108
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/cy$a;->c:Ljava/lang/Object;

    .line 109
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/cy$a;->d:Lorg/b/d;

    .line 110
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/cy$a;->a:Lio/reactivex/al;

    invoke-interface {v1, v0}, Lio/reactivex/al;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cy$a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/cy$a;->c:Ljava/lang/Object;

    .line 97
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/cy$a;->d:Lorg/b/d;

    .line 98
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cy$a;->a:Lio/reactivex/al;

    invoke-interface {v0, p1}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 100
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cy$a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/cy$a;->b:Lio/reactivex/e/c;

    invoke-interface {v1, v0, p1}, Lio/reactivex/e/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The reducer returned a null value"

    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cy$a;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 86
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 87
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cy$a;->d:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 88
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/cy$a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cy$a;->d:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cy$a;->d:Lorg/b/d;

    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cy$a;->a:Lio/reactivex/al;

    invoke-interface {v0, p0}, Lio/reactivex/al;->onSubscribe(Lio/reactivex/b/c;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 75
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method
