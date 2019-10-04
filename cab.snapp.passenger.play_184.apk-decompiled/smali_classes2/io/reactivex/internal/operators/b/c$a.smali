.class final Lio/reactivex/internal/operators/b/c$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/b/c$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/d;

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/util/ErrorMode;

.field final d:Lio/reactivex/internal/util/b;

.field final e:Lio/reactivex/internal/operators/b/c$a$a;

.field final f:I

.field final g:Lio/reactivex/internal/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field h:Lorg/b/d;

.field volatile i:Z

.field volatile j:Z

.field volatile k:Z

.field l:I


# direct methods
.method constructor <init>(Lio/reactivex/d;Lio/reactivex/e/h;Lio/reactivex/internal/util/ErrorMode;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/d;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;",
            "Lio/reactivex/internal/util/ErrorMode;",
            "I)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 97
    iput-object p1, p0, Lio/reactivex/internal/operators/b/c$a;->a:Lio/reactivex/d;

    .line 98
    iput-object p2, p0, Lio/reactivex/internal/operators/b/c$a;->b:Lio/reactivex/e/h;

    .line 99
    iput-object p3, p0, Lio/reactivex/internal/operators/b/c$a;->c:Lio/reactivex/internal/util/ErrorMode;

    .line 100
    iput p4, p0, Lio/reactivex/internal/operators/b/c$a;->f:I

    .line 101
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/b/c$a;->d:Lio/reactivex/internal/util/b;

    .line 102
    new-instance p1, Lio/reactivex/internal/operators/b/c$a$a;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/b/c$a$a;-><init>(Lio/reactivex/internal/operators/b/c$a;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/b/c$a;->e:Lio/reactivex/internal/operators/b/c$a$a;

    .line 103
    new-instance p1, Lio/reactivex/internal/d/b;

    invoke-direct {p1, p4}, Lio/reactivex/internal/d/b;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/b/c$a;->g:Lio/reactivex/internal/b/i;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 6

    .line 193
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/c$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 198
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/b/c$a;->k:Z

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lio/reactivex/internal/operators/b/c$a;->g:Lio/reactivex/internal/b/i;

    invoke-interface {v0}, Lio/reactivex/internal/b/i;->clear()V

    return-void

    .line 203
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/b/c$a;->i:Z

    if-nez v0, :cond_7

    .line 205
    iget-object v0, p0, Lio/reactivex/internal/operators/b/c$a;->c:Lio/reactivex/internal/util/ErrorMode;

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    if-ne v0, v1, :cond_2

    .line 206
    iget-object v0, p0, Lio/reactivex/internal/operators/b/c$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lio/reactivex/internal/operators/b/c$a;->g:Lio/reactivex/internal/b/i;

    invoke-interface {v0}, Lio/reactivex/internal/b/i;->clear()V

    .line 208
    iget-object v0, p0, Lio/reactivex/internal/operators/b/c$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lio/reactivex/internal/operators/b/c$a;->a:Lio/reactivex/d;

    invoke-interface {v1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 214
    :cond_2
    iget-boolean v0, p0, Lio/reactivex/internal/operators/b/c$a;->j:Z

    .line 215
    iget-object v1, p0, Lio/reactivex/internal/operators/b/c$a;->g:Lio/reactivex/internal/b/i;

    invoke-interface {v1}, Lio/reactivex/internal/b/i;->poll()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    .line 219
    iget-object v0, p0, Lio/reactivex/internal/operators/b/c$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 221
    iget-object v1, p0, Lio/reactivex/internal/operators/b/c$a;->a:Lio/reactivex/d;

    invoke-interface {v1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 223
    :cond_4
    iget-object v0, p0, Lio/reactivex/internal/operators/b/c$a;->a:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    return-void

    :cond_5
    if-nez v4, :cond_7

    .line 230
    iget v0, p0, Lio/reactivex/internal/operators/b/c$a;->f:I

    shr-int/lit8 v4, v0, 0x1

    sub-int/2addr v0, v4

    .line 231
    iget v4, p0, Lio/reactivex/internal/operators/b/c$a;->l:I

    add-int/2addr v4, v3

    if-ne v4, v0, :cond_6

    .line 233
    iput v2, p0, Lio/reactivex/internal/operators/b/c$a;->l:I

    .line 234
    iget-object v2, p0, Lio/reactivex/internal/operators/b/c$a;->h:Lorg/b/d;

    int-to-long v4, v0

    invoke-interface {v2, v4, v5}, Lorg/b/d;->request(J)V

    goto :goto_1

    .line 236
    :cond_6
    iput v4, p0, Lio/reactivex/internal/operators/b/c$a;->l:I

    .line 242
    :goto_1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/b/c$a;->b:Lio/reactivex/e/h;

    invoke-interface {v0, v1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null CompletableSource"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    iput-boolean v3, p0, Lio/reactivex/internal/operators/b/c$a;->i:Z

    .line 253
    iget-object v1, p0, Lio/reactivex/internal/operators/b/c$a;->e:Lio/reactivex/internal/operators/b/c$a$a;

    invoke-interface {v0, v1}, Lio/reactivex/g;->subscribe(Lio/reactivex/d;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 244
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 245
    iget-object v1, p0, Lio/reactivex/internal/operators/b/c$a;->g:Lio/reactivex/internal/b/i;

    invoke-interface {v1}, Lio/reactivex/internal/b/i;->clear()V

    .line 246
    iget-object v1, p0, Lio/reactivex/internal/operators/b/c$a;->h:Lorg/b/d;

    invoke-interface {v1}, Lorg/b/d;->cancel()V

    .line 247
    iget-object v1, p0, Lio/reactivex/internal/operators/b/c$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 248
    iget-object v0, p0, Lio/reactivex/internal/operators/b/c$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lio/reactivex/internal/operators/b/c$a;->a:Lio/reactivex/d;

    invoke-interface {v1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 256
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/c$a;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lio/reactivex/internal/operators/b/c$a;->k:Z

    .line 155
    iget-object v0, p0, Lio/reactivex/internal/operators/b/c$a;->h:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 156
    iget-object v0, p0, Lio/reactivex/internal/operators/b/c$a;->e:Lio/reactivex/internal/operators/b/c$a$a;

    .line 2286
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 157
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/c$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lio/reactivex/internal/operators/b/c$a;->g:Lio/reactivex/internal/b/i;

    invoke-interface {v0}, Lio/reactivex/internal/b/i;->clear()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lio/reactivex/internal/operators/b/c$a;->k:Z

    return v0
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lio/reactivex/internal/operators/b/c$a;->j:Z

    .line 149
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/c$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lio/reactivex/internal/operators/b/c$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    iget-object p1, p0, Lio/reactivex/internal/operators/b/c$a;->c:Lio/reactivex/internal/util/ErrorMode;

    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-ne p1, v0, :cond_1

    .line 129
    iget-object p1, p0, Lio/reactivex/internal/operators/b/c$a;->e:Lio/reactivex/internal/operators/b/c$a$a;

    .line 1286
    invoke-static {p1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 130
    iget-object p1, p0, Lio/reactivex/internal/operators/b/c$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {p1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 131
    sget-object v0, Lio/reactivex/internal/util/h;->TERMINATED:Ljava/lang/Throwable;

    if-eq p1, v0, :cond_0

    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/b/c$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    .line 134
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/c$a;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_3

    .line 135
    iget-object p1, p0, Lio/reactivex/internal/operators/b/c$a;->g:Lio/reactivex/internal/b/i;

    invoke-interface {p1}, Lio/reactivex/internal/b/i;->clear()V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 138
    iput-boolean p1, p0, Lio/reactivex/internal/operators/b/c$a;->j:Z

    .line 139
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/c$a;->a()V

    return-void

    .line 142
    :cond_2
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lio/reactivex/internal/operators/b/c$a;->g:Lio/reactivex/internal/b/i;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/c$a;->a()V

    return-void

    .line 120
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/b/c$a;->h:Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 121
    new-instance p1, Lio/reactivex/c/c;

    const-string v0, "Queue full?!"

    invoke-direct {p1, v0}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/b/c$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/b/c$a;->h:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iput-object p1, p0, Lio/reactivex/internal/operators/b/c$a;->h:Lorg/b/d;

    .line 110
    iget-object v0, p0, Lio/reactivex/internal/operators/b/c$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    .line 111
    iget v0, p0, Lio/reactivex/internal/operators/b/c$a;->f:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method
