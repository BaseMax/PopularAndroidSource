.class final Lio/reactivex/internal/operators/flowable/ab$a;
.super Lio/reactivex/internal/f/t;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/f/t<",
        "TT;TT;>;",
        "Lio/reactivex/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/b/c;",
            ">;"
        }
    .end annotation
.end field

.field b:Lio/reactivex/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/w<",
            "+TT;>;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;",
            "Lio/reactivex/w<",
            "+TT;>;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1}, Lio/reactivex/internal/f/t;-><init>(Lorg/b/c;)V

    .line 61
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ab$a;->b:Lio/reactivex/w;

    .line 62
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ab$a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 101
    invoke-super {p0}, Lio/reactivex/internal/f/t;->cancel()V

    .line 102
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ab$a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final onComplete()V
    .locals 2

    .line 88
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ab$a;->c:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ab$a;->d:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ab$a;->c:Z

    .line 92
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/ab$a;->e:Lorg/b/d;

    .line 93
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ab$a;->b:Lio/reactivex/w;

    const/4 v1, 0x0

    .line 94
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/ab$a;->b:Lio/reactivex/w;

    .line 95
    invoke-interface {v0, p0}, Lio/reactivex/w;->subscribe(Lio/reactivex/t;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ab$a;->d:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 72
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/ab$a;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/ab$a;->g:J

    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ab$a;->d:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ab$a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 83
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ab$a;->a(Ljava/lang/Object;)V

    return-void
.end method
