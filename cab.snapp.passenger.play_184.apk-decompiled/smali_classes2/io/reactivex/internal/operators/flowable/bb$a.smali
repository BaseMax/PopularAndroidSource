.class final Lio/reactivex/internal/operators/flowable/bb$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/bb$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/d;

.field final b:Lio/reactivex/internal/util/b;

.field final c:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field

.field final d:Z

.field final e:Lio/reactivex/b/b;

.field final f:I

.field g:Lorg/b/d;

.field volatile h:Z


# direct methods
.method constructor <init>(Lio/reactivex/d;Lio/reactivex/e/h;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/d;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;ZI)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 87
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bb$a;->a:Lio/reactivex/d;

    .line 88
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/bb$a;->c:Lio/reactivex/e/h;

    .line 89
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/bb$a;->d:Z

    .line 90
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bb$a;->b:Lio/reactivex/internal/util/b;

    .line 91
    new-instance p1, Lio/reactivex/b/b;

    invoke-direct {p1}, Lio/reactivex/b/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bb$a;->e:Lio/reactivex/b/b;

    .line 92
    iput p4, p0, Lio/reactivex/internal/operators/flowable/bb$a;->f:I

    const/4 p1, 0x1

    .line 93
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/bb$a;->lazySet(I)V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bb$a;->h:Z

    .line 177
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bb$a;->g:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 178
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bb$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 183
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bb$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 3

    .line 160
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/bb$a;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bb$a;->b:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bb$a;->a:Lio/reactivex/d;

    invoke-interface {v1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bb$a;->a:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    return-void

    .line 168
    :cond_1
    iget v0, p0, Lio/reactivex/internal/operators/flowable/bb$a;->f:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    .line 169
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bb$a;->g:Lorg/b/d;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lorg/b/d;->request(J)V

    :cond_2
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bb$a;->b:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/bb$a;->d:Z

    if-eqz p1, :cond_1

    .line 138
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/bb$a;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    .line 139
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bb$a;->b:Lio/reactivex/internal/util/b;

    invoke-virtual {p1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 140
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bb$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 142
    :cond_0
    iget p1, p0, Lio/reactivex/internal/operators/flowable/bb$a;->f:I

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_3

    .line 143
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bb$a;->g:Lorg/b/d;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    .line 147
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/bb$a;->dispose()V

    const/4 p1, 0x0

    .line 148
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/bb$a;->getAndSet(I)I

    move-result p1

    if-lez p1, :cond_3

    .line 149
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bb$a;->b:Lio/reactivex/internal/util/b;

    invoke-virtual {p1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 150
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bb$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 154
    :cond_2
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 117
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bb$a;->c:Lio/reactivex/e/h;

    invoke-interface {v0, p1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null CompletableSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/bb$a;->getAndIncrement()I

    .line 127
    new-instance v0, Lio/reactivex/internal/operators/flowable/bb$a$a;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/bb$a$a;-><init>(Lio/reactivex/internal/operators/flowable/bb$a;)V

    .line 129
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/bb$a;->h:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bb$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v1, v0}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-interface {p1, v0}, Lio/reactivex/g;->subscribe(Lio/reactivex/d;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 119
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 120
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bb$a;->g:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 121
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/bb$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bb$a;->g:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bb$a;->g:Lorg/b/d;

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bb$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    .line 103
    iget v0, p0, Lio/reactivex/internal/operators/flowable/bb$a;->f:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 105
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    :cond_0
    int-to-long v0, v0

    .line 107
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_1
    return-void
.end method
