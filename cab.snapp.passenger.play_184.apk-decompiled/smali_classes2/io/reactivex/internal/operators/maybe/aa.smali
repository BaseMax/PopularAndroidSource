.class public final Lio/reactivex/internal/operators/maybe/aa;
.super Lio/reactivex/internal/operators/maybe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/aa$a;
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
        "Lio/reactivex/internal/operators/maybe/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/c<",
            "-TT;-TU;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/w;Lio/reactivex/e/h;Lio/reactivex/e/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TU;>;>;",
            "Lio/reactivex/e/c<",
            "-TT;-TU;+TR;>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/maybe/a;-><init>(Lio/reactivex/w;)V

    .line 43
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/aa;->b:Lio/reactivex/e/h;

    .line 44
    iput-object p3, p0, Lio/reactivex/internal/operators/maybe/aa;->c:Lio/reactivex/e/c;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/t;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TR;>;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/aa;->a:Lio/reactivex/w;

    new-instance v1, Lio/reactivex/internal/operators/maybe/aa$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/aa;->b:Lio/reactivex/e/h;

    iget-object v3, p0, Lio/reactivex/internal/operators/maybe/aa;->c:Lio/reactivex/e/c;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/maybe/aa$a;-><init>(Lio/reactivex/t;Lio/reactivex/e/h;Lio/reactivex/e/c;)V

    invoke-interface {v0, v1}, Lio/reactivex/w;->subscribe(Lio/reactivex/t;)V

    return-void
.end method
