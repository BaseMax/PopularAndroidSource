.class public final Lio/reactivex/internal/operators/c/ap;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
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
.field private final b:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lio/reactivex/e/a;


# direct methods
.method public constructor <init>(Lio/reactivex/z;Lio/reactivex/e/g;Lio/reactivex/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;",
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/b/c;",
            ">;",
            "Lio/reactivex/e/a;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 27
    iput-object p2, p0, Lio/reactivex/internal/operators/c/ap;->b:Lio/reactivex/e/g;

    .line 28
    iput-object p3, p0, Lio/reactivex/internal/operators/c/ap;->c:Lio/reactivex/e/a;

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
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ap;->a:Lio/reactivex/ae;

    new-instance v1, Lio/reactivex/internal/c/m;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/ap;->b:Lio/reactivex/e/g;

    iget-object v3, p0, Lio/reactivex/internal/operators/c/ap;->c:Lio/reactivex/e/a;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/c/m;-><init>(Lio/reactivex/ag;Lio/reactivex/e/g;Lio/reactivex/e/a;)V

    invoke-interface {v0, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
