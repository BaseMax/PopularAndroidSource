.class public final Lio/reactivex/internal/operators/c/dp;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/dp$a;
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
.field final b:J


# direct methods
.method public constructor <init>(Lio/reactivex/ae;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;J)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 25
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/dp;->b:J

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

    .line 30
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dp;->a:Lio/reactivex/ae;

    new-instance v1, Lio/reactivex/internal/operators/c/dp$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/c/dp;->b:J

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/c/dp$a;-><init>(Lio/reactivex/ag;J)V

    invoke-interface {v0, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
