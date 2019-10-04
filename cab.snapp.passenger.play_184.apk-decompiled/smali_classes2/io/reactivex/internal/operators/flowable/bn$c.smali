.class final Lio/reactivex/internal/operators/flowable/bn$c;
.super Lio/reactivex/d/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/d/b<",
        "TK;TT;>;"
    }
.end annotation


# instance fields
.field final c:Lio/reactivex/internal/operators/flowable/bn$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/bn$d<",
            "TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lio/reactivex/internal/operators/flowable/bn$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lio/reactivex/internal/operators/flowable/bn$d<",
            "TT;TK;>;)V"
        }
    .end annotation

    .line 457
    invoke-direct {p0, p1}, Lio/reactivex/d/b;-><init>(Ljava/lang/Object;)V

    .line 458
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/bn$c;->c:Lio/reactivex/internal/operators/flowable/bn$d;

    return-void
.end method

.method public static createWith(Ljava/lang/Object;ILio/reactivex/internal/operators/flowable/bn$b;Z)Lio/reactivex/internal/operators/flowable/bn$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(TK;I",
            "Lio/reactivex/internal/operators/flowable/bn$b<",
            "*TK;TT;>;Z)",
            "Lio/reactivex/internal/operators/flowable/bn$c<",
            "TK;TT;>;"
        }
    .end annotation

    .line 452
    new-instance v0, Lio/reactivex/internal/operators/flowable/bn$d;

    invoke-direct {v0, p1, p2, p0, p3}, Lio/reactivex/internal/operators/flowable/bn$d;-><init>(ILio/reactivex/internal/operators/flowable/bn$b;Ljava/lang/Object;Z)V

    .line 453
    new-instance p1, Lio/reactivex/internal/operators/flowable/bn$c;

    invoke-direct {p1, p0, v0}, Lio/reactivex/internal/operators/flowable/bn$c;-><init>(Ljava/lang/Object;Lio/reactivex/internal/operators/flowable/bn$d;)V

    return-object p1
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 475
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$c;->c:Lio/reactivex/internal/operators/flowable/bn$d;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/bn$d;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 471
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$c;->c:Lio/reactivex/internal/operators/flowable/bn$d;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/bn$d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$c;->c:Lio/reactivex/internal/operators/flowable/bn$d;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/bn$d;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final subscribeActual(Lorg/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$c;->c:Lio/reactivex/internal/operators/flowable/bn$d;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/bn$d;->subscribe(Lorg/b/c;)V

    return-void
.end method
