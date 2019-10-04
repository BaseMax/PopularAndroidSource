.class public final Lio/reactivex/internal/operators/flowable/eu;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/eu$a;,
        Lio/reactivex/internal/operators/flowable/eu$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;",
        "Lio/reactivex/j<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final c:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "TB;>;"
        }
    .end annotation
.end field

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lorg/b/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lorg/b/b<",
            "TB;>;I)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 35
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/eu;->c:Lorg/b/b;

    .line 36
    iput p3, p0, Lio/reactivex/internal/operators/flowable/eu;->d:I

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 41
    new-instance v0, Lio/reactivex/internal/operators/flowable/eu$b;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/eu;->d:I

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/eu$b;-><init>(Lorg/b/c;I)V

    .line 43
    invoke-interface {p1, v0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 45
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/eu$b;->a()V

    .line 47
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/eu;->c:Lorg/b/b;

    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/eu$b;->c:Lio/reactivex/internal/operators/flowable/eu$a;

    invoke-interface {p1, v1}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    .line 49
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/eu;->b:Lio/reactivex/j;

    invoke-virtual {p1, v0}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
