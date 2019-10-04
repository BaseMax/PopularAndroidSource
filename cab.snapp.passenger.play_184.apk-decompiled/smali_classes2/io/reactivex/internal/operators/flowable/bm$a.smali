.class final Lio/reactivex/internal/operators/flowable/bm$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/i;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lio/reactivex/i<",
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

.field final b:Lio/reactivex/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/c<",
            "TS;-",
            "Lio/reactivex/i<",
            "TT;>;TS;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-TS;>;"
        }
    .end annotation
.end field

.field d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field volatile e:Z

.field f:Z

.field g:Z


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/e/c;Lio/reactivex/e/g;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;",
            "Lio/reactivex/e/c<",
            "TS;-",
            "Lio/reactivex/i<",
            "TT;>;TS;>;",
            "Lio/reactivex/e/g<",
            "-TS;>;TS;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 76
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bm$a;->a:Lorg/b/c;

    .line 77
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/bm$a;->b:Lio/reactivex/e/c;

    .line 78
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/bm$a;->c:Lio/reactivex/e/g;

    .line 79
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/bm$a;->d:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 143
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bm$a;->c:Lio/reactivex/e/g;

    invoke-interface {v0, p1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 145
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 146
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 5

    .line 152
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bm$a;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bm$a;->e:Z

    const-wide/16 v0, 0x1

    .line 156
    invoke-static {p0, v0, v1}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 157
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bm$a;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 158
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/bm$a;->d:Ljava/lang/Object;

    .line 159
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/flowable/bm$a;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 195
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bm$a;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bm$a;->f:Z

    .line 197
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bm$a;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 182
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bm$a;->f:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 186
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bm$a;->f:Z

    .line 189
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bm$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 166
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bm$a;->f:Z

    if-nez v0, :cond_2

    .line 167
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bm$a;->g:Z

    if-eqz v0, :cond_0

    .line 168
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onNext already called in this generate turn"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/bm$a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 171
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/bm$a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bm$a;->g:Z

    .line 174
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bm$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final request(J)V
    .locals 9

    .line 84
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bm$a;->d:Ljava/lang/Object;

    .line 95
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bm$a;->b:Lio/reactivex/e/c;

    move-wide v4, p1

    :goto_0
    move-wide p1, v2

    :cond_2
    :goto_1
    cmp-long v6, p1, v4

    if-eqz v6, :cond_5

    .line 100
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/bm$a;->e:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    .line 101
    iput-object v7, p0, Lio/reactivex/internal/operators/flowable/bm$a;->d:Ljava/lang/Object;

    .line 102
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/flowable/bm$a;->a(Ljava/lang/Object;)V

    return-void

    :cond_3
    const/4 v6, 0x0

    .line 106
    iput-boolean v6, p0, Lio/reactivex/internal/operators/flowable/bm$a;->g:Z

    const/4 v6, 0x1

    .line 109
    :try_start_0
    invoke-interface {v1, v0, p0}, Lio/reactivex/e/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/bm$a;->f:Z

    if-eqz v8, :cond_4

    .line 120
    iput-boolean v6, p0, Lio/reactivex/internal/operators/flowable/bm$a;->e:Z

    .line 121
    iput-object v7, p0, Lio/reactivex/internal/operators/flowable/bm$a;->d:Ljava/lang/Object;

    .line 122
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/flowable/bm$a;->a(Ljava/lang/Object;)V

    return-void

    :cond_4
    const-wide/16 v6, 0x1

    add-long/2addr p1, v6

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 111
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 112
    iput-boolean v6, p0, Lio/reactivex/internal/operators/flowable/bm$a;->e:Z

    .line 113
    iput-object v7, p0, Lio/reactivex/internal/operators/flowable/bm$a;->d:Ljava/lang/Object;

    .line 114
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/bm$a;->onError(Ljava/lang/Throwable;)V

    .line 115
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/flowable/bm$a;->a(Ljava/lang/Object;)V

    return-void

    .line 129
    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/bm$a;->get()J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-nez v6, :cond_2

    .line 131
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/bm$a;->d:Ljava/lang/Object;

    neg-long p1, p1

    .line 132
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/bm$a;->addAndGet(J)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    return-void
.end method
