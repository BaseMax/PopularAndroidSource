.class public final Lio/reactivex/internal/operators/flowable/dw;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/dw$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lorg/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lorg/b/b<",
            "TU;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 29
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/dw;->c:Lorg/b/b;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 34
    new-instance v0, Lio/reactivex/internal/operators/flowable/dw$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/dw$a;-><init>(Lorg/b/c;)V

    .line 35
    invoke-interface {p1, v0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 37
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/dw;->c:Lorg/b/b;

    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/dw$a;->d:Lio/reactivex/internal/operators/flowable/dw$a$a;

    invoke-interface {p1, v1}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    .line 39
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/dw;->b:Lio/reactivex/j;

    invoke-virtual {p1, v0}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
