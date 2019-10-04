.class public final Lio/reactivex/internal/operators/flowable/db;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/db$a;
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

    .line 26
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 27
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/db;->c:J

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 32
    new-instance v4, Lio/reactivex/internal/subscriptions/e;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lio/reactivex/internal/subscriptions/e;-><init>(Z)V

    .line 33
    invoke-interface {p1, v4}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 35
    new-instance v6, Lio/reactivex/internal/operators/flowable/db$a;

    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/db;->c:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    move-wide v2, v0

    :cond_0
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/db;->b:Lio/reactivex/j;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/db$a;-><init>(Lorg/b/c;JLio/reactivex/internal/subscriptions/e;Lorg/b/b;)V

    .line 36
    invoke-virtual {v6}, Lio/reactivex/internal/operators/flowable/db$a;->a()V

    return-void
.end method
