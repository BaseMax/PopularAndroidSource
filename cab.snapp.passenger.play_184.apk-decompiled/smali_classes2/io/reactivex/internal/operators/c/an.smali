.class public final Lio/reactivex/internal/operators/c/an;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/an$a;
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
.field final b:Lio/reactivex/e/a;


# direct methods
.method public constructor <init>(Lio/reactivex/ae;Lio/reactivex/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;",
            "Lio/reactivex/e/a;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 38
    iput-object p2, p0, Lio/reactivex/internal/operators/c/an;->b:Lio/reactivex/e/a;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lio/reactivex/internal/operators/c/an;->a:Lio/reactivex/ae;

    new-instance v1, Lio/reactivex/internal/operators/c/an$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/an;->b:Lio/reactivex/e/a;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/c/an$a;-><init>(Lio/reactivex/ag;Lio/reactivex/e/a;)V

    invoke-interface {v0, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method