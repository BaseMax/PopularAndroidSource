.class public final Lio/reactivex/internal/operators/flowable/ey;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/ey$a;,
        Lio/reactivex/internal/operators/flowable/ey$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final c:Lio/reactivex/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/c<",
            "-TT;-TU;+TR;>;"
        }
    .end annotation
.end field

.field final d:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/e/c;Lorg/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/e/c<",
            "-TT;-TU;+TR;>;",
            "Lorg/b/b<",
            "+TU;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 33
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ey;->c:Lio/reactivex/e/c;

    .line 34
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/ey;->d:Lorg/b/b;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;)V"
        }
    .end annotation

    .line 39
    new-instance v0, Lio/reactivex/k/d;

    invoke-direct {v0, p1}, Lio/reactivex/k/d;-><init>(Lorg/b/c;)V

    .line 40
    new-instance p1, Lio/reactivex/internal/operators/flowable/ey$b;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ey;->c:Lio/reactivex/e/c;

    invoke-direct {p1, v0, v1}, Lio/reactivex/internal/operators/flowable/ey$b;-><init>(Lorg/b/c;Lio/reactivex/e/c;)V

    .line 42
    invoke-virtual {v0, p1}, Lio/reactivex/k/d;->onSubscribe(Lorg/b/d;)V

    .line 44
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ey;->d:Lorg/b/b;

    new-instance v1, Lio/reactivex/internal/operators/flowable/ey$a;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/flowable/ey$a;-><init>(Lio/reactivex/internal/operators/flowable/ey;Lio/reactivex/internal/operators/flowable/ey$b;)V

    invoke-interface {v0, v1}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    .line 46
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ey;->b:Lio/reactivex/j;

    invoke-virtual {v0, p1}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
