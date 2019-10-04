.class public final Lio/reactivex/internal/e/d$c;
.super Lio/reactivex/ah$c;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/e/d$c$b;,
        Lio/reactivex/internal/e/d$c$c;,
        Lio/reactivex/internal/e/d$c$a;
    }
.end annotation


# instance fields
.field final a:Z

.field final b:Ljava/util/concurrent/Executor;

.field final c:Lio/reactivex/internal/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/d/a<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field volatile d:Z

.field final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field final f:Lio/reactivex/b/b;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Z)V
    .locals 1

    .line 136
    invoke-direct {p0}, Lio/reactivex/ah$c;-><init>()V

    .line 132
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/e/d$c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 134
    new-instance v0, Lio/reactivex/b/b;

    invoke-direct {v0}, Lio/reactivex/b/b;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/e/d$c;->f:Lio/reactivex/b/b;

    .line 137
    iput-object p1, p0, Lio/reactivex/internal/e/d$c;->b:Ljava/util/concurrent/Executor;

    .line 138
    new-instance p1, Lio/reactivex/internal/d/a;

    invoke-direct {p1}, Lio/reactivex/internal/d/a;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/e/d$c;->c:Lio/reactivex/internal/d/a;

    .line 139
    iput-boolean p2, p0, Lio/reactivex/internal/e/d$c;->a:Z

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 223
    iget-boolean v0, p0, Lio/reactivex/internal/e/d$c;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lio/reactivex/internal/e/d$c;->d:Z

    .line 225
    iget-object v0, p0, Lio/reactivex/internal/e/d$c;->f:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 226
    iget-object v0, p0, Lio/reactivex/internal/e/d$c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lio/reactivex/internal/e/d$c;->c:Lio/reactivex/internal/d/a;

    invoke-virtual {v0}, Lio/reactivex/internal/d/a;->clear()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lio/reactivex/internal/e/d$c;->d:Z

    return v0
.end method

.method public final run()V
    .locals 3

    .line 240
    iget-object v0, p0, Lio/reactivex/internal/e/d$c;->c:Lio/reactivex/internal/d/a;

    const/4 v1, 0x1

    .line 243
    :cond_0
    iget-boolean v2, p0, Lio/reactivex/internal/e/d$c;->d:Z

    if-eqz v2, :cond_1

    .line 244
    invoke-virtual {v0}, Lio/reactivex/internal/d/a;->clear()V

    return-void

    .line 249
    :cond_1
    invoke-virtual {v0}, Lio/reactivex/internal/d/a;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 253
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 255
    iget-boolean v2, p0, Lio/reactivex/internal/e/d$c;->d:Z

    if-eqz v2, :cond_1

    .line 256
    invoke-virtual {v0}, Lio/reactivex/internal/d/a;->clear()V

    return-void

    .line 261
    :cond_2
    iget-boolean v2, p0, Lio/reactivex/internal/e/d$c;->d:Z

    if-eqz v2, :cond_3

    .line 262
    invoke-virtual {v0}, Lio/reactivex/internal/d/a;->clear()V

    return-void

    .line 266
    :cond_3
    iget-object v2, p0, Lio/reactivex/internal/e/d$c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v1, v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void
.end method

