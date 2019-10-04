.class public final Lio/reactivex/internal/operators/c/do;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/do$a;,
        Lio/reactivex/internal/operators/c/do$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/c/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Z


# direct methods
.method public constructor <init>(Lio/reactivex/ae;Lio/reactivex/e/h;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 39
    iput-object p2, p0, Lio/reactivex/internal/operators/c/do;->b:Lio/reactivex/e/h;

    .line 40
    iput p3, p0, Lio/reactivex/internal/operators/c/do;->c:I

    .line 41
    iput-boolean p4, p0, Lio/reactivex/internal/operators/c/do;->d:Z

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TR;>;)V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lio/reactivex/internal/operators/c/do;->a:Lio/reactivex/ae;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/do;->b:Lio/reactivex/e/h;

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/operators/c/cz;->tryScalarXMapSubscribe(Lio/reactivex/ae;Lio/reactivex/ag;Lio/reactivex/e/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/do;->a:Lio/reactivex/ae;

    new-instance v1, Lio/reactivex/internal/operators/c/do$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/do;->b:Lio/reactivex/e/h;

    iget v3, p0, Lio/reactivex/internal/operators/c/do;->c:I

    iget-boolean v4, p0, Lio/reactivex/internal/operators/c/do;->d:Z

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/c/do$b;-><init>(Lio/reactivex/ag;Lio/reactivex/e/h;IZ)V

    invoke-interface {v0, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
