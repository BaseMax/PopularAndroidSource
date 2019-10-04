.class public final Lio/reactivex/internal/operators/flowable/cj;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/cj$a;
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
.field final c:I

.field final d:Z

.field final e:Z

.field final f:Lio/reactivex/e/a;


# direct methods
.method public constructor <init>(Lio/reactivex/j;IZZLio/reactivex/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;IZZ",
            "Lio/reactivex/e/a;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 38
    iput p2, p0, Lio/reactivex/internal/operators/flowable/cj;->c:I

    .line 39
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/cj;->d:Z

    .line 40
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/cj;->e:Z

    .line 41
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/cj;->f:Lio/reactivex/e/a;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cj;->b:Lio/reactivex/j;

    new-instance v7, Lio/reactivex/internal/operators/flowable/cj$a;

    iget v3, p0, Lio/reactivex/internal/operators/flowable/cj;->c:I

    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/cj;->d:Z

    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/cj;->e:Z

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/cj;->f:Lio/reactivex/e/a;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/cj$a;-><init>(Lorg/b/c;IZZLio/reactivex/e/a;)V

    invoke-virtual {v0, v7}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
