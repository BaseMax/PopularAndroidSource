.class public final Lio/reactivex/internal/operators/flowable/dy;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/dy$a;
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
.field final c:Lio/reactivex/ah;

.field final d:Z


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/ah;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/ah;",
            "Z)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 38
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/dy;->c:Lio/reactivex/ah;

    .line 39
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/dy;->d:Z

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

    .line 44
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dy;->c:Lio/reactivex/ah;

    invoke-virtual {v0}, Lio/reactivex/ah;->createWorker()Lio/reactivex/ah$c;

    move-result-object v0

    .line 45
    new-instance v1, Lio/reactivex/internal/operators/flowable/dy$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/dy;->b:Lio/reactivex/j;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/dy;->d:Z

    invoke-direct {v1, p1, v0, v2, v3}, Lio/reactivex/internal/operators/flowable/dy$a;-><init>(Lorg/b/c;Lio/reactivex/ah$c;Lorg/b/b;Z)V

    .line 46
    invoke-interface {p1, v1}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 48
    invoke-virtual {v0, v1}, Lio/reactivex/ah$c;->schedule(Ljava/lang/Runnable;)Lio/reactivex/b/c;

    return-void
.end method
