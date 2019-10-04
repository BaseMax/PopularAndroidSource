.class final Lio/reactivex/internal/operators/flowable/ex$b;
.super Lio/reactivex/internal/f/n;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Ljava/lang/Runnable;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ex;
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
        "Lio/reactivex/internal/f/n<",
        "TT;",
        "Ljava/lang/Object;",
        "Lio/reactivex/j<",
        "TT;>;>;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Ljava/lang/Runnable;",
        "Lorg/b/d;"
    }
.end annotation


# static fields
.field static final h:Ljava/lang/Object;


# instance fields
.field final a:J

.field final b:Ljava/util/concurrent/TimeUnit;

.field final c:Lio/reactivex/ah;

.field final d:I

.field e:Lorg/b/d;

.field f:Lio/reactivex/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/h/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final g:Lio/reactivex/internal/disposables/f;

.field volatile i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/flowable/ex$b;->h:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lorg/b/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "I)V"
        }
    .end annotation

    .line 97
    new-instance v0, Lio/reactivex/internal/d/a;

    invoke-direct {v0}, Lio/reactivex/internal/d/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/f/n;-><init>(Lorg/b/c;Lio/reactivex/internal/b/i;)V

    .line 89
    new-instance p1, Lio/reactivex/internal/disposables/f;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/f;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ex$b;->g:Lio/reactivex/internal/disposables/f;

    .line 98
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/ex$b;->a:J

    .line 99
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/ex$b;->b:Ljava/util/concurrent/TimeUnit;

    .line 100
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/ex$b;->c:Lio/reactivex/ah;

    .line 101
    iput p6, p0, Lio/reactivex/internal/operators/flowable/ex$b;->d:I

    return-void
.end method

