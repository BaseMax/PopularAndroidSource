.class public final Lio/reactivex/internal/operators/c/cq;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/cq$a;
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
.method public constructor <init>(Lio/reactivex/z;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;J)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 26
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/cq;->b:J

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 31
    new-instance v4, Lio/reactivex/internal/disposables/f;

    invoke-direct {v4}, Lio/reactivex/internal/disposables/f;-><init>()V

    .line 32
    invoke-interface {p1, v4}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 34
    new-instance v6, Lio/reactivex/internal/operators/c/cq$a;

    iget-wide v0, p0, Lio/reactivex/internal/operators/c/cq;->b:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    move-wide v2, v0

    :cond_0
    iget-object v5, p0, Lio/reactivex/internal/operators/c/cq;->a:Lio/reactivex/ae;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/c/cq$a;-><init>(Lio/reactivex/ag;JLio/reactivex/internal/disposables/f;Lio/reactivex/ae;)V

    .line 35
    invoke-virtual {v6}, Lio/reactivex/internal/operators/c/cq$a;->a()V

    return-void
.end method
