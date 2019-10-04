.class final Lio/reactivex/internal/operators/flowable/di$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/di;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/o<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/di$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/di$c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/di$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/di$c<",
            "TT;>;)V"
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/di$d;->a:Lio/reactivex/internal/operators/flowable/di$c;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 166
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/di$d;->a:Lio/reactivex/internal/operators/flowable/di$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/di$c;->complete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/di$d;->a:Lio/reactivex/internal/operators/flowable/di$c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/di$c;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0

    .line 156
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/di$d;->a:Lio/reactivex/internal/operators/flowable/di$c;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/di$c;->b()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 3

    .line 151
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/di$d;->a:Lio/reactivex/internal/operators/flowable/di$c;

    .line 1097
    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/di$c;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v0, p1, v1, v2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;J)Z

    return-void
.end method
