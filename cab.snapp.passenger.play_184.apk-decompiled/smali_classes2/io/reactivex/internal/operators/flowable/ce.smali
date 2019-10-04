.class public final Lio/reactivex/internal/operators/flowable/ce;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/ce$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:Lio/reactivex/g;


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/g;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 39
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ce;->c:Lio/reactivex/g;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 44
    new-instance v0, Lio/reactivex/internal/operators/flowable/ce$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/ce$a;-><init>(Lorg/b/c;)V

    .line 45
    invoke-interface {p1, v0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 46
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ce;->b:Lio/reactivex/j;

    invoke-virtual {p1, v0}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    .line 47
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ce;->c:Lio/reactivex/g;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/ce$a;->c:Lio/reactivex/internal/operators/flowable/ce$a$a;

    invoke-interface {p1, v0}, Lio/reactivex/g;->subscribe(Lio/reactivex/d;)V

    return-void
.end method
