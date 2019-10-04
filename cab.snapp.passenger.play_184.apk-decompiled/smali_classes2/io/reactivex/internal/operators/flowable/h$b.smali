.class final Lio/reactivex/internal/operators/flowable/h$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/h;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/b/d;",
        ">;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/h$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field d:Z

.field final e:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/h$a;ILorg/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/h$a<",
            "TT;>;I",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 159
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/h$b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 162
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/h$b;->a:Lio/reactivex/internal/operators/flowable/h$a;

    .line 163
    iput p2, p0, Lio/reactivex/internal/operators/flowable/h$b;->b:I

    .line 164
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/h$b;->c:Lorg/b/c;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    .line 222
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final onComplete()V
    .locals 2

    .line 208
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/h$b;->d:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h$b;->c:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h$b;->a:Lio/reactivex/internal/operators/flowable/h$a;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/h$b;->b:I

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/h$a;->win(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/h$b;->d:Z

    .line 213
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h$b;->c:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void

    .line 215
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/h$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 193
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/h$b;->d:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h$b;->c:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h$b;->a:Lio/reactivex/internal/operators/flowable/h$a;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/h$b;->b:I

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/h$a;->win(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/h$b;->d:Z

    .line 198
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h$b;->c:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 200
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/h$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 201
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

    .line 179
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/h$b;->d:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h$b;->c:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h$b;->a:Lio/reactivex/internal/operators/flowable/h$a;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/h$b;->b:I

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/h$a;->win(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/h$b;->d:Z

    .line 184
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h$b;->c:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    return-void

    .line 186
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/h$b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h$b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p0, v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->deferredSetOnce(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;Lorg/b/d;)Z

    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 174
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h$b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p0, v0, p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->deferredRequest(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    return-void
.end method
