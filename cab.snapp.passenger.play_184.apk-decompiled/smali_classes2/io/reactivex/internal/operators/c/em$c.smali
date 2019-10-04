.class final Lio/reactivex/internal/operators/c/em$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/em;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/ag<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/c/em$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/em$b<",
            "**>;"
        }
    .end annotation
.end field

.field final b:I

.field c:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/em$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/em$b<",
            "**>;I)V"
        }
    .end annotation

    .line 253
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 254
    iput-object p1, p0, Lio/reactivex/internal/operators/c/em$c;->a:Lio/reactivex/internal/operators/c/em$b;

    .line 255
    iput p2, p0, Lio/reactivex/internal/operators/c/em$c;->b:I

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 282
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final onComplete()V
    .locals 3

    .line 278
    iget-object v0, p0, Lio/reactivex/internal/operators/c/em$c;->a:Lio/reactivex/internal/operators/c/em$b;

    iget v1, p0, Lio/reactivex/internal/operators/c/em$c;->b:I

    iget-boolean v2, p0, Lio/reactivex/internal/operators/c/em$c;->c:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 1225
    iput-boolean v2, v0, Lio/reactivex/internal/operators/c/em$b;->g:Z

    .line 1226
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/c/em$b;->a(I)V

    .line 1227
    iget-object v1, v0, Lio/reactivex/internal/operators/c/em$b;->a:Lio/reactivex/ag;

    iget-object v2, v0, Lio/reactivex/internal/operators/c/em$b;->f:Lio/reactivex/internal/util/b;

    invoke-static {v1, v0, v2}, Lio/reactivex/internal/util/i;->onComplete(Lio/reactivex/ag;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/b;)V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 273
    iget-object v0, p0, Lio/reactivex/internal/operators/c/em$c;->a:Lio/reactivex/internal/operators/c/em$b;

    iget v1, p0, Lio/reactivex/internal/operators/c/em$c;->b:I

    const/4 v2, 0x1

    .line 1217
    iput-boolean v2, v0, Lio/reactivex/internal/operators/c/em$b;->g:Z

    .line 1218
    iget-object v2, v0, Lio/reactivex/internal/operators/c/em$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 1219
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/c/em$b;->a(I)V

    .line 1220
    iget-object v1, v0, Lio/reactivex/internal/operators/c/em$b;->a:Lio/reactivex/ag;

    iget-object v2, v0, Lio/reactivex/internal/operators/c/em$b;->f:Lio/reactivex/internal/util/b;

    invoke-static {v1, p1, v0, v2}, Lio/reactivex/internal/util/i;->onError(Lio/reactivex/ag;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/b;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2

    .line 265
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/em$c;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 266
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/em$c;->c:Z

    .line 268
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/em$c;->a:Lio/reactivex/internal/operators/c/em$b;

    iget v1, p0, Lio/reactivex/internal/operators/c/em$c;->b:I

    .line 1213
    iget-object v0, v0, Lio/reactivex/internal/operators/c/em$b;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 260
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
