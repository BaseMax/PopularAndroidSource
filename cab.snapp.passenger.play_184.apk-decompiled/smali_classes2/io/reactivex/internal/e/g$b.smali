.class final Lio/reactivex/internal/e/g$b;
.super Lio/reactivex/ah$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Lio/reactivex/b/b;

.field private final c:Lio/reactivex/internal/e/g$a;

.field private final d:Lio/reactivex/internal/e/g$c;


# direct methods
.method constructor <init>(Lio/reactivex/internal/e/g$a;)V
    .locals 1

    .line 210
    invoke-direct {p0}, Lio/reactivex/ah$c;-><init>()V

    .line 208
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/e/g$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 211
    iput-object p1, p0, Lio/reactivex/internal/e/g$b;->c:Lio/reactivex/internal/e/g$a;

    .line 212
    new-instance v0, Lio/reactivex/b/b;

    invoke-direct {v0}, Lio/reactivex/b/b;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/e/g$b;->b:Lio/reactivex/b/b;

    .line 213
    invoke-virtual {p1}, Lio/reactivex/internal/e/g$a;->a()Lio/reactivex/internal/e/g$c;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/e/g$b;->d:Lio/reactivex/internal/e/g$c;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 6

    .line 218
    iget-object v0, p0, Lio/reactivex/internal/e/g$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lio/reactivex/internal/e/g$b;->b:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 222
    iget-object v0, p0, Lio/reactivex/internal/e/g$b;->c:Lio/reactivex/internal/e/g$a;

    iget-object v1, p0, Lio/reactivex/internal/e/g$b;->d:Lio/reactivex/internal/e/g$c;

    .line 1118
    invoke-static {}, Lio/reactivex/internal/e/g$a;->b()J

    move-result-wide v2

    iget-wide v4, v0, Lio/reactivex/internal/e/g$a;->a:J

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lio/reactivex/internal/e/g$c;->setExpirationTime(J)V

    .line 1120
    iget-object v0, v0, Lio/reactivex/internal/e/g$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 228
    iget-object v0, p0, Lio/reactivex/internal/e/g$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;
    .locals 6

    .line 234
    iget-object v0, p0, Lio/reactivex/internal/e/g$b;->b:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    .line 239
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/e/g$b;->d:Lio/reactivex/internal/e/g$c;

    iget-object v5, p0, Lio/reactivex/internal/e/g$b;->b:Lio/reactivex/b/b;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/internal/e/g$c;->scheduleActual(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/internal/disposables/c;)Lio/reactivex/internal/e/n;

    move-result-object p1

    return-object p1
.end method
