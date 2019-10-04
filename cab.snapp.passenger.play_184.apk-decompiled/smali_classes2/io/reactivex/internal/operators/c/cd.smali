.class public final Lio/reactivex/internal/operators/c/cd;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/cd$a;
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
.field final b:Lio/reactivex/ah;

.field final c:Z

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/ae;Lio/reactivex/ah;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;",
            "Lio/reactivex/ah;",
            "ZI)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 33
    iput-object p2, p0, Lio/reactivex/internal/operators/c/cd;->b:Lio/reactivex/ah;

    .line 34
    iput-boolean p3, p0, Lio/reactivex/internal/operators/c/cd;->c:Z

    .line 35
    iput p4, p0, Lio/reactivex/internal/operators/c/cd;->d:I

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cd;->b:Lio/reactivex/ah;

    instance-of v1, v0, Lio/reactivex/internal/e/s;

    if-eqz v1, :cond_0

    .line 41
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cd;->a:Lio/reactivex/ae;

    invoke-interface {v0, p1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void

    .line 43
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/ah;->createWorker()Lio/reactivex/ah$c;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lio/reactivex/internal/operators/c/cd;->a:Lio/reactivex/ae;

    new-instance v2, Lio/reactivex/internal/operators/c/cd$a;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/c/cd;->c:Z

    iget v4, p0, Lio/reactivex/internal/operators/c/cd;->d:I

    invoke-direct {v2, p1, v0, v3, v4}, Lio/reactivex/internal/operators/c/cd$a;-><init>(Lio/reactivex/ag;Lio/reactivex/ah$c;ZI)V

    invoke-interface {v1, v2}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
