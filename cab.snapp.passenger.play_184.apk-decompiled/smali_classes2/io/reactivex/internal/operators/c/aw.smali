.class public final Lio/reactivex/internal/operators/c/aw;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/aw$a;,
        Lio/reactivex/internal/operators/c/aw$b;
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
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final c:Z

.field final d:I

.field final e:I


# direct methods
.method public constructor <init>(Lio/reactivex/ae;Lio/reactivex/e/h;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 42
    iput-object p2, p0, Lio/reactivex/internal/operators/c/aw;->b:Lio/reactivex/e/h;

    .line 43
    iput-boolean p3, p0, Lio/reactivex/internal/operators/c/aw;->c:Z

    .line 44
    iput p4, p0, Lio/reactivex/internal/operators/c/aw;->d:I

    .line 45
    iput p5, p0, Lio/reactivex/internal/operators/c/aw;->e:I

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TU;>;)V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aw;->a:Lio/reactivex/ae;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/aw;->b:Lio/reactivex/e/h;

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/operators/c/cz;->tryScalarXMapSubscribe(Lio/reactivex/ae;Lio/reactivex/ag;Lio/reactivex/e/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aw;->a:Lio/reactivex/ae;

    new-instance v7, Lio/reactivex/internal/operators/c/aw$b;

    iget-object v3, p0, Lio/reactivex/internal/operators/c/aw;->b:Lio/reactivex/e/h;

    iget-boolean v4, p0, Lio/reactivex/internal/operators/c/aw;->c:Z

    iget v5, p0, Lio/reactivex/internal/operators/c/aw;->d:I

    iget v6, p0, Lio/reactivex/internal/operators/c/aw;->e:I

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/c/aw$b;-><init>(Lio/reactivex/ag;Lio/reactivex/e/h;ZII)V

    invoke-interface {v0, v7}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