.method private a()V
    .locals 10

    .line 207
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$b;->queue:Lio/reactivex/internal/b/i;

    .line 208
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ex$b;->n:Lorg/b/c;

    .line 209
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ex$b;->f:Lio/reactivex/h/c;

    const/4 v3, 0x1

    .line 215
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/ex$b;->i:Z

    .line 217
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/ex$b;->o:Z

    .line 219
    invoke-interface {v0}, Lio/reactivex/internal/b/i;->poll()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    if-eqz v6, :cond_1

    .line 221
    sget-object v5, Lio/reactivex/internal/operators/flowable/ex$b;->h:Ljava/lang/Object;

    if-ne v6, v5, :cond_3

    .line 222
    :cond_1
    iput-object v7, p0, Lio/reactivex/internal/operators/flowable/ex$b;->f:Lio/reactivex/h/c;

    .line 223
    invoke-interface {v0}, Lio/reactivex/internal/b/i;->clear()V

    .line 224
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$b;->dispose()V

    .line 225
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$b;->p:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 227
    invoke-virtual {v2, v0}, Lio/reactivex/h/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 229
    :cond_2
    invoke-virtual {v2}, Lio/reactivex/h/c;->onComplete()V

    return-void

    :cond_3
    if-eqz v6, :cond_7

    .line 238
    sget-object v5, Lio/reactivex/internal/operators/flowable/ex$b;->h:Ljava/lang/Object;

    if-ne v6, v5, :cond_6

    .line 239
    invoke-virtual {v2}, Lio/reactivex/h/c;->onComplete()V

    if-nez v4, :cond_5

    .line 241
    iget v2, p0, Lio/reactivex/internal/operators/flowable/ex$b;->d:I

    invoke-static {v2}, Lio/reactivex/h/c;->create(I)Lio/reactivex/h/c;

    move-result-object v2

    .line 242
    iput-object v2, p0, Lio/reactivex/internal/operators/flowable/ex$b;->f:Lio/reactivex/h/c;

    .line 244
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$b;->requested()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-eqz v6, :cond_4

    .line 246
    invoke-interface {v1, v2}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    const-wide/16 v4, 0x1

    .line 248
    invoke-virtual {p0, v4, v5}, Lio/reactivex/internal/operators/flowable/ex$b;->produced(J)J

    goto :goto_0

    .line 251
    :cond_4
    iput-object v7, p0, Lio/reactivex/internal/operators/flowable/ex$b;->f:Lio/reactivex/h/c;

    .line 252
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$b;->queue:Lio/reactivex/internal/b/i;

    invoke-interface {v0}, Lio/reactivex/internal/b/i;->clear()V

    .line 253
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$b;->e:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 254
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$b;->dispose()V

    .line 255
    new-instance v0, Lio/reactivex/c/c;

    const-string v2, "Could not deliver first window due to lack of requests."

    invoke-direct {v0, v2}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 259
    :cond_5
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/ex$b;->e:Lorg/b/d;

    invoke-interface {v4}, Lorg/b/d;->cancel()V

    goto :goto_0

    .line 264
    :cond_6
    invoke-static {v6}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/reactivex/h/c;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    neg-int v3, v3

    .line 267
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/flowable/ex$b;->leave(I)I

    move-result v3

    if-nez v3, :cond_0

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ex$b;->cancelled:Z

    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 188
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$b;->g:Lio/reactivex/internal/disposables/f;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ex$b;->o:Z

    .line 169
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$b;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ex$b;->a()V

    .line 173
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$b;->n:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    .line 174
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$b;->dispose()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 156
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ex$b;->p:Ljava/lang/Throwable;

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ex$b;->o:Z

    .line 158
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$b;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ex$b;->a()V

    .line 162
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$b;->n:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    .line 163
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$b;->dispose()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 137
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ex$b;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$b;->fastEnter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$b;->f:Lio/reactivex/h/c;

    invoke-virtual {v0, p1}, Lio/reactivex/h/c;->onNext(Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 142
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ex$b;->leave(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$b;->queue:Lio/reactivex/internal/b/i;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$b;->enter()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 151
    :cond_2
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ex$b;->a()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 12

    .line 106
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$b;->e:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ex$b;->e:Lorg/b/d;

    .line 109
    iget v0, p0, Lio/reactivex/internal/operators/flowable/ex$b;->d:I

    invoke-static {v0}, Lio/reactivex/h/c;->create(I)Lio/reactivex/h/c;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$b;->f:Lio/reactivex/h/c;

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$b;->n:Lorg/b/c;

    .line 112
    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 114
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$b;->requested()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 116
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/ex$b;->f:Lio/reactivex/h/c;

    invoke-interface {v0, v3}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    .line 118
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/ex$b;->produced(J)J

    .line 127
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ex$b;->cancelled:Z

    if-nez v0, :cond_2

    .line 128
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$b;->g:Lio/reactivex/internal/disposables/f;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/ex$b;->c:Lio/reactivex/ah;

    iget-wide v9, p0, Lio/reactivex/internal/operators/flowable/ex$b;->a:J

    iget-object v11, p0, Lio/reactivex/internal/operators/flowable/ex$b;->b:Ljava/util/concurrent/TimeUnit;

    move-object v6, p0

    move-wide v7, v9

    invoke-virtual/range {v5 .. v11}, Lio/reactivex/ah;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    invoke-interface {p1, v3, v4}, Lorg/b/d;->request(J)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 121
    iput-boolean v1, p0, Lio/reactivex/internal/operators/flowable/ex$b;->cancelled:Z

    .line 122
    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 123
    new-instance p1, Lio/reactivex/c/c;

    const-string v1, "Could not deliver first window due to lack of requests."

    invoke-direct {p1, v1}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final request(J)V
    .locals 0

    .line 179
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/ex$b;->requested(J)V

    return-void
.end method

.method public final run()V
    .locals 2

    .line 194
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ex$b;->cancelled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ex$b;->i:Z

    .line 196
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$b;->dispose()V

    .line 198
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$b;->queue:Lio/reactivex/internal/b/i;

    sget-object v1, Lio/reactivex/internal/operators/flowable/ex$b;->h:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$b;->enter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ex$b;->a()V

    :cond_1
    return-void
.end method
