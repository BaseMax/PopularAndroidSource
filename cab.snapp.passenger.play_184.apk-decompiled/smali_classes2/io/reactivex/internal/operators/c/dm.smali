.class public final Lio/reactivex/internal/operators/c/dm;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/dm$b;,
        Lio/reactivex/internal/operators/c/dm$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/c/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/ah;


# direct methods
.method public constructor <init>(Lio/reactivex/ae;Lio/reactivex/ah;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;",
            "Lio/reactivex/ah;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 27
    iput-object p2, p0, Lio/reactivex/internal/operators/c/dm;->b:Lio/reactivex/ah;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 32
    new-instance v0, Lio/reactivex/internal/operators/c/dm$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/c/dm$a;-><init>(Lio/reactivex/ag;)V

    .line 34
    invoke-interface {p1, v0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 36
    iget-object p1, p0, Lio/reactivex/internal/operators/c/dm;->b:Lio/reactivex/ah;

    new-instance v1, Lio/reactivex/internal/operators/c/dm$b;

    invoke-direct {v1, p0, v0}, Lio/reactivex/internal/operators/c/dm$b;-><init>(Lio/reactivex/internal/operators/c/dm;Lio/reactivex/internal/operators/c/dm$a;)V

    invoke-virtual {p1, v1}, Lio/reactivex/ah;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/b/c;

    move-result-object p1

    .line 1083
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
