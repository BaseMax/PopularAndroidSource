.class final Lio/reactivex/internal/operators/c/en$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/en;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ag<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/c/en$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/en$a<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/d/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile c:Z

.field d:Ljava/lang/Throwable;

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/en$a;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/en$a<",
            "TT;TR;>;I)V"
        }
    .end annotation

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/c/en$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 269
    iput-object p1, p0, Lio/reactivex/internal/operators/c/en$b;->a:Lio/reactivex/internal/operators/c/en$a;

    .line 270
    new-instance p1, Lio/reactivex/internal/d/c;

    invoke-direct {p1, p2}, Lio/reactivex/internal/d/c;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/en$b;->b:Lio/reactivex/internal/d/c;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 298
    iget-object v0, p0, Lio/reactivex/internal/operators/c/en$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 293
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/en$b;->c:Z

    .line 294
    iget-object v0, p0, Lio/reactivex/internal/operators/c/en$b;->a:Lio/reactivex/internal/operators/c/en$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/en$a;->drain()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lio/reactivex/internal/operators/c/en$b;->d:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 287
    iput-boolean p1, p0, Lio/reactivex/internal/operators/c/en$b;->c:Z

    .line 288
    iget-object p1, p0, Lio/reactivex/internal/operators/c/en$b;->a:Lio/reactivex/internal/operators/c/en$a;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/en$a;->drain()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lio/reactivex/internal/operators/c/en$b;->b:Lio/reactivex/internal/d/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;)Z

    .line 281
    iget-object p1, p0, Lio/reactivex/internal/operators/c/en$b;->a:Lio/reactivex/internal/operators/c/en$a;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/en$a;->drain()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lio/reactivex/internal/operators/c/en$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
