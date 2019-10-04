.class final Lio/reactivex/internal/operators/a/aa$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/a/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/a/aa$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/o<",
        "Lio/reactivex/g;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/d;

.field final b:I

.field final c:Z

.field final d:Lio/reactivex/internal/util/b;

.field final e:Lio/reactivex/b/b;

.field f:Lorg/b/d;


# direct methods
.method constructor <init>(Lio/reactivex/d;IZ)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 61
    iput-object p1, p0, Lio/reactivex/internal/operators/a/aa$a;->a:Lio/reactivex/d;

    .line 62
    iput p2, p0, Lio/reactivex/internal/operators/a/aa$a;->b:I

    .line 63
    iput-boolean p3, p0, Lio/reactivex/internal/operators/a/aa$a;->c:Z

    .line 64
    new-instance p1, Lio/reactivex/b/b;

    invoke-direct {p1}, Lio/reactivex/b/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/a/aa$a;->e:Lio/reactivex/b/b;

    .line 65
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/a/aa$a;->d:Lio/reactivex/internal/util/b;

    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/a/aa$a;->lazySet(I)V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/a/aa$a;->f:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/a/aa$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/a/aa$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 127
    invoke-virtual {p0}, Lio/reactivex/internal/operators/a/aa$a;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lio/reactivex/internal/operators/a/aa$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/a/aa$a;->a:Lio/reactivex/d;

    iget-object v1, p0, Lio/reactivex/internal/operators/a/aa$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/a/aa$a;->a:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    :cond_1
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 104
    iget-boolean v0, p0, Lio/reactivex/internal/operators/a/aa$a;->c:Z

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lio/reactivex/internal/operators/a/aa$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/a/aa$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 108
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/a/aa$a;->getAndSet(I)I

    move-result p1

    if-lez p1, :cond_3

    .line 109
    iget-object p1, p0, Lio/reactivex/internal/operators/a/aa$a;->a:Lio/reactivex/d;

    iget-object v0, p0, Lio/reactivex/internal/operators/a/aa$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 112
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/a/aa$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    invoke-virtual {p0}, Lio/reactivex/internal/operators/a/aa$a;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_3

    .line 117
    iget-object p1, p0, Lio/reactivex/internal/operators/a/aa$a;->a:Lio/reactivex/d;

    iget-object v0, p0, Lio/reactivex/internal/operators/a/aa$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 120
    :cond_2
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final onNext(Lio/reactivex/g;)V
    .locals 2

    .line 95
    invoke-virtual {p0}, Lio/reactivex/internal/operators/a/aa$a;->getAndIncrement()I

    .line 97
    new-instance v0, Lio/reactivex/internal/operators/a/aa$a$a;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/aa$a$a;-><init>(Lio/reactivex/internal/operators/a/aa$a;)V

    .line 98
    iget-object v1, p0, Lio/reactivex/internal/operators/a/aa$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v1, v0}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    .line 99
    invoke-interface {p1, v0}, Lio/reactivex/g;->subscribe(Lio/reactivex/d;)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p1, Lio/reactivex/g;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/a/aa$a;->onNext(Lio/reactivex/g;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lio/reactivex/internal/operators/a/aa$a;->f:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iput-object p1, p0, Lio/reactivex/internal/operators/a/aa$a;->f:Lorg/b/d;

    .line 84
    iget-object v0, p0, Lio/reactivex/internal/operators/a/aa$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    .line 85
    iget v0, p0, Lio/reactivex/internal/operators/a/aa$a;->b:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 86
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    :cond_0
    int-to-long v0, v0

    .line 88
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_1
    return-void
.end method
