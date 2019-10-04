.class final Lio/reactivex/internal/operators/maybe/bs$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/bs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/maybe/bs$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/bs$b<",
            "TT;*>;"
        }
    .end annotation
.end field

.field final b:I


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/maybe/bs$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/maybe/bs$b<",
            "TT;*>;I)V"
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 161
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/bs$c;->a:Lio/reactivex/internal/operators/maybe/bs$b;

    .line 162
    iput p2, p0, Lio/reactivex/internal/operators/maybe/bs$c;->b:I

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 166
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final onComplete()V
    .locals 3

    .line 186
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bs$c;->a:Lio/reactivex/internal/operators/maybe/bs$b;

    iget v1, p0, Lio/reactivex/internal/operators/maybe/bs$c;->b:I

    const/4 v2, 0x0

    .line 1143
    invoke-virtual {v0, v2}, Lio/reactivex/internal/operators/maybe/bs$b;->getAndSet(I)I

    move-result v2

    if-lez v2, :cond_0

    .line 1144
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/maybe/bs$b;->a(I)V

    .line 1145
    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/bs$b;->a:Lio/reactivex/t;

    invoke-interface {v0}, Lio/reactivex/t;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bs$c;->a:Lio/reactivex/internal/operators/maybe/bs$b;

    iget v1, p0, Lio/reactivex/internal/operators/maybe/bs$c;->b:I

    invoke-virtual {v0, p1, v1}, Lio/reactivex/internal/operators/maybe/bs$b;->a(Ljava/lang/Throwable;I)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 171
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

    .line 176
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bs$c;->a:Lio/reactivex/internal/operators/maybe/bs$b;

    iget v1, p0, Lio/reactivex/internal/operators/maybe/bs$c;->b:I

    .line 1106
    iget-object v2, v0, Lio/reactivex/internal/operators/maybe/bs$b;->d:[Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 1107
    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/bs$b;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    .line 1111
    :try_start_0
    iget-object p1, v0, Lio/reactivex/internal/operators/maybe/bs$b;->b:Lio/reactivex/e/h;

    iget-object v1, v0, Lio/reactivex/internal/operators/maybe/bs$b;->d:[Ljava/lang/Object;

    invoke-interface {p1, v1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "The zipper returned a null value"

    invoke-static {p1, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1118
    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/bs$b;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1113
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1114
    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/bs$b;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
