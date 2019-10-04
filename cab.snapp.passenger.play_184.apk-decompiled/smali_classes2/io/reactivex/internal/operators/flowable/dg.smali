.class public final Lio/reactivex/internal/operators/flowable/dg;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/dg$a;
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
.field final c:Lio/reactivex/e/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/q<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final d:J


# direct methods
.method public constructor <init>(Lio/reactivex/j;JLio/reactivex/e/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;J",
            "Lio/reactivex/e/q<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 32
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/dg;->c:Lio/reactivex/e/q;

    .line 33
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/dg;->d:J

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

    .line 38
    new-instance v5, Lio/reactivex/internal/subscriptions/e;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lio/reactivex/internal/subscriptions/e;-><init>(Z)V

    .line 39
    invoke-interface {p1, v5}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 41
    new-instance v7, Lio/reactivex/internal/operators/flowable/dg$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/dg;->d:J

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/dg;->c:Lio/reactivex/e/q;

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/dg;->b:Lio/reactivex/j;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/flowable/dg$a;-><init>(Lorg/b/c;JLio/reactivex/e/q;Lio/reactivex/internal/subscriptions/e;Lorg/b/b;)V

    .line 42
    invoke-virtual {v7}, Lio/reactivex/internal/operators/flowable/dg$a;->a()V

    return-void
.end method
