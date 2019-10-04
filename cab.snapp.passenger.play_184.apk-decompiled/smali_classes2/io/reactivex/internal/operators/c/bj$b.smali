.class final Lio/reactivex/internal/operators/c/bj$b;
.super Lio/reactivex/f/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/f/b<",
        "TK;TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/c/bj$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/bj$c<",
            "TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lio/reactivex/internal/operators/c/bj$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lio/reactivex/internal/operators/c/bj$c<",
            "TT;TK;>;)V"
        }
    .end annotation

    .line 187
    invoke-direct {p0, p1}, Lio/reactivex/f/b;-><init>(Ljava/lang/Object;)V

    .line 188
    iput-object p2, p0, Lio/reactivex/internal/operators/c/bj$b;->a:Lio/reactivex/internal/operators/c/bj$c;

    return-void
.end method

.method public static createWith(Ljava/lang/Object;ILio/reactivex/internal/operators/c/bj$a;Z)Lio/reactivex/internal/operators/c/bj$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(TK;I",
            "Lio/reactivex/internal/operators/c/bj$a<",
            "*TK;TT;>;Z)",
            "Lio/reactivex/internal/operators/c/bj$b<",
            "TK;TT;>;"
        }
    .end annotation

    .line 182
    new-instance v0, Lio/reactivex/internal/operators/c/bj$c;

    invoke-direct {v0, p1, p2, p0, p3}, Lio/reactivex/internal/operators/c/bj$c;-><init>(ILio/reactivex/internal/operators/c/bj$a;Ljava/lang/Object;Z)V

    .line 183
    new-instance p1, Lio/reactivex/internal/operators/c/bj$b;

    invoke-direct {p1, p0, v0}, Lio/reactivex/internal/operators/c/bj$b;-><init>(Ljava/lang/Object;Lio/reactivex/internal/operators/c/bj$c;)V

    return-object p1
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 205
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bj$b;->a:Lio/reactivex/internal/operators/c/bj$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/bj$c;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bj$b;->a:Lio/reactivex/internal/operators/c/bj$c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/c/bj$c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bj$b;->a:Lio/reactivex/internal/operators/c/bj$c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/c/bj$c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bj$b;->a:Lio/reactivex/internal/operators/c/bj$c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/c/bj$c;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
