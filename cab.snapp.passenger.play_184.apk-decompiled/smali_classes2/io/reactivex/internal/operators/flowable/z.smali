.class public final Lio/reactivex/internal/operators/flowable/z;
.super Lio/reactivex/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TR;>;"
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
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Lio/reactivex/internal/util/ErrorMode;


# direct methods
.method public constructor <init>(Lorg/b/b;Lio/reactivex/e/h;ILio/reactivex/internal/util/ErrorMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/b<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "+TR;>;>;I",
            "Lio/reactivex/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 34
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/z;->b:Lorg/b/b;

    .line 35
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/z;->c:Lio/reactivex/e/h;

    .line 36
    iput p3, p0, Lio/reactivex/internal/operators/flowable/z;->d:I

    .line 37
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/z;->e:Lio/reactivex/internal/util/ErrorMode;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/z;->b:Lorg/b/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/z;->c:Lio/reactivex/e/h;

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/dk;->tryScalarXMapSubscribe(Lorg/b/b;Lorg/b/c;Lio/reactivex/e/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/z;->b:Lorg/b/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/z;->c:Lio/reactivex/e/h;

    iget v2, p0, Lio/reactivex/internal/operators/flowable/z;->d:I

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/z;->e:Lio/reactivex/internal/util/ErrorMode;

    invoke-static {p1, v1, v2, v3}, Lio/reactivex/internal/operators/flowable/w;->subscribe(Lorg/b/c;Lio/reactivex/e/h;ILio/reactivex/internal/util/ErrorMode;)Lorg/b/c;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    return-void
.end method
