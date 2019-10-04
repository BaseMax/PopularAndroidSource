.class public final Lio/reactivex/internal/operators/c/ah;
.super Lio/reactivex/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/ah$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ae;Lio/reactivex/ae;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ae<",
            "TU;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 32
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ah;->a:Lio/reactivex/ae;

    .line 33
    iput-object p2, p0, Lio/reactivex/internal/operators/c/ah;->b:Lio/reactivex/ae;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 38
    new-instance v0, Lio/reactivex/internal/disposables/f;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/f;-><init>()V

    .line 39
    invoke-interface {p1, v0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 41
    new-instance v1, Lio/reactivex/internal/operators/c/ah$a;

    invoke-direct {v1, p0, v0, p1}, Lio/reactivex/internal/operators/c/ah$a;-><init>(Lio/reactivex/internal/operators/c/ah;Lio/reactivex/internal/disposables/f;Lio/reactivex/ag;)V

    .line 43
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ah;->b:Lio/reactivex/ae;

    invoke-interface {p1, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
