.class final Lio/reactivex/internal/operators/c/ae$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ae;
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

.field final c:Lio/reactivex/internal/operators/c/ae$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/ae$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/lang/Object;JLio/reactivex/internal/operators/c/ae$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Lio/reactivex/internal/operators/c/ae$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 157
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/c/ae$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 160
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ae$a;->a:Ljava/lang/Object;

    .line 161
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/ae$a;->b:J

    .line 162
    iput-object p4, p0, Lio/reactivex/internal/operators/c/ae$a;->c:Lio/reactivex/internal/operators/c/ae$b;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 174
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .line 179
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ae$a;->get()Ljava/lang/Object;

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
    .locals 7

    .line 167
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ae$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ae$a;->c:Lio/reactivex/internal/operators/c/ae$b;

    iget-wide v1, p0, Lio/reactivex/internal/operators/c/ae$a;->b:J

    iget-object v3, p0, Lio/reactivex/internal/operators/c/ae$a;->a:Ljava/lang/Object;

    .line 1142
    iget-wide v4, v0, Lio/reactivex/internal/operators/c/ae$b;->g:J

    cmp-long v6, v1, v4

    if-nez v6, :cond_0

    .line 1143
    iget-object v0, v0, Lio/reactivex/internal/operators/c/ae$b;->a:Lio/reactivex/ag;

    invoke-interface {v0, v3}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    .line 1144
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ae$a;->dispose()V

    :cond_0
    return-void
.end method

.method public final setResource(Lio/reactivex/b/c;)V
    .locals 0

    .line 183
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
