.class final Lio/reactivex/internal/operators/c/cb$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/al;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/cb$a;
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
        "Lio/reactivex/al<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/c/cb$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/cb$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/cb$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/cb$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 236
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 237
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cb$a$a;->a:Lio/reactivex/internal/operators/c/cb$a;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 252
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cb$a$a;->a:Lio/reactivex/internal/operators/c/cb$a;

    .line 1153
    iget-object v1, v0, Lio/reactivex/internal/operators/c/cb$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v1, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1154
    iget-object p1, v0, Lio/reactivex/internal/operators/c/cb$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 1155
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/cb$a;->a()V

    return-void

    .line 1157
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 242
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cb$a$a;->a:Lio/reactivex/internal/operators/c/cb$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1139
    invoke-virtual {v0, v2, v1}, Lio/reactivex/internal/operators/c/cb$a;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1140
    iget-object v1, v0, Lio/reactivex/internal/operators/c/cb$a;->a:Lio/reactivex/ag;

    invoke-interface {v1, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 1141
    iput p1, v0, Lio/reactivex/internal/operators/c/cb$a;->i:I

    goto :goto_0

    .line 1143
    :cond_0
    iput-object p1, v0, Lio/reactivex/internal/operators/c/cb$a;->f:Ljava/lang/Object;

    .line 1144
    iput v1, v0, Lio/reactivex/internal/operators/c/cb$a;->i:I

    .line 1145
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/cb$a;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_1

    .line 1149
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/cb$a;->b()V

    :cond_1
    return-void
.end method