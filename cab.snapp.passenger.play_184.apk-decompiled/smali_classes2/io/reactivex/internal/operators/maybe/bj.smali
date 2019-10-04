.class public final Lio/reactivex/internal/operators/maybe/bj;
.super Lio/reactivex/internal/operators/maybe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/bj$a;,
        Lio/reactivex/internal/operators/maybe/bj$c;,
        Lio/reactivex/internal/operators/maybe/bj$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/maybe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/w<",
            "TU;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/w<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "TT;>;",
            "Lio/reactivex/w<",
            "TU;>;",
            "Lio/reactivex/w<",
            "+TT;>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/maybe/a;-><init>(Lio/reactivex/w;)V

    .line 39
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/bj;->b:Lio/reactivex/w;

    .line 40
    iput-object p3, p0, Lio/reactivex/internal/operators/maybe/bj;->c:Lio/reactivex/w;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    .line 45
    new-instance v0, Lio/reactivex/internal/operators/maybe/bj$b;

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/bj;->c:Lio/reactivex/w;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/maybe/bj$b;-><init>(Lio/reactivex/t;Lio/reactivex/w;)V

    .line 46
    invoke-interface {p1, v0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/b/c;)V

    .line 48
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/bj;->b:Lio/reactivex/w;

    iget-object v1, v0, Lio/reactivex/internal/operators/maybe/bj$b;->b:Lio/reactivex/internal/operators/maybe/bj$c;

    invoke-interface {p1, v1}, Lio/reactivex/w;->subscribe(Lio/reactivex/t;)V

    .line 50
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/bj;->a:Lio/reactivex/w;

    invoke-interface {p1, v0}, Lio/reactivex/w;->subscribe(Lio/reactivex/t;)V

    return-void
.end method
