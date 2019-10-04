.class public final Lio/reactivex/internal/operators/flowable/dc;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/dc$a;
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
.field final c:Lio/reactivex/e/e;


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/e/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/e/e;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 29
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/dc;->c:Lio/reactivex/e/e;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 34
    new-instance v0, Lio/reactivex/internal/subscriptions/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/internal/subscriptions/e;-><init>(Z)V

    .line 35
    invoke-interface {p1, v0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 37
    new-instance v1, Lio/reactivex/internal/operators/flowable/dc$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/dc;->c:Lio/reactivex/e/e;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/dc;->b:Lio/reactivex/j;

    invoke-direct {v1, p1, v2, v0, v3}, Lio/reactivex/internal/operators/flowable/dc$a;-><init>(Lorg/b/c;Lio/reactivex/e/e;Lio/reactivex/internal/subscriptions/e;Lorg/b/b;)V

    .line 38
    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/dc$a;->a()V

    return-void
.end method
