.class final Lio/reactivex/internal/operators/b/g$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/b/g$a$a;
    }
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


# static fields
.field static final g:Lio/reactivex/internal/operators/b/g$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/b/g$a$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:Z

.field final d:Lio/reactivex/internal/util/b;

.field final e:Ljava/util/concurrent/atomic/AtomicLong;

.field final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/b/g$a$a<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field h:Lorg/b/d;

.field volatile i:Z

.field volatile j:Z

.field k:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Lio/reactivex/internal/operators/b/g$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/b/g$a$a;-><init>(Lio/reactivex/internal/operators/b/g$a;)V

    sput-object v0, Lio/reactivex/internal/operators/b/g$a;->g:Lio/reactivex/internal/operators/b/g$a$a;

    return-void
.end method

.method constructor <init>(Lorg/b/c;Lio/reactivex/e/h;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;Z)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 91
    iput-object p1, p0, Lio/reactivex/internal/operators/b/g$a;->a:Lorg/b/c;

    .line 92
    iput-object p2, p0, Lio/reactivex/internal/operators/b/g$a;->b:Lio/reactivex/e/h;

    .line 93
    iput-boolean p3, p0, Lio/reactivex/internal/operators/b/g$a;->c:Z

    .line 94
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/b/g$a;->d:Lio/reactivex/internal/util/b;

    .line 95
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/b/g$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 96
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/b/g$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 163
    iget-object v0, p0, Lio/reactivex/internal/operators/b/g$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/b/g$a;->g:Lio/reactivex/internal/operators/b/g$a$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/b/g$a$a;

    if-eqz v0, :cond_0

    .line 164
    sget-object v1, Lio/reactivex/internal/operators/b/g$a;->g:Lio/reactivex/internal/operators/b/g$a$a;

    if-eq v0, v1, :cond_0

    .line 2297
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method

.method final b()V
    .locals 12

    .line 203
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/g$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/b/g$a;->a:Lorg/b/c;

    .line 209
    iget-object v1, p0, Lio/reactivex/internal/operators/b/g$a;->d:Lio/reactivex/internal/util/b;

    .line 210
    iget-object v2, p0, Lio/reactivex/internal/operators/b/g$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 211
    iget-object v3, p0, Lio/reactivex/internal/operators/b/g$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 212
    iget-wide v4, p0, Lio/reactivex/internal/operators/b/g$a;->k:J

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 217
    :cond_1
    :goto_0
    iget-boolean v8, p0, Lio/reactivex/internal/operators/b/g$a;->j:Z

    if-eqz v8, :cond_2

    return-void

    .line 221
    :cond_2
    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 222
    iget-boolean v8, p0, Lio/reactivex/internal/operators/b/g$a;->c:Z

    if-nez v8, :cond_3

    .line 223
    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    .line 224
    invoke-interface {v0, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 229
    :cond_3
    iget-boolean v8, p0, Lio/reactivex/internal/operators/b/g$a;->i:Z

    .line 230
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/reactivex/internal/operators/b/g$a$a;

    if-nez v9, :cond_4

    const/4 v10, 0x1

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :goto_1
    if-eqz v8, :cond_6

    if-eqz v10, :cond_6

    .line 234
    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 236
    invoke-interface {v0, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 238
    :cond_5
    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void

    :cond_6
    if-nez v10, :cond_7

    .line 243
    iget-object v8, v9, Lio/reactivex/internal/operators/b/g$a$a;->b:Ljava/lang/Object;

    if-eqz v8, :cond_7

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    cmp-long v8, v4, v10

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    .line 247
    invoke-virtual {v2, v9, v8}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 249
    iget-object v8, v9, Lio/reactivex/internal/operators/b/g$a$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v8}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    goto :goto_0

    .line 254
    :cond_7
    iput-wide v4, p0, Lio/reactivex/internal/operators/b/g$a;->k:J

    neg-int v7, v7

    .line 255
    invoke-virtual {p0, v7}, Lio/reactivex/internal/operators/b/g$a;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_1

    return-void
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lio/reactivex/internal/operators/b/g$a;->j:Z

    .line 178
    iget-object v0, p0, Lio/reactivex/internal/operators/b/g$a;->h:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 179
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/g$a;->a()V

    return-void
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lio/reactivex/internal/operators/b/g$a;->i:Z

    .line 158
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/g$a;->b()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lio/reactivex/internal/operators/b/g$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-boolean p1, p0, Lio/reactivex/internal/operators/b/g$a;->c:Z

    if-nez p1, :cond_0

    .line 146
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/g$a;->a()V

    :cond_0
    const/4 p1, 0x1

    .line 148
    iput-boolean p1, p0, Lio/reactivex/internal/operators/b/g$a;->i:Z

    .line 149
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/g$a;->b()V

    return-void

    .line 151
    :cond_1
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/b/g$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/b/g$a$a;

    if-eqz v0, :cond_0

    .line 1297
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 119
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/b/g$a;->b:Lio/reactivex/e/h;

    invoke-interface {v0, p1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null MaybeSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    new-instance v0, Lio/reactivex/internal/operators/b/g$a$a;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/b/g$a$a;-><init>(Lio/reactivex/internal/operators/b/g$a;)V

    .line 131
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/b/g$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/b/g$a$a;

    .line 132
    sget-object v2, Lio/reactivex/internal/operators/b/g$a;->g:Lio/reactivex/internal/operators/b/g$a$a;

    if-eq v1, v2, :cond_2

    .line 135
    iget-object v2, p0, Lio/reactivex/internal/operators/b/g$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    invoke-interface {p1, v0}, Lio/reactivex/w;->subscribe(Lio/reactivex/t;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 121
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 122
    iget-object v0, p0, Lio/reactivex/internal/operators/b/g$a;->h:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 123
    iget-object v0, p0, Lio/reactivex/internal/operators/b/g$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/b/g$a;->g:Lio/reactivex/internal/operators/b/g$a$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/b/g$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/b/g$a;->h:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iput-object p1, p0, Lio/reactivex/internal/operators/b/g$a;->h:Lorg/b/d;

    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/b/g$a;->a:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 104
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 171
    iget-object v0, p0, Lio/reactivex/internal/operators/b/g$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 172
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/g$a;->b()V

    return-void
.end method
