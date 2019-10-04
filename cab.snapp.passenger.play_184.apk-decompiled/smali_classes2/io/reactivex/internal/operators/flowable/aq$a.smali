.class final Lio/reactivex/internal/operators/flowable/aq$a;
.super Lio/reactivex/internal/subscriptions/a;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/aq;
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
        "Lio/reactivex/internal/subscriptions/a<",
        "TT;>;",
        "Lio/reactivex/internal/b/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/a<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/a;

.field c:Lorg/b/d;

.field d:Lio/reactivex/internal/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/g<",
            "TT;>;"
        }
    .end annotation
.end field

.field e:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/b/a;Lio/reactivex/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/b/a<",
            "-TT;>;",
            "Lio/reactivex/e/a;",
            ")V"
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/a;-><init>()V

    .line 170
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/aq$a;->a:Lio/reactivex/internal/b/a;

    .line 171
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/aq$a;->b:Lio/reactivex/e/a;

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 254
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/aq$a;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aq$a;->b:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 258
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 259
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 211
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aq$a;->c:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 212
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/aq$a;->a()V

    return-void
.end method

.method public final clear()V
    .locals 1

    .line 235
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aq$a;->d:Lio/reactivex/internal/b/g;

    invoke-interface {v0}, Lio/reactivex/internal/b/g;->clear()V

    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    .line 240
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aq$a;->d:Lio/reactivex/internal/b/g;

    invoke-interface {v0}, Lio/reactivex/internal/b/g;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 205
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aq$a;->a:Lio/reactivex/internal/b/a;

    invoke-interface {v0}, Lio/reactivex/internal/b/a;->onComplete()V

    .line 206
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/aq$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aq$a;->a:Lio/reactivex/internal/b/a;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/a;->onError(Ljava/lang/Throwable;)V

    .line 200
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/aq$a;->a()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aq$a;->a:Lio/reactivex/internal/b/a;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/a;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aq$a;->c:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/aq$a;->c:Lorg/b/d;

    .line 179
    instance-of v0, p1, Lio/reactivex/internal/b/g;

    if-eqz v0, :cond_0

    .line 180
    check-cast p1, Lio/reactivex/internal/b/g;

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/aq$a;->d:Lio/reactivex/internal/b/g;

    .line 183
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/aq$a;->a:Lio/reactivex/internal/b/a;

    invoke-interface {p1, p0}, Lio/reactivex/internal/b/a;->onSubscribe(Lorg/b/d;)V

    :cond_1
    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aq$a;->d:Lio/reactivex/internal/b/g;

    invoke-interface {v0}, Lio/reactivex/internal/b/g;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 247
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/aq$a;->e:Z

    if-eqz v1, :cond_0

    .line 248
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/aq$a;->a()V

    :cond_0
    return-object v0
.end method

.method public final request(J)V
    .locals 1

    .line 217
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aq$a;->c:Lorg/b/d;

    invoke-interface {v0, p1, p2}, Lorg/b/d;->request(J)V

    return-void
.end method

.method public final requestFusion(I)I
    .locals 3

    .line 222
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aq$a;->d:Lio/reactivex/internal/b/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    and-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_2

    .line 224
    invoke-interface {v0, p1}, Lio/reactivex/internal/b/g;->requestFusion(I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 226
    :goto_0
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/aq$a;->e:Z

    :cond_1
    return p1

    :cond_2
    return v1
.end method

.method public final tryOnNext(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aq$a;->a:Lio/reactivex/internal/b/a;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/a;->tryOnNext(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
