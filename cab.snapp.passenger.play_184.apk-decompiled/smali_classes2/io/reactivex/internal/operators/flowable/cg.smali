.class public final Lio/reactivex/internal/operators/flowable/cg;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/cg$a;
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
.field final c:Lio/reactivex/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ao<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/ao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/ao<",
            "+TT;>;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 42
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/cg;->c:Lio/reactivex/ao;

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

    .line 47
    new-instance v0, Lio/reactivex/internal/operators/flowable/cg$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/cg$a;-><init>(Lorg/b/c;)V

    .line 48
    invoke-interface {p1, v0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 49
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/cg;->b:Lio/reactivex/j;

    invoke-virtual {p1, v0}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    .line 50
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/cg;->c:Lio/reactivex/ao;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/cg$a;->c:Lio/reactivex/internal/operators/flowable/cg$a$a;

    invoke-interface {p1, v0}, Lio/reactivex/ao;->subscribe(Lio/reactivex/al;)V

    return-void
.end method
