.class final Lio/reactivex/internal/operators/d/p$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/d/p;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/b/d;",
        ">;",
        "Lio/reactivex/o<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/d/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/d/p$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:I


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/d/p$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/d/p$b<",
            "TT;>;I)V"
        }
    .end annotation

    .line 275
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 276
    iput-object p1, p0, Lio/reactivex/internal/operators/d/p$a;->a:Lio/reactivex/internal/operators/d/p$b;

    .line 277
    iput p2, p0, Lio/reactivex/internal/operators/d/p$a;->b:I

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 292
    iget-object v0, p0, Lio/reactivex/internal/operators/d/p$a;->a:Lio/reactivex/internal/operators/d/p$b;

    .line 1130
    iget-object v1, v0, Lio/reactivex/internal/operators/d/p$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1131
    invoke-virtual {v0}, Lio/reactivex/internal/operators/d/p$b;->a()V

    return-void

    .line 1133
    :cond_0
    iget-object v0, v0, Lio/reactivex/internal/operators/d/p$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 1134
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 265
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/d/p$a;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public final onNext(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lio/reactivex/internal/operators/d/p$a;->a:Lio/reactivex/internal/operators/d/p$b;

    iget v1, p0, Lio/reactivex/internal/operators/d/p$a;->b:I

    .line 1123
    iget-object v2, v0, Lio/reactivex/internal/operators/d/p$b;->c:[Ljava/util/List;

    aput-object p1, v2, v1

    .line 1124
    iget-object p1, v0, Lio/reactivex/internal/operators/d/p$b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    .line 1125
    invoke-virtual {v0}, Lio/reactivex/internal/operators/d/p$b;->a()V

    :cond_0
    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 282
    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;J)Z

    return-void
.end method
