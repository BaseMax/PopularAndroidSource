.class final Lio/reactivex/internal/operators/flowable/af$f;
.super Lio/reactivex/internal/operators/flowable/af$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/af$a<",
        "TT;>;"
    }
.end annotation


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

    .line 357
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/af$a;-><init>(Lorg/b/c;)V

    return-void
.end method


# virtual methods
.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 362
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/af$f;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 367
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/af$f;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    .line 374
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/af$f;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    .line 375
    invoke-virtual {p0, v0, v1, v2, v3}, Lio/reactivex/internal/operators/flowable/af$f;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_2
    return-void

    .line 369
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/af$f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
