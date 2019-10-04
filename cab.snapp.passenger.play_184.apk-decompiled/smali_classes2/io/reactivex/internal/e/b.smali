.class public final Lio/reactivex/internal/e/b;
.super Lio/reactivex/ah;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/e/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/e/b$c;,
        Lio/reactivex/internal/e/b$a;,
        Lio/reactivex/internal/e/b$b;
    }
.end annotation


# static fields
.field static final b:Lio/reactivex/internal/e/b$b;

.field static final c:Lio/reactivex/internal/e/k;

.field static final d:I

.field static final e:Lio/reactivex/internal/e/b$c;


# instance fields
.field final f:Ljava/util/concurrent/ThreadFactory;

.field final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/e/b$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 53
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "rx2.computation-threads"

    invoke-static {v2, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1

    if-le v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    sput v0, Lio/reactivex/internal/e/b;->d:I

    .line 55
    new-instance v0, Lio/reactivex/internal/e/b$c;

    new-instance v2, Lio/reactivex/internal/e/k;

    const-string v3, "RxComputationShutdown"

    invoke-direct {v2, v3}, Lio/reactivex/internal/e/k;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lio/reactivex/internal/e/b$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 56
    sput-object v0, Lio/reactivex/internal/e/b;->e:Lio/reactivex/internal/e/b$c;

    invoke-virtual {v0}, Lio/reactivex/internal/e/b$c;->dispose()V

    const/16 v0, 0xa

    const/4 v2, 0x5

    const-string v3, "rx2.computation-priority"

    .line 59
    invoke-static {v3, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 58
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 61
    new-instance v3, Lio/reactivex/internal/e/k;

    const-string v4, "RxComputationThreadPool"

    invoke-direct {v3, v4, v0, v2}, Lio/reactivex/internal/e/k;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lio/reactivex/internal/e/b;->c:Lio/reactivex/internal/e/k;

    .line 63
    new-instance v0, Lio/reactivex/internal/e/b$b;

    sget-object v2, Lio/reactivex/internal/e/b;->c:Lio/reactivex/internal/e/k;

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/e/b$b;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 64
    sput-object v0, Lio/reactivex/internal/e/b;->b:Lio/reactivex/internal/e/b$b;

    invoke-virtual {v0}, Lio/reactivex/internal/e/b$b;->shutdown()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 126
    sget-object v0, Lio/reactivex/internal/e/b;->c:Lio/reactivex/internal/e/k;

    invoke-direct {p0, v0}, Lio/reactivex/internal/e/b;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1

    .line 136
    invoke-direct {p0}, Lio/reactivex/ah;-><init>()V

    .line 137
    iput-object p1, p0, Lio/reactivex/internal/e/b;->f:Ljava/util/concurrent/ThreadFactory;

    .line 138
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/internal/e/b;->b:Lio/reactivex/internal/e/b$b;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/internal/e/b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 139
    invoke-virtual {p0}, Lio/reactivex/internal/e/b;->start()V

    return-void
.end method


# virtual methods
.method public final createWorker()Lio/reactivex/ah$c;
    .locals 2

    .line 145
    new-instance v0, Lio/reactivex/internal/e/b$a;

    iget-object v1, p0, Lio/reactivex/internal/e/b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/e/b$b;

    invoke-virtual {v1}, Lio/reactivex/internal/e/b$b;->getEventLoop()Lio/reactivex/internal/e/b$c;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/e/b$a;-><init>(Lio/reactivex/internal/e/b$c;)V

    return-object v0
.end method

.method public final createWorkers(ILio/reactivex/internal/e/o$a;)V
    .locals 1

    const-string v0, "number > 0 required"

    .line 150
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 151
    iget-object v0, p0, Lio/reactivex/internal/e/b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/e/b$b;

    invoke-virtual {v0, p1, p2}, Lio/reactivex/internal/e/b$b;->createWorkers(ILio/reactivex/internal/e/o$a;)V

    return-void
.end method

.method public final scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;
    .locals 1

    .line 157
    iget-object v0, p0, Lio/reactivex/internal/e/b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/e/b$b;

    invoke-virtual {v0}, Lio/reactivex/internal/e/b$b;->getEventLoop()Lio/reactivex/internal/e/b$c;

    move-result-object v0

    .line 158
    invoke-virtual {v0, p1, p2, p3, p4}, Lio/reactivex/internal/e/b$c;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    return-object p1
.end method

.method public final schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;
    .locals 8

    .line 164
    iget-object v0, p0, Lio/reactivex/internal/e/b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/e/b$b;

    invoke-virtual {v0}, Lio/reactivex/internal/e/b$b;->getEventLoop()Lio/reactivex/internal/e/b$c;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    .line 165
    invoke-virtual/range {v1 .. v7}, Lio/reactivex/internal/e/b$c;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    return-object p1
.end method

.method public final shutdown()V
    .locals 3

    .line 179
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/e/b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/e/b$b;

    .line 180
    sget-object v1, Lio/reactivex/internal/e/b;->b:Lio/reactivex/internal/e/b$b;

    if-ne v0, v1, :cond_1

    return-void

    .line 183
    :cond_1
    iget-object v2, p0, Lio/reactivex/internal/e/b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v0}, Lio/reactivex/internal/e/b$b;->shutdown()V

    return-void
.end method

.method public final start()V
    .locals 3

    .line 170
    new-instance v0, Lio/reactivex/internal/e/b$b;

    sget v1, Lio/reactivex/internal/e/b;->d:I

    iget-object v2, p0, Lio/reactivex/internal/e/b;->f:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/e/b$b;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 171
    iget-object v1, p0, Lio/reactivex/internal/e/b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/internal/e/b;->b:Lio/reactivex/internal/e/b$b;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    invoke-virtual {v0}, Lio/reactivex/internal/e/b$b;->shutdown()V

    :cond_0
    return-void
.end method
