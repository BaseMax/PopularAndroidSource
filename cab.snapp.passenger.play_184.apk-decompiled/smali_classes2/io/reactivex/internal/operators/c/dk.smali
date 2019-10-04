.class public final Lio/reactivex/internal/operators/c/dk;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/dk$a;,
        Lio/reactivex/internal/operators/c/dk$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/c/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ae;Lio/reactivex/ae;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;",
            "Lio/reactivex/ae<",
            "TU;>;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 25
    iput-object p2, p0, Lio/reactivex/internal/operators/c/dk;->b:Lio/reactivex/ae;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 31
    new-instance v0, Lio/reactivex/observers/d;

    invoke-direct {v0, p1}, Lio/reactivex/observers/d;-><init>(Lio/reactivex/ag;)V

    .line 33
    new-instance p1, Lio/reactivex/internal/disposables/a;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Lio/reactivex/internal/disposables/a;-><init>(I)V

    .line 35
    invoke-virtual {v0, p1}, Lio/reactivex/observers/d;->onSubscribe(Lio/reactivex/b/c;)V

    .line 37
    new-instance v1, Lio/reactivex/internal/operators/c/dk$b;

    invoke-direct {v1, v0, p1}, Lio/reactivex/internal/operators/c/dk$b;-><init>(Lio/reactivex/ag;Lio/reactivex/internal/disposables/a;)V

    .line 39
    iget-object v2, p0, Lio/reactivex/internal/operators/c/dk;->b:Lio/reactivex/ae;

    new-instance v3, Lio/reactivex/internal/operators/c/dk$a;

    invoke-direct {v3, p0, p1, v1, v0}, Lio/reactivex/internal/operators/c/dk$a;-><init>(Lio/reactivex/internal/operators/c/dk;Lio/reactivex/internal/disposables/a;Lio/reactivex/internal/operators/c/dk$b;Lio/reactivex/observers/d;)V

    invoke-interface {v2, v3}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    .line 41
    iget-object p1, p0, Lio/reactivex/internal/operators/c/dk;->a:Lio/reactivex/ae;

    invoke-interface {p1, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
