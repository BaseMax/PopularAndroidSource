.class final Lio/reactivex/internal/operators/flowable/eu$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Ljava/lang/Runnable;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/eu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Ljava/lang/Runnable;",
        "Lorg/b/d;"
    }
.end annotation


# static fields
.field static final j:Ljava/lang/Object;


# instance fields
.field final a:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Lio/reactivex/internal/operators/flowable/eu$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/eu$a<",
            "TT;TB;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/b/d;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field final f:Lio/reactivex/internal/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/d/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lio/reactivex/internal/util/b;

.field final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final i:Ljava/util/concurrent/atomic/AtomicLong;

.field volatile k:Z

.field l:Lio/reactivex/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/h/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field m:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/flowable/eu$b;->j:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lorg/b/c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 85
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/eu$b;->a:Lorg/b/c;

    .line 86
    iput p2, p0, Lio/reactivex/internal/operators/flowable/eu$b;->b:I

    .line 87
    new-instance p1, Lio/reactivex/internal/operators/flowable/eu$a;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/flowable/eu$a;-><init>(Lio/reactivex/internal/operators/flowable/eu$b;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/eu$b;->c:Lio/reactivex/internal/operators/flowable/eu$a;

    .line 88
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/eu$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 89
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/eu$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 90
    new-instance p1, Lio/reactivex/internal/d/a;

    invoke-direct {p1}, Lio/reactivex/internal/d/a;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/eu$b;->f:Lio/reactivex/internal/d/a;

    .line 91
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/eu$b;->g:Lio/reactivex/internal/util/b;

    .line 92
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/eu$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/eu$b;->i:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 148
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/eu$b;->f:Lio/reactivex/internal/d/a;

    sget-object v1, Lio/reactivex/internal/operators/flowable/eu$b;->j:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/d/a;->offer(Ljava/lang/Object;)Z

    .line 149
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/eu$b;->b()V

    return-void
.end method

.method final b()V
    .locals 12

    .line 170
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/eu$b;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/eu$b;->a:Lorg/b/c;

    .line 176
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/eu$b;->f:Lio/reactivex/internal/d/a;

    .line 177
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/eu$b;->g:Lio/reactivex/internal/util/b;

    .line 178
    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/eu$b;->m:J

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 183
    :cond_1
    :goto_0
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/eu$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_2

    .line 184
    invoke-virtual {v1}, Lio/reactivex/internal/d/a;->clear()V

    .line 185
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/eu$b;->l:Lio/reactivex/h/c;

    return-void

    .line 189
    :cond_2
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/eu$b;->l:Lio/reactivex/h/c;

    .line 191
    iget-boolean v9, p0, Lio/reactivex/internal/operators/flowable/eu$b;->k:Z

    if-eqz v9, :cond_4

    .line 193
    invoke-virtual {v2}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 194
    invoke-virtual {v1}, Lio/reactivex/internal/d/a;->clear()V

    .line 195
    invoke-virtual {v2}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v7, :cond_3

    .line 197
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/eu$b;->l:Lio/reactivex/h/c;

    .line 198
    invoke-virtual {v7, v1}, Lio/reactivex/h/c;->onError(Ljava/lang/Throwable;)V

    .line 200
    :cond_3
    invoke-interface {v0, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 204
    :cond_4
    invoke-virtual {v1}, Lio/reactivex/internal/d/a;->poll()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_5

    const/4 v11, 0x1

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    :goto_1
    if-eqz v9, :cond_9

    if-eqz v11, :cond_9

    .line 209
    invoke-virtual {v2}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_7

    if-eqz v7, :cond_6

    .line 212
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/eu$b;->l:Lio/reactivex/h/c;

    .line 213
    invoke-virtual {v7}, Lio/reactivex/h/c;->onComplete()V

    .line 215
    :cond_6
    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void

    :cond_7
    if-eqz v7, :cond_8

    .line 218
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/eu$b;->l:Lio/reactivex/h/c;

    .line 219
    invoke-virtual {v7, v1}, Lio/reactivex/h/c;->onError(Ljava/lang/Throwable;)V

    .line 221
    :cond_8
    invoke-interface {v0, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_9
    if-nez v11, :cond_d

    .line 230
    sget-object v9, Lio/reactivex/internal/operators/flowable/eu$b;->j:Ljava/lang/Object;

    if-eq v10, v9, :cond_a

    .line 231
    invoke-virtual {v7, v10}, Lio/reactivex/h/c;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_a
    if-eqz v7, :cond_b

    .line 236
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/eu$b;->l:Lio/reactivex/h/c;

    .line 237
    invoke-virtual {v7}, Lio/reactivex/h/c;->onComplete()V

    .line 240
    :cond_b
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/eu$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_1

    .line 241
    iget v7, p0, Lio/reactivex/internal/operators/flowable/eu$b;->b:I

    invoke-static {v7, p0}, Lio/reactivex/h/c;->create(ILjava/lang/Runnable;)Lio/reactivex/h/c;

    move-result-object v7

    .line 242
    iput-object v7, p0, Lio/reactivex/internal/operators/flowable/eu$b;->l:Lio/reactivex/h/c;

    .line 243
    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/eu$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 245
    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/eu$b;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    cmp-long v10, v3, v8

    if-eqz v10, :cond_c

    const-wide/16 v8, 0x1

    add-long/2addr v3, v8

    .line 247
    invoke-interface {v0, v7}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 249
    :cond_c
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/eu$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v7}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 250
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/eu$b;->c:Lio/reactivex/internal/operators/flowable/eu$a;

    invoke-virtual {v7}, Lio/reactivex/internal/operators/flowable/eu$a;->dispose()V

    .line 251
    new-instance v7, Lio/reactivex/c/c;

    const-string v8, "Could not deliver a window due to lack of requests"

    invoke-direct {v7, v8}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 252
    iput-boolean v5, p0, Lio/reactivex/internal/operators/flowable/eu$b;->k:Z

    goto/16 :goto_0

    .line 257
    :cond_d
    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/eu$b;->m:J

    neg-int v6, v6

    .line 258
    invoke-virtual {p0, v6}, Lio/reactivex/internal/operators/flowable/eu$b;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_1

    return-void
.end method

.method public final cancel()V
    .locals 3

    .line 127
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/eu$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/eu$b;->c:Lio/reactivex/internal/operators/flowable/eu$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/eu$a;->dispose()V

    .line 129
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/eu$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/eu$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 120
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/eu$b;->c:Lio/reactivex/internal/operators/flowable/eu$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/eu$a;->dispose()V

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/eu$b;->k:Z

    .line 122
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/eu$b;->b()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/eu$b;->c:Lio/reactivex/internal/operators/flowable/eu$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/eu$a;->dispose()V

    .line 110
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/eu$b;->g:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/eu$b;->k:Z

    .line 112
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/eu$b;->b()V

    return-void

    .line 114
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/eu$b;->f:Lio/reactivex/internal/d/a;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/d/a;->offer(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/eu$b;->b()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/eu$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v0, p1, v1, v2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;J)Z

    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 137
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/eu$b;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    return-void
.end method

.method public final run()V
    .locals 1

    .line 142
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/eu$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/eu$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method
