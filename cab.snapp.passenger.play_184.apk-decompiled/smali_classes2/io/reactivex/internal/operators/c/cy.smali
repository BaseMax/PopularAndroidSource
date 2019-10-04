.class public final Lio/reactivex/internal/operators/c/cy;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/cy$a;,
        Lio/reactivex/internal/operators/c/cy$b;,
        Lio/reactivex/internal/operators/c/cy$d;,
        Lio/reactivex/internal/operators/c/cy$c;
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
.field final b:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "*>;"
        }
    .end annotation
.end field

.field final c:Z


# direct methods
.method public constructor <init>(Lio/reactivex/ae;Lio/reactivex/ae;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;",
            "Lio/reactivex/ae<",
            "*>;Z)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 31
    iput-object p2, p0, Lio/reactivex/internal/operators/c/cy;->b:Lio/reactivex/ae;

    .line 32
    iput-boolean p3, p0, Lio/reactivex/internal/operators/c/cy;->c:Z

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 37
    new-instance v0, Lio/reactivex/observers/d;

    invoke-direct {v0, p1}, Lio/reactivex/observers/d;-><init>(Lio/reactivex/ag;)V

    .line 38
    iget-boolean p1, p0, Lio/reactivex/internal/operators/c/cy;->c:Z

    if-eqz p1, :cond_0

    .line 39
    iget-object p1, p0, Lio/reactivex/internal/operators/c/cy;->a:Lio/reactivex/ae;

    new-instance v1, Lio/reactivex/internal/operators/c/cy$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/cy;->b:Lio/reactivex/ae;

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/c/cy$a;-><init>(Lio/reactivex/ag;Lio/reactivex/ae;)V

    invoke-interface {p1, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void

    .line 41
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/c/cy;->a:Lio/reactivex/ae;

    new-instance v1, Lio/reactivex/internal/operators/c/cy$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/cy;->b:Lio/reactivex/ae;

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/c/cy$b;-><init>(Lio/reactivex/ag;Lio/reactivex/ae;)V

    invoke-interface {p1, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
