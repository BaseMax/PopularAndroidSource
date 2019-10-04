.class public final Lio/reactivex/internal/operators/c/el;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/el$b;,
        Lio/reactivex/internal/operators/c/el$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/c/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/c<",
            "-TT;-TU;+TR;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ae;Lio/reactivex/e/c;Lio/reactivex/ae;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;",
            "Lio/reactivex/e/c<",
            "-TT;-TU;+TR;>;",
            "Lio/reactivex/ae<",
            "+TU;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 32
    iput-object p2, p0, Lio/reactivex/internal/operators/c/el;->b:Lio/reactivex/e/c;

    .line 33
    iput-object p3, p0, Lio/reactivex/internal/operators/c/el;->c:Lio/reactivex/ae;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TR;>;)V"
        }
    .end annotation

    .line 38
    new-instance v0, Lio/reactivex/observers/d;

    invoke-direct {v0, p1}, Lio/reactivex/observers/d;-><init>(Lio/reactivex/ag;)V

    .line 39
    new-instance p1, Lio/reactivex/internal/operators/c/el$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/el;->b:Lio/reactivex/e/c;

    invoke-direct {p1, v0, v1}, Lio/reactivex/internal/operators/c/el$a;-><init>(Lio/reactivex/ag;Lio/reactivex/e/c;)V

    .line 41
    invoke-virtual {v0, p1}, Lio/reactivex/observers/d;->onSubscribe(Lio/reactivex/b/c;)V

    .line 43
    iget-object v0, p0, Lio/reactivex/internal/operators/c/el;->c:Lio/reactivex/ae;

    new-instance v1, Lio/reactivex/internal/operators/c/el$b;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/c/el$b;-><init>(Lio/reactivex/internal/operators/c/el;Lio/reactivex/internal/operators/c/el$a;)V

    invoke-interface {v0, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    .line 45
    iget-object v0, p0, Lio/reactivex/internal/operators/c/el;->a:Lio/reactivex/ae;

    invoke-interface {v0, p1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
