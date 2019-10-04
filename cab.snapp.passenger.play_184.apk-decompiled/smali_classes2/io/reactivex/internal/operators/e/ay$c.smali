.class final Lio/reactivex/internal/operators/e/ay$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/al;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/e/ay;
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
        "Lio/reactivex/al<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/e/ay$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/e/ay$b<",
            "TT;*>;"
        }
    .end annotation
.end field

.field final b:I


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/e/ay$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/e/ay$b<",
            "TT;*>;I)V"
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 155
    iput-object p1, p0, Lio/reactivex/internal/operators/e/ay$c;->a:Lio/reactivex/internal/operators/e/ay$b;

    .line 156
    iput p2, p0, Lio/reactivex/internal/operators/e/ay$c;->b:I

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 160
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lio/reactivex/internal/operators/e/ay$c;->a:Lio/reactivex/internal/operators/e/ay$b;

    iget v1, p0, Lio/reactivex/internal/operators/e/ay$c;->b:I

    invoke-virtual {v0, p1, v1}, Lio/reactivex/internal/operators/e/ay$b;->a(Ljava/lang/Throwable;I)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 165
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

    .line 170
    iget-object v0, p0, Lio/reactivex/internal/operators/e/ay$c;->a:Lio/reactivex/internal/operators/e/ay$b;

    iget v1, p0, Lio/reactivex/internal/operators/e/ay$c;->b:I

    .line 1107
    iget-object v2, v0, Lio/reactivex/internal/operators/e/ay$b;->d:[Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 1108
    invoke-virtual {v0}, Lio/reactivex/internal/operators/e/ay$b;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    .line 1112
    :try_start_0
    iget-object p1, v0, Lio/reactivex/internal/operators/e/ay$b;->b:Lio/reactivex/e/h;

    iget-object v1, v0, Lio/reactivex/internal/operators/e/ay$b;->d:[Ljava/lang/Object;

    invoke-interface {p1, v1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "The zipper returned a null value"

    invoke-static {p1, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1119
    iget-object v0, v0, Lio/reactivex/internal/operators/e/ay$b;->a:Lio/reactivex/al;

    invoke-interface {v0, p1}, Lio/reactivex/al;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1114
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1115
    iget-object v0, v0, Lio/reactivex/internal/operators/e/ay$b;->a:Lio/reactivex/al;

    invoke-interface {v0, p1}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
