.class public final Lio/reactivex/internal/operators/maybe/r;
.super Lio/reactivex/internal/operators/maybe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/maybe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/e/a;


# direct methods
.method public constructor <init>(Lio/reactivex/w;Lio/reactivex/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "TT;>;",
            "Lio/reactivex/e/a;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/maybe/a;-><init>(Lio/reactivex/w;)V

    .line 37
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/r;->b:Lio/reactivex/e/a;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/r;->a:Lio/reactivex/w;

    new-instance v1, Lio/reactivex/internal/operators/maybe/r$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/r;->b:Lio/reactivex/e/a;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/maybe/r$a;-><init>(Lio/reactivex/t;Lio/reactivex/e/a;)V

    invoke-interface {v0, v1}, Lio/reactivex/w;->subscribe(Lio/reactivex/t;)V

    return-void
.end method
