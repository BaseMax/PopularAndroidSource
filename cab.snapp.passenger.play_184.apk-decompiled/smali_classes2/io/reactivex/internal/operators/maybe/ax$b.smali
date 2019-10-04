.class final Lio/reactivex/internal/operators/maybe/ax$b;
.super Lio/reactivex/internal/subscriptions/a;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/ax;
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
        "Lio/reactivex/internal/subscriptions/a<",
        "TT;>;",
        "Lio/reactivex/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/b/b;

.field final c:Ljava/util/concurrent/atomic/AtomicLong;

.field final d:Lio/reactivex/internal/operators/maybe/ax$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/ax$d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lio/reactivex/internal/util/b;

.field final f:I

.field volatile g:Z

.field h:Z

.field i:J


# direct methods
.method constructor <init>(Lorg/b/c;ILio/reactivex/internal/operators/maybe/ax$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;I",
            "Lio/reactivex/internal/operators/maybe/ax$d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/a;-><init>()V

    .line 94
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/ax$b;->a:Lorg/b/c;

    .line 95
    iput p2, p0, Lio/reactivex/internal/operators/maybe/ax$b;->f:I

    .line 96
    new-instance p1, Lio/reactivex/b/b;

    invoke-direct {p1}, Lio/reactivex/b/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/ax$b;->b:Lio/reactivex/b/b;

    .line 97
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/ax$b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 98
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/ax$b;->e:Lio/reactivex/internal/util/b;

    .line 99
    iput-object p3, p0, Lio/reactivex/internal/operators/maybe/ax$b;->d:Lio/reactivex/internal/operators/maybe/ax$d;

    return-void
.end method

.method private a()V
    .locals 9

    .line 187
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/ax$b;->a:Lorg/b/c;

    .line 188
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/ax$b;->d:Lio/reactivex/internal/operators/maybe/ax$d;

    .line 189
    iget-wide v2, p0, Lio/reactivex/internal/operators/maybe/ax$b;->i:J

    const/4 v4, 0x1

    .line 193
    :cond_0
    iget-object v5, p0, Lio/reactivex/internal/operators/maybe/ax$b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    :cond_1
    :goto_0
    cmp-long v7, v2, v5

    if-eqz v7, :cond_5

    .line 196
    iget-boolean v7, p0, Lio/reactivex/internal/operators/maybe/ax$b;->g:Z

    if-eqz v7, :cond_2

    .line 197
    invoke-interface {v1}, Lio/reactivex/internal/operators/maybe/ax$d;->clear()V

    return-void

    .line 201
    :cond_2
    iget-object v7, p0, Lio/reactivex/internal/operators/maybe/ax$b;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v7}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    if-eqz v7, :cond_3

    .line 203
    invoke-interface {v1}, Lio/reactivex/internal/operators/maybe/ax$d;->clear()V

    .line 204
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/ax$b;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 208
    :cond_3
    invoke-interface {v1}, Lio/reactivex/internal/operators/maybe/ax$d;->consumerIndex()I

    move-result v7

    iget v8, p0, Lio/reactivex/internal/operators/maybe/ax$b;->f:I

    if-ne v7, v8, :cond_4

    .line 209
    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void

    .line 213
    :cond_4
    invoke-interface {v1}, Lio/reactivex/internal/operators/maybe/ax$d;->poll()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 219
    sget-object v8, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    if-eq v7, v8, :cond_1

    .line 220
    invoke-interface {v0, v7}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    goto :goto_0

    :cond_5
    cmp-long v7, v2, v5

    if-nez v7, :cond_8

    .line 227
    iget-object v5, p0, Lio/reactivex/internal/operators/maybe/ax$b;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v5}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_6

    .line 229
    invoke-interface {v1}, Lio/reactivex/internal/operators/maybe/ax$d;->clear()V

    .line 230
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/ax$b;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 234
    :cond_6
    :goto_1
    invoke-interface {v1}, Lio/reactivex/internal/operators/maybe/ax$d;->peek()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    if-ne v5, v6, :cond_7

    .line 235
    invoke-interface {v1}, Lio/reactivex/internal/operators/maybe/ax$d;->drop()V

    goto :goto_1

    .line 238
    :cond_7
    invoke-interface {v1}, Lio/reactivex/internal/operators/maybe/ax$d;->consumerIndex()I

    move-result v5

    iget v6, p0, Lio/reactivex/internal/operators/maybe/ax$b;->f:I

    if-ne v5, v6, :cond_8

    .line 239
    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void

    .line 244
    :cond_8
    iput-wide v2, p0, Lio/reactivex/internal/operators/maybe/ax$b;->i:J

    neg-int v4, v4

    .line 245
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/maybe/ax$b;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void
.end method

