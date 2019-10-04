.class final Lio/reactivex/internal/operators/flowable/cg$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/al;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/cg$a;
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
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/al<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/cg$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/cg$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/cg$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/cg$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 327
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 328
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cg$a$a;->a:Lio/reactivex/internal/operators/flowable/cg$a;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 343
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cg$a$a;->a:Lio/reactivex/internal/operators/flowable/cg$a;

    .line 1202
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/cg$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v1, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1203
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/cg$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 1204
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/cg$a;->a()V

    return-void

    .line 1206
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 333
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cg$a$a;->a:Lio/reactivex/internal/operators/flowable/cg$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1177
    invoke-virtual {v0, v2, v1}, Lio/reactivex/internal/operators/flowable/cg$a;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1178
    iget-wide v2, v0, Lio/reactivex/internal/operators/flowable/cg$a;->m:J

    .line 1179
    iget-object v4, v0, Lio/reactivex/internal/operators/flowable/cg$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 1181
    iput-wide v2, v0, Lio/reactivex/internal/operators/flowable/cg$a;->m:J

    .line 1182
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/cg$a;->a:Lorg/b/c;

    invoke-interface {v1, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 1183
    iput p1, v0, Lio/reactivex/internal/operators/flowable/cg$a;->l:I

    goto :goto_0

    .line 1185
    :cond_0
    iput-object p1, v0, Lio/reactivex/internal/operators/flowable/cg$a;->i:Ljava/lang/Object;

    .line 1186
    iput v1, v0, Lio/reactivex/internal/operators/flowable/cg$a;->l:I

    .line 1187
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/cg$a;->decrementAndGet()I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 1192
    :cond_1
    iput-object p1, v0, Lio/reactivex/internal/operators/flowable/cg$a;->i:Ljava/lang/Object;

    .line 1193
    iput v1, v0, Lio/reactivex/internal/operators/flowable/cg$a;->l:I

    .line 1194
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/cg$a;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_2

    .line 1198
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/cg$a;->b()V

    :cond_2
    return-void
.end method
