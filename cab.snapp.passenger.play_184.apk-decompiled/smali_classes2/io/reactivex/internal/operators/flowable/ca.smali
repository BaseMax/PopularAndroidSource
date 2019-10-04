.class public final Lio/reactivex/internal/operators/flowable/ca;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/ca$a;,
        Lio/reactivex/internal/operators/flowable/ca$b;
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
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final c:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/e/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+TU;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 29
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ca;->c:Lio/reactivex/e/h;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TU;>;)V"
        }
    .end annotation

    .line 34
    instance-of v0, p1, Lio/reactivex/internal/b/a;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ca;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/ca$a;

    check-cast p1, Lio/reactivex/internal/b/a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ca;->c:Lio/reactivex/e/h;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/ca$a;-><init>(Lio/reactivex/internal/b/a;Lio/reactivex/e/h;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ca;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/ca$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ca;->c:Lio/reactivex/e/h;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/ca$b;-><init>(Lorg/b/c;Lio/reactivex/e/h;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
