.class public final Lio/reactivex/internal/operators/maybe/be;
.super Lio/reactivex/internal/operators/maybe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/be$a;,
        Lio/reactivex/internal/operators/maybe/be$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/maybe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/ah;


# direct methods
.method public constructor <init>(Lio/reactivex/w;Lio/reactivex/ah;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "TT;>;",
            "Lio/reactivex/ah;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/maybe/a;-><init>(Lio/reactivex/w;)V

    .line 32
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/be;->b:Lio/reactivex/ah;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/t;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    .line 37
    new-instance v0, Lio/reactivex/internal/operators/maybe/be$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/maybe/be$a;-><init>(Lio/reactivex/t;)V

    .line 38
    invoke-interface {p1, v0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/b/c;)V

    .line 40
    iget-object p1, v0, Lio/reactivex/internal/operators/maybe/be$a;->a:Lio/reactivex/internal/disposables/f;

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/be;->b:Lio/reactivex/ah;

    new-instance v2, Lio/reactivex/internal/operators/maybe/be$b;

    iget-object v3, p0, Lio/reactivex/internal/operators/maybe/be;->a:Lio/reactivex/w;

    invoke-direct {v2, v0, v3}, Lio/reactivex/internal/operators/maybe/be$b;-><init>(Lio/reactivex/t;Lio/reactivex/w;)V

    invoke-virtual {v1, v2}, Lio/reactivex/ah;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    return-void
.end method
