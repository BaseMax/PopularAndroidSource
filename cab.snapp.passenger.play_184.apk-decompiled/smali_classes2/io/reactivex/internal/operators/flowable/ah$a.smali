.class final Lio/reactivex/internal/operators/flowable/ah$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/b/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Lio/reactivex/internal/operators/flowable/ah$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/ah$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/lang/Object;JLio/reactivex/internal/operators/flowable/ah$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Lio/reactivex/internal/operators/flowable/ah$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 178
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 176
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/ah$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 179
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ah$a;->a:Ljava/lang/Object;

    .line 180
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/ah$a;->b:J

    .line 181
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/ah$a;->c:Lio/reactivex/internal/operators/flowable/ah$b;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 190
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ah$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ah$a;->c:Lio/reactivex/internal/operators/flowable/ah$b;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/ah$a;->b:J

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/ah$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, p0}, Lio/reactivex/internal/operators/flowable/ah$b;->a(JLjava/lang/Object;Lio/reactivex/internal/operators/flowable/ah$a;)V

    :cond_0
    return-void
.end method

.method public final dispose()V
    .locals 0

    .line 197
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .line 202
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ah$a;->get()Ljava/lang/Object;

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
    .locals 0

    .line 186
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ah$a;->a()V

    return-void
.end method

.method public final setResource(Lio/reactivex/b/c;)V
    .locals 0

    .line 206
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
