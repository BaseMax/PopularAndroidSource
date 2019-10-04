.class public final Lio/reactivex/internal/operators/c/eh;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/eh$a;,
        Lio/reactivex/internal/operators/c/eh$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/c/a<",
        "TT;",
        "Lio/reactivex/z<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "TB;>;"
        }
    .end annotation
.end field

.field final c:I


# direct methods
.method public constructor <init>(Lio/reactivex/ae;Lio/reactivex/ae;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;",
            "Lio/reactivex/ae<",
            "TB;>;I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 33
    iput-object p2, p0, Lio/reactivex/internal/operators/c/eh;->b:Lio/reactivex/ae;

    .line 34
    iput p3, p0, Lio/reactivex/internal/operators/c/eh;->c:I

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 39
    new-instance v0, Lio/reactivex/internal/operators/c/eh$b;

    iget v1, p0, Lio/reactivex/internal/operators/c/eh;->c:I

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/c/eh$b;-><init>(Lio/reactivex/ag;I)V

    .line 41
    invoke-interface {p1, v0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 42
    iget-object p1, p0, Lio/reactivex/internal/operators/c/eh;->b:Lio/reactivex/ae;

    iget-object v1, v0, Lio/reactivex/internal/operators/c/eh$b;->c:Lio/reactivex/internal/operators/c/eh$a;

    invoke-interface {p1, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    .line 44
    iget-object p1, p0, Lio/reactivex/internal/operators/c/eh;->a:Lio/reactivex/ae;

    invoke-interface {p1, v0}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
