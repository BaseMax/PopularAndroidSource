.class final Lio/reactivex/internal/operators/c/bz$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/bz$a;
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
        "Lio/reactivex/d;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/c/bz$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/bz$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/bz$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/bz$a<",
            "*>;)V"
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 126
    iput-object p1, p0, Lio/reactivex/internal/operators/c/bz$a$a;->a:Lio/reactivex/internal/operators/c/bz$a;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 3

    .line 141
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bz$a$a;->a:Lio/reactivex/internal/operators/c/bz$a;

    const/4 v1, 0x1

    .line 1112
    iput-boolean v1, v0, Lio/reactivex/internal/operators/c/bz$a;->f:Z

    .line 1113
    iget-boolean v1, v0, Lio/reactivex/internal/operators/c/bz$a;->e:Z

    if-eqz v1, :cond_0

    .line 1114
    iget-object v1, v0, Lio/reactivex/internal/operators/c/bz$a;->a:Lio/reactivex/ag;

    iget-object v2, v0, Lio/reactivex/internal/operators/c/bz$a;->d:Lio/reactivex/internal/util/b;

    invoke-static {v1, v0, v2}, Lio/reactivex/internal/util/i;->onComplete(Lio/reactivex/ag;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/b;)V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 136
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bz$a$a;->a:Lio/reactivex/internal/operators/c/bz$a;

    .line 1107
    iget-object v1, v0, Lio/reactivex/internal/operators/c/bz$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 1108
    iget-object v1, v0, Lio/reactivex/internal/operators/c/bz$a;->a:Lio/reactivex/ag;

    iget-object v2, v0, Lio/reactivex/internal/operators/c/bz$a;->d:Lio/reactivex/internal/util/b;

    invoke-static {v1, p1, v0, v2}, Lio/reactivex/internal/util/i;->onError(Lio/reactivex/ag;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/b;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 131
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method