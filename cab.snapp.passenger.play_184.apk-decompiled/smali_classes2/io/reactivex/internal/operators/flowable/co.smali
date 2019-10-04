.class public final Lio/reactivex/internal/operators/flowable/co;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/co$a;
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
.field final c:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lorg/b/b<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final d:Z


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/e/h;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lorg/b/b<",
            "+TT;>;>;Z)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 32
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/co;->c:Lio/reactivex/e/h;

    .line 33
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/co;->d:Z

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

    .line 38
    new-instance v0, Lio/reactivex/internal/operators/flowable/co$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/co;->c:Lio/reactivex/e/h;

    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/co;->d:Z

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/flowable/co$a;-><init>(Lorg/b/c;Lio/reactivex/e/h;Z)V

    .line 39
    invoke-interface {p1, v0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 40
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/co;->b:Lio/reactivex/j;

    invoke-virtual {p1, v0}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
