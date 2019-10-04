.class final Lio/reactivex/internal/operators/c/bq$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/bq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/b/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final b:J

.field c:J


# direct methods
.method constructor <init>(Lio/reactivex/ag;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 71
    iput-object p1, p0, Lio/reactivex/internal/operators/c/bq$a;->a:Lio/reactivex/ag;

    .line 72
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/bq$a;->c:J

    .line 73
    iput-wide p4, p0, Lio/reactivex/internal/operators/c/bq$a;->b:J

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 78
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .line 83
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/bq$a;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final run()V
    .locals 5

    .line 88
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/bq$a;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget-wide v0, p0, Lio/reactivex/internal/operators/c/bq$a;->c:J

    .line 90
    iget-object v2, p0, Lio/reactivex/internal/operators/c/bq$a;->a:Lio/reactivex/ag;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    .line 92
    iget-wide v2, p0, Lio/reactivex/internal/operators/c/bq$a;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 93
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bq$a;->a:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 98
    iput-wide v0, p0, Lio/reactivex/internal/operators/c/bq$a;->c:J

    :cond_1
    return-void
.end method

.method public final setResource(Lio/reactivex/b/c;)V
    .locals 0

    .line 104
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
