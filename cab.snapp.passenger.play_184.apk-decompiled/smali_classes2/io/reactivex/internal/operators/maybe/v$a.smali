.class final Lio/reactivex/internal/operators/maybe/v$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/v;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/al<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/operators/maybe/v$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/v$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/operators/maybe/v$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/v$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/al;Lio/reactivex/e/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/reactivex/e/d<",
            "-TT;-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 65
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 66
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/v$a;->a:Lio/reactivex/al;

    .line 67
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/v$a;->d:Lio/reactivex/e/d;

    .line 68
    new-instance p1, Lio/reactivex/internal/operators/maybe/v$b;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/maybe/v$b;-><init>(Lio/reactivex/internal/operators/maybe/v$a;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/v$a;->b:Lio/reactivex/internal/operators/maybe/v$b;

    .line 69
    new-instance p1, Lio/reactivex/internal/operators/maybe/v$b;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/maybe/v$b;-><init>(Lio/reactivex/internal/operators/maybe/v$a;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/v$a;->c:Lio/reactivex/internal/operators/maybe/v$b;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 90
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/v$a;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_2

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/v$a;->b:Lio/reactivex/internal/operators/maybe/v$b;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/v$b;->b:Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/v$a;->c:Lio/reactivex/internal/operators/maybe/v$b;

    iget-object v1, v1, Lio/reactivex/internal/operators/maybe/v$b;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 98
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/v$a;->d:Lio/reactivex/e/d;

    invoke-interface {v2, v0, v1}, Lio/reactivex/e/d;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/v$a;->a:Lio/reactivex/al;

    move-object v2, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 100
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 101
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/v$a;->a:Lio/reactivex/al;

    invoke-interface {v1, v0}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 107
    :cond_0
    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/v$a;->a:Lio/reactivex/al;

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/reactivex/al;->onSuccess(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/v$a;->b:Lio/reactivex/internal/operators/maybe/v$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/v$b;->dispose()V

    .line 80
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/v$a;->c:Lio/reactivex/internal/operators/maybe/v$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/v$b;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/v$a;->b:Lio/reactivex/internal/operators/maybe/v$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/v$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/b/c;)Z

    move-result v0

    return v0
.end method
