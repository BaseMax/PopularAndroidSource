.class public final Lio/reactivex/internal/operators/maybe/ak;
.super Lio/reactivex/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/ak$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/q<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g;


# direct methods
.method public constructor <init>(Lio/reactivex/g;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    .line 31
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/ak;->a:Lio/reactivex/g;

    return-void
.end method


# virtual methods
.method public final source()Lio/reactivex/g;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/ak;->a:Lio/reactivex/g;

    return-object v0
.end method

.method public final subscribeActual(Lio/reactivex/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/ak;->a:Lio/reactivex/g;

    new-instance v1, Lio/reactivex/internal/operators/maybe/ak$a;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/maybe/ak$a;-><init>(Lio/reactivex/t;)V

    invoke-interface {v0, v1}, Lio/reactivex/g;->subscribe(Lio/reactivex/d;)V

    return-void
.end method
