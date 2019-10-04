.class final Lio/reactivex/internal/operators/flowable/ee$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ee;
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

.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;

.field final e:Lio/reactivex/ah;

.field final f:Lio/reactivex/internal/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/d/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final g:Z

.field h:Lorg/b/d;

.field final i:Ljava/util/concurrent/atomic/AtomicLong;

.field volatile j:Z

.field volatile k:Z

.field l:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lorg/b/c;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "IZ)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/ee$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 72
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ee$a;->a:Lorg/b/c;

    .line 73
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/ee$a;->b:J

    .line 74
    iput-wide p4, p0, Lio/reactivex/internal/operators/flowable/ee$a;->c:J

    .line 75
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/ee$a;->d:Ljava/util/concurrent/TimeUnit;

    .line 76
    iput-object p7, p0, Lio/reactivex/internal/operators/flowable/ee$a;->e:Lio/reactivex/ah;

    .line 77
    new-instance p1, Lio/reactivex/internal/d/c;

    invoke-direct {p1, p8}, Lio/reactivex/internal/d/c;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ee$a;->f:Lio/reactivex/internal/d/c;

    .line 78
    iput-boolean p9, p0, Lio/reactivex/internal/operators/flowable/ee$a;->g:Z

    return-void
.end method

.method private a()V
    .locals 13

    .line 155
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ee$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ee$a;->a:Lorg/b/c;

    .line 162
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ee$a;->f:Lio/reactivex/internal/d/c;

    .line 163
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/ee$a;->g:Z

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 167
    :cond_1
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/ee$a;->k:Z

    if-eqz v5, :cond_6

    .line 168
    invoke-virtual {v1}, Lio/reactivex/internal/d/c;->isEmpty()Z

    move-result v5

    .line 170
    invoke-direct {p0, v5, v0, v2}, Lio/reactivex/internal/operators/flowable/ee$a;->a(ZLorg/b/c;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    .line 174
    :cond_2
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/ee$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    move-wide v9, v7

    .line 178
    :goto_0
    invoke-virtual {v1}, Lio/reactivex/internal/d/c;->peek()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_3

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    .line 181
    :goto_1
    invoke-direct {p0, v11, v0, v2}, Lio/reactivex/internal/operators/flowable/ee$a;->a(ZLorg/b/c;Z)Z

    move-result v11

    if-eqz v11, :cond_4

    return-void

    :cond_4
    cmp-long v11, v5, v9

    if-eqz v11, :cond_5

    .line 189
    invoke-virtual {v1}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    .line 191
    invoke-virtual {v1}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v11

    .line 193
    invoke-interface {v0, v11}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    goto :goto_0

    :cond_5
    cmp-long v5, v9, v7

    if-eqz v5, :cond_6

    .line 199
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/ee$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v5, v9, v10}, Lio/reactivex/internal/util/c;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_6
    neg-int v4, v4

    .line 203
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/flowable/ee$a;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void
.end method

.method private a(JLio/reactivex/internal/d/c;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/reactivex/internal/d/c<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 119
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/ee$a;->c:J

    .line 120
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/ee$a;->b:J

    const/4 v4, 0x1

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v7, v2, v5

    if-nez v7, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 123
    :goto_0
    invoke-virtual {p3}, Lio/reactivex/internal/d/c;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 124
    invoke-virtual {p3}, Lio/reactivex/internal/d/c;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v8, p1, v0

    cmp-long v10, v6, v8

    if-ltz v10, :cond_1

    if-nez v5, :cond_2

    .line 125
    invoke-virtual {p3}, Lio/reactivex/internal/d/c;->size()I

    move-result v6

    shr-int/2addr v6, v4

    int-to-long v6, v6

    cmp-long v8, v6, v2

    if-lez v8, :cond_2

    .line 126
    :cond_1
    invoke-virtual {p3}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    .line 127
    invoke-virtual {p3}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(ZLorg/b/c;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/b/c<",
            "-TT;>;Z)Z"
        }
    .end annotation

    .line 211
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ee$a;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 212
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ee$a;->f:Lio/reactivex/internal/d/c;

    invoke-virtual {p1}, Lio/reactivex/internal/d/c;->clear()V

    return v1

    :cond_0
    if-eqz p3, :cond_2

    if-eqz p1, :cond_4

    .line 217
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ee$a;->l:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 219
    invoke-interface {p2, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 221
    :cond_1
    invoke-interface {p2}, Lorg/b/c;->onComplete()V

    :goto_0
    return v1

    .line 226
    :cond_2
    iget-object p3, p0, Lio/reactivex/internal/operators/flowable/ee$a;->l:Ljava/lang/Throwable;

    if-eqz p3, :cond_3

    .line 228
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ee$a;->f:Lio/reactivex/internal/d/c;

    invoke-virtual {p1}, Lio/reactivex/internal/d/c;->clear()V

    .line 229
    invoke-interface {p2, p3}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    if-eqz p1, :cond_4

    .line 233
    invoke-interface {p2}, Lorg/b/c;->onComplete()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 144
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ee$a;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ee$a;->j:Z

    .line 146
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ee$a;->h:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 148
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ee$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ee$a;->f:Lio/reactivex/internal/d/c;

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    :cond_0
    return-void
.end method

.method public final onComplete()V
    .locals 3

    .line 113
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ee$a;->e:Lio/reactivex/ah;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ee$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/ah;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ee$a;->f:Lio/reactivex/internal/d/c;

    invoke-direct {p0, v0, v1, v2}, Lio/reactivex/internal/operators/flowable/ee$a;->a(JLio/reactivex/internal/d/c;)V

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ee$a;->k:Z

    .line 115
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ee$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 103
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ee$a;->g:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ee$a;->e:Lio/reactivex/ah;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ee$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/ah;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ee$a;->f:Lio/reactivex/internal/d/c;

    invoke-direct {p0, v0, v1, v2}, Lio/reactivex/internal/operators/flowable/ee$a;->a(JLio/reactivex/internal/d/c;)V

    .line 106
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ee$a;->l:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/ee$a;->k:Z

    .line 108
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ee$a;->a()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ee$a;->f:Lio/reactivex/internal/d/c;

    .line 94
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ee$a;->e:Lio/reactivex/ah;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ee$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/ah;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 96
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    invoke-direct {p0, v1, v2, v0}, Lio/reactivex/internal/operators/flowable/ee$a;->a(JLio/reactivex/internal/d/c;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ee$a;->h:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ee$a;->h:Lorg/b/d;

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ee$a;->a:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 86
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 136
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ee$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 138
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ee$a;->a()V

    :cond_0
    return-void
.end method
