.class final Lio/reactivex/internal/operators/flowable/dm$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/dm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
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
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/c<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/i<",
            "TR;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicLong;

.field final e:I

.field final f:I

.field volatile g:Z

.field volatile h:Z

.field i:Ljava/lang/Throwable;

.field j:Lorg/b/d;

.field k:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field l:I


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/e/c;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;",
            "Lio/reactivex/e/c<",
            "TR;-TT;TR;>;TR;I)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 84
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dm$a;->a:Lorg/b/c;

    .line 85
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/dm$a;->b:Lio/reactivex/e/c;

    .line 86
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/dm$a;->k:Ljava/lang/Object;

    .line 87
    iput p4, p0, Lio/reactivex/internal/operators/flowable/dm$a;->e:I

    shr-int/lit8 p1, p4, 0x2

    sub-int p1, p4, p1

    .line 88
    iput p1, p0, Lio/reactivex/internal/operators/flowable/dm$a;->f:I

    .line 89
    new-instance p1, Lio/reactivex/internal/d/b;

    invoke-direct {p1, p4}, Lio/reactivex/internal/d/b;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dm$a;->c:Lio/reactivex/internal/b/i;

    .line 90
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/dm$a;->c:Lio/reactivex/internal/b/i;

    invoke-interface {p1, p3}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 91
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dm$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private a()V
    .locals 17

    move-object/from16 v0, p0

    .line 164
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/dm$a;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/dm$a;->a:Lorg/b/c;

    .line 170
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/dm$a;->c:Lio/reactivex/internal/b/i;

    .line 171
    iget v3, v0, Lio/reactivex/internal/operators/flowable/dm$a;->f:I

    .line 172
    iget v4, v0, Lio/reactivex/internal/operators/flowable/dm$a;->l:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 176
    :cond_1
    iget-object v7, v0, Lio/reactivex/internal/operators/flowable/dm$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    move-wide v11, v9

    :cond_2
    :goto_0
    cmp-long v13, v11, v7

    if-eqz v13, :cond_7

    .line 180
    iget-boolean v13, v0, Lio/reactivex/internal/operators/flowable/dm$a;->g:Z

    if-eqz v13, :cond_3

    .line 181
    invoke-interface {v2}, Lio/reactivex/internal/b/i;->clear()V

    return-void

    .line 184
    :cond_3
    iget-boolean v13, v0, Lio/reactivex/internal/operators/flowable/dm$a;->h:Z

    if-eqz v13, :cond_4

    .line 187
    iget-object v14, v0, Lio/reactivex/internal/operators/flowable/dm$a;->i:Ljava/lang/Throwable;

    if-eqz v14, :cond_4

    .line 189
    invoke-interface {v2}, Lio/reactivex/internal/b/i;->clear()V

    .line 190
    invoke-interface {v1, v14}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 195
    :cond_4
    invoke-interface {v2}, Lio/reactivex/internal/b/i;->poll()Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    if-nez v14, :cond_5

    const/16 v16, 0x1

    goto :goto_1

    :cond_5
    const/16 v16, 0x0

    :goto_1
    if-eqz v13, :cond_6

    if-eqz v16, :cond_6

    .line 199
    invoke-interface {v1}, Lorg/b/c;->onComplete()V

    return-void

    :cond_6
    if-nez v16, :cond_7

    .line 207
    invoke-interface {v1, v14}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_2

    .line 212
    iget-object v4, v0, Lio/reactivex/internal/operators/flowable/dm$a;->j:Lorg/b/d;

    int-to-long v13, v3

    invoke-interface {v4, v13, v14}, Lorg/b/d;->request(J)V

    const/4 v4, 0x0

    goto :goto_0

    :cond_7
    cmp-long v13, v11, v7

    if-nez v13, :cond_9

    .line 217
    iget-boolean v7, v0, Lio/reactivex/internal/operators/flowable/dm$a;->h:Z

    if-eqz v7, :cond_9

    .line 218
    iget-object v7, v0, Lio/reactivex/internal/operators/flowable/dm$a;->i:Ljava/lang/Throwable;

    if-eqz v7, :cond_8

    .line 220
    invoke-interface {v2}, Lio/reactivex/internal/b/i;->clear()V

    .line 221
    invoke-interface {v1, v7}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 224
    :cond_8
    invoke-interface {v2}, Lio/reactivex/internal/b/i;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 225
    invoke-interface {v1}, Lorg/b/c;->onComplete()V

    return-void

    :cond_9
    cmp-long v7, v11, v9

    if-eqz v7, :cond_a

    .line 232
    iget-object v7, v0, Lio/reactivex/internal/operators/flowable/dm$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v7, v11, v12}, Lio/reactivex/internal/util/c;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 235
    :cond_a
    iput v4, v0, Lio/reactivex/internal/operators/flowable/dm$a;->l:I

    neg-int v6, v6

    .line 236
    invoke-virtual {v0, v6}, Lio/reactivex/internal/operators/flowable/dm$a;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_1

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/dm$a;->g:Z

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dm$a;->j:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 150
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/dm$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dm$a;->c:Lio/reactivex/internal/b/i;

    invoke-interface {v0}, Lio/reactivex/internal/b/i;->clear()V

    :cond_0
    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 139
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/dm$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/dm$a;->h:Z

    .line 143
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/dm$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 128
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/dm$a;->h:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 132
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dm$a;->i:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 133
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/dm$a;->h:Z

    .line 134
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/dm$a;->a()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 107
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/dm$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dm$a;->k:Ljava/lang/Object;

    .line 113
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/dm$a;->b:Lio/reactivex/e/c;

    invoke-interface {v1, v0, p1}, Lio/reactivex/e/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The accumulator returned a null value"

    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dm$a;->k:Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dm$a;->c:Lio/reactivex/internal/b/i;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 123
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/dm$a;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 115
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 116
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dm$a;->j:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 117
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/dm$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dm$a;->j:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dm$a;->j:Lorg/b/d;

    .line 99
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dm$a;->a:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 101
    iget v0, p0, Lio/reactivex/internal/operators/flowable/dm$a;->e:I

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 157
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dm$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 159
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/dm$a;->a()V

    :cond_0
    return-void
.end method
