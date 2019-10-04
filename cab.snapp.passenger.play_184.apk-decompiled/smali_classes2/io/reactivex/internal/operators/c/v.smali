.class public final Lio/reactivex/internal/operators/c/v;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/v$a;,
        Lio/reactivex/internal/operators/c/v$b;
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

.field final c:I

.field final d:Lio/reactivex/internal/util/ErrorMode;


# direct methods
.method public constructor <init>(Lio/reactivex/ae;Lio/reactivex/e/h;ILio/reactivex/internal/util/ErrorMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TU;>;>;I",
            "Lio/reactivex/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 39
    iput-object p2, p0, Lio/reactivex/internal/operators/c/v;->b:Lio/reactivex/e/h;

    .line 40
    iput-object p4, p0, Lio/reactivex/internal/operators/c/v;->d:Lio/reactivex/internal/util/ErrorMode;

    const/16 p1, 0x8

    .line 41
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lio/reactivex/internal/operators/c/v;->c:I

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TU;>;)V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lio/reactivex/internal/operators/c/v;->a:Lio/reactivex/ae;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/v;->b:Lio/reactivex/e/h;

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/operators/c/cz;->tryScalarXMapSubscribe(Lio/reactivex/ae;Lio/reactivex/ag;Lio/reactivex/e/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/v;->d:Lio/reactivex/internal/util/ErrorMode;

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-ne v0, v1, :cond_1

    .line 52
    new-instance v0, Lio/reactivex/observers/d;

    invoke-direct {v0, p1}, Lio/reactivex/observers/d;-><init>(Lio/reactivex/ag;)V

    .line 53
    iget-object p1, p0, Lio/reactivex/internal/operators/c/v;->a:Lio/reactivex/ae;

    new-instance v1, Lio/reactivex/internal/operators/c/v$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/v;->b:Lio/reactivex/e/h;

    iget v3, p0, Lio/reactivex/internal/operators/c/v;->c:I

    invoke-direct {v1, v0, v2, v3}, Lio/reactivex/internal/operators/c/v$b;-><init>(Lio/reactivex/ag;Lio/reactivex/e/h;I)V

    invoke-interface {p1, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/c/v;->a:Lio/reactivex/ae;

    new-instance v1, Lio/reactivex/internal/operators/c/v$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/v;->b:Lio/reactivex/e/h;

    iget v3, p0, Lio/reactivex/internal/operators/c/v;->c:I

    iget-object v4, p0, Lio/reactivex/internal/operators/c/v;->d:Lio/reactivex/internal/util/ErrorMode;

    sget-object v5, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/c/v$a;-><init>(Lio/reactivex/ag;Lio/reactivex/e/h;IZ)V

    invoke-interface {v0, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
