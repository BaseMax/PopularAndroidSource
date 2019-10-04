.class public final Lio/reactivex/internal/operators/c/eg;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/eg$b;,
        Lio/reactivex/internal/operators/c/eg$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/c/a<",
        "TT;",
        "Lio/reactivex/z<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final b:J

.field final c:J

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/ae;JJI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;JJI)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 31
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/eg;->b:J

    .line 32
    iput-wide p4, p0, Lio/reactivex/internal/operators/c/eg;->c:J

    .line 33
    iput p6, p0, Lio/reactivex/internal/operators/c/eg;->d:I

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 38
    iget-wide v0, p0, Lio/reactivex/internal/operators/c/eg;->b:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/c/eg;->c:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 39
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eg;->a:Lio/reactivex/ae;

    new-instance v1, Lio/reactivex/internal/operators/c/eg$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/c/eg;->b:J

    iget v4, p0, Lio/reactivex/internal/operators/c/eg;->d:I

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/c/eg$a;-><init>(Lio/reactivex/ag;JI)V

    invoke-interface {v0, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eg;->a:Lio/reactivex/ae;

    new-instance v8, Lio/reactivex/internal/operators/c/eg$b;

    iget-wide v3, p0, Lio/reactivex/internal/operators/c/eg;->b:J

    iget-wide v5, p0, Lio/reactivex/internal/operators/c/eg;->c:J

    iget v7, p0, Lio/reactivex/internal/operators/c/eg;->d:I

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/c/eg$b;-><init>(Lio/reactivex/ag;JJI)V

    invoke-interface {v0, v8}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