.method public final schedule(Ljava/lang/Runnable;)Lio/reactivex/b/c;
    .locals 2

    .line 145
    iget-boolean v0, p0, Lio/reactivex/internal/e/d$c;->d:Z

    if-eqz v0, :cond_0

    .line 146
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    .line 149
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 154
    iget-boolean v0, p0, Lio/reactivex/internal/e/d$c;->a:Z

    if-eqz v0, :cond_1

    .line 155
    new-instance v0, Lio/reactivex/internal/e/d$c$b;

    iget-object v1, p0, Lio/reactivex/internal/e/d$c;->f:Lio/reactivex/b/b;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/e/d$c$b;-><init>(Ljava/lang/Runnable;Lio/reactivex/internal/disposables/c;)V

    .line 156
    iget-object p1, p0, Lio/reactivex/internal/e/d$c;->f:Lio/reactivex/b/b;

    invoke-virtual {p1, v0}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    goto :goto_0

    .line 161
    :cond_1
    new-instance v0, Lio/reactivex/internal/e/d$c$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/e/d$c$a;-><init>(Ljava/lang/Runnable;)V

    .line 167
    :goto_0
    iget-object p1, p0, Lio/reactivex/internal/e/d$c;->c:Lio/reactivex/internal/d/a;

    invoke-virtual {p1, v0}, Lio/reactivex/internal/d/a;->offer(Ljava/lang/Object;)Z

    .line 169
    iget-object p1, p0, Lio/reactivex/internal/e/d$c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_2

    .line 171
    :try_start_0
    iget-object p1, p0, Lio/reactivex/internal/e/d$c;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lio/reactivex/internal/e/d$c;->d:Z

    .line 174
    iget-object v0, p0, Lio/reactivex/internal/e/d$c;->c:Lio/reactivex/internal/d/a;

    invoke-virtual {v0}, Lio/reactivex/internal/d/a;->clear()V

    .line 175
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    .line 176
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    :cond_2
    :goto_1
    return-object v0
.end method

.method public final schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    .line 187
    invoke-virtual {p0, p1}, Lio/reactivex/internal/e/d$c;->schedule(Ljava/lang/Runnable;)Lio/reactivex/b/c;

    move-result-object p1

    return-object p1

    .line 189
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/e/d$c;->d:Z

    if-eqz v0, :cond_1

    .line 190
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    .line 193
    :cond_1
    new-instance v0, Lio/reactivex/internal/disposables/f;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/f;-><init>()V

    .line 195
    new-instance v1, Lio/reactivex/internal/disposables/f;

    invoke-direct {v1, v0}, Lio/reactivex/internal/disposables/f;-><init>(Lio/reactivex/b/c;)V

    .line 197
    invoke-static {p1}, Lio/reactivex/g/a;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 199
    new-instance v2, Lio/reactivex/internal/e/n;

    new-instance v3, Lio/reactivex/internal/e/d$c$c;

    invoke-direct {v3, p0, v1, p1}, Lio/reactivex/internal/e/d$c$c;-><init>(Lio/reactivex/internal/e/d$c;Lio/reactivex/internal/disposables/f;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lio/reactivex/internal/e/d$c;->f:Lio/reactivex/b/b;

    invoke-direct {v2, v3, p1}, Lio/reactivex/internal/e/n;-><init>(Ljava/lang/Runnable;Lio/reactivex/internal/disposables/c;)V

    .line 200
    iget-object p1, p0, Lio/reactivex/internal/e/d$c;->f:Lio/reactivex/b/b;

    invoke-virtual {p1, v2}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    .line 202
    iget-object p1, p0, Lio/reactivex/internal/e/d$c;->b:Ljava/util/concurrent/Executor;

    instance-of v3, p1, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v3, :cond_2

    .line 204
    :try_start_0
    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v2, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 205
    invoke-virtual {v2, p1}, Lio/reactivex/internal/e/n;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 207
    iput-boolean p2, p0, Lio/reactivex/internal/e/d$c;->d:Z

    .line 208
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    .line 209
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    .line 212
    :cond_2
    sget-object p1, Lio/reactivex/internal/e/d;->d:Lio/reactivex/ah;

    invoke-virtual {p1, v2, p2, p3, p4}, Lio/reactivex/ah;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    .line 213
    new-instance p2, Lio/reactivex/internal/e/c;

    invoke-direct {p2, p1}, Lio/reactivex/internal/e/c;-><init>(Lio/reactivex/b/c;)V

    invoke-virtual {v2, p2}, Lio/reactivex/internal/e/n;->setFuture(Ljava/util/concurrent/Future;)V

    .line 216
    :goto_0
    invoke-virtual {v0, v2}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    return-object v1
.end method
