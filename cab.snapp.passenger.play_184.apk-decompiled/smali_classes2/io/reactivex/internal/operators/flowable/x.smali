.class public final Lio/reactivex/internal/operators/flowable/x;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/x$a;
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

.field final e:I

.field final f:Lio/reactivex/internal/util/ErrorMode;


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/e/h;IILio/reactivex/internal/util/ErrorMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
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
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 47
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/x;->c:Lio/reactivex/e/h;

    .line 48
    iput p3, p0, Lio/reactivex/internal/operators/flowable/x;->d:I

    .line 49
    iput p4, p0, Lio/reactivex/internal/operators/flowable/x;->e:I

    .line 50
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/x;->f:Lio/reactivex/internal/util/ErrorMode;

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

    .line 55
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x;->b:Lio/reactivex/j;

    new-instance v7, Lio/reactivex/internal/operators/flowable/x$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/x;->c:Lio/reactivex/e/h;

    iget v4, p0, Lio/reactivex/internal/operators/flowable/x;->d:I

    iget v5, p0, Lio/reactivex/internal/operators/flowable/x;->e:I

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/x;->f:Lio/reactivex/internal/util/ErrorMode;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/x$a;-><init>(Lorg/b/c;Lio/reactivex/e/h;IILio/reactivex/internal/util/ErrorMode;)V

    invoke-virtual {v0, v7}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
