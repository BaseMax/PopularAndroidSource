.class final Lio/reactivex/internal/e/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:J

.field final b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lio/reactivex/internal/e/g$c;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/b/b;

.field private final d:Ljava/util/concurrent/ScheduledExecutorService;

.field private final e:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V
    .locals 7

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    .line 79
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    iput-wide p1, p0, Lio/reactivex/internal/e/g$a;->a:J

    .line 80
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/e/g$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 81
    new-instance p1, Lio/reactivex/b/b;

    invoke-direct {p1}, Lio/reactivex/b/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/e/g$a;->c:Lio/reactivex/b/b;

    .line 82
    iput-object p4, p0, Lio/reactivex/internal/e/g$a;->f:Ljava/util/concurrent/ThreadFactory;

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    .line 87
    sget-object p2, Lio/reactivex/internal/e/g;->c:Lio/reactivex/internal/e/k;

    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 88
    iget-wide v4, p0, Lio/reactivex/internal/e/g$a;->a:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p1

    move-object v1, p0

    move-wide v2, v4

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, p1

    .line 90
    :goto_1
    iput-object p1, p0, Lio/reactivex/internal/e/g$a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 91
    iput-object p2, p0, Lio/reactivex/internal/e/g$a;->e:Ljava/util/concurrent/Future;

    return-void
.end method

.method static b()J
    .locals 2

    .line 142
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method final a()Lio/reactivex/internal/e/g$c;
    .locals 2

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/e/g$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lio/reactivex/internal/e/g;->d:Lio/reactivex/internal/e/g$c;

    return-object v0

    .line 103
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/e/g$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lio/reactivex/internal/e/g$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/e/g$c;

    if-eqz v0, :cond_0

    return-object v0

    .line 111
    :cond_1
    new-instance v0, Lio/reactivex/internal/e/g$c;

    iget-object v1, p0, Lio/reactivex/internal/e/g$a;->f:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lio/reactivex/internal/e/g$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 112
    iget-object v1, p0, Lio/reactivex/internal/e/g$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v1, v0}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    return-object v0
.end method

.method final c()V
    .locals 2

    .line 146
    iget-object v0, p0, Lio/reactivex/internal/e/g$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 147
    iget-object v0, p0, Lio/reactivex/internal/e/g$a;->e:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 148
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 150
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/e/g$a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 151
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    return-void
.end method

.method public final run()V
    .locals 7

    .line 1124
    iget-object v0, p0, Lio/reactivex/internal/e/g$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1142
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1127
    iget-object v2, p0, Lio/reactivex/internal/e/g$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/e/g$c;

    .line 1128
    invoke-virtual {v3}, Lio/reactivex/internal/e/g$c;->getExpirationTime()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gtz v6, :cond_1

    .line 1129
    iget-object v4, p0, Lio/reactivex/internal/e/g$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1130
    iget-object v4, p0, Lio/reactivex/internal/e/g$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v4, v3}, Lio/reactivex/b/b;->remove(Lio/reactivex/b/c;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
