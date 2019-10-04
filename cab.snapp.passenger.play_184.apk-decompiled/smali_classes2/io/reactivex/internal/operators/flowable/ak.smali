.class public final Lio/reactivex/internal/operators/flowable/ak;
.super Lio/reactivex/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/ak$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/b/b;Lorg/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/b<",
            "+TT;>;",
            "Lorg/b/b<",
            "TU;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 34
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ak;->b:Lorg/b/b;

    .line 35
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ak;->c:Lorg/b/b;

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

    .line 40
    new-instance v0, Lio/reactivex/internal/operators/flowable/ak$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ak;->b:Lorg/b/b;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/ak$a;-><init>(Lorg/b/c;Lorg/b/b;)V

    .line 41
    invoke-interface {p1, v0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 42
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ak;->c:Lorg/b/b;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/ak$a;->c:Lio/reactivex/internal/operators/flowable/ak$a$a;

    invoke-interface {p1, v0}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    return-void
.end method
