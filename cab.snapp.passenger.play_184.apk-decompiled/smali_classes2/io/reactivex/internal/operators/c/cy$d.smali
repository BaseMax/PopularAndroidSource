.class final Lio/reactivex/internal/operators/c/cy$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/cy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ag<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/c/cy$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/cy$c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/cy$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/cy$c<",
            "TT;>;)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cy$d;->a:Lio/reactivex/internal/operators/c/cy$c;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 151
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cy$d;->a:Lio/reactivex/internal/operators/c/cy$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/cy$c;->complete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cy$d;->a:Lio/reactivex/internal/operators/c/cy$c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/c/cy$c;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0

    .line 141
    iget-object p1, p0, Lio/reactivex/internal/operators/c/cy$d;->a:Lio/reactivex/internal/operators/c/cy$c;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/cy$c;->b()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cy$d;->a:Lio/reactivex/internal/operators/c/cy$c;

    .line 1091
    iget-object v0, v0, Lio/reactivex/internal/operators/c/cy$c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
