.class public final Lio/reactivex/internal/operators/c/f;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/c/a<",
        "TT;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/e/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/q<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ae;Lio/reactivex/e/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;",
            "Lio/reactivex/e/q<",
            "-TT;>;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 26
    iput-object p2, p0, Lio/reactivex/internal/operators/c/f;->b:Lio/reactivex/e/q;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lio/reactivex/internal/operators/c/f;->a:Lio/reactivex/ae;

    new-instance v1, Lio/reactivex/internal/operators/c/f$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/f;->b:Lio/reactivex/e/q;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/c/f$a;-><init>(Lio/reactivex/ag;Lio/reactivex/e/q;)V

    invoke-interface {v0, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
