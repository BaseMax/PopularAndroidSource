.class public final Lio/reactivex/internal/operators/c/cr;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/cr$a;
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
.field final b:Lio/reactivex/e/e;


# direct methods
.method public constructor <init>(Lio/reactivex/z;Lio/reactivex/e/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;",
            "Lio/reactivex/e/e;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 28
    iput-object p2, p0, Lio/reactivex/internal/operators/c/cr;->b:Lio/reactivex/e/e;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 33
    new-instance v0, Lio/reactivex/internal/disposables/f;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/f;-><init>()V

    .line 34
    invoke-interface {p1, v0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 36
    new-instance v1, Lio/reactivex/internal/operators/c/cr$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/cr;->b:Lio/reactivex/e/e;

    iget-object v3, p0, Lio/reactivex/internal/operators/c/cr;->a:Lio/reactivex/ae;

    invoke-direct {v1, p1, v2, v0, v3}, Lio/reactivex/internal/operators/c/cr$a;-><init>(Lio/reactivex/ag;Lio/reactivex/e/e;Lio/reactivex/internal/disposables/f;Lio/reactivex/ae;)V

    .line 37
    invoke-virtual {v1}, Lio/reactivex/internal/operators/c/cr$a;->a()V

    return-void
.end method
