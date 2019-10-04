.class final Lio/reactivex/internal/operators/flowable/eu$a;
.super Lio/reactivex/k/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/eu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/k/b<",
        "TB;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/eu$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/eu$b<",
            "TT;TB;>;"
        }
    .end annotation
.end field

.field b:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/eu$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/eu$b<",
            "TT;TB;>;)V"
        }
    .end annotation

    .line 272
    invoke-direct {p0}, Lio/reactivex/k/b;-><init>()V

    .line 273
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/eu$a;->a:Lio/reactivex/internal/operators/flowable/eu$b;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 3

    .line 296
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/eu$a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 299
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/eu$a;->b:Z

    .line 300
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/eu$a;->a:Lio/reactivex/internal/operators/flowable/eu$b;

    .line 1163
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/eu$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 1164
    iput-boolean v0, v1, Lio/reactivex/internal/operators/flowable/eu$b;->k:Z

    .line 1165
    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/eu$b;->b()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 286
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/eu$a;->b:Z

    if-eqz v0, :cond_0

    .line 287
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 290
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/eu$a;->b:Z

    .line 291
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/eu$a;->a:Lio/reactivex/internal/operators/flowable/eu$b;

    .line 1153
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/eu$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 1154
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/eu$b;->g:Lio/reactivex/internal/util/b;

    invoke-virtual {v2, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1155
    iput-boolean v0, v1, Lio/reactivex/internal/operators/flowable/eu$b;->k:Z

    .line 1156
    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/eu$b;->b()V

    return-void

    .line 1158
    :cond_1
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 278
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/eu$a;->b:Z

    if-eqz p1, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/eu$a;->a:Lio/reactivex/internal/operators/flowable/eu$b;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/eu$b;->a()V

    return-void
.end method
