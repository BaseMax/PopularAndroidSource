.class final Lio/reactivex/internal/operators/flowable/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
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
            "-TU;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/b<",
            "-TU;-TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field d:Lorg/b/d;

.field e:Z


# direct methods
.method constructor <init>(Lio/reactivex/al;Ljava/lang/Object;Lio/reactivex/e/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-TU;>;TU;",
            "Lio/reactivex/e/b<",
            "-TU;-TT;>;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/t$a;->a:Lio/reactivex/al;

    .line 74
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/t$a;->b:Lio/reactivex/e/b;

    .line 75
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/t$a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t$a;->d:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 125
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/t$a;->d:Lorg/b/d;

    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t$a;->d:Lorg/b/d;

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

    .line 114
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/t$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/t$a;->e:Z

    .line 118
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/t$a;->d:Lorg/b/d;

    .line 119
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t$a;->a:Lio/reactivex/al;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/t$a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/reactivex/al;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 103
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/t$a;->e:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/t$a;->e:Z

    .line 108
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/t$a;->d:Lorg/b/d;

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t$a;->a:Lio/reactivex/al;

    invoke-interface {v0, p1}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 89
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/t$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t$a;->b:Lio/reactivex/e/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/t$a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lio/reactivex/e/b;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 95
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 96
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t$a;->d:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 97
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/t$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t$a;->d:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/t$a;->d:Lorg/b/d;

    .line 82
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t$a;->a:Lio/reactivex/al;

    invoke-interface {v0, p0}, Lio/reactivex/al;->onSubscribe(Lio/reactivex/b/c;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 83
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method
