.class final Lio/reactivex/internal/operators/flowable/cj$a;
.super Lio/reactivex/internal/subscriptions/a;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/cj;
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
        "Lio/reactivex/o<",
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

.field final b:Lio/reactivex/internal/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Z

.field final d:Lio/reactivex/e/a;

.field e:Lorg/b/d;

.field volatile f:Z

.field volatile g:Z

.field h:Ljava/lang/Throwable;

.field final i:Ljava/util/concurrent/atomic/AtomicLong;

.field j:Z


# direct methods
.method constructor <init>(Lorg/b/c;IZZLio/reactivex/e/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;IZZ",
            "Lio/reactivex/e/a;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/a;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/cj$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 71
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cj$a;->a:Lorg/b/c;

    .line 72
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/cj$a;->d:Lio/reactivex/e/a;

    .line 73
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/cj$a;->c:Z

    if-eqz p3, :cond_0

    .line 78
    new-instance p1, Lio/reactivex/internal/d/c;

    invoke-direct {p1, p2}, Lio/reactivex/internal/d/c;-><init>(I)V

    goto :goto_0

    .line 80
    :cond_0
    new-instance p1, Lio/reactivex/internal/d/b;

    invoke-direct {p1, p2}, Lio/reactivex/internal/d/b;-><init>(I)V

    .line 83
    :goto_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cj$a;->b:Lio/reactivex/internal/b/i;

    return-void
.end method

.method private a()V
    .locals 13

    .line 160
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/cj$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_7

    .line 162
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cj$a;->b:Lio/reactivex/internal/b/i;

    .line 163
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/cj$a;->a:Lorg/b/c;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 166
    :cond_0
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/cj$a;->g:Z

    invoke-interface {v0}, Lio/reactivex/internal/b/i;->isEmpty()Z

    move-result v5

    invoke-direct {p0, v4, v5, v1}, Lio/reactivex/internal/operators/flowable/cj$a;->a(ZZLorg/b/c;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 170
    :cond_1
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/cj$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    cmp-long v10, v8, v4

    if-eqz v10, :cond_4

    .line 175
    iget-boolean v10, p0, Lio/reactivex/internal/operators/flowable/cj$a;->g:Z

    .line 176
    invoke-interface {v0}, Lio/reactivex/internal/b/i;->poll()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    .line 179
    :goto_1
    invoke-direct {p0, v10, v12, v1}, Lio/reactivex/internal/operators/flowable/cj$a;->a(ZZLorg/b/c;)Z

    move-result v10

    if-eqz v10, :cond_3

    return-void

    :cond_3
    if-nez v12, :cond_4

    .line 187
    invoke-interface {v1, v11}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_0

    :cond_4
    cmp-long v10, v8, v4

    if-nez v10, :cond_5

    .line 193
    iget-boolean v10, p0, Lio/reactivex/internal/operators/flowable/cj$a;->g:Z

    .line 194
    invoke-interface {v0}, Lio/reactivex/internal/b/i;->isEmpty()Z

    move-result v11

    .line 196
    invoke-direct {p0, v10, v11, v1}, Lio/reactivex/internal/operators/flowable/cj$a;->a(ZZLorg/b/c;)Z

    move-result v10

    if-eqz v10, :cond_5

    return-void

    :cond_5
    cmp-long v10, v8, v6

    if-eqz v10, :cond_6

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v10, v4, v6

    if-eqz v10, :cond_6

    .line 203
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/cj$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v5, v8

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_6
    neg-int v3, v3

    .line 207
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/flowable/cj$a;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_0

    :cond_7
    return-void
.end method

.method private a(ZZLorg/b/c;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lorg/b/c<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 216
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/cj$a;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 217
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/cj$a;->b:Lio/reactivex/internal/b/i;

    invoke-interface {p1}, Lio/reactivex/internal/b/i;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    .line 221
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/cj$a;->c:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_4

    .line 223
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/cj$a;->h:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 225
    invoke-interface {p3, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 227
    :cond_1
    invoke-interface {p3}, Lorg/b/c;->onComplete()V

    :goto_0
    return v1

    .line 232
    :cond_2
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/cj$a;->h:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    .line 234
    iget-object p2, p0, Lio/reactivex/internal/operators/flowable/cj$a;->b:Lio/reactivex/internal/b/i;

    invoke-interface {p2}, Lio/reactivex/internal/b/i;->clear()V

    .line 235
    invoke-interface {p3, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    .line 239
    invoke-interface {p3}, Lorg/b/c;->onComplete()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 149
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/cj$a;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/cj$a;->f:Z

    .line 151
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cj$a;->e:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 153
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/cj$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cj$a;->b:Lio/reactivex/internal/b/i;

    invoke-interface {v0}, Lio/reactivex/internal/b/i;->clear()V

    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 264
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cj$a;->b:Lio/reactivex/internal/b/i;

    invoke-interface {v0}, Lio/reactivex/internal/b/i;->clear()V

    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    .line 269
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cj$a;->b:Lio/reactivex/internal/b/i;

    invoke-interface {v0}, Lio/reactivex/internal/b/i;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/cj$a;->g:Z

    .line 130
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/cj$a;->j:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cj$a;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void

    .line 133
    :cond_0
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/cj$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 118
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cj$a;->h:Ljava/lang/Throwable;

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/cj$a;->g:Z

    .line 120
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/cj$a;->j:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cj$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 123
    :cond_0
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/cj$a;->a()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cj$a;->b:Lio/reactivex/internal/b/i;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 98
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/cj$a;->e:Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 99
    new-instance p1, Lio/reactivex/c/c;

    const-string v0, "Buffer is full"

    invoke-direct {p1, v0}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    .line 101
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cj$a;->d:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 103
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 104
    invoke-virtual {p1, v0}, Lio/reactivex/c/c;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 106
    :goto_0
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/cj$a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 109
    :cond_0
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/cj$a;->j:Z

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/cj$a;->a:Lorg/b/c;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    return-void

    .line 112
    :cond_1
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/cj$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cj$a;->e:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cj$a;->e:Lorg/b/d;

    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cj$a;->a:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 91
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 1
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

    .line 259
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cj$a;->b:Lio/reactivex/internal/b/i;

    invoke-interface {v0}, Lio/reactivex/internal/b/i;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final request(J)V
    .locals 1

    .line 139
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/cj$a;->j:Z

    if-nez v0, :cond_0

    .line 140
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cj$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 142
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/cj$a;->a()V

    :cond_0
    return-void
.end method

.method public final requestFusion(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 250
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/cj$a;->j:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
