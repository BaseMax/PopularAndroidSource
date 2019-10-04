.class public final Lio/reactivex/internal/operators/flowable/aq;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/aq$a;,
        Lio/reactivex/internal/operators/flowable/aq$b;
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
.field final c:Lio/reactivex/e/a;


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/e/a;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 38
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/aq;->c:Lio/reactivex/e/a;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 43
    instance-of v0, p1, Lio/reactivex/internal/b/a;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aq;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/aq$a;

    check-cast p1, Lio/reactivex/internal/b/a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/aq;->c:Lio/reactivex/e/a;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/aq$a;-><init>(Lio/reactivex/internal/b/a;Lio/reactivex/e/a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aq;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/aq$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/aq;->c:Lio/reactivex/e/a;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/aq$b;-><init>(Lorg/b/c;Lio/reactivex/e/a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
