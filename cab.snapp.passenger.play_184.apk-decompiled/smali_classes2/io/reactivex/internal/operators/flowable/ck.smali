.class public final Lio/reactivex/internal/operators/flowable/ck;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/ck$a;
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
.field final c:J

.field final d:Lio/reactivex/e/a;

.field final e:Lio/reactivex/BackpressureOverflowStrategy;


# direct methods
.method public constructor <init>(Lio/reactivex/j;JLio/reactivex/e/a;Lio/reactivex/BackpressureOverflowStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;J",
            "Lio/reactivex/e/a;",
            "Lio/reactivex/BackpressureOverflowStrategy;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 44
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/ck;->c:J

    .line 45
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/ck;->d:Lio/reactivex/e/a;

    .line 46
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/ck;->e:Lio/reactivex/BackpressureOverflowStrategy;

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

    .line 51
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ck;->b:Lio/reactivex/j;

    new-instance v7, Lio/reactivex/internal/operators/flowable/ck$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/ck;->d:Lio/reactivex/e/a;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/ck;->e:Lio/reactivex/BackpressureOverflowStrategy;

    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/ck;->c:J

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/ck$a;-><init>(Lorg/b/c;Lio/reactivex/e/a;Lio/reactivex/BackpressureOverflowStrategy;J)V

    invoke-virtual {v0, v7}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
