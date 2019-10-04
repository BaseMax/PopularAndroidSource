.class public final Lio/reactivex/internal/operators/maybe/bn;
.super Lio/reactivex/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/bn$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/w<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "TT;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 33
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/bn;->a:Lio/reactivex/w;

    return-void
.end method

.method public static create(Lio/reactivex/ag;)Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ag<",
            "-TT;>;)",
            "Lio/reactivex/t<",
            "TT;>;"
        }
    .end annotation

    .line 55
    new-instance v0, Lio/reactivex/internal/operators/maybe/bn$a;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/bn$a;-><init>(Lio/reactivex/ag;)V

    return-object v0
.end method


# virtual methods
.method public final source()Lio/reactivex/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/w<",
            "TT;>;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bn;->a:Lio/reactivex/w;

    return-object v0
.end method

.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bn;->a:Lio/reactivex/w;

    invoke-static {p1}, Lio/reactivex/internal/operators/maybe/bn;->create(Lio/reactivex/ag;)Lio/reactivex/t;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/w;->subscribe(Lio/reactivex/t;)V

    return-void
.end method
