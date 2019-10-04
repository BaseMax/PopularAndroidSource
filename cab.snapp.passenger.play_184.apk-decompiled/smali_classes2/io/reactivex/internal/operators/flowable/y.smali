.class public final Lio/reactivex/internal/operators/flowable/y;
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

.field final e:I

.field final f:Lio/reactivex/internal/util/ErrorMode;


# direct methods
.method public constructor <init>(Lorg/b/b;Lio/reactivex/e/h;IILio/reactivex/internal/util/ErrorMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/b<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "+TR;>;>;II",
            "Lio/reactivex/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 47
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/y;->b:Lorg/b/b;

    .line 48
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/y;->c:Lio/reactivex/e/h;

    .line 49
    iput p3, p0, Lio/reactivex/internal/operators/flowable/y;->d:I

    .line 50
    iput p4, p0, Lio/reactivex/internal/operators/flowable/y;->e:I

    .line 51
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/y;->f:Lio/reactivex/internal/util/ErrorMode;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;)V"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/y;->b:Lorg/b/b;

    new-instance v7, Lio/reactivex/internal/operators/flowable/x$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/y;->c:Lio/reactivex/e/h;

    iget v4, p0, Lio/reactivex/internal/operators/flowable/y;->d:I

    iget v5, p0, Lio/reactivex/internal/operators/flowable/y;->e:I

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/y;->f:Lio/reactivex/internal/util/ErrorMode;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/x$a;-><init>(Lorg/b/c;Lio/reactivex/e/h;IILio/reactivex/internal/util/ErrorMode;)V

    invoke-interface {v0, v7}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    return-void
.end method
