.class public final Lio/reactivex/internal/operators/flowable/bz;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/bz$a;
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


# direct methods
.method public constructor <init>(Lio/reactivex/j;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;J)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 36
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/bz;->c:J

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bz;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/bz$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/bz;->c:J

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/flowable/bz$a;-><init>(Lorg/b/c;J)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
