.class public final Lio/reactivex/internal/operators/c/by;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/by$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/c/a<",
        "TT;",
        "Lio/reactivex/y<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/reactivex/ae;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-",
            "Lio/reactivex/y<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lio/reactivex/internal/operators/c/by;->a:Lio/reactivex/ae;

    new-instance v1, Lio/reactivex/internal/operators/c/by$a;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/c/by$a;-><init>(Lio/reactivex/ag;)V

    invoke-interface {v0, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method