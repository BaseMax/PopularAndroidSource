.class public final Lio/reactivex/internal/operators/c/bn;
.super Lio/reactivex/a;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/b/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/bn$a;
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


# direct methods
.method public constructor <init>(Lio/reactivex/ae;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 26
    iput-object p1, p0, Lio/reactivex/internal/operators/c/bn;->a:Lio/reactivex/ae;

    return-void
.end method


# virtual methods
.method public final fuseToObservable()Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 36
    new-instance v0, Lio/reactivex/internal/operators/c/bm;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/bn;->a:Lio/reactivex/ae;

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/c/bm;-><init>(Lio/reactivex/ae;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bn;->a:Lio/reactivex/ae;

    new-instance v1, Lio/reactivex/internal/operators/c/bn$a;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/c/bn$a;-><init>(Lio/reactivex/d;)V

    invoke-interface {v0, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
