.class final Lio/reactivex/internal/e/q$e;
.super Lio/reactivex/ah$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/e/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Lio/reactivex/h/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/h/a<",
            "Lio/reactivex/internal/e/q$f;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lio/reactivex/ah$c;


# direct methods
.method constructor <init>(Lio/reactivex/h/a;Lio/reactivex/ah$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/h/a<",
            "Lio/reactivex/internal/e/q$f;",
            ">;",
            "Lio/reactivex/ah$c;",
            ")V"
        }
    .end annotation

    .line 298
    invoke-direct {p0}, Lio/reactivex/ah$c;-><init>()V

    .line 299
    iput-object p1, p0, Lio/reactivex/internal/e/q$e;->b:Lio/reactivex/h/a;

    .line 300
    iput-object p2, p0, Lio/reactivex/internal/e/q$e;->c:Lio/reactivex/ah$c;

    .line 301
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/e/q$e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 3

    .line 308
    iget-object v0, p0, Lio/reactivex/internal/e/q$e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lio/reactivex/internal/e/q$e;->b:Lio/reactivex/h/a;

    invoke-virtual {v0}, Lio/reactivex/h/a;->onComplete()V

    .line 310
    iget-object v0, p0, Lio/reactivex/internal/e/q$e;->c:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 316
    iget-object v0, p0, Lio/reactivex/internal/e/q$e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final schedule(Ljava/lang/Runnable;)Lio/reactivex/b/c;
    .locals 1

    .line 332
    new-instance v0, Lio/reactivex/internal/e/q$c;

    invoke-direct {v0, p1}, Lio/reactivex/internal/e/q$c;-><init>(Ljava/lang/Runnable;)V

    .line 333
    iget-object p1, p0, Lio/reactivex/internal/e/q$e;->b:Lio/reactivex/h/a;

    invoke-virtual {p1, v0}, Lio/reactivex/h/a;->onNext(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;
    .locals 1

    .line 323
    new-instance v0, Lio/reactivex/internal/e/q$b;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/reactivex/internal/e/q$b;-><init>(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 324
    iget-object p1, p0, Lio/reactivex/internal/e/q$e;->b:Lio/reactivex/h/a;

    invoke-virtual {p1, v0}, Lio/reactivex/h/a;->onNext(Ljava/lang/Object;)V

    return-object v0
.end method
