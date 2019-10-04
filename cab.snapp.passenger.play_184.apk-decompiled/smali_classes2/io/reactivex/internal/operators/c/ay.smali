.class public final Lio/reactivex/internal/operators/c/ay;
.super Lio/reactivex/a;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/b/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/ay$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/a;",
        "Lio/reactivex/internal/b/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field

.field final c:Z


# direct methods
.method public constructor <init>(Lio/reactivex/ae;Lio/reactivex/e/h;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;Z)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 42
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ay;->a:Lio/reactivex/ae;

    .line 43
    iput-object p2, p0, Lio/reactivex/internal/operators/c/ay;->b:Lio/reactivex/e/h;

    .line 44
    iput-boolean p3, p0, Lio/reactivex/internal/operators/c/ay;->c:Z

    return-void
.end method


# virtual methods
.method public final fuseToObservable()Lio/reactivex/z;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 54
    new-instance v0, Lio/reactivex/internal/operators/c/ax;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/ay;->a:Lio/reactivex/ae;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/ay;->b:Lio/reactivex/e/h;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/c/ay;->c:Z

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/internal/operators/c/ax;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;Z)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 4

    .line 49
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ay;->a:Lio/reactivex/ae;

    new-instance v1, Lio/reactivex/internal/operators/c/ay$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/ay;->b:Lio/reactivex/e/h;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/c/ay;->c:Z

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/c/ay$a;-><init>(Lio/reactivex/d;Lio/reactivex/e/h;Z)V

    invoke-interface {v0, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
