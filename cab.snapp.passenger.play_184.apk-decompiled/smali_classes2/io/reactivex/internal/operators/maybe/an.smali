.class public final Lio/reactivex/internal/operators/maybe/an;
.super Lio/reactivex/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/an$a;
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
.field final a:Lio/reactivex/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ao<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ao<",
            "TT;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    .line 31
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/an;->a:Lio/reactivex/ao;

    return-void
.end method


# virtual methods
.method public final source()Lio/reactivex/ao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ao<",
            "TT;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/an;->a:Lio/reactivex/ao;

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
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/an;->a:Lio/reactivex/ao;

    new-instance v1, Lio/reactivex/internal/operators/maybe/an$a;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/maybe/an$a;-><init>(Lio/reactivex/t;)V

    invoke-interface {v0, v1}, Lio/reactivex/ao;->subscribe(Lio/reactivex/al;)V

    return-void
.end method
