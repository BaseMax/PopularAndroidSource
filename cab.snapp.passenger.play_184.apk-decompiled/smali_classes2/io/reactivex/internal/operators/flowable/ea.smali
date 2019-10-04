.class public final Lio/reactivex/internal/operators/flowable/ea;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/ea$a;,
        Lio/reactivex/internal/operators/flowable/ea$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final c:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Z


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/e/h;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 39
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ea;->c:Lio/reactivex/e/h;

    .line 40
    iput p3, p0, Lio/reactivex/internal/operators/flowable/ea;->d:I

    .line 41
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/ea;->e:Z

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ea;->b:Lio/reactivex/j;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ea;->c:Lio/reactivex/e/h;

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/dk;->tryScalarXMapSubscribe(Lorg/b/b;Lorg/b/c;Lio/reactivex/e/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ea;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/ea$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ea;->c:Lio/reactivex/e/h;

    iget v3, p0, Lio/reactivex/internal/operators/flowable/ea;->d:I

    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/ea;->e:Z

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/ea$b;-><init>(Lorg/b/c;Lio/reactivex/e/h;IZ)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
