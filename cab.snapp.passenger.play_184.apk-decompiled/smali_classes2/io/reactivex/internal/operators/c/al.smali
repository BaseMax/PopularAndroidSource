.class public final Lio/reactivex/internal/operators/c/al;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/al$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/c/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;TK;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/d<",
            "-TK;-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ae;Lio/reactivex/e/h;Lio/reactivex/e/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;TK;>;",
            "Lio/reactivex/e/d<",
            "-TK;-TK;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 29
    iput-object p2, p0, Lio/reactivex/internal/operators/c/al;->b:Lio/reactivex/e/h;

    .line 30
    iput-object p3, p0, Lio/reactivex/internal/operators/c/al;->c:Lio/reactivex/e/d;

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

    .line 35
    iget-object v0, p0, Lio/reactivex/internal/operators/c/al;->a:Lio/reactivex/ae;

    new-instance v1, Lio/reactivex/internal/operators/c/al$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/al;->b:Lio/reactivex/e/h;

    iget-object v3, p0, Lio/reactivex/internal/operators/c/al;->c:Lio/reactivex/e/d;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/c/al$a;-><init>(Lio/reactivex/ag;Lio/reactivex/e/h;Lio/reactivex/e/d;)V

    invoke-interface {v0, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
