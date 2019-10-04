.class public final Lio/reactivex/internal/operators/flowable/bg;
.super Lio/reactivex/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/bg$a;,
        Lio/reactivex/internal/operators/flowable/bg$b;,
        Lio/reactivex/internal/operators/flowable/bg$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 29
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bg;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 34
    instance-of v0, p1, Lio/reactivex/internal/b/a;

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lio/reactivex/internal/operators/flowable/bg$a;

    move-object v1, p1

    check-cast v1, Lio/reactivex/internal/b/a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/bg;->b:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/flowable/bg$a;-><init>(Lio/reactivex/internal/b/a;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    return-void

    .line 38
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/flowable/bg$b;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bg;->b:[Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/bg$b;-><init>(Lorg/b/c;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    return-void
.end method
