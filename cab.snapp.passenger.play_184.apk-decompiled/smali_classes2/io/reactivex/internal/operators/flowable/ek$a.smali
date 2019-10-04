.class final Lio/reactivex/internal/operators/flowable/ek$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Ljava/lang/Runnable;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ek;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Ljava/lang/Runnable;",
        "Lorg/b/d;"
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

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/ah$c;

.field final e:Z

.field final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field final g:Ljava/util/concurrent/atomic/AtomicLong;

.field h:Lorg/b/d;

.field volatile i:Z

.field j:Ljava/lang/Throwable;

.field volatile k:Z

.field volatile l:Z

.field m:J

.field n:Z


# direct methods
.method constructor <init>(Lorg/b/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah$c;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah$c;",
            "Z)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 98
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ek$a;->a:Lorg/b/c;

    .line 99
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/ek$a;->b:J

    .line 100
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/ek$a;->c:Ljava/util/concurrent/TimeUnit;

    .line 101
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/ek$a;->d:Lio/reactivex/ah$c;

    .line 102
    iput-boolean p6, p0, Lio/reactivex/internal/operators/flowable/ek$a;->e:Z

    .line 103
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ek$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 104
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ek$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private a()V
    .locals 14

    .line 159
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ek$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ek$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 166
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ek$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 167
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ek$a;->a:Lorg/b/c;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 172
    :cond_1
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/ek$a;->k:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 173
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    .line 177
    :cond_2
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/ek$a;->i:Z

    if-eqz v5, :cond_3

    .line 179
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/ek$a;->j:Ljava/lang/Throwable;

    if-eqz v7, :cond_3

    .line 180
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ek$a;->j:Ljava/lang/Throwable;

    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    .line 182
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ek$a;->d:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    return-void

    .line 186
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    const-wide/16 v9, 0x1

    if-eqz v5, :cond_7

    if-nez v7, :cond_6

    .line 190
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/ek$a;->e:Z

    if-eqz v3, :cond_6

    .line 191
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 192
    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/ek$a;->m:J

    .line 193
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    add-long/2addr v3, v9

    .line 194
    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/ek$a;->m:J

    .line 195
    invoke-interface {v2, v0}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    .line 196
    invoke-interface {v2}, Lorg/b/c;->onComplete()V

    goto :goto_2

    .line 198
    :cond_5
    new-instance v0, Lio/reactivex/c/c;

    const-string v1, "Could not emit final value due to lack of requests"

    invoke-direct {v0, v1}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 202
    :cond_6
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 203
    invoke-interface {v2}, Lorg/b/c;->onComplete()V

    .line 205
    :goto_2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ek$a;->d:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    return-void

    :cond_7
    if-eqz v7, :cond_8

    .line 210
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/ek$a;->l:Z

    if-eqz v5, :cond_9

    .line 211
    iput-boolean v8, p0, Lio/reactivex/internal/operators/flowable/ek$a;->n:Z

    .line 212
    iput-boolean v8, p0, Lio/reactivex/internal/operators/flowable/ek$a;->l:Z

    goto :goto_3

    .line 217
    :cond_8
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/ek$a;->n:Z

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/ek$a;->l:Z

    if-eqz v5, :cond_9

    goto :goto_4

    :cond_9
    :goto_3
    neg-int v4, v4

    .line 239
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/flowable/ek$a;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void

    .line 218
    :cond_a
    :goto_4
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 219
    iget-wide v6, p0, Lio/reactivex/internal/operators/flowable/ek$a;->m:J

    .line 220
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    cmp-long v13, v6, v11

    if-eqz v13, :cond_b

    .line 221
    invoke-interface {v2, v5}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    add-long/2addr v6, v9

    .line 222
    iput-wide v6, p0, Lio/reactivex/internal/operators/flowable/ek$a;->m:J

    .line 231
    iput-boolean v8, p0, Lio/reactivex/internal/operators/flowable/ek$a;->l:Z

    .line 232
    iput-boolean v3, p0, Lio/reactivex/internal/operators/flowable/ek$a;->n:Z

    .line 233
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/ek$a;->d:Lio/reactivex/ah$c;

    iget-wide v6, p0, Lio/reactivex/internal/operators/flowable/ek$a;->b:J

    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/ek$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, p0, v6, v7, v8}, Lio/reactivex/ah$c;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    goto/16 :goto_0

    .line 224
    :cond_b
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ek$a;->h:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 225
    new-instance v0, Lio/reactivex/c/c;

    const-string v1, "Could not emit value due to lack of requests"

    invoke-direct {v0, v1}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    .line 227
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ek$a;->d:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ek$a;->k:Z

    .line 145
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ek$a;->h:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 146
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ek$a;->d:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    .line 147
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ek$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ek$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ek$a;->i:Z

    .line 132
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ek$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ek$a;->j:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 125
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/ek$a;->i:Z

    .line 126
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ek$a;->a()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ek$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 119
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ek$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ek$a;->h:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ek$a;->h:Lorg/b/d;

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ek$a;->a:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 112
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 137
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ek$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 1

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ek$a;->l:Z

    .line 155
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ek$a;->a()V

    return-void
.end method
