.class public final Lio/reactivex/internal/operators/flowable/cu;
.super Lio/reactivex/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/cu$b;,
        Lio/reactivex/internal/operators/flowable/cu$c;,
        Lio/reactivex/internal/operators/flowable/cu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/j<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final b:I

.field final c:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 31
    iput p1, p0, Lio/reactivex/internal/operators/flowable/cu;->b:I

    add-int/2addr p1, p2

    .line 32
    iput p1, p0, Lio/reactivex/internal/operators/flowable/cu;->c:I

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 37
    instance-of v0, p1, Lio/reactivex/internal/b/a;

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lio/reactivex/internal/operators/flowable/cu$b;

    move-object v1, p1

    check-cast v1, Lio/reactivex/internal/b/a;

    iget v2, p0, Lio/reactivex/internal/operators/flowable/cu;->b:I

    iget v3, p0, Lio/reactivex/internal/operators/flowable/cu;->c:I

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/internal/operators/flowable/cu$b;-><init>(Lio/reactivex/internal/b/a;II)V

    invoke-interface {p1, v0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    return-void

    .line 41
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/flowable/cu$c;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/cu;->b:I

    iget v2, p0, Lio/reactivex/internal/operators/flowable/cu;->c:I

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/flowable/cu$c;-><init>(Lorg/b/c;II)V

    invoke-interface {p1, v0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    return-void
.end method
