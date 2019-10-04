.class public final Lio/reactivex/internal/operators/flowable/bd;
.super Lio/reactivex/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final b:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final d:Z

.field final e:I

.field final f:I


# direct methods
.method public constructor <init>(Lorg/b/b;Lio/reactivex/e/h;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/b<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 31
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bd;->b:Lorg/b/b;

    .line 32
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/bd;->c:Lio/reactivex/e/h;

    .line 33
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/bd;->d:Z

    .line 34
    iput p4, p0, Lio/reactivex/internal/operators/flowable/bd;->e:I

    .line 35
    iput p5, p0, Lio/reactivex/internal/operators/flowable/bd;->f:I

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TU;>;)V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bd;->b:Lorg/b/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bd;->c:Lio/reactivex/e/h;

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/dk;->tryScalarXMapSubscribe(Lorg/b/b;Lorg/b/c;Lio/reactivex/e/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bd;->b:Lorg/b/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bd;->c:Lio/reactivex/e/h;

    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/bd;->d:Z

    iget v3, p0, Lio/reactivex/internal/operators/flowable/bd;->e:I

    iget v4, p0, Lio/reactivex/internal/operators/flowable/bd;->f:I

    invoke-static {p1, v1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/az;->subscribe(Lorg/b/c;Lio/reactivex/e/h;ZII)Lio/reactivex/o;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    return-void
.end method
