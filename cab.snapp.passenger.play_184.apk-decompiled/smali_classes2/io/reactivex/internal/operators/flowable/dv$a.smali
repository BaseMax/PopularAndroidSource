.class final Lio/reactivex/internal/operators/flowable/dv$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/dv;
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

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/ah;

.field final e:Lio/reactivex/internal/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/d/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final f:Z

.field g:Lorg/b/d;

.field final h:Ljava/util/concurrent/atomic/AtomicLong;

.field volatile i:Z

.field volatile j:Z

.field k:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lorg/b/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "IZ)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/dv$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 67
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dv$a;->a:Lorg/b/c;

    .line 68
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/dv$a;->b:J

    .line 69
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/dv$a;->c:Ljava/util/concurrent/TimeUnit;

    .line 70
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/dv$a;->d:Lio/reactivex/ah;

    .line 71
    new-instance p1, Lio/reactivex/internal/d/c;

    invoke-direct {p1, p6}, Lio/reactivex/internal/d/c;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dv$a;->e:Lio/reactivex/internal/d/c;

    .line 72
    iput-boolean p7, p0, Lio/reactivex/internal/operators/flowable/dv$a;->f:Z

    return-void
.end method

.method private a()V
    .locals 23

    move-object/from16 v0, p0

    .line 127
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/dv$a;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/dv$a;->a:Lorg/b/c;

    .line 134
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/dv$a;->e:Lio/reactivex/internal/d/c;

    .line 135
    iget-boolean v3, v0, Lio/reactivex/internal/operators/flowable/dv$a;->f:Z

    .line 136
    iget-object v4, v0, Lio/reactivex/internal/operators/flowable/dv$a;->c:Ljava/util/concurrent/TimeUnit;

    .line 137
    iget-object v5, v0, Lio/reactivex/internal/operators/flowable/dv$a;->d:Lio/reactivex/ah;

    .line 138
    iget-wide v6, v0, Lio/reactivex/internal/operators/flowable/dv$a;->b:J

    const/4 v9, 0x1

    .line 142
    :cond_1
    iget-object v10, v0, Lio/reactivex/internal/operators/flowable/dv$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    const-wide/16 v14, 0x0

    :goto_0
    cmp-long v16, v14, v10

    if-eqz v16, :cond_5

    .line 146
    iget-boolean v8, v0, Lio/reactivex/internal/operators/flowable/dv$a;->j:Z

    .line 148
    invoke-virtual {v2}, Lio/reactivex/internal/d/c;->peek()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    if-nez v17, :cond_2

    const/16 v18, 0x1

    goto :goto_1

    :cond_2
    const/16 v18, 0x0

    .line 152
    :goto_1
    invoke-virtual {v5, v4}, Lio/reactivex/ah;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v19

    if-nez v18, :cond_3

    .line 154
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    sub-long v19, v19, v6

    cmp-long v17, v21, v19

    if-lez v17, :cond_3

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    move/from16 v12, v18

    .line 158
    :goto_2
    invoke-direct {v0, v8, v12, v1, v3}, Lio/reactivex/internal/operators/flowable/dv$a;->a(ZZLorg/b/c;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    return-void

    :cond_4
    if-nez v12, :cond_5

    .line 166
    invoke-virtual {v2}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    .line 168
    invoke-virtual {v2}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v8

    .line 170
    invoke-interface {v1, v8}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v12, 0x1

    add-long/2addr v14, v12

    goto :goto_0

    :cond_5
    const-wide/16 v10, 0x0

    cmp-long v8, v14, v10

    if-eqz v8, :cond_6

    .line 176
    iget-object v8, v0, Lio/reactivex/internal/operators/flowable/dv$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v8, v14, v15}, Lio/reactivex/internal/util/c;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_6
    neg-int v8, v9

    .line 179
    invoke-virtual {v0, v8}, Lio/reactivex/internal/operators/flowable/dv$a;->addAndGet(I)I

    move-result v9

    if-nez v9, :cond_1

    return-void
.end method

.method private a(ZZLorg/b/c;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lorg/b/c<",
            "-TT;>;Z)Z"
        }
    .end annotation

    .line 187
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/dv$a;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 188
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/dv$a;->e:Lio/reactivex/internal/d/c;

    invoke-virtual {p1}, Lio/reactivex/internal/d/c;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    if-eqz p4, :cond_2

    if-eqz p2, :cond_4

    .line 194
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/dv$a;->k:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 196
    invoke-interface {p3, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-interface {p3}, Lorg/b/c;->onComplete()V

    :goto_0
    return v1

    .line 203
    :cond_2
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/dv$a;->k:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    .line 205
    iget-object p2, p0, Lio/reactivex/internal/operators/flowable/dv$a;->e:Lio/reactivex/internal/d/c;

    invoke-virtual {p2}, Lio/reactivex/internal/d/c;->clear()V

    .line 206
    invoke-interface {p3, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    .line 210
    invoke-interface {p3}, Lorg/b/c;->onComplete()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 116
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/dv$a;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/dv$a;->i:Z

    .line 118
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dv$a;->g:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 120
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/dv$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dv$a;->e:Lio/reactivex/internal/d/c;

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    :cond_0
    return-void
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/dv$a;->j:Z

    .line 103
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/dv$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dv$a;->k:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 96
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/dv$a;->j:Z

    .line 97
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/dv$a;->a()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dv$a;->d:Lio/reactivex/ah;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/dv$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/ah;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 88
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/dv$a;->e:Lio/reactivex/internal/d/c;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/dv$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dv$a;->g:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dv$a;->g:Lorg/b/d;

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dv$a;->a:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 80
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 108
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dv$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 110
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/dv$a;->a()V

    :cond_0
    return-void
.end method