.method private b()V
    .locals 6

    .line 255
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/ax$b;->a:Lorg/b/c;

    .line 256
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/ax$b;->d:Lio/reactivex/internal/operators/maybe/ax$d;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 259
    :cond_0
    iget-boolean v4, p0, Lio/reactivex/internal/operators/maybe/ax$b;->g:Z

    if-eqz v4, :cond_1

    .line 260
    invoke-interface {v1}, Lio/reactivex/internal/operators/maybe/ax$d;->clear()V

    return-void

    .line 263
    :cond_1
    iget-object v4, p0, Lio/reactivex/internal/operators/maybe/ax$b;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v4}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 265
    invoke-interface {v1}, Lio/reactivex/internal/operators/maybe/ax$d;->clear()V

    .line 266
    invoke-interface {v0, v4}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 270
    :cond_2
    invoke-interface {v1}, Lio/reactivex/internal/operators/maybe/ax$d;->producerIndex()I

    move-result v4

    iget v5, p0, Lio/reactivex/internal/operators/maybe/ax$b;->f:I

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 272
    :goto_0
    invoke-interface {v1}, Lio/reactivex/internal/operators/maybe/ax$d;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x0

    .line 273
    invoke-interface {v0, v5}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    :cond_4
    if-eqz v4, :cond_5

    .line 277
    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void

    :cond_5
    neg-int v3, v3

    .line 281
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/maybe/ax$b;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_0

    return-void
.end method

.method private c()V
    .locals 1

    .line 290
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/ax$b;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 294
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/maybe/ax$b;->h:Z

    if-eqz v0, :cond_1

    .line 295
    invoke-direct {p0}, Lio/reactivex/internal/operators/maybe/ax$b;->b()V

    return-void

    .line 297
    :cond_1
    invoke-direct {p0}, Lio/reactivex/internal/operators/maybe/ax$b;->a()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 143
    iget-boolean v0, p0, Lio/reactivex/internal/operators/maybe/ax$b;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lio/reactivex/internal/operators/maybe/ax$b;->g:Z

    .line 145
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/ax$b;->b:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 146
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/ax$b;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/ax$b;->d:Lio/reactivex/internal/operators/maybe/ax$d;

    invoke-interface {v0}, Lio/reactivex/internal/operators/maybe/ax$d;->clear()V

    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/ax$b;->d:Lio/reactivex/internal/operators/maybe/ax$d;

    invoke-interface {v0}, Lio/reactivex/internal/operators/maybe/ax$d;->clear()V

    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    .line 125
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/ax$b;->d:Lio/reactivex/internal/operators/maybe/ax$d;

    invoke-interface {v0}, Lio/reactivex/internal/operators/maybe/ax$d;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 176
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/ax$b;->d:Lio/reactivex/internal/operators/maybe/ax$d;

    sget-object v1, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    invoke-interface {v0, v1}, Lio/reactivex/internal/operators/maybe/ax$d;->offer(Ljava/lang/Object;)Z

    .line 177
    invoke-direct {p0}, Lio/reactivex/internal/operators/maybe/ax$b;->c()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/ax$b;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/ax$b;->b:Lio/reactivex/b/b;

    invoke-virtual {p1}, Lio/reactivex/b/b;->dispose()V

    .line 167
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/ax$b;->d:Lio/reactivex/internal/operators/maybe/ax$d;

    sget-object v0, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    invoke-interface {p1, v0}, Lio/reactivex/internal/operators/maybe/ax$d;->offer(Ljava/lang/Object;)Z

    .line 168
    invoke-direct {p0}, Lio/reactivex/internal/operators/maybe/ax$b;->c()V

    return-void

    .line 170
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/ax$b;->b:Lio/reactivex/b/b;

    invoke-virtual {v0, p1}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/ax$b;->d:Lio/reactivex/internal/operators/maybe/ax$d;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/maybe/ax$d;->offer(Ljava/lang/Object;)Z

    .line 160
    invoke-direct {p0}, Lio/reactivex/internal/operators/maybe/ax$b;->c()V

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

    .line 116
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/ax$b;->d:Lio/reactivex/internal/operators/maybe/ax$d;

    invoke-interface {v0}, Lio/reactivex/internal/operators/maybe/ax$d;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 117
    sget-object v1, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    if-eq v0, v1, :cond_0

    return-object v0
.end method

.method public final request(J)V
    .locals 1

    .line 135
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/ax$b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 137
    invoke-direct {p0}, Lio/reactivex/internal/operators/maybe/ax$b;->c()V

    :cond_0
    return-void
.end method

.method public final requestFusion(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 105
    iput-boolean p1, p0, Lio/reactivex/internal/operators/maybe/ax$b;->h:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
